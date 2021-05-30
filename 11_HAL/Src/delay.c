#include "delay.h"
#include "systick.h"
#include "intrinsic.h"

void delay(uint32_t volatile t) {
    for (uint32_t volatile i = 0; i < t; i++)
        __NOP();
}

void systick_delay(uint32_t volatile t) {
    uint32_t start_t = systick_millis();
    while(systick_millis() - start_t < t)
        __NOP();
}
