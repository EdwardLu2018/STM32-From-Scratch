#ifndef RTOS_H
#define RTOS_H

#include "intrinsic.h"

#define MAX_THREADS         32
#define THREAD_STACK_SIZE   64

typedef struct {
    void *sp; // stack pointer
    uint32_t ticks;
} RTOS_TCB;

typedef void (*RTOS_ThreadFunc)(void);

extern RTOS_TCB * volatile curr_thread;
extern RTOS_TCB * volatile next_thread;

void RTOS_Init();
void RTOS_Run(void);
void RTOS_Tick(void);
void RTOS_Schedule(void);
void RTOS_Delay(uint32_t ticks);
void RTOS_Add_Thread(RTOS_TCB *tcb, RTOS_ThreadFunc thread_handler, void *thread_stack);

#endif
