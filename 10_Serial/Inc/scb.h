#ifndef __SCB__
#define __SCB__

#include "stm32f103.h"

#define KEY         (0x5FA<<16)
#define SYSRESETREQ (1<<2)
#define PRIORITY    (7<<8)

// system control block (pg 129) //
typedef struct {
    // uint32_t __IO actlr; // 0x0 - auxiliary control register
    uint32_t __IO cpuid;    // 0x0 - CPUID base register
    uint32_t __IO icsr;     // 0x4 - interrupt control and state register
    uint32_t __IO vtor;     // 0x8 - vector table offset register
    uint32_t __IO aircr;    // 0xC application interrupt and reset control register
    uint32_t __IO scr;      // 0x10 system control register
    uint32_t __IO ccr;      // 0x14 configuration and control register
    uint32_t __IO shpr1;    // 0x18 system handler priority register 1
    uint32_t __IO shpr2;    // 0x1C system handler priority register 2
    uint32_t __IO shpr3;    // 0x20 system handler priority register 3
    uint32_t __IO shcsr;    // 0x24 system handler control and state register
    uint32_t __IO cfsr;     // 0x28 configurable fault status register
    uint32_t __IO hfsr;     // 0x30 hard fault status register
    uint32_t __IO mmfar;    // 0x34 memory management fault address registe
    uint32_t __IO bfar;     // 0x38 bus fault address register
} scb_t;

void reset_system(void);

#endif
