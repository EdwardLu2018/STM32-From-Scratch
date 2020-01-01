#include "scb.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

static void __DSB(void) {
    asm("dsb 0xF" ::: "memory");
}

static void reset_system(void) {
    scb->aircr = (VECT_KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
    __DSB(); // ensures the completion of memory accesses
    while(1);
}
