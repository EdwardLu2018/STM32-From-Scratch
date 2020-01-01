#include "rcc.h"
#include "flash_acr.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(uint32_t tim_en, uint32_t gpio_en, uint32_t usart_en) {
    // switch to 72Mhz clock //
    flash->acr |= LATENCY_2;
    rcc->cfgr |= APB1_DIV2;

    rcc->cr |= HSEON;
    while(!(rcc->cr & HSERDY));

    rcc->cfgr |= (PLLHSE|PLL_9);
    rcc->cr |= PLLON;
    while(!(rcc->cr & PLLRDY));

    rcc->cfgr |= SWPLL;
    while(!(rcc->cfgr & SWSPLL));

    rcc->apbe1 |= tim_en; // enable timers
    rcc->apbe2 |= gpio_en | usart_en; // enable GPIO pins and USART
}
