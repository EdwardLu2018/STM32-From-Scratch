#ifndef __DELAY__
#define __DELAY__

#include "intrinsic.h"

void delay(uint64_t volatile t);
void systick_delay(uint64_t volatile t);

#endif
