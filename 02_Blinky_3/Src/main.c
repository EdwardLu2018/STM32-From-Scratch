#include "delay.h"
#include "gpio.h"
#include "rcc.h"

int main (void) {
    rcc_init();
    gpio_init();

    while (1) {
        gpio_toggle(13U);
        delay(1000000U);
    }
}
