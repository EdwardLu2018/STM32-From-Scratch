#ifndef __GPIO__
#define __GPIO__

#include "stm32f103.h"

// // Output bit modes //
// #define MODE_INPUT      0 // input mode
// #define MODE_OUTPUT_10  1 // max speed 10 MHz
// #define MODE_OUTPUT_2   2 // max speed 2 MHz
// #define MODE_OUTPUT_50  3 // max speed 50 MHz

// // Port configuration bits (output) //
// #define GP_OUT_PUSH_PULL    (0<<2)
// #define GP_OUT_OPEN_DRAIN   (1<<2)
// #define ALT_OUT_PUSH_PULL   (2<<2)
// #define ALT_OUT_OPEN_DRAIN  (3<<2)

// // Port configuration bits (input) //
// #define INPUT_ANALOG        (0<<2)
// #define INPUT_FLOATING_PT   (1<<2)
// #define INPUT_PULL_UP_DOWN  (2<<2)

// Output bit modes and configuration bits //
typedef enum {
    INPUT_ANALOG=0, INPUT_FLOATING_PT=4, INPUT_PULL_UP_DOWN=8,
    OUT_GP_PUSH_PULL_10=1, OUT_GP_PUSH_PULL_2=2, OUT_GP_PUSH_PULL_50=3,
    OUT_GP_OPEN_DRAIN_10=5, OUT_GP_OPEN_DRAIN_2=6, OUT_GP_OPEN_DRAIN_50=7,
    OUT_ALT_PUSH_PULL_10=9, OUT_ALT_PUSH_PULL_2=10, OUT_ALT_PUSH_PULL_50=11,
    OUT_ALT_OPEN_DRAIN_10=13, OUT_ALT_OPEN_DRAIN_2=14, OUT_ALT_OPEN_DRAIN_50=15
} gpio_mode_config_t;

#define LED_MASK(pin)   (1<<(pin))
#define PIN_MASK        0x0f

// general purpose input/output (page 171 Reference Manual) //
typedef struct {
    uint32_t __IO cr[2];    // 0x0 to 0x4 - port configuration register (low/high)
    uint32_t __IO idr;      // 0x8 - input data register
    uint32_t __IO odr;      // 0xC - output data register
    uint32_t __IO bsrr;     // 0x10 - bit set/reset register
    uint32_t __IO brr;      // 0x14 - bit reset register
    uint32_t __IO lckr;     // 0x18 - port configuration lock register
} gpio_t;

gpio_t *gpio_a;
gpio_t *gpio_b;
gpio_t *gpio_c;

typedef enum {
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
void pin_mode(uint8_t pin, uint8_t mode);
void gpio_toggle(uint8_t pin);
void led_on(uint8_t pin);
void led_off(uint8_t pin);

#endif
