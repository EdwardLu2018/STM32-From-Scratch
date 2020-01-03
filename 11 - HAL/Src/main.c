#include "main.h"

void TIM2_IRQHandler(void) {
    tim2->sr = 0U; // reset interrupt
}

void TIM3_IRQHandler(void) {
    tim3->sr = 0U; // reset interrupt
    led_toggle(PA7);
}

void USART1_IRQHandler(void) {
    char in = (char)(usart1->data & DATA_MASK);
    serial_wr_c(USART1, in);
}

uint32_t __IO cnt = 0;
void SysTick_Handler(void) {
    cnt++;
}

#define STEP 25

int main(void) {
    rcc_init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, USART1_EN);

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1 as output
    pin_mode(PA10, INPUT_FLOATING_PT); // enable Rx pin for usart1 as input

    timer_init(TIM3, 10000U, 10000U); // tim3 at 1MHz
    pin_mode(PA7, OUT_GP_PUSH_PULL_50);
    nvic_irq_enable(TIM3_IRQn);

    timer_init(TIM2, 10000U, 255U);
    pin_mode(PA2, OUT_ALT_PUSH_PULL_50);
    nvic_irq_enable(TIM2_IRQn);

    systick_init(1000U); // initialize systick at 1Hz
    serial_init(USART1, 115200U); // initializer serial at 115200 baud
    nvic_irq_enable(USART1_IRQn);

    uint8_t pwm = 0U;
    uint64_t start_t = millis();
    bool up = true;

    while(1) {
        if (millis() - start_t > 1000U) {
            serial_wr_s(USART1, "hello world!", true);
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
