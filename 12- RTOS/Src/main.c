#include "bsp.h"

uint32_t __IO cnt = 0;
void SysTick_Handler(void) {
    cnt++;
}

uint32_t stack_blinky1[40];
uint32_t *sp_blinky1 = &stack_blinky1[40];
void blinky1() {
    while(1) {
        LED_On(PA2);
        Systick_delay(1000);
        LED_Off(PA2);
        Systick_delay(1000);
    }
}

uint32_t stack_blinky2[40];
uint32_t *sp_blinky2 = &stack_blinky2[40];
void blinky2() {
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
     * |  LR (R14) | *      ||
     * |    R12    | *      ||
     * |    R3     | *      ||
     * |    R2     | *      \/
     * |    R1     | *
     * |    R0     | * low addresses
     * Stack grows down!
     */

    *(--sp_blinky1) = (1U << 24); // set thumb state bit of xPSR (pg 22 of programming manual)
    *(--sp_blinky1) = (uint32_t)&blinky1; // set PC to address of blinky1. cast to 32 bits to fit on stack
    // since blinky1 is a thread function, there is no return, so set remaining regs to dummy values
    *(--sp_blinky1) = 0x0000000EU; // R14
    *(--sp_blinky1) = 0x0000000CU; // R12
    *(--sp_blinky1) = 0x00000003U; // R3
    *(--sp_blinky1) = 0x00000002U; // R2
    *(--sp_blinky1) = 0x00000001U; // R1
    *(--sp_blinky1) = 0x00000000U; // R0

    // do same for blinky2
    *(--sp_blinky1) = (1U << 24);
    *(--sp_blinky1) = (uint32_t)&blinky2;
    *(--sp_blinky1) = 0x0000000EU; // R14
    *(--sp_blinky1) = 0x0000000CU; // R12
    *(--sp_blinky1) = 0x00000003U; // R3
    *(--sp_blinky1) = 0x00000002U; // R2
    *(--sp_blinky1) = 0x00000001U; // R1
    *(--sp_blinky1) = 0x00000000U; // R0

    while(1) {}
}
