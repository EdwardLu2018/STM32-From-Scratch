#include "rtos.h"
#include "scb.h"
#include <stdlib.h>

RTOS_Thread * __IO curr_thread;
RTOS_Thread * __IO next_thread;
static RTOS_Thread *threads[MAX_THREADS+1]; // array of pointers to threads
static uint8_t threads_added;
static uint8_t thread_idx;
static uint32_t ready_set;
// static RTOS_Thread *threads; // linked list of threads

static uint32_t ready_set_empty() {
    return !(!!ready_set);
}

static void ready_set_add(uint8_t n) {
    ready_set |= (0x1U << (n - 1));
}

static void ready_set_remove(uint8_t n) {
    ready_set &= ~(0x1U << (n - 1));
}

static uint32_t ready_set_get(uint8_t n) {
    return ready_set &= (0x1U << (n - 1));
}

static uint32_t stack_idle_thread[THREAD_STACK_SIZE];
static void RTOS_idle_thread(void) {
    __WFI(); // wait for interrupt
}

static void PENDSV_set_prio(uint8_t prio) {
    scb->SHPR3 |= (prio << 16);
}

static void PENDSV_trigger(void) {
    scb->ICSR |= PENDSVSET; // trigger PENDSV interrupt
}

void RTOS_init(void) {
    PENDSV_set_prio(0xFFU); // set PENDSV priority to lowest level
    SYSTICK_set_prio(0x0U); // set SYSTICK priority to highest level

    RTOS_add_thread(&RTOS_idle_thread, &stack_idle_thread);
}

void RTOS_run(void) {
    __disable_irq();
    RTOS_schedule();
    __enable_irq();
}

void RTOS_tick(void) {
    uint8_t i;
    for (i = 1; i < threads_added; i++) {
        if (threads[i]->ticks != 0U) {
            --threads[i]->ticks;
            if (threads[i]->ticks == 0U) {
                ready_set_add(i);
            }
        }
    }
}

void RTOS_schedule(void) {
    if (ready_set_empty()) {
        thread_idx = 0U;
    }
    else {
        do {
            if (thread_idx++ == threads_added) {
                thread_idx = 1U;
            }
        } while (ready_set_get(thread_idx) == 0U);
    }
    next_thread = threads[thread_idx];

    if (next_thread != curr_thread) {
        PENDSV_trigger();
    }
}

void RTOS_delay(uint32_t ticks) {
    __disable_irq();

    curr_thread->ticks = ticks;
    ready_set_remove(thread_idx);
    RTOS_schedule();

    __enable_irq();
}

/* Rounds x down to a multiple of 8 for address alignment */
static uint32_t align(uint32_t x) {
    return (x / 8) * 8;
}

void RTOS_add_thread(RTOS_ThreadFunc thread_handler, void *thread_sp) {
    uint32_t *sp = (uint32_t *)align((uint32_t)thread_sp + sizeof(thread_handler));
    RTOS_Thread *tcb; // thread control block

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
    tcb->ticks = 0;

    // add thread to thread list
    threads[threads_added] = tcb;
    if (threads_added > 0U) {
        ready_set_add(threads_added);
    }
    threads_added++;
}

void PendSV_Handler(void) {
    __ASM volatile (
        "cpsid  i\n\t" // disable interrupts

        "cpsie  i\n\t" // enable interrupts
    );
}
