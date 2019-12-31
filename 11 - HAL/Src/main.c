#include "main.h"

int main(void) {
    rcc_init(TIM2_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, USART1_EN);

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1
    pin_mode(PA10, OUT_ALT_PUSH_PULL_50); // enable Rx pin for usart1

    systick_init(1000U); // initialize systick at 1Hz

    while(1) {
        led_toggle(PC13);
        systick_delay(1000);
    }
}
