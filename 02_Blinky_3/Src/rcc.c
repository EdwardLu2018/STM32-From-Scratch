#include "rcc.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(void) {
    rcc->cr |= (1<<16); // enable GPIOC
    if (rcc->cr & (1<<17))
        rcc->cfgr |= (1<<0);
    rcc->apbe2 |= (1<<4)|(1<<2)|(1<<3);
}
