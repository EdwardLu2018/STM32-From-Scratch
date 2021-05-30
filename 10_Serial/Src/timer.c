#include "timer.h"
#include "gpio.h"
#include "nvic.h"

timer_t *tim2 = (timer_t *)(TIM2_BASE);
timer_t *tim3 = (timer_t *)(TIM3_BASE);
timer_t *tim4 = (timer_t *)(TIM4_BASE);
timer_t *tim5 = (timer_t *)(TIM5_BASE);
timer_t *tim6 = (timer_t *)(TIM6_BASE);
timer_t *tim7 = (timer_t *)(TIM7_BASE);

timer_t *get_timer(uint8_t timer) {
    switch (timer) {
    case TIM2: return tim2;
    case TIM3: return tim3;
    case TIM4: return tim4;
    case TIM5: return tim5;
    case TIM6: return tim6;
    case TIM7: return tim7;
    default: return tim2;
    }
}

void tim2_handle(void) {
    tim2->sr = 0U; // reset interrupt
    led_toggle(PA7);
}

void tim3_handle(void) {
    tim3->sr = 0U; // reset interrupt
    led_toggle(PA7);
}

void tim4_handle(void) {
    tim4->sr = 0U; // reset interrupt
}

void tim5_handle(void) {
    tim5->sr = 0U; // reset interrupt
}

void tim6_handle(void) {
    tim6->sr = 0U; // reset interrupt
}

void tim7_handle(void) {
    tim7->sr = 0U; // reset interrupt
}

uint32_t get_timer_cnt(uint8_t timer) {
    timer_t *tim = get_timer(timer);
    return tim->cnt;
}

void enable_chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load) {
    timer_t *tim = get_timer(timer);
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
    timer_t *tim = get_timer(timer);

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->psc = PCLK2 / prescaler - 1U; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
    tim->arr = period - 1U; // "period" of timer - updates every time cnt reaches arr

    tim->dier = 1U;

    nvic_enable(TIM_IRQ_START_POS+timer);

    // enable counter //
    tim->cr1 = 1U;
}
