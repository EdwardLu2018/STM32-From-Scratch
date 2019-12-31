#include "rcc.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(uint32_t tim_en, uint32_t gpio_en, uint32_t usart_en) {
    rcc->apbe1 |= tim_en; // enable timers
    rcc->apbe2 |= gpio_en | usart_en; // enable GPIO pins and USART
}
