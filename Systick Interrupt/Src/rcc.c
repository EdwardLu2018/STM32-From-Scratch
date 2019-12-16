#include "rcc.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(void) {
    rcc->apbe1 = (TIM2_EN|TIM3_EN|TIM4_EN); // enable timers
    rcc->apbe2 = (GPIOA_EN|GPIOB_EN|GPIOC_EN); // enable all GPIO pins
    rcc->cfgr = (7 << 18) | 0x10000;
}
