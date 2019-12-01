#include "gpio.h"

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

void pinMode_output(gpio_t *gpio, unsigned int bit) {
    int shift_by = (bit % 8) * 4;
    int reg_idx = bit / 8;
    int config = gpio->cr[reg_idx] & ~(0xf << shift_by);
    gpio->cr[reg_idx] = (config | (MODE_OUTPUT_50 << shift_by));
}

void gpio_init(void) {
    pinMode_output(gpio_c, PC13);
    led_off(gpio_c, PC13);
    pinMode_output(gpio_a, LED_BIT);
    led_on(gpio_a, LED_BIT);
}

void led_toggle(gpio_t *gpio, unsigned int led) {
    // gpio_c->odr ^= LED_MASK(led);
}

void led_on(gpio_t *gpio, unsigned int led) {
    gpio->bsrr = LED_MASK(led+16U);
}

void led_off(gpio_t *gpio, unsigned int led) {
    gpio->bsrr = LED_MASK(led);
}
