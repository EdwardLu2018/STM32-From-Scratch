#include "delay.h"
#include "gpio.h"
#include "rcc.h"

int main(void) {
    rcc_init();
    gpio_init();

    while(1) {
        led_on(gpio_a, LED_BIT);
        delay(1000000U);
        led_off(gpio_a, LED_BIT);
        delay(1000000U);
    }
}
