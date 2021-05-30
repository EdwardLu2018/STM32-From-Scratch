#include "systick.h"

unsigned volatile long cnt = 0;
void systick_handle(void) {
    cnt++;
}systick_t *systick = (systick_t *)(SYSTICK_BASE);

void systick_init(unsigned long reload_val) {
    systick_t *systick = (systick_t *)(SYSTICK_BASE);
    systick->reload = reload_val - 1U;
    systick->val = 0U;
    cnt = 0;
    systick->ctrl = (AHB_EN | TICKINT_EN | TICK_EN);
}

unsigned long millis(void) {
    return cnt;
}
