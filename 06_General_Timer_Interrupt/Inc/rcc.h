#ifndef _RCC_H_
#define _RCC_H_

#include "stm32f103.h"

#define GPIOA_EN (1<<2)
#define GPIOB_EN (1<<3)
#define GPIOC_EN (1<<4)

#define TIM2_EN (1<<0)
#define TIM3_EN (1<<1)
#define TIM4_EN (1<<2)

#define AHB_DIV_8   (10 << 4)

// Reset and clock control (page 99) //
typedef struct rcc_t {
    unsigned volatile long cr; // 0x0 - control register
    unsigned volatile long cfgr; // 0x4 - configuration register
    unsigned volatile long cir; // 0x8 - interrupt register
    unsigned volatile long apbr2; // 0xC - APB2 peripheral reset register
    unsigned volatile long apbr1; // 0x10 - APB1 peripheral reset register
    unsigned volatile long ahbe; // 0x14 - AHB peripheral clock enable register
    unsigned volatile long apbe2; // 0x18 - APB2 peripheral enable register
    unsigned volatile long apbe1; // 0x1C - APB1 peripheral enable register
    unsigned volatile long bdcr; // 0x20 - backup domain control register
    unsigned volatile long csr; // 0x24 - control/status register
} rcc_t;

void rcc_init(void);

#endif /* _RCC_H_ */
