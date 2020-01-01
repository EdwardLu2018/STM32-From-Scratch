#ifndef __USART__
#define __USART__

#include "stm32f103.h"
#include "intrinsic.h"

#define LATENCY_0   0
#define LATENCY_1   (1<<0)
#define LATENCY_2   (1<<1)

// flash access control register (pg 60)
typedef struct flash_t {
    uint32_t __IO acr; // 0x0 - flash access control register
} flash_t;

flash_t *flash;

#endif
