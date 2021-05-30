#ifndef __GPIO__
#define __GPIO__

#include "stm32f103.h"

// Output bit modes //
#define MODE_INPUT 0x0
#define MODE_OUTPUT_10 0x1
#define MODE_OUTPUT_2 0x2
#define MODE_OUTPUT_50 0x3

#define LED_MASK(pin) (1<<(pin))
#define PC13 13U
#define LED_BIT 0U

// general purpose input/output (page 171)
typedef struct gpio_t {
    unsigned volatile long cr[2]; // 0x0 to 0x4 - port configuration register (low/high)
    unsigned volatile long idr; // 0x8 - input data register
    unsigned volatile long odr; // 0xC - output data register
    unsigned volatile long bsrr; // 0x10 - bit set/reset register
    unsigned volatile long brr; // 0x14 - bit reset register
    unsigned volatile long lckr; // 0x18 - port configuration lock register
} gpio_t;

gpio_t *gpio_a;
gpio_t *gpio_b;
gpio_t *gpio_c;

void gpio_init(void);
void pinMode_output(gpio_t *gpio, unsigned int bit);
void gpio_toggle(gpio_t *gpio, unsigned int led);
void led_on(gpio_t *gpio, unsigned int led);
void led_off(gpio_t *gpio, unsigned int led);

#endif
