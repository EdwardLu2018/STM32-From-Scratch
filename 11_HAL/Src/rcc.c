#include "rcc.h"
#include "flash_acr.h"

void rcc_init(uint32_t tim_en, uint32_t gpio_en, uint32_t adc_en, uint32_t usart_en) {
    rcc_t *rcc = (rcc_t *)(RCC_BASE);
    flash_t *flash = (flash_t *)(FLASH_ACR_BASE);

    // switch to 72Mhz clock //
    flash->ACR |= LATENCY_2;
    rcc->CFGR |= APB1_DIV2;

    rcc->CR |= HSEON;
    while (!(rcc->CR & HSERDY));

    rcc->CFGR |= (PLLHSE|PLL_9);
    rcc->CR |= PLLON;
    while (!(rcc->CR & PLLRDY));

    rcc->CFGR |= SWPLL;
    while (!(rcc->CFGR & SWSPLL));

    rcc->APBE1 |= tim_en; // enable timers
    rcc->APBE2 |= (gpio_en|adc_en|usart_en); // enable GPIO pins and USART
}
