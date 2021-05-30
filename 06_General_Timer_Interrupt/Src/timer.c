#include "timer.h"
#include "gpio.h"
#include "nvic.h"

timer_t *tim2 = (timer_t *)(TIM2_BASE);
timer_t *tim3 = (timer_t *)(TIM3_BASE);
timer_t *tim4 = (timer_t *)(TIM4_BASE);

timer_t *get_timer(unsigned char timer) {
    switch (timer) {
    case 2:
        return tim2;
    case 3:
        return tim3;
    case 4:
        return tim4;
    default:
        return tim2;
    }
}

void tim2_handle(void) {
    tim2->sr = 0U; // reset interrupt
    gpio_toggle(PA2);
}

void tim3_handle(void) {
    tim3->sr = 0U; // reset interrupt
    gpio_toggle(PA2);
}

void tim4_handle(void) {
    tim4->sr = 0U; // reset interrupt
    gpio_toggle(PA2);
}

unsigned long get_cnt(unsigned char timer) {
    timer_t *tim = get_timer(timer);
    return tim->cnt;
}

void enable_chan(unsigned char timer, unsigned char channel, unsigned char load) {
    timer_t *tim = get_timer(timer);
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
    tim->ccmr[mr_idx] = (config | (0x30 << shift_by));
}

void timer_init(unsigned char timer, unsigned long prescaler, unsigned long period) {
    timer_t *tim = get_timer(timer);

    // enable counter //
    tim->cr[0] = 1U;

    // set prescalar (ms) //
    // the counter clock frequency CK_CNT is equal to fCK_PSC / (PSC[15:0] + 1)
    // 72000000 / 72000 = 1000 ms (1 sec)
    tim->psc = prescaler - 1U; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
    tim->arr = period - 1U; // "period" of timer - updates every time cnt reaches arr

    tim->dier = 1U;

    enable_chan(timer, CHAN1, 2U);
    enable_chan(timer, CHAN2, 2U);
    enable_chan(timer, CHAN3, 2U);
    enable_chan(timer, CHAN4, 2U);

    nvic_enable(TIM_IRQ_POS + (timer-2));
}
