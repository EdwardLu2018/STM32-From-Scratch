#ifndef __TIMER__
#define __TIMER__

#include "stm32f103.h"

#define PCLK1   36000000U // 36 Mhz clock
#define PCLK2   72000000U // 72 Mhz clock

#define TIM_IRQ_START_POS 28

#define CHAN1   0
#define CHAN2   1
#define CHAN3   2
#define CHAN4   3

#define TIM1    1
#define TIM2    2
#define TIM3    3
#define TIM4    4

//  Output compare modes (pg 414) //
typedef enum output_compare_mode_t {
    // OC1REF toggles when TIMx_CNT=TIMx_CCR1
    TOGGLE = (3 << 4),
    // enables timer PWM mode and corresponding preload register
    PWM = ((6 << 4)|(1<<3)),

} output_compare_mode_t;

#define TOGGLE  (3 << 4)
#define PWM     ((6 << 4)|(1<<3)) // enables timer PWM mode and corresponding preload register

// Timers (pg 404 Reference Manual) - 72 MHz
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
    unsigned volatile long ccr[4]; // 0x34 to 0x40 - capture/compare register
    unsigned long __padding1; // 0x44 padding
    unsigned volatile long dcr; // 0x48 -  DMA control register
    unsigned volatile long dmar; // 0x4C - DMA address for full transfer
} timer_t;

timer_t *tim2;
timer_t *tim3;
timer_t *tim4;

timer_t *get_timer(unsigned char timer);
unsigned long get_timer_cnt(unsigned char timer);
void tim2_handle(void);
void tim3_handle(void);
void tim4_handle(void);
void enable_chan(unsigned char timer, unsigned char mode, unsigned char channel, unsigned long load);
void timer_init(unsigned char timer, unsigned long prescaler, unsigned long period);

#endif
