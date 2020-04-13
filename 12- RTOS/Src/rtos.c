#include "rtos.h"

OS_Thread * __IO curr_thread;
OS_Thread * __IO next_thread;

static OS_Thread *threads[MAX_THREADS+1]; // array of pointers to threads
static uint8_t thread_idx;

static uint32_t stack_idle_thread[MAX_THREAD_STACK_SIZE];
static void OS_idle_thread(void) {
    __WFI(); // wait for interrupt
}

void OS_init(void) {
    OS_add_thread(&OS_idle_thread, &stack_idle_thread);
}

/* Rounds x down to a multiple of 8 for address alignment */
static uint32_t align(uint32_t x) {
    return (x / 8) * 8;
}

void OS_add_thread(OS_ThreadFunc thread_handler, void *thread_sp) {
    uint32_t *sp = (uint32_t *)align((uint32_t)thread_sp + sizeof(thread_handler));
    OS_Thread *tcb; // thread control block

    /* https://developer.arm.com/docs/100235/0002/the-cortexm33-processor/exception-model/exception-entry-and-return
     *
     *   ARM Stack:  *
     * | {aligner} | * high addresses
     * |   xPSR    | *
     * |    PC     | *      ||
     * |  LR (R14) | *      || Stack
     * |    R12    | *      || grows
     * |    R3     | *      || down!
     * |    R2     | *      ||
     * |    R1     | *      \/
     * |    R0     | *
     * |  R11-R4   | * low addresses
     * | {storage} | *
     */

    /* Fabricate stack for thread function: */
    // set thumb state bit of xPSR (Special-purpose Program Status Registers) (pg 22 of programming manual)
    *(--sp) = (1U << 24); // xPSR
    // set program counter to address of thread and cast to 32 bits to fit on stack
    *(--sp) = (uint32_t)thread_handler; // PC

    // threads have no return/inputs,
    // so set registers to dummy values (values of reg)
    *(--sp) = 0x0000000EU; // R14 (LR - link register: holds address to return to)
    *(--sp) = 0x0000000CU; // R12 (static link)

    // fabricate function arguments
    *(--sp) = 0x00000003U; // R3
    *(--sp) = 0x00000002U; // R2
    *(--sp) = 0x00000001U; // R1
    *(--sp) = 0x00000000U; // R0

    // fabricate local variables
    *(--sp) = 0x0000000BU; // R11
    *(--sp) = 0x0000000AU; // R10
    *(--sp) = 0x00000008U; // R9
    *(--sp) = 0x00000008U; // R8
    *(--sp) = 0x00000007U; // R7
    *(--sp) = 0x00000006U; // R6
    *(--sp) = 0x00000005U; // R5
    *(--sp) = 0x00000004U; // R4

    // store stack top
    tcb->sp = sp;

    threads[++thread_idx] = tcb;
}
