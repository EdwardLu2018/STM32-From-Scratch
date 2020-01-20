#include "gpio.h"

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

gpio_t *gpio_get(uint8_t pin) {
    switch(pin >> 4) {
        case 0: return gpio_a;
        case 1: return gpio_b;
        // case 2: return gpio_c;
        default: return gpio_c;
    }
}

void pin_mode(uint8_t pin, uint8_t mode) {
    gpio_t *gpio = gpio_get(pin);
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
    uint8_t shift_by = (bit % 8) * 4;
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
    uint32_t config = gpio->cr[reg_idx] & ~(0xf << shift_by);
    gpio->cr[reg_idx] = (config | (mode << shift_by));
}

void led_toggle(uint8_t pin) {
    gpio_t *gpio = gpio_get(pin);
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
}

void led_on(uint8_t pin) {
    gpio_t *gpio = gpio_get(pin);
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}

void led_off(uint8_t pin) {
    gpio_t *gpio = gpio_get(pin);
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
