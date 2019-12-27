#include "delay.h"
#include "systick.h"

void delay(unsigned volatile int t) {
    for (unsigned volatile int i = 0; i < t; i++);
}

void systick_delay(unsigned volatile long t) {
    unsigned long start_t = millis();
    while(millis() - start_t < t);
}
