#include "bsp.h"

// thread 1
uint32_t stack_thread1[40];
uint32_t *sp_thread1 = &stack_thread1[40];
void thread1() {
    while(1) {
        LED_On(PA2);
        Systick_delay(1000);
        LED_Off(PA2);
        Systick_delay(1000);
    }
}

// thread 2
uint32_t stack_thread2[40];
uint32_t *sp_thread2 = &stack_thread2[40];
void thread2() {
    while(1) {
        LED_On(PA7);
        Systick_delay(1000);
        LED_Off(PA7);
        Systick_delay(1000);
    }
}

int main(void) {
    RCC_Init(0, GPIOA_EN|GPIOB_EN|GPIOC_EN, 0, 0);

    GPIO_PinMode(PC13, OUT_GP_PUSH_PULL_50);

    GPIO_PinMode(PA7, OUT_GP_PUSH_PULL_50); // enable PA7 as output
    GPIO_PinMode(PA2, OUT_ALT_PUSH_PULL_50); // enable PA2 as output

    Systick_Init(1000U); // initialize systick at 1Hz
    __enable_irq();

    while(1);
}
