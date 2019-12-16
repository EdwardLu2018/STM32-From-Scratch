#include "timer.h"
#include "gpio.h"
#include "nvic.h"

timer_t *tim2 = (timer_t *)(TIM2_BASE);

void tim2_handle(void) {
    tim2->sr = 0U; // reset interrupt
    led_toggle(PA2);
}

void enable_chan(unsigned char channel, unsigned char load) {
    tim2->ccr[channel] = load;

    unsigned char shift_by;
    unsigned long config;

    shift_by = channel * 4;
    config = tim2->ccer & ~(0xf << shift_by);
    tim2->ccer = (config | (1 << shift_by)); // enable output

    // output compare mode //
    shift_by = (channel % 2) * 8;
    unsigned char mr_idx = channel / 2;
    config = tim2->ccmr[mr_idx] & ~(0xff << shift_by);
    tim2->ccmr[mr_idx] = (config | (0x30 << shift_by));
}

void tim2_init(void) {
    // enable counter //
    tim2->cr[0] = 1U;

    // set prescalar (ms) //
    // the counter clock frequency CK_CNT is equal to fCK_PSC / (PSC[15:0] + 1)
    // 72000000 / 72000 = 1000 ms (1 sec)
    tim2->psc = 8000U - 1U; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
    tim2->arr = 1000U - 1U; // "period" of timer - updates every time cnt reaches arr

    tim2->dier = 1U;

    enable_chan(0, 2U);

    nvic_enable(TIM_IRQ_POS);
}
