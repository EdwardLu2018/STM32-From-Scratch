#include "systick.h"

static uint32_t volatile cnt = 0;

void systick_handle(void) {
    cnt++;
}

void systick_init(uint32_t reload_val) {
    systick_t *systick = (systick_t *)(SYSTICK_BASE);
    systick->reload = PCLK2 / reload_val - 1U;
    systick->val = 0U;
    cnt = 0;
    systick->ctrl = (AHB_EN|TICKINT_EN|TICK_EN);
}

uint32_t millis(void) {
    return cnt;
}
