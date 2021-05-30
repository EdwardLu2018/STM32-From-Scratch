#include "rcc.h"
#include "flash_acr.h"

void rcc_init(void) {
    rcc_t *rcc = (rcc_t *)(RCC_BASE);
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

    rcc->apbe1 |= (TIM2_EN); // enable timers
    rcc->apbe2 |= (GPIOA_EN|GPIOB_EN|GPIOC_EN); // enable all GPIO pins
    rcc->apbe2 |= USART1_EN;
}
