#include "main.h"

uint32_t adc_in;

void adc1_2_irq_handler(void) {
    adc_in = adc_read(ADC1);
}

void tim2_irq_handler(void) {
    tim_reset_int(2);
}

void tim3_irq_handler(void) {
    gpio_toggle(PA7);
    tim_reset_int(3);
}

void usart1_irq_handler(void) {
    // char in = (char)(usart1->DATA & DATA_MASK);
    char in = serial_rd_ch(USART1);
    serial_wr_ch(USART1, in);
}

static uint32_t volatile cnt = 0;
void systick_handler(void) {
    cnt++;
}

#define STEP 25

int main(void) {
    rcc_init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, ADC1_EN, USART1_EN);

    gpio_pin_mode(PC13, OUT_GP_PUSH_PULL_50);
    gpio_pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1 as output
    gpio_pin_mode(PA10, INPUT_FLOATING_PT); // enable Rx pin for usart1 as input

    adc_init(ADC1);
    adc_set_chan(ADC1, CHAN1, Cycles_28Pt5); // 28.5 Cycles
    gpio_pin_mode(PA0, INPUT_ANALOG); // enable analog input at A0
    nvic_irq_enable(ADC1_2_IRQn);

    tim_init(TIM3, 10000U, 10000U); // tim3 at 1MHz
    gpio_pin_mode(PA7, OUT_GP_PUSH_PULL_50);
    nvic_irq_enable(TIM3_IRQn);

    tim_init(TIM2, 10000U, 255U);
    gpio_pin_mode(PA2, OUT_ALT_PUSH_PULL_50);
    nvic_irq_enable(TIM2_IRQn);

    systick_init(1000U); // initialize systick at 1Hz
    serial_init(USART1, 115200U); // initializer serial at 115200 BAUD
    nvic_irq_enable(USART1_IRQn);

    uint8_t pwm = 0U;
    uint32_t start_t = systick_millis();
    bool up = true;

    while(1) {
        if (systick_millis() - start_t > 1000U) {
            serial_wr_str(USART1, "hello world!", true);
            gpio_toggle(PC13);
            start_t = systick_millis();

            if (up) pwm += STEP;
            else pwm -= STEP;

            if (pwm == 250 || pwm == 0) up = !up;
            tim_enable_chan(TIM2, PWM, CHAN3, pwm);
        }
    }
}
