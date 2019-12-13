#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"
#include "systick.h"

int main(void) {
    rcc_init();
    pin_mode(PC13, OUT_GP_PUSH_PULL_50); // on board LED
    pin_mode(PA12, OUT_GP_PUSH_PULL_50); // external LED1
    pin_mode(PA8, OUT_GP_PUSH_PULL_50); // external LED2
    timer_init(2, 500U, 1000U); // init tim2 at 0.5Hz
    timer_init(3, 250U, 1000U); // init tim3 at 0.25Hz
    systick_init(1000U); // init systick at 1Hz

    unsigned long start_t = millis();
    while(1) {
        if (millis() - start_t > 1000) {
            led_toggle(PA12);
            start_t = millis();
        }
    }
}
