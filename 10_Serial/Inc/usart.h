#ifndef _USART_H_
#define _USART_H_

#include "stm32f103.h"
#include "stdbool.h"

#define USART1_IRQ_START_POS 37U

#define SBK     (1<<0)  // send break point chars
#define RE      (1<<2)  // receiver enable
#define TE      (1<<3)  // transmitter enable
#define RXNEIE  (1<<5) // RXNE interrupt enable
#define TCIE    (1<<6) // Transmission complete interrupt enable
#define PS      (1<<9)  // odd parity selection
#define PCE     (1<<10) // parity control enable
#define W_LEN_9 (1<<12) // start bit, 9 data bits, stop bit
#define UE      (1<<13) // usart enable

#define DATA_MASK 0xff // mask for data bits for data register

#define TXE     (1<<7) // transmit data register is empty
#define TC      (1<<6) // transmission complete
#define RXNE    (1<<5) // read data register is not empty

typedef enum {
    USART1, USART2, USART3
} usart_port_t;

// USART registers (pg 817) //
typedef struct {
    uint32_t volatile sr;   // 0x0 status register
    uint32_t volatile data; // 0x4 data register
    uint32_t volatile baud; // 0x8 baud rate register
    uint32_t volatile cr1;  // 0xC control register 1
    uint32_t volatile cr2;  // 0x10 control register 2
    uint32_t volatile cr3;  // 0x14 control register 3
    uint32_t volatile gtpr; // 0x18 guard time and prescaler register
} usart_t;

void serial_init(usart_port_t usart_port, uint32_t baud);
bool serial_wr_ch(usart_port_t usart_port, char c);
bool serial_wr_str(usart_port_t usart_port, char *s, bool new_line);
char serial_rd_ch(usart_port_t usart_port);
char *Serial_Read_Str(usart_port_t usart_port, char *buffer);

#endif /* _USART_H_ */
