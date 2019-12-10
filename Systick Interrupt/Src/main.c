#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"
#include "systick.h"


int main(void) {
    rcc_init();
    pinMode_output(PC13); // on board LED
    led_off(PC13);
    pinMode_output(PA0); // external LED
    timer_init(2, 10000U, 1000U); // 10000
    systick_init(10000U);

    unsigned long start_t = millis();
    while(1) {
        if (millis() - start_t > 1000) {
            led_toggle(PC13);
            start_t = millis();
        }
    }
}
