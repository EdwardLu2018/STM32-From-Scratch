#ifndef __GPIO__
#define __GPIO__

#include "stm32f103.h"
#include <stdint.h>

// Output bit modes //
#define MODE_INPUT 0x0
#define MODE_OUTPUT_10 0x1
#define MODE_OUTPUT_2 0x2
#define MODE_OUTPUT_50 0x3

#define LED_MASK(pin) (1<<(pin))
#define PIN_MASK 0x0f

// general purpose input/output (page 171) //
typedef struct gpio_t {
    uint64_t volatile cr[2]; // 0x0 to 0x4 - port configuration register (low/high)
    uint64_t volatile idr; // 0x8 - input data register
    uint64_t volatile odr; // 0xC - output data register
    uint64_t volatile bsrr; // 0x10 - bit set/reset register
    uint64_t volatile brr; // 0x14 - bit reset register
    uint64_t volatile lckr; // 0x18 - port configuration lock register
} gpio_t;

gpio_t *gpio_a;
gpio_t *gpio_b;
gpio_t *gpio_c;

typedef enum pin_t {
    // GPIO A pins start with 0x0 as MSB //
    PA0=0x00, PA1, PA2, PA3, PA4, PA5, PA6, PA7,
    PA8, PA9, PA10, PA11, PA12, PA13, PA14, PA15,
    // GPIO B pins start with 0x1 as MSB //
    PB0=0x10, PB1, PB2, PB3, PB4, PB5, PB6, PB7,
    PB8, PB9, PB10, PB11, PB12, PB13, PB14, PB15,
    // GPIO B pins start with 0x2 as MSB //
    PC0=0x20, PC1, PC2, PC3, PC4, PC5, PC6, PC7,
    PC8, PC9, PC10, PC11, PC12, PC13, PC14, PC15
} pin_t;

gpio_t *get_gpio(uint8_t pin);
void pinMode_output(uint8_t pin);
void led_toggle(uint8_t pin);
void led_on(uint8_t pin);
void led_off(uint8_t pin);

#endif
