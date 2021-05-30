#include "delay.h"
#include "systick.h"
#include "intrinsic.h"

void delay(uint32_t volatile t) {
    for (uint32_t volatile i = 0; i < t; i++)
        __NOP();
}

void Systick_delay(uint32_t volatile t) {
    uint32_t start_t = Systick_Millis();
    while(Systick_Millis() - start_t < t)
        __NOP();
}
