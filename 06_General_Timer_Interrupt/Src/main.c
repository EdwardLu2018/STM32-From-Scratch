#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"

int main(void) {
    rcc_init();
    pinMode_output(PC13); // on board LED
    pinMode_output(PA2); // external LED
    timer_init(4, 1000U, 1000U);

    while(1) {
        gio_on(PC13);
        delay(1000000U);
        gio_off(PC13);
        delay(1000000U);
    }
}
