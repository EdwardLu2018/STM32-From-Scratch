#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"

int main(void) {
    rcc_init();
    pinMode_output(PC13);
    led_on(PC13); // turns off pin 13
    pinMode_output(PA0);
    pinMode_output(PA15); // tim2
    tim2_init();

    while(1) {
        // led_toggle(PA0);
        // delay(100000U);

        led_on(PC13); // off
        delay(1000000U);
        led_off(PC13); // on
        delay(1000000U);
    }
}
