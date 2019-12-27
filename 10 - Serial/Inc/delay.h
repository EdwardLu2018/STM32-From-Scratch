#ifndef __DELAY__
#define __DELAY__

#include "stm32f103.h"

void delay(uint64_t __IO t);
void systick_delay(uint64_t __IO t);

#endif
