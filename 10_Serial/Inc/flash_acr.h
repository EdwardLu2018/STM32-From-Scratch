#ifndef _FLASH_H_
#define _FLASH_H_

#include "stm32f103.h"

#define LATENCY_0   0
#define LATENCY_1   (1<<0)
#define LATENCY_2   (1<<1)

// flash access control register (pg 60)
typedef struct flash_t {
    uint32_t volatile acr; // 0x0 - flash access control register
} flash_t;

#endif /* _FLASH_H_ */
