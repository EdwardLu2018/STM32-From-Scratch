#ifndef _GPIO_H_
#define _GPIO_H_

#include "stm32f103.h"
#include "intrinsic.h"

typedef enum {
    GPIOA, GPIOB, GPIOC
} gpio_num_t;

// Output bit modes and configuration bits //
typedef enum {
    // input mode
    INPUT_ANALOG=0, INPUT_FLOATING_PT=4, INPUT_PULL_UP_DOWN=8,
    // max speed 10 MHz    max speed 2 MHz       max speed 50 MHz
    OUT_GP_PUSH_PULL_10=1, OUT_GP_PUSH_PULL_2=2, OUT_GP_PUSH_PULL_50=3,
    OUT_GP_OPEN_drAIN_10=5, OUT_GP_OPEN_drAIN_2=6, OUT_GP_OPEN_drAIN_50=7,
    OUT_ALT_PUSH_PULL_10=9, OUT_ALT_PUSH_PULL_2=10, OUT_ALT_PUSH_PULL_50=11,
    OUT_ALT_OPEN_drAIN_10=13, OUT_ALT_OPEN_drAIN_2=14, OUT_ALT_OPEN_drAIN_50=15
} gpio_mode_config_t;

#define LED_MASK(pin)   (1<<(pin))
#define PIN_MASK        0x0f

// general purpose input/output (page 171 Reference Manual) //
typedef struct {
    uint32_t volatile CR[2];    // 0x0 to 0x4 - port configuration register (low/high)
    uint32_t volatile IDR;      // 0x8 - input DATA register
    uint32_t volatile ODR;      // 0xC - output DATA register
    uint32_t volatile BSRR;     // 0x10 - bit set/reset register
    uint32_t volatile BRR;      // 0x14 - bit reset register
    uint32_t volatile LCKR;     // 0x18 - port configuration lock register
} gpio_t;

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

void gpio_pin_mode(pin_t pin, uint8_t mode);
void gpio_toggle(pin_t pin);
void gio_on(pin_t pin);
void gio_off(pin_t pin);

#endif /* _GPIO_H_ */
