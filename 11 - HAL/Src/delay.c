#include "delay.h"
#include "systick.h"
#include "intrinsic.h"

void delay(uint64_t volatile t) {
    for (uint64_t volatile i = 0; i < t; i++)
        __NOP();
}

void systick_delay(uint64_t __IO t) {
    uint64_t start_t = millis();
    while(millis() - start_t < t)
        __NOP();
}
