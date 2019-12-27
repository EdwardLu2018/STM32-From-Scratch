#include "delay.h"
#include "systick.h"

void delay(uint64_t __IO t) {
    for (uint64_t __IO i = 0; i < t; i++);
}

void systick_delay(uint64_t __IO t) {
    uint64_t start_t = millis();
    while(millis() - start_t < t);
}
