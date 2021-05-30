#ifndef _SYSTICK_H_
#define _SYSTICK_H_

#include "stm32f103.h"

#define AHB_EN      (1<<2)
#define TICKINT_EN  (1<<1)
#define TICK_EN     (1<<0)

// systick timer //
typedef struct {
    uint32_t volatile ctrl;     // 0x0 - control and status register
    uint32_t volatile reload;   // 0x4 - reload value register
    uint32_t volatile val;      // 0x8 - current value register
    uint32_t volatile calib;    // 0xC - calibration value register
} systick_t;

void systick_handle(void);
void systick_init(uint32_t reload_val);
uint32_t millis(void);

#endif /* _SYSTICK_H_ */
