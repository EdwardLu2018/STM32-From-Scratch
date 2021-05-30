#include "systick.h"
#include "rtos.h"



void Systick_Init(uint32_t reload_val) {
    systick->RELOAD = PCLK2 / reload_val - 1U;
    systick->VAL = 0U;
    systick->CTRL = (AHB_EN|TICKINT_EN|TICK_EN);
}

static uint32_t volatile SysTick_TickCtr = 0;
void SysTick_Handler(void) {
    SysTick_TickCtr++;

    RTOS_Tick();

    __disable_irq();
    RTOS_Schedule();
    __enable_irq();
}

uint32_t Systick_Millis(void) {
    return SysTick_TickCtr;
}
