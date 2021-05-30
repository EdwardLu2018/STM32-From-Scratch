#ifndef _DELAY_H_
#define _DELAY_H_

#include "stm32f103.h"

void delay(uint32_t volatile t);
void systick_delay(uint32_t volatile t);

#endif /* _DELAY_H_ */
