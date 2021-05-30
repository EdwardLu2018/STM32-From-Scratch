#include "main.h"

uint32_t adc_in;

void ADC1_2_IRQHandler(void) {
    adc_in = ADC_Read(ADC1);
}

void TIM2_IRQHandler(void) {
    TIM_t *tim2 = timers[2];
    tim2->SR = 0U; // reset interrupt
}

void TIM3_IRQHandler(void) {
    TIM_t *tim3 = timers[3];
    tim3->SR = 0U; // reset interrupt
    gpio_toggle(PA7);
}

void USART1_IRQHandler(void) {
    char in = (char)(usart1->DATA & DATA_MASK);
    Serial_Write_Char(USART1, in);
}

static uint32_t volatile cnt = 0;
void SysTick_Handler(void) {
    cnt++;
}

#define STEP 25

int main(void) {
    RCC_Init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, ADC1_EN, USART1_EN);

    GPIO_PinMode(PC13, OUT_GP_PUSH_PULL_50);
    GPIO_PinMode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1 as output
    GPIO_PinMode(PA10, INPUT_FLOATING_PT); // enable Rx pin for usart1 as input

    ADC_Init(ADC1);
    ADC_Set_Chan(ADC1, CHAN1, Cycles_28Pt5); // 28.5 Cycles
    GPIO_PinMode(PA0, INPUT_ANALOG); // enable analog input at A0
    NVIC_Irq_Enable(ADC1_2_IRQn);

    TIM_Init(TIM3, 10000U, 10000U); // tim3 at 1MHz
    GPIO_PinMode(PA7, OUT_GP_PUSH_PULL_50);
    NVIC_Irq_Enable(TIM3_IRQn);

    TIM_Init(TIM2, 10000U, 255U);
    GPIO_PinMode(PA2, OUT_ALT_PUSH_PULL_50);
    NVIC_Irq_Enable(TIM2_IRQn);

    Systick_Init(1000U); // initialize systick at 1Hz
    Serial_Init(USART1, 115200U); // initializer serial at 115200 BAUD
    NVIC_Irq_Enable(USART1_IRQn);

    uint8_t pwm = 0U;
    uint32_t start_t = Systick_Millis();
    bool up = true;

    while(1) {
        if (Systick_Millis() - start_t > 1000U) {
            Serial_Write_Str(USART1, "hello world!", true);
            gpio_toggle(PC13);
            start_t = Systick_Millis();

            if (up) pwm += STEP;
            else pwm -= STEP;

            if (pwm == 250 || pwm == 0) up = !up;
            TIM_Enable_Chan(TIM2, PWM, CHAN3, pwm);
        }
    }
}
