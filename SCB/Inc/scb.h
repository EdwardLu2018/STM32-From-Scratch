#ifndef __SCB__
#define __SCB__

#include "stm32f103.h"

#define KEY         (0x5FA<<16)
#define SYSRESETREQ (1<<2)
#define PRIORITY    (7<<8)

// system control block (pg 129) //
typedef struct {
    // uint32_t __IO actlr; // 0x0 - auxiliary control register
    uint32_t __IO cpuid; // 0x0 - CPUID base register
    uint32_t __IO icsr; // 0x4 - interrupt control and state register
    uint32_t __IO vtor; // 0x8 - vector table offset register
    uint32_t __IO aircr;// 0xC application interrupt and reset control register
    uint32_t __IO scr;// 0x10 system control register
} scb_t;

void reset_system(void);

#endif
