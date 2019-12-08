#include "timer.h"
#include "gpio.h"

timer_t *tim2 = (timer_t *)(TIM2_BASE);

void tim2_handle(void) {
    tim2->sr = 0U; // restart interrupt
    led_toggle(PA0);
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

    // set prescalar //
    // the counter clock frequency CK_CNT is equal to fCK_PSC / (PSC[15:0] + 1)
    tim2->psc = 9000U - 1U; // (72 MHz / (9000)) = 8 kHz ; (8 kHz / 4) = 2 kHz
    tim2->arr = 1000U - 1U; // (2 / 1000) = 2 Hz -> 1 Hz (1 sec) toggle

    tim2->dier = 1U;

    enable_chan(0, 2U);

    struct nvic *np = NVIC_BASE;

	np->iser[28/32] = 1 << (28%32);
}
