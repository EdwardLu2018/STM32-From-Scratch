#ifndef __USART__
#define __USART__

#include "stm32f103.h"

#define USART1  1
#define USART2  2
#define USART3  3

#define RE      (1<<2)  // receiver enable
#define TE      (1<<3)  // transmitter enable
#define PCE     (1<<10) // parity control enable
#define W_LEN_9 (1<<12) // start bit, 9 data bits, stop bit
#define UE      (1<<13) // usart enable

#define TXE     (1<<7)

// USART registers (pg 817) //
typedef struct {
    uint32_t __IO sr;   // 0x0 status register
    uint32_t __IO data; // 0x4 data register
    uint32_t __IO baud; // 0x8 baud rate register
    uint32_t __IO cr1;  // 0xC control register 1
    uint32_t __IO cr2;  // 0x10 control register 2
    uint32_t __IO cr3;  // 0x14 control register 3
    uint32_t __IO gtpr; // 0x18 guard time and prescaler register
} usart_t;

void init_serial(uint32_t baud);
uint8_t serial_wr_c(char c);
uint8_t serial_wr_s(char *s);

#endif
