#include "timer.h"
#include "gpio.h"
#include "nvic.h"
static timer_t *const timers[] = {
    (timer_t *)0x0,        // timer 0
    (timer_t *)0x0,        // timer 1
    (timer_t *)TIM2_BASE,
    (timer_t *)TIM3_BASE,
    (timer_t *)TIM4_BASE,
    (timer_t *)TIM5_BASE,
    (timer_t *)TIM6_BASE,
    (timer_t *)TIM7_BASE
};

void tim2_handle(void) {
    timer_t *tim2 = timers[2];
    tim2->sr = 0U; // reset interrupt
}

void tim3_handle(void) {
    timer_t *tim3 = timers[3];
    tim3->sr = 0U; // reset interrupt
    gpio_toggle(PA7);
}

void tim4_handle(void) {
    timer_t *tim4 = timers[4];
    tim4->sr = 0U; // reset interrupt
}

void tim5_handle(void) {
    timer_t *tim5 = timers[5];
    tim5->sr = 0U; // reset interrupt
}

void tim6_handle(void) {
    timer_t *tim6 = timers[6];
    tim6->sr = 0U; // reset interrupt
}

void tim7_handle(void) {
    timer_t *tim7 = timers[7];
    tim7->sr = 0U; // reset interrupt
}

uint32_t get_timer_cnt(uint8_t timer) {
    timer_t *tim = timers[timer];
    return tim->cnt;
}

void enable_chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load) {
    timer_t *tim = timers[timer];
    tim->ccr[channel] = load;

    uint8_t shift_by;
    uint32_t config;

    shift_by = channel * 4;
    config = tim->ccer & ~(0xf << shift_by);
    tim->ccer = (config | (1 << shift_by)); // enable output

    // output compare mode //
    shift_by = (channel % 2) * 8;
    uint8_t mr_idx = channel / 2;
    config = tim->ccmr[mr_idx] & ~(0xff << shift_by);
    tim->ccmr[mr_idx] = (config | (mode << shift_by));
}

void timer_init(uint8_t timer, uint32_t prescaler, uint32_t period) {
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
