#ifndef _NVIC_H_
#define _NVIC_H_

#include "stm32f103.h"

// nested vectored interrupt controller (pg 118 Programming Manual) //
typedef struct {
    uint32_t volatile iser[3];	// 0x0 to 0xB - interrupt set-enable registers
	uint32_t volatile icer[3];	// 0xC to 0x18 - interrupt clear-enable registers
	uint32_t volatile ispr[3];	// 0x18 to 0x24 - interrupt set-pending registers
	uint32_t volatile icpr[3];	// 0x24 to 0x30 - interrupt clear-pending registers
	uint32_t volatile iabr[3];	// 0x30 to 0x3C - interrupt active bit registers
	// uint32_t volatile ipr[3];	// 0x3C to 0x48 - interrupt priority registers
	// uint32_t volatile stir;	// 0x48 to 0x54 - software trigger interrupt register
} nvic_t;

void nvic_enable(uint8_t irq_pos);

#endif /* _NVIC_H_ */
