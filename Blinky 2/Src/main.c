#include "stm32f103.h"
#include "delay.h"

int main (void) {
    REG(RCC_CR) |= (1<<16);
    if (REG(RCC_CR) & (1<<17))
        REG(RCC_CFGR) |= (1<<0);
    REG(RCC_APB2ENR) |= (1<<4)|(1<<2)|(1<<3);
    REG(GPIOC_MODERH) &= (0<<22)|(0<<23);
    REG(GPIOC_MODERH) |= (1<<20);

    while (1) {
        REG(GPIOC_ODR) ^= (1<<13);
        delay(1000000U);
    }
}
