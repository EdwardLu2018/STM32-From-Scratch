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
    uint32_t __IO ctrl;     // 0x0 - control and status register
    uint32_t __IO reload;   // 0x4 - reload value register
    uint32_t __IO val;      // 0x8 - current value register
    uint32_t __IO calib;    // 0xC - calibration value register
} systick_t;

systick_t *systick;

void systick_init(uint32_t reload_val);
uint32_t millis(void);

#endif
