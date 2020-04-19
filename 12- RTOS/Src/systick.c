#include "systick.h"
#include "rtos.h"

Systick_t *systick = (Systick_t *)(SYSTICK_BASE);

void Systick_Init(uint32_t RELOAD_val) {
    systick->RELOAD = PCLK2 / RELOAD_val - 1U;
    systick->VAL = 0U;
    systick->CTRL = (AHB_EN|TICKINT_EN|TICK_EN);
}

static uint32_t __IO SysTick_TickCtr = 0;
void SysTick_Handler(void) {
    SysTick_TickCtr++;

    __disable_irq();
    RTOS_tick();
    RTOS_schedule();
    __enable_irq();
}

uint32_t Systick_Millis(void) {
    return SysTick_TickCtr;
}
