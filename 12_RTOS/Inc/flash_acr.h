#ifndef _USART_H_
#define _USART_H_

#include "stm32f103.h"
#include "intrinsic.h"

#define LATENCY_0   0
#define LATENCY_1   (1<<0)
#define LATENCY_2   (1<<1)

// flash access control register (pg 60)
typedef struct flash_t {
    uint32_t volatile ACR; // 0x0 - flash access control register
} flash_t;

extern flash_t *flash;

#endif
