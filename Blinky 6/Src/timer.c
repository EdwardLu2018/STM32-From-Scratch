#include "timer.h"

timer_t *tim2 = (timer_t *)(TIM2_BASE);

void tim2_handle (void) {
    tim2->sr = 0U; // restart interrupt
}

void enable_chan(uint8_t channel, uint8_t load) {
    tim2->ccr[channel] = load;

    uint8_t shift_by;
    uint64_t config;

    shift_by = channel * 4;
    config = tim2->ccer & ~(0xf << shift_by);
    tim2->ccer = (config | (1 << shift_by)); // enable output

    // output compare mode //
    shift_by = (channel % 2) * 8;
    uint8_t mr_idx = channel / 2;
    config = tim2->ccmr[mr_idx] & ~(0xff << shift_by);
    tim2->ccmr[mr_idx] = (config | (0x30 << shift_by));
}

void tim2_enable_all_chan(void) {
    for (uint8_t i = 0; i <= 4U; i++)
        enable_timer(i, 2U);
}

void tim2_init(void) {
    tim2->arr = 3U;
    tim2->psc = 36U; // (72 / 36) = 2 MHz; (2 / 4) = 500 kHz
    tim2_enable_all_chan();
    tim2->cr[0] = 1U;
}
