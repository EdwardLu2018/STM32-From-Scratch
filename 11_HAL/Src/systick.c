#include "systick.h"

static uint32_t volatile cnt = 0;

void systick_init(uint32_t RELOAD_val) {
    systick_t *systick = (systick_t *)(SYSTICK_BASE);
    systick->RELOAD = PCLK2 / RELOAD_val - 1U;
    systick->VAL = 0U;
    systick->CTRL = (AHB_EN|TICKINT_EN|TICK_EN);
}

uint32_t systick_millis(void) {
    return cnt;
}
