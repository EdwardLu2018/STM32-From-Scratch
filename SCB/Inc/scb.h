#ifndef __SCB__
#define __SCB__

#include "stm32f103.h"

#define KEY         (0x5FA<<16)
#define SYSRESETREQ (1<<2)

// system control block (pg 129) //
typedef struct {
    // unsigned volatile long actlr; // 0x0 - auxiliary control register
    unsigned volatile long cpuid; // 0x0 - CPUID base register
    unsigned volatile long icsr; // 0x4 - interrupt control and state register
    unsigned volatile long vtor; // 0x8 - vector table offset register
    unsigned volatile long aircr;// 0xC application interrupt and reset control register
    unsigned volatile long scr;// 0x10 system control register
} scb_t;

void reset_system(void);

#endif
