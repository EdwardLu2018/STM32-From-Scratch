#ifndef _SYSTICK_H_
#define _SYSTICK_H_

#include "stm32f103.h"

#define AHB_EN      (1<<2)
#define TICKINT_EN  (1<<1)
#define TICK_EN     (1<<0)

// systick timer //
typedef struct systick_t {
    unsigned volatile long ctrl; // 0x0 - control and status register
    unsigned volatile long reload; // 0x4 - reload value register
    unsigned volatile long val; // 0x8 - current value register
    unsigned volatile long calib; // 0xC - calibration value register
} systick_t;

void systick_handle(void);
void systick_init(unsigned long reload_val);
unsigned long millis(void);

#endif /* _SYSTICK_H_ */
