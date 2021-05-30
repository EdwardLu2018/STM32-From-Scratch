#include "systick.h"
#include "rtos.h"

void systick_init(uint32_t reload_val) {
    systick_t *systick = (systick_t *)(SYSTICK_BASE);
    systick->RELOAD = PCLK2 / reload_val - 1U;
    systick->VAL = 0U;
    systick->CTRL = (AHB_EN|TICKINT_EN|TICK_EN);
}

static uint32_t volatile SysTick_TickCtr = 0;
void systick_handler(void) {
    SysTick_TickCtr++;

    RTOS_Tick();

    __disable_irq();
    RTOS_Schedule();
    __enable_irq();
}

uint32_t systick_millis(void) {
    return SysTick_TickCtr;
}
