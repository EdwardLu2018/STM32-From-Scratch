#include "gpio.h"

static gpio_t *const gpios[] = {(gpio_t *)GPIOA_BASE, (gpio_t *)GPIOB_BASE, (gpio_t *)GPIOC_BASE};

GPIO_t *GPIO_Get(uint8_t pin) {
    switch(pin >> 4) {
        case GPIOA: return gpio_a;
        case GPIOB: return gpio_b;
        case GPIOC: return gpio_c;
        default: return gpio_c;
    }
}

void GPIO_PinMode(uint8_t pin, uint8_t mode) {
    GPIO_t *gpio = GPIO_Get(pin);
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
    uint8_t shift_by = (bit % 8) * 4;
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
    uint32_t config = gpio->CR[reg_idx] & ~(0xf << shift_by);
    gpio->CR[reg_idx] = (config | (mode << shift_by));
}

void gpio_toggle(uint8_t pin) {
    GPIO_t *gpio = GPIO_Get(pin);
    gpio->ODR ^= LED_MASK(pin & PIN_MASK);
}

void gio_on(uint8_t pin) {
    GPIO_t *gpio = GPIO_Get(pin);
    if (pin == PC13) gpio->ODR &= ~LED_MASK(pin & PIN_MASK);
    else gpio->ODR |= LED_MASK(pin & PIN_MASK);
}

void gio_off(uint8_t pin) {
    GPIO_t *gpio = GPIO_Get(pin);
    if (pin == PC13) gpio->ODR |= LED_MASK(pin & PIN_MASK);
    else gpio->ODR &= ~LED_MASK(pin & PIN_MASK);
}
