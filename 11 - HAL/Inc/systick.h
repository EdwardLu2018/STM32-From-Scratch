#ifndef __SYSTICK__
#define __SYSTICK__

#include "stm32f103.h"
#include "intrinsic.h"

#define AHB_EN      (1<<2)
#define TICKINT_EN  (1<<1)
#define TICK_EN     (1<<0)

uint32_t __IO cnt;

// systick timer //
typedef struct
{
    uint32_t __IO CTRL;     // 0x0 - control and status register
    uint32_t __IO RELOAD;   // 0x4 - reload value register
    uint32_t __IO VAL;      // 0x8 - current value register
    uint32_t __IO CALIB;    // 0xC - calibration value register
} Systick_t;

Systick_t *systick;

void Systick_Init(uint32_t reload_val);
uint32_t Systick_Millis(void);

#endif
