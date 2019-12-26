#ifndef __TIMER__
#define __TIMER__

#include "stm32f103.h"

#define HSI_MHZ 8000000U  // 8 Mhz clock
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
#define TIM5    5
#define TIM6    6
#define TIM7    7

//  Output compare modes (pg 414) //
typedef enum {
    // OC1REF toggles when TIMx_CNT=TIMx_CCR1
    TOGGLE = (3 << 4),
    // enables timer PWM mode and corresponding preload register
    PWM = ((6 << 4)|(1<<3)),

} output_compare_mode_t;

#define TOGGLE  (3 << 4)
#define PWM     ((6 << 4)|(1<<3)) // enables timer PWM mode and corresponding preload register

// Timers (pg 404 Reference Manual) - 72 MHz
typedef struct {
    uint32_t __IO cr[2]; // 0x0 to 0x4 - control register (low/high)
    uint32_t __IO smcr; // 0x8 - slave mode control register
    uint32_t __IO dier; // 0xC - DMA/Interrupt enable register
    uint32_t __IO sr; // 0x10 - status register
    uint32_t __IO egr; // 0x14 - event generation register
    uint32_t __IO ccmr[2]; // 0x18 to 0x1C - capture/compare mode register (low/high)
    uint32_t __IO ccer; // 0x20 - capture/compare enable register
    uint32_t __IO cnt; // 0x24 - counter
    uint32_t __IO psc; // 0x28 - prescaler
    uint32_t __IO arr; // 0x2C - auto-reload register
    uint32_t __padding0; // 0x30 padding
    uint32_t __IO ccr[4]; // 0x34 to 0x40 - capture/compare register
    uint32_t __padding1; // 0x44 padding
    uint32_t __IO dcr; // 0x48 -  DMA control register
    uint32_t __IO dmar; // 0x4C - DMA address for full transfer
} timer_t;

timer_t *tim2;
timer_t *tim3;
timer_t *tim4;

timer_t *get_timer(uint8_t timer);
uint32_t get_timer_cnt(uint8_t timer);
void enable_chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load);
void timer_init(uint8_t timer, uint32_t prescaler, uint32_t period);

#endif
