#ifndef __RCC__
#define __RCC__

#include "stm32f103.h"

#define GPIOA_EN    (1<<2)
#define GPIOB_EN    (1<<3)
#define GPIOC_EN    (1<<4)

#define TIM2_EN     (1<<0)
#define TIM3_EN     (1<<1)
#define TIM4_EN     (1<<2)
#define TIM5_EN     (1<<3)
#define TIM6_EN     (1<<4)
#define TIM7_EN     (1<<5)

#define USART1_EN   (1<<14) // apbe2
#define USART2_EN   (1<<17) // apbe1
#define USART3_EN   (1<<18) // apbe1

// Reset and clock control (page 99 Reference Manual) //
typedef struct {
    uint32_t __IO cr;       // 0x0 - control register
    uint32_t __IO cfgr;     // 0x4 - configuration register
    uint32_t __IO cir;      // 0x8 - interrupt register
    uint32_t __IO apbr2;    // 0xC - APB2 peripheral reset register
    uint32_t __IO apbr1;    // 0x10 - APB1 peripheral reset register
    uint32_t __IO ahbe;     // 0x14 - AHB peripheral clock enable register
    uint32_t __IO apbe2;    // 0x18 - APB2 peripheral enable register
    uint32_t __IO apbe1;    // 0x1C - APB1 peripheral enable register
    uint32_t __IO bdcr;     // 0x20 - backup domain control register
    uint32_t __IO csr;      // 0x24 - control/status register
} rcc_t;

void rcc_init(void);

#endif
