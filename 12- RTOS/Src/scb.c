#include "scb.h"
#include "delay.h"

SCB_t *scb = (SCB_t *)(SCB_BASE);

static void __DSB(void) {
    asm("dsb 0xF");
}

static void SCB_Reset_System(void) {
    scb->AIRCR = (VECT_KEY|(scb->AIRCR&PRIORITY)|SYSRESETREQ);
    __DSB(); // ensures the completion of memory accesses
    while(1);
}

void SYSTICK_set_prio(uint8_t prio) {
    scb->SHPR3 |= (prio << 24); // set SYSTICK priority to lowest level
}
