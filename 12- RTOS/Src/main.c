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

    /*
     *   ARM Stack:  *
     * | {aligner} | * high addresses
     * |   xPSR    | *
     * |    PC     | *      ||
     * |  LR (R14) | *      || Stack
     * |    R12    | *      || grows
     * |    R3     | *      || down!
     * |    R2     | *      \/
     * |    R1     | *
     * |    R0     | * low addresses
     */

    // fabricate stack for each thread: //
    *(--sp_thread1) = (1U << 24); // set thumb state bit of xPSR (pg 22 of programming manual)
    *(--sp_thread1) = (uint32_t)&thread1; // set PC to address of thread1. cast to 32 bits to fit on stack
    // since thread1 is a thread function, there is no return, so set remaining regs to dummy values
    *(--sp_thread1) = 0x0000000EU; // R14
    *(--sp_thread1) = 0x0000000CU; // R12
    *(--sp_thread1) = 0x00000003U; // R3
    *(--sp_thread1) = 0x00000002U; // R2
    *(--sp_thread1) = 0x00000001U; // R1
    *(--sp_thread1) = 0x00000000U; // R0
    *(--sp_thread1) = 0x0000000BU; // R11
    *(--sp_thread1) = 0x0000000AU; // R10
    *(--sp_thread1) = 0x00000008U; // R9
    *(--sp_thread1) = 0x00000008U; // R8
    *(--sp_thread1) = 0x00000007U; // R7
    *(--sp_thread1) = 0x00000006U; // R6
    *(--sp_thread1) = 0x00000005U; // R5
    *(--sp_thread1) = 0x00000004U; // R4

    // do same for thread2
    *(--sp_thread2) = (1U << 24);
    *(--sp_thread2) = (uint32_t)&thread2;
    *(--sp_thread2) = 0x0000000EU; // R14
    *(--sp_thread2) = 0x0000000CU; // R12
    *(--sp_thread2) = 0x00000003U; // R3
    *(--sp_thread2) = 0x00000002U; // R2
    *(--sp_thread2) = 0x00000001U; // R1
    *(--sp_thread2) = 0x00000000U; // R0
    *(--sp_thread2) = 0x0000000BU; // R11
    *(--sp_thread2) = 0x0000000AU; // R10
    *(--sp_thread2) = 0x00000008U; // R9
    *(--sp_thread2) = 0x00000008U; // R8
    *(--sp_thread2) = 0x00000007U; // R7
    *(--sp_thread2) = 0x00000006U; // R6
    *(--sp_thread2) = 0x00000005U; // R5
    *(--sp_thread2) = 0x00000004U; // R4

    while(1) {}
}
