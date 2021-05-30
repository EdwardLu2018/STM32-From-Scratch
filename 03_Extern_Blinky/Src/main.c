#include "delay.h"
#include "gpio.h"
#include "rcc.h"

int main(void) {
    rcc_init();
    gpio_init();

    while(1) {
        gio_on(GPIO_A, LED_BIT);
        delay(1000000U);
        gio_off(GPIO_A, LED_BIT);
        delay(1000000U);
    }
}
