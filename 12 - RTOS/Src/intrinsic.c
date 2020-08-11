#include "intrinsic.h"

// enable interrupt
inline __attribute__((always_inline)) void __enable_irq(void) {
    __asm volatile
    (
        "cpsie i    \n"
    );
}

// disable interrupt
inline __attribute__((always_inline)) void __disable_irq(void) {
    __asm volatile
    (
        "cpsid i    \n"
    );
}

inline __attribute__((always_inline)) void __WFI(void) {
    __asm volatile
    (
        "wfi    \n"
    );
}

// no operation
inline __attribute__((always_inline)) void __NOP(void) {
    __asm volatile
    (
        "nop    \n"
    );
}
