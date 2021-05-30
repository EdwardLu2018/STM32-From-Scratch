#ifndef _TIMER_H_
#define _TIMER_H_

#include "stm32f103.h"

#define CLK_HZ 72000000U // 72 Mhz clock

#define TIM_IRQ_POS 28

// Timers (pg 404) - 72 MHz
typedef struct timer_t {
    unsigned volatile long cr[2]; // 0x0 to 0x4 - control register (low/high)
    unsigned volatile long smcr; // 0x8 - slave mode control register
    unsigned volatile long dier; // 0xC - DMA/Interrupt enable register
    unsigned volatile long sr; // 0x10 - status register
    unsigned volatile long egr; // 0x14 - event generation register
    unsigned volatile long ccmr[2]; // 0x18 to 0x1C - capture/compare mode register (low/high)
    unsigned volatile long ccer; // 0x20 - capture/compare enable register
    unsigned volatile long cnt; // 0x24 - counter
    unsigned volatile long psc; // 0x28 - prescaler
    unsigned volatile long arr; // 0x2C - auto-reload register
    unsigned long __padding0; // 0x30 padding
    unsigned volatile long ccr[4]; // 0x34 to 0x40 - counter
    unsigned long __padding1; // 0x44 padding
    unsigned volatile long dcr; // 0x48 -  DMA control register
    unsigned volatile long dmar; // 0x4C - DMA address for full transfer
} timer_t;

void tim2_handle(void);
void enable_chan(unsigned char channel, unsigned char load);
void tim2_init(void);

#endif /* _TIMER_H_ */
