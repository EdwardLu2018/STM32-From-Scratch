#include "intrinsic.h"

// enable interrupt
inline void __enable_irq(void) {
    __ASM volatile ("cpsie i");
}

// disable interrupt
inline void __disable_irq(void) {
    __ASM volatile ("cpsid i");
}

inline void __WFI(void) {
    __ASM volatile ("wfi");
}

// no operation
inline void __NOP(void) {
    __ASM volatile ("nop");
}
