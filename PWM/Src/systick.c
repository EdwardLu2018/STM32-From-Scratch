#include "systick.h"

systick_t *systick = (systick_t *)(SYSTICK_BASE);

unsigned volatile long cnt = 0;
void systick_handle(void) {
    cnt++;
}

void systick_init(unsigned long reload_val) {
    systick->reload = reload_val - 1U;
    systick->val = 0U;
    cnt = 0;
    systick->ctrl = (TICKINT_EN | TICK_EN);
}

unsigned long millis(void) {
    return cnt;
}
