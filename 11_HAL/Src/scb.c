#include "scb.h"
#include "delay.h"

static void __DSB(void) {
    asm("dsb 0xF" ::: "memory");
}

static void SCB_Reset_System(void) {
    scb_t *scb = (scb_t *)(SCB_BASE);
    scb->AIRCR = (VECT_KEY|(scb->AIRCR&PRIORITY)|SYSRESETREQ);
    __DSB(); // ensures the completion of memory accesses
    while(1);
}
