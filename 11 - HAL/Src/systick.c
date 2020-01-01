#include "systick.h"

systick_t *systick = (systick_t *)(SYSTICK_BASE);

void systick_init(uint32_t reload_val) {
    systick->reload = PCLK2 / reload_val - 1U;
    systick->val = 0U;
    systick->ctrl = (AHB_EN|TICKINT_EN|TICK_EN);
}

uint32_t millis(void) {
    return cnt;
}
