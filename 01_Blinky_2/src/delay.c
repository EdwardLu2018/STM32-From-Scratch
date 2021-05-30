#include "delay.h"

/* spin for some amount of ticks */
void delay(unsigned volatile int t) {
    for (unsigned volatile int i = 0; i < t; i++);
}
