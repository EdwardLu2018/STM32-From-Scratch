#ifndef _SCB_H_
#define _SCB_H_

#include "stm32f103.h"

#define KEY         (0x5FA<<16)
#define SYSRESETREQ (1<<2)
#define PRIORITY    (7<<8)

// system control block (pg 129) //
typedef struct {
    // uint32_t volatile actlr; // 0x0 - auxiliary control register
    uint32_t volatile cpuid;    // 0x0 - CPUID base register
    uint32_t volatile icsr;     // 0x4 - interrupt control and state register
    uint32_t volatile vtor;     // 0x8 - vector table offset register
    uint32_t volatile aircr;    // 0xC application interrupt and reset control register
    uint32_t volatile scr;      // 0x10 system control register
    uint32_t volatile ccr;      // 0x14 configuration and control register
    uint32_t volatile shpr1;    // 0x18 system handler priority register 1
    uint32_t volatile shpr2;    // 0x1C system handler priority register 2
    uint32_t volatile shpr3;    // 0x20 system handler priority register 3
    uint32_t volatile shcsr;    // 0x24 system handler control and state register
    uint32_t volatile cfsr;     // 0x28 configurable fault status register
    uint32_t volatile hfsr;     // 0x30 hard fault status register
    uint32_t volatile mmfar;    // 0x34 memory management fault address registe
    uint32_t volatile bfar;     // 0x38 bus fault address register
} scb_t;

void reset_system(void);

#endif /* _SCB_H_ */
