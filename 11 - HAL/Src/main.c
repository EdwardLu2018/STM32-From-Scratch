#include "main.h"

#define STEP 10

int main(void) {
    rcc_init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, USART1_EN);

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1
    pin_mode(PA10, OUT_ALT_PUSH_PULL_50); // enable Rx pin for usart1

    timer_init(TIM3, 10000U, 10000U); // tim3 at 1MHz
    pin_mode(PA7, OUT_GP_PUSH_PULL_50);

    timer_init(TIM2, 10000U, 255U);
    pin_mode(PA2, OUT_ALT_PUSH_PULL_50);

    systick_init(1000U); // initialize systick at 1Hz

    uint8_t pwm = 0U;
    uint64_t start_t = millis();
    bool up = true;

    while(1) {
        if (millis() - start_t > 1000U) {
            led_toggle(PC13);
            start_t = millis();
            if (up) {
                pwm += STEP;
            }
            else {
                pwm -= STEP;
            }

            if (pwm == 250 || pwm == 0) up = !up;
            enable_chan(TIM2, PWM, CHAN3, pwm);
        }
    }
}
