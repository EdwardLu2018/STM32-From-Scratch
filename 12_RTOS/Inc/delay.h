#ifndef _DELAY_H_
#define _DELAY_H_

#include "intrinsic.h"

void delay(uint64_t volatile t);
void Systick_delay(uint64_t volatile t);

#endif
