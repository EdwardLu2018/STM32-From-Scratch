#include "delay.h"
#include "gpio.h"
#include "rcc.h"

int main(void) {
    rcc_init();
    pinMode_output(PA0);

    while(1) {
        led_on(PA0);
        delay(1000000U);
        led_off(PA0);
        delay(1000000U);
    }
}
