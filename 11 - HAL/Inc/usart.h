#ifndef __USART__
#define __USART__

#include "stm32f103.h"
#include "intrinsic.h"
#include "stdbool.h"

#define USART1  0
#define USART2  1
#define USART3  2

#define USART_SUCCESS   1
#define USART_FAIL      0

#define SBK     (1<<0)  // send break point chars
#define RE      (1<<2)  // receiver enable
#define TE      (1<<3)  // transmitter enable
#define PCE     (1<<10) // parity control enable
#define PS      (1<<9)  // odd parity selection
#define W_LEN_9 (1<<12) // start bit, 9 data bits, stop bit
#define UE      (1<<13) // usart enable

#define DATA_MASK 0xff // mask for data bits for data register

#define TXE     (1<<7) // transmit data register is empty
#define TC      (1<<6) // transmission complete
#define RXNE    (1<<5) // read data register is not empty

#define TCIE    (1<<6) // Transmission complete interrupt enable
#define RXNEIE  (1<<5) // RXNE interrupt enable

// USART registers (pg 817) //
typedef struct
{
    uint32_t __IO sr;   // 0x0 status register
    uint32_t __IO data; // 0x4 data register
    uint32_t __IO baud; // 0x8 baud rate register
    uint32_t __IO cr1;  // 0xC control register 1
    uint32_t __IO cr2;  // 0x10 control register 2
    uint32_t __IO cr3;  // 0x14 control register 3
    uint32_t __IO gtpr; // 0x18 guard time and prescaler register
} usart_t;

usart_t *usart1;
usart_t *usart2;
usart_t *usart3;

usart_t *usart_get(uint8_t usart);
void serial_init(uint8_t usart, uint32_t baud);
bool serial_wr_c(uint8_t usart, char c);
bool serial_wr_s(uint8_t usart, char *s, bool new_line);
char serial_r_c(uint8_t usart);
char *serial_r_s(uint8_t usart, char *buffer);

#endif
