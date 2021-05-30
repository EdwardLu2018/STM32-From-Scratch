#include "usart.h"
#include "nvic.h"

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

static usart_t *USART_Get(uint8_t usart) {
    switch(usart) {
        case USART1: return usart1;
        case USART2: return usart2;
        case USART3: return usart3;
        default: return usart1;
    }
}

void serial_init(uint8_t usart, uint32_t BAUD) {
    usart_t *serial = USART_Get(usart);
    serial->CR1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
    serial->CR2 = 0;
    serial->CR3 = 0;
    serial->GTPR = 0;
    serial->BAUD = PCLK2 / BAUD;
}

bool serial_wr_ch(uint8_t usart, char c) {
    usart_t *serial = USART_Get(usart);
    serial->DATA = c;
    while(!(serial->SR & TC));
    return USART_SUCCESS;
}

bool serial_wr_str(uint8_t usart,
                      char *s,
                      bool new_line) {
    while(*s) serial_wr_ch(usart, *s++);
    if (!new_line) return 1;
    serial_wr_ch(usart, '\r');
    serial_wr_ch(usart, '\n');
    return USART_SUCCESS;
}

char serial_rd_ch(uint8_t usart) {
    usart_t *serial = USART_Get(usart);
    while(!(serial->SR & RXNE));
    return (char)(serial->DATA & DATA_MASK);
}

char *Serial_Read_Str(uint8_t usart, char *buffer) {
    while(*buffer) {
        *buffer++ = serial_rd_ch(usart);
    }
    return buffer;
}
