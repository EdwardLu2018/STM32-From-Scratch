#ifndef _RCC_H_
#define _RCC_H_

#include "stm32f103.h"
#include "intrinsic.h"

#define APB1_DIV2	(4<<8)  // AHB1 = HCLK/2
#define HSION       (1<<0)  // enable HSI
#define HSERDY      (1<<17) // external high-speed clock ready flag
#define HSEON       (1<<16) // enable HSE
#define PLLHSE      (1<<16) // HSE oscillator clock selected as PLL input clock
#define PLLON       (1<<24) // enable PLL
#define PLLRDY      (1<<25) // PLL ready
#define PLL_9		(7<<18) // PLL x 9
#define SWSPLL      (2<<2)  // PLL used as system clock
#define SWPLL       (2<<0)  // set PLL as system clock

#define WWDGRST     (1<<11) // window watchdog reset

#define GPIOA_EN    (1<<2)  // APBE2
#define GPIOB_EN    (1<<3)  // APBE2
#define GPIOC_EN    (1<<4)  // APBE2

#define ADC1_EN     (1<<9)  // APBE2
#define ADC2_EN     (1<<10) // APBE2
#define ADC3_EN     (1<<15) // APBE3

#define TIM2_EN     (1<<0)  // APBE1
#define TIM3_EN     (1<<1)  // APBE1
#define TIM4_EN     (1<<2)  // APBE1
#define TIM5_EN     (1<<3)  // APBE1
#define TIM6_EN     (1<<4)  // APBE1
#define TIM7_EN     (1<<5)  // APBE1

#define USART1_EN   (1<<14) // APBE2
#define USART2_EN   (1<<17) // APBE1
#define USART3_EN   (1<<18) // APBE1

// Reset and clock control (page 99 Reference Manual) //
typedef struct {
    uint32_t __IO CR;       // 0x0 - control register
    uint32_t __IO CFGR;     // 0x4 - configuration register
    uint32_t __IO CIR;      // 0x8 - interrupt register
    uint32_t __IO APBR2;    // 0xC - APB2 peripheral reset register
    uint32_t __IO APBR1;    // 0x10 - APB1 peripheral reset register
    uint32_t __IO AHBE;     // 0x14 - AHB peripheral clock enable register
    uint32_t __IO APBE2;    // 0x18 - APB2 peripheral enable register
    uint32_t __IO APBE1;    // 0x1C - APB1 peripheral enable register
    uint32_t __IO BDCR;     // 0x20 - backup domain control register
    uint32_t __IO CSR;      // 0x24 - control/status register
} RCC_t;

extern RCC_t *rcc;

void RCC_Init(uint32_t tim_en, uint32_t gpio_en, uint32_t adc_en, uint32_t usart_en);

#endif
