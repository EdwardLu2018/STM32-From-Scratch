#ifndef _DELAY_H_
#define _DELAY_H_

#include "stm32f103.h"

void delay(uint64_t __IO t);
void systick_delay(uint64_t __IO t);

#endif
