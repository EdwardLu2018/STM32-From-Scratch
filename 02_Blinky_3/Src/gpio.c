#include "gpio.h"

void gpio_init(void) {
    gpio_t *gpio = (gpio_t *)(GPIOC_BASE);
    gpio->cr[1] &= (0<<22)|(0<<23);
    gpio->cr[1] |= (1<<20);
}

void gpio_toggle(unsigned long pin) {
    gpio_t *gpio = (gpio_t *)(GPIOC_BASE);
    gpio->odr ^= (1 << pin);
}
