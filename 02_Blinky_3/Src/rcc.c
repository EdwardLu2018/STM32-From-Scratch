#include "rcc.h"

void rcc_init(void) {
    rcc_t *rcc = (rcc_t *)(RCC_BASE);

    // enable RCC for GPIOC (on board LED)
    rcc->cr |= (1 << 16);
    if (rcc->cr & (1 << 17))
        rcc->cfgr |= (1 << 0);
    rcc->apbe2 |= ((1 << 4) | (1 << 2) | (1 << 3));
}
