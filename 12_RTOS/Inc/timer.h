#ifndef _TIMER_H_
#define _TIMER_H_

#include "stm32f103.h"
#include "intrinsic.h"

#define CHAN1   0
#define CHAN2   1
#define CHAN3   2
#define CHAN4   3

typedef enum {
    TIM1, TIM2, TIM3, TIM4,
    TIM5, TIM6, TIM7
} tim_num_t;

//  Output compare modes (pg 414) //
typedef enum {
    // OC1REF toggles when TIMx_CNT=TIMx_CCR1
    TOGGLE = (3 << 4),
    // enables timer PWM mode and corresponding pRELOAD register
    PWM = ((6 << 4)|(1<<3))
} output_compare_mode_t;

#define TOGGLE  (3 << 4)
#define PWM     ((6 << 4)|(1<<3)) // enables timer PWM mode and corresponding pRELOAD register

// Timers (pg 404 Reference Manual) - 72 MHz
typedef struct {
    uint32_t volatile CR[2];    // 0x0 to 0x4 - control register (low/high)
    uint32_t volatile SMCR;     // 0x8 - slave mode control register
    uint32_t volatile DIER;     // 0xC - DMA/Interrupt enable register
    uint32_t volatile SR;       // 0x10 - status register
    uint32_t volatile EGR;      // 0x14 - event generation register
    uint32_t volatile CCMR[2];  // 0x18 to 0x1C - capture/compare mode register (low/high)
    uint32_t volatile CCER;     // 0x20 - capture/compare enable register
    uint32_t volatile CNT;      // 0x24 - counter
    uint32_t volatile PSC;      // 0x28 - prescaler
    uint32_t volatile ARR;      // 0x2C - auto-RELOAD register
    uint32_t __padding0;    // 0x30 padding
    uint32_t volatile CCR[4];   // 0x34 to 0x40 - capture/compare register
    uint32_t __padding1;    // 0x44 padding
    uint32_t volatile DCR;      // 0x48 -  DMA control register
    uint32_t volatile DMAR;     // 0x4C - DMA address for full transfer
} tim_t;

uint32_t tim_get_cnt(uint8_t timer);
void tim_reset_int(uint8_t timer);
void tim_enable_chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load);
void tim_init(uint8_t timer, uint32_t prescaler, uint32_t period);

#endif
