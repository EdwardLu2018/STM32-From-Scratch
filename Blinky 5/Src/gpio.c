#include "gpio.h"

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

gpio_t *get_gpio(unsigned char pin) {
    switch(pin >> 4) {
        case 0: return gpio_a;
        case 1: return gpio_b;
        // case 2: return gpio_c;
        default: return gpio_c;
    }
}

void pinMode_output(unsigned char pin) {
    gpio_t *gpio = get_gpio(pin);
    unsigned char bit = pin & PIN_MASK; // mask the input to get the pin number
    unsigned char shift_by = (bit % 8) * 4;
    unsigned char reg_idx = bit / 8; // get lo/hi control register index
    unsigned long config = gpio->cr[reg_idx] & ~(0xf << shift_by);
    gpio->cr[reg_idx] = (config | (MODE_OUTPUT_50 << shift_by));
    // led_on(pin);
}

void led_toggle(unsigned char pin) {
    gpio_t *gpio = get_gpio(pin);
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
}

void led_on(unsigned char pin) {
    gpio_t *gpio = get_gpio(pin);
    gpio->odr |= LED_MASK(pin & PIN_MASK);
}

void led_off(unsigned char pin) {
    gpio_t *gpio = get_gpio(pin);
    gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
