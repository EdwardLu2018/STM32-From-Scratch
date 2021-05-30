#include "systick.h"



void Systick_Init(uint32_t RELOAD_val) {
    systick->RELOAD = PCLK2 / RELOAD_val - 1U;
    systick->VAL = 0U;
    systick->CTRL = (AHB_EN|TICKINT_EN|TICK_EN);
}

uint32_t Systick_Millis(void) {
    return cnt;
}
