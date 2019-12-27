#include "gpio.h"

gpio_t *gpio = (gpio_t *)(GPIOC_BASE);

void gpio_init(void) {
    gpio->cr[1] &= (0<<22)|(0<<23);
    gpio->cr[1] |= (1<<20);
}

void led_toggle(unsigned long led) {
    gpio->odr ^= (1<<led);
}
