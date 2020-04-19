#include "bsp.h"

// thread 1
RTOS_TCB tcb1;
uint32_t stack_thread1[THREAD_STACK_SIZE];
void thread1() {
    while(1) {
        LED_On(PA2);
        RTOS_delay(1000);
        LED_Off(PA2);
        RTOS_delay(1000);
    }
}

// thread 2
RTOS_TCB tcb2;
uint32_t stack_thread2[THREAD_STACK_SIZE];
void thread2() {
    while(1) {
        LED_On(PA7);
        RTOS_delay(1000);
        LED_Off(PA7);
        RTOS_delay(1000);
    }
}

int main(void) {
    RCC_Init(0, GPIOA_EN|GPIOB_EN|GPIOC_EN, 0, 0);

    GPIO_PinMode(PC13, OUT_GP_PUSH_PULL_50);

    GPIO_PinMode(PA7, OUT_GP_PUSH_PULL_50); // enable PA7 as output
    GPIO_PinMode(PA2, OUT_ALT_PUSH_PULL_50); // enable PA2 as output

    Systick_Init(1000U); // initialize systick at 1Hz

    RTOS_init();

    RTOS_add_thread(&tcb1, thread1, &stack_thread1);
    RTOS_add_thread(&tcb2, thread2, &stack_thread2);

    RTOS_run();

    while(1);
}
