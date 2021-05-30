#include "bsp.h"

// thread 1
RTOS_TCB tcb1;
uint32_t stack_thread1[THREAD_STACK_SIZE];
void thread1() {
    while(1) {
        LED_Toggle(PC13);
        RTOS_Delay(1U);
    }
}

// thread 2
// RTOS_TCB tcb2;
// uint32_t stack_thread2[THREAD_STACK_SIZE];
// void thread2() {
//     while(1) {
//         LED_Toggle(PA2);
//         RTOS_Delay(1000U);
//     }
// }

int main(void) {
    RCC_Init(0, GPIOA_EN|GPIOC_EN, 0, 0);

    GPIO_PinMode(PC13, OUT_GP_PUSH_PULL_50);
    // GPIO_PinMode(PA2, OUT_GP_PUSH_PULL_50);

    Systick_Init(1000U); // initialize systick at 1Hz

    RTOS_Init();

    RTOS_Add_Thread(&tcb1, &thread1, stack_thread1);
    // RTOS_Add_Thread(&tcb2, &thread2, stack_thread2, sizeof(stack_thread2));

    RTOS_Run();

    while(1);
}
