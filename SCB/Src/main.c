#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"
#include "systick.h"
#include "scb.h"

int main(void) {
    rcc_init();

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);

    pin_mode(PA7, OUT_GP_PUSH_PULL_50);
    timer_init(TIM3, 1000U, 1000U);

    systick_init(1000U); // initialize systick at 1Hz

    while(1) {
        systick_delay(1000);
        led_toggle(PC13);
    }
}
