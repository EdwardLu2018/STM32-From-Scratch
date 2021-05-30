#include "gpio.h"

static gpio_t *const gpios[] = {(gpio_t *)GPIOA_BASE, (gpio_t *)GPIOB_BASE, (gpio_t *)GPIOC_BASE};

void pinMode_output(gpio_port_t gpio_port, unsigned int bit) {
    gpio_t *gpio = gpios[gpio_port];
    int shift_by = (bit % 8) * 4;
    int reg_idx = bit / 8;
    int config = gpio->cr[reg_idx] & ~(0xf << shift_by);
    gpio->cr[reg_idx] = (config | (MODE_OUTPUT_50 << shift_by));
}

void gpio_init(void) {
    pinMode_output(GPIO_C, PC13);
    gio_off(GPIO_C, PC13);
    pinMode_output(GPIO_A, LED_BIT);
    gio_on(GPIO_A, LED_BIT);
}

void gpio_toggle(gpio_port_t gpio_port, unsigned int led) {
    gpio_t *gpio = gpios[gpio_port];
    gpio->odr ^= LED_MASK(led);
}

void gio_on(gpio_port_t gpio_port, unsigned int led) {
    gpio_t *gpio = gpios[gpio_port];
    gpio->odr |= LED_MASK(led);
}

void gio_off(gpio_port_t gpio_port, unsigned int led) {
    gpio_t *gpio = gpios[gpio_port];
    gpio->odr &= ~LED_MASK(led);
}
