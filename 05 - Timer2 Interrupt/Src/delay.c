#include "delay.h"

void delay(unsigned volatile int t) {
    for (unsigned volatile int i = 0; i < t; i++);
}
