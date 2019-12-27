#ifndef __USART__
#define __USART__

#include "stm32f103.h"

// USART registers (pg 817) //
typedef struct {
    uint32_t __IO sr;   // 0x0 status register
    uint32_t __IO dr;   // 0x4 data register
    uint32_t __IO brr;  // 0x8 baud rate register
    uint32_t __IO cr1;  // 0xC control register 1
    uint32_t __IO cr2;  // 0x10 control register 2
    uint32_t __IO cr3;  // 0x14 control register 3
    uint32_t __IO gtpr; // 0x18 guard time and prescaler register
} usart_t;

#endif
