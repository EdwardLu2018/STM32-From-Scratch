#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"

int main(void) {
    rcc_init();
    pinMode_output(PC13); // on board LED
    pinMode_output(PA0); // external LED
    timer_init(4, 1000U, 1000U);

    while(1) {
        led_on(PC13);
        delay(1000000U);
        led_off(PC13);
        delay(1000000U);
    }
}
