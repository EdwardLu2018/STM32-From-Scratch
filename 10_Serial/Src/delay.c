#include "delay.h"
#include "systick.h"

void delay(uint32_t volatile t) {
    for (uint32_t volatile i = 0; i < t; i++);
}

void systick_delay(uint32_t volatile t) {
    uint32_t start_t = millis();
    while(millis() - start_t < t);
}
