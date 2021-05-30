#ifndef __INSTRINSIC__
#define __INSTRINSIC__

#include <stdint.h>

void __enable_irq(void);
void __disable_irq(void);
void __WFI(void);
void __NOP(void);

#endif
