#include "intrinsic.h"

// enable interrupt
void __enable_irq(void) {
    __ASM volatile ("cpsie i" ::: "memory");
}

// disable interrupt
void __disable_irq(void) {
    __ASM volatile ("cpsid i" ::: "memory");
}

// no operation
void __NOP(void) {
    __ASM volatile ("nop");
}
