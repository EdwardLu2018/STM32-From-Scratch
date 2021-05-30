#ifndef _GPIO_H_
#define _GPIO_H_

#include "stm32f103.h"

// general purpose input/output (page 171)
typedef struct gpio_t {
    unsigned volatile long cr[2]; // 0x0 and 0x4 - port configuration register (low/high)
    unsigned volatile long idr; // 0x8 - input data register
    unsigned volatile long odr; // 0xC - output data register
    unsigned volatile long bsrr; // 0x10 - bit set/reset register
    unsigned volatile long brr; // 0x14 - bit reset register
    unsigned volatile long lckr; // 0x18 - port configuration lock register
} gpio_t;

void gpio_init(void);
void gpio_toggle(unsigned long led);

#endif /* _GPIO_H_ */
