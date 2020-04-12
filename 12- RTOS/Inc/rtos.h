#ifndef RTOS_H
#define RTOS_H

#include "intrinsic.h"

typedef struct {
    void *sp; // stack pointer

} OS_Thread;

typedef void (*OS_ThreadFunc)(void);

extern OS_Thread * __IO curr_thread;

void OS_init(void);

void OS_add_thread(OS_ThreadFunc task, void * sp);

void OS_idle_thread(void);

#endif
