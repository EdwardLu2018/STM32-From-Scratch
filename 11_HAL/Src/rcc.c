#include "rcc.h"
#include "flash_acr.h"

void RCC_Init(uint32_t tim_en, uint32_t gpio_en, uint32_t adc_en, uint32_t usart_en) {
    RCC_t *rcc = (RCC_t *)(RCC_BASE);
    Flash_t *flash = (Flash_t *)(FLASH_ACR_BASE);

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
