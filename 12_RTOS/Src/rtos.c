#include "rcc.h"
#include "scb.h"
#include "rtos.h"
#include <stdlib.h>
#include <stdbool.h>

RTOS_TCB * __IO curr_tcb;
RTOS_TCB * __IO next_tcb;

RTOS_TCB *threads[MAX_THREADS+1]; // array of pointers to threads
static uint8_t threads_added = 0;
static uint8_t thread_idx;
static uint32_t ready_set;

static bool ready_set_empty() {
    return ready_set == 0;
}

static void ready_set_add(uint8_t n) {
    ready_set |= (0x1U << (n - 1));
}

static void ready_set_remove(uint8_t n) {
    ready_set &= ~(0x1U << (n - 1));
}

static uint32_t ready_set_get(uint8_t n) {
    return ready_set & (0x1U << (n - 1));
}

RTOS_TCB idle_tcb;
uint32_t stack_idle_thread[THREAD_STACK_SIZE];
static void RTOS_idle_thread(void) {
    __WFI();
}

static void PENDSV_Set_Prio(uint8_t prio) {
    scb->SHPR3 |= (prio << 16);
}

static void PENDSV_Trigger(void) {
    scb->ICSR |= PENDSVSET; // trigger PENDSV interrupt
}

void RTOS_Init() {
    PENDSV_Set_Prio(0xFFU); // set PENDSV priority to lowest level
    SYSTICK_set_prio(0x0U); // set SYSTICK priority to highest level

    RTOS_Add_Thread(&idle_tcb, &RTOS_idle_thread, stack_idle_thread);
}

void RTOS_Run(void) {
    __disable_irq();
    RTOS_Schedule();
    __enable_irq();
}

void RTOS_Tick(void) {
    uint8_t i;
    for (i = 1; i < threads_added; ++i) {
        if (threads[i]->ticks != 0U) {
            --threads[i]->ticks;
            if (threads[i]->ticks == 0U) {
                ready_set_add(i);
            }
        }
    }
}

void RTOS_Schedule(void) {
    if (ready_set_empty()) {
        thread_idx = 0U;
    }
    else {
        do {
            ++thread_idx;
            if (thread_idx == threads_added) {
                thread_idx = 1U;
            }
        }
        while (ready_set_get(thread_idx) == 0U);
    }

    next_tcb = threads[thread_idx];

    if (next_tcb != curr_tcb) {
        PENDSV_Trigger();
    }
}

void RTOS_Delay(uint32_t ticks) {
    __disable_irq();

    curr_tcb->ticks = ticks;
    ready_set_remove(thread_idx);
    RTOS_Schedule();

    __enable_irq();
}

void RTOS_Add_Thread(RTOS_TCB *tcb, RTOS_ThreadFunc thread_handler, void *thread_stack) {
    uint32_t *sp = (uint32_t *)((((uint32_t)thread_stack + 4*THREAD_STACK_SIZE) / 8) * 8);

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
    // set thumb state bit of xPSR (Special-Purpose Program Status Register) (pg 22 of programming manual)
    *(--sp) = (1U << 24); // xPSR
    // set program counter to address of thread handler; cast to 32 bits to fit on stack
    *(--sp) = (uint32_t)thread_handler; // PC

    // threads have no return/inputs, so set registers to dummy values (values of reg)
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
    *(--sp) = 0x00000009U; // R9
    *(--sp) = 0x00000008U; // R8
    *(--sp) = 0x00000007U; // R7
    *(--sp) = 0x00000006U; // R6
    *(--sp) = 0x00000005U; // R5
    *(--sp) = 0x00000004U; // R4

    // store stack top
    tcb->sp = sp;

    // add thread to thread list
    threads[threads_added] = tcb;
    if (threads_added > 0U) {
        ready_set_add(threads_added);
    }
    ++threads_added;
}

void PendSV_Handler(void) {
    __asm volatile
    (
        "cpsid  i                   \n" // disable interrupts

        "ldr    r1,=curr_tcb        \n"
        "ldr    r1,[r1]             \n" // r1 = curr_tcb
        "cbz    r1,restore_context  \n" // if curr_tcb == 0x0, goto restore_context

        "push   {r4-r11}            \n"

        "ldr    r1,=curr_tcb        \n"
        "ldr    r1,[r1]             \n"
        "str    sp,[r1]             \n" // curr_tcb->sp = sp

        "restore_context:           \n"
        "ldr    r1,=next_tcb        \n"
        "ldr    r1,[r1]             \n"
        "ldr    sp,[r1]             \n" // sp = next_tcb->sp

        "ldr    r1,=next_tcb        \n"
        "ldr    r1,[r1]             \n"
        "ldr    r2,=curr_tcb        \n"
        "str    r1,[r2]             \n" // curr_tcb = next_tcb

        "pop    {r4-r11}            \n"

        "cpsie  i                   \n" // enable interrupts

        "bx     lr                  \n"
    );
}
