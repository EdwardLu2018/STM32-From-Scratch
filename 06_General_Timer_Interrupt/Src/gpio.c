#include "gpio.h"

static gpio_t *const gpios[] = {(gpio_t *)GPIOA_BASE, (gpio_t *)GPIOB_BASE, (gpio_t *)GPIOC_BASE};

static gpio_port_t get_gpio_port(unsigned char pin) {
    switch(pin >> 4) {
        case 0: return GPIO_A;
        case 1: return GPIO_B;
        // case 2: return gpio_c;
        default: return GPIO_C;
    }
}

void pinMode_output(unsigned char pin) {
    gpio_port_t gpio_port = get_gpio_port(pin);
    gpio_t *gpio = gpios[gpio_port];
    unsigned char bit = pin & PIN_MASK; // mask the input to get the pin number
    unsigned char shift_by = (bit % 8) * 4;
    unsigned char reg_idx = bit / 8; // get lo/hi control register index
    unsigned long config = gpio->cr[reg_idx] & ~(0xf << shift_by);
    gpio->cr[reg_idx] = (config | (MODE_OUTPUT_50 << shift_by));
}

void gpio_toggle(unsigned char pin) {
    gpio_port_t gpio_port = get_gpio_port(pin);
    gpio_t *gpio = gpios[gpio_port];
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
}

void gio_on(unsigned char pin) {
    gpio_port_t gpio_port = get_gpio_port(pin);
    gpio_t *gpio = gpios[gpio_port];
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}

void gio_off(unsigned char pin) {
    gpio_port_t gpio_port = get_gpio_port(pin);
    gpio_t *gpio = gpios[gpio_port];
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
