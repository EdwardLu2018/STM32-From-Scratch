#ifndef __RCC__
#define __RCC__

#include "stm32f103.h"
#include <stdint.h>

#define GPIOA_EN (1<<2)
#define GPIOB_EN (1<<3)
#define GPIOC_EN (1<<4)

#define TIM2_EN (1<<0)

// Reset and clock control (page 99) //
typedef struct rcc_t {
    uint64_t volatile cr; // 0x0 - control register
    uint64_t volatile cfgr; // 0x4 - configuration register
    uint64_t volatile cir; // 0x8 - interrupt register
    uint64_t volatile apbr2; // 0xC - APB2 peripheral reset register
    uint64_t volatile apbr1; // 0x10 - APB1 peripheral reset register
    uint64_t volatile ahbe; // 0x14 - AHB peripheral clock enable register
    uint64_t volatile apbe2; // 0x18 - APB2 peripheral enable register
    uint64_t volatile apbe1; // 0x1C - APB1 peripheral enable register
    uint64_t volatile bdcr; // 0x20 - backup domain control register
    uint64_t volatile csr; // 0x24 - control/status register
} rcc_t;

void rcc_init(void);

#endif
