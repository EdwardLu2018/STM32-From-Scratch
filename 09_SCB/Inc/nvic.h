#ifndef __NVIC__
#define __NVIC__

#include "stm32f103.h"

// nested vectored interrupt controller (pg 118 Programming Manual) //
typedef struct {
    uint32_t __IO iser[3];	// 0x0 to 0xB - interrupt set-enable registers
	uint32_t __IO icer[3];	// 0xC to 0x18 - interrupt clear-enable registers
	uint32_t __IO ispr[3];	// 0x18 to 0x24 - interrupt set-pending registers
	uint32_t __IO icpr[3];	// 0x24 to 0x30 - interrupt clear-pending registers
	uint32_t __IO iabr[3];	// 0x30 to 0x3C - interrupt active bit registers
	// uint32_t __IO ipr[3];	// 0x3C to 0x48 - interrupt priority registers
	// uint32_t __IO stir;	// 0x48 to 0x54 - software trigger interrupt register
} nvic_t;

nvic_t *nvic;

void nvic_enable(uint8_t irq_pos);

#endif
