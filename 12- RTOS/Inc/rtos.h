#ifndef RTOS_H
#define RTOS_H

#include "intrinsic.h"

#define MAX_THREADS 32
#define THREAD_STACK_SIZE 64

typedef struct RTOS_Thread {
    uint32_t ticks;
    void *sp; // stack pointer
} RTOS_Thread;

typedef void (*RTOS_ThreadFunc)(void);

extern RTOS_Thread * __IO curr_thread;
extern RTOS_Thread * __IO next_thread;

void RTOS_init(void);
void RTOS_run(void);
void RTOS_tick(void);
void RTOS_schedule(void);
void RTOS_delay(uint32_t ticks);
void RTOS_add_thread(RTOS_ThreadFunc task, void *thread_sp);

#endif
