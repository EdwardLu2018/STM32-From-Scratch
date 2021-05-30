#include "rcc.h"

void rcc_init(void) {
    rcc_t *rcc = (rcc_t *)(RCC_BASE);
    // rcc->apbe1 |= TIM2_EN; // enable tim2
    rcc->apbe2 |= (GPIOA_EN|GPIOB_EN|GPIOC_EN); // enable all GPIO pins
}
