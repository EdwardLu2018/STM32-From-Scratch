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

void pin_mode(pin_t pin, uint8_t mode) {
    gpio_port_t gpio_port = get_gpio_port(pin);
    gpio_t *gpio = gpios[gpio_port];
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
    uint8_t shift_by = (bit % 8) * 4;
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
    uint32_t config = gpio->cr[reg_idx] & ~(0xf << shift_by);
    gpio->cr[reg_idx] = (config | (mode << shift_by));
}

void gpio_toggle(pin_t pin) {
    gpio_port_t gpio_port = get_gpio_port(pin);
    gpio_t *gpio = gpios[gpio_port];
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
}

void gio_on(pin_t pin) {
    gpio_port_t gpio_port = get_gpio_port(pin);
    gpio_t *gpio = gpios[gpio_port];
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}

void gio_off(pin_t pin) {
    gpio_port_t gpio_port = get_gpio_port(pin);
    gpio_t *gpio = gpios[gpio_port];
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
