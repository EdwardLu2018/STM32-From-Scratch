#include "systick.h"

systick_t *systick = (systick_t *)(SYSTICK_BASE);

void systick_handle(void) {

}

void systick_init(unsigned long reload_val) {
    systick->val = 0U;
    systick->ctrl = (AHB_EN | TICKINT_EN | TICK_EN);
    systick->reload = reload_val - 1U;
}
