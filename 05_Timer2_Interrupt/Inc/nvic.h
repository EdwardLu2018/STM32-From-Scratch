#ifndef _NVIC_H_
#define _NVIC_H_

#include "stm32f103.h"

typedef struct nvic_t {
    unsigned volatile long iser[3];	// 0x0 to 0xB - interrupt set-enable registers
	unsigned volatile long icer[3];	// 0xC to 0x18 - interrupt clear-enable registers
	unsigned volatile long ispr[3];	// 0xC to 0x18 - interrupt set-pending registers
	unsigned volatile long icpr[3];	// 0xC to 0x18 - interrupt clear-pending registers
	unsigned volatile long iabr[3];	// 0xC to 0x18 - interrupt active bit registers
	// unsigned volatile long ipr[3];	// 0xC to 0x18 - interrupt priority registers
	// unsigned volatile long stir;	// 0xC to 0x18 - software trigger interrupt register
} nvic_t;

void nvic_enable(unsigned char irq_pos);

#endif /* _NVIC_H_ */
