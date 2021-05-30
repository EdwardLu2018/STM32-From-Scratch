#include "timer.h"
#include "nvic.h"
#include "gpio.h"

static TIM_t *const timers[] = {
    (TIM_t *)0x0,        // timer 0
    (TIM_t *)0x0,        // timer 1
    (TIM_t *)TIM2_BASE,
    (TIM_t *)TIM3_BASE,
    (TIM_t *)TIM4_BASE,
    (TIM_t *)TIM5_BASE,
    (TIM_t *)TIM6_BASE,
    (TIM_t *)TIM7_BASE
};

uint32_t TIM_Get_Cnt(uint8_t timer) {
    TIM_t *tim = timers[timer];
    return tim->CNT;
}

void TIM_Enable_Chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load) {
    TIM_t *tim = timers[timer];
    tim->CCR[channel] = load;

    uint8_t shift_by;
    uint32_t config;

    shift_by = channel * 4;
    config = tim->CCER & ~(0xf << shift_by);
    tim->CCER = (config | (1 << shift_by)); // enable output

    // output compare mode //
    shift_by = (channel % 2) * 8;
    uint8_t mr_idx = channel / 2;
    config = tim->CCMR[mr_idx] & ~(0xff << shift_by);
    tim->CCMR[mr_idx] = (config | (mode << shift_by));
}

void TIM_Init(uint8_t timer, uint32_t prescaler, uint32_t period) {
    TIM_t *tim = timers[timer];

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->PSC = PCLK2 / prescaler - 1U; // a prescaler value of PSC will increment cnt every PSC+1 clock Cycles.
    tim->ARR = period - 1U; // "period" of timer - updates every time cnt reaches ARR

    // enable interrupt //
    tim->DIER = 1U;

    // enable counter //
    tim->CR[0] = 1U;
}
