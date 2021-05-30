#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"

int main(void) {
    rcc_init();
    pinMode_output(PC13); // on board LED
    gio_off(PC13);
    pinMode_output(PA2); // external LED
    tim2_init();

    while(1) {
        gio_on(PC13);
        delay(1000000U);
        gio_off(PC13);
        delay(1000000U);
    }
}
