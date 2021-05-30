#ifndef _USART_H_
#define _USART_H_

#include "stm32f103.h"
#include "intrinsic.h"
#include "stdbool.h"

typedef enum {
    USART1, USART2, USART3
} usart_port_t;

#define USART_SUCCESS   1
#define USART_FAIL      0

#define SBK     (1<<0)  // send break point chars
#define RE      (1<<2)  // receiver enable
#define TE      (1<<3)  // transmitter enable
#define PCE     (1<<10) // parity control enable
#define PS      (1<<9)  // odd parity selection
#define W_LEN_9 (1<<12) // start bit, 9 DATA bits, stop bit
#define UE      (1<<13) // usart enable

#define DATA_MASK 0xff // mask for DATA bits for DATA register

#define TXE     (1<<7) // transmit DATA register is empty
#define TC      (1<<6) // transmission complete
#define RXNE    (1<<5) // read DATA register is not empty

#define TCIE    (1<<6) // Transmission complete interrupt enable
#define RXNEIE  (1<<5) // RXNE interrupt enable

// USART registers (pg 817) //
typedef struct {
    uint32_t volatile SR;   // 0x0 status register
    uint32_t volatile DATA; // 0x4 DATA register
    uint32_t volatile BAUD; // 0x8 BAUD rate register
    uint32_t volatile CR1;  // 0xC control register 1
    uint32_t volatile CR2;  // 0x10 control register 2
    uint32_t volatile CR3;  // 0x14 control register 3
    uint32_t volatile GTPR; // 0x18 guard time and prescaler register
} usart_t;

extern usart_t *usart1;
extern usart_t *usart2;
extern usart_t *usart3;

void serial_init(uint8_t usart, uint32_t BAUD);
bool serial_wr_ch(uint8_t usart, char c);
bool serial_wr_str(uint8_t usart, char *s, bool new_line);
char serial_rd_ch(uint8_t usart);
char *Serial_Read_Str(uint8_t usart, char *buffer);

#endif
