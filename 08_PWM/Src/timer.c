#include "timer.h"
#include "gpio.h"
#include "nvic.h"

static timer_t *const timers[] = {
    (timer_t *)0x0,        // timer 0
    (timer_t *)0x0,        // timer 1
    (timer_t *)TIM2_BASE,
    (timer_t *)TIM3_BASE,
    (timer_t *)TIM4_BASE,
    (timer_t *)0x0         // timer 5
};

static timer_t *get_timer(unsigned char timer) {
    switch (timer) {
    case TIM2:
        return tim2;
    case TIM3:
        return tim3;
    case TIM4:
        return tim4;
    default:
        return tim2;
    }
}

void tim2_handle(void) {
    tim2->sr = 0U; // reset interrupt
    // gpio_toggle(PA8);
}

void tim3_handle(void) {
    tim3->sr = 0U; // reset interrupt
    gpio_toggle(PA7);
}

void tim4_handle(void) {
    tim4->sr = 0U; // reset interrupt
    // gpio_toggle(PA0);
}

unsigned long get_timer_cnt(unsigned char timer) {
    timer_t *tim = timers[timer];
    return tim->cnt;
}

void enable_chan(unsigned char timer, unsigned char mode, unsigned char channel, unsigned long load) {
    timer_t *tim = timers[timer];
    tim->ccr[channel] = load;

    unsigned char shift_by;
    unsigned long config;

    shift_by = channel * 4;
    config = tim->ccer & ~(0xf << shift_by);
    tim->ccer = (config | (1 << shift_by)); // enable output

    // output compare mode //
    shift_by = (channel % 2) * 8;
    unsigned char mr_idx = channel / 2;
    config = tim->ccmr[mr_idx] & ~(0xff << shift_by);
    tim->ccmr[mr_idx] = (config | (mode << shift_by));
}

void timer_init(unsigned char timer, unsigned long prescaler, unsigned long period) {
    timer_t *tim = timers[timer];

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->psc = HSI_MHZ / prescaler; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
    tim->arr = period - 1U; // "period" of timer - updates every time cnt reaches arr

    tim->dier = 1U;

    nvic_enable(TIM_IRQ_START_POS + (timer-2));

    // enable counter //
    tim->cr[0] = 1U;
}
