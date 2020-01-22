#include "scb.h"
#include "delay.h"

SCB_t *scb = (SCB_t *)(SCB_BASE);

static void __DSB(void) {
    asm("dsb 0xF" ::: "memory");
}

static void SCB_Reset_System(void) {
    scb->AIRCR = (VECT_KEY|(scb->AIRCR&PRIORITY)|SYSRESETREQ);
    __DSB(); // ensures the completion of memory accesses
    while(1);
}
