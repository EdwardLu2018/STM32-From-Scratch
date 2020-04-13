#ifndef RTOS_H
#define RTOS_H

#include "intrinsic.h"

#define MAX_THREADS 32
#define MAX_THREAD_STACK_SIZE 64

typedef struct {
    void *sp; // stack pointer
} OS_Thread;

typedef void (*OS_ThreadFunc)(void);

extern OS_Thread * __IO curr_thread;
extern OS_Thread * __IO next_thread;

void OS_init(void);
void OS_add_thread(OS_ThreadFunc task, void *thread_sp);

#endif
