#include "usart.h"
#include "nvic.h"

static usart_t *const usarts[] = {(usart_t *)UART1_BASE, (usart_t *)UART2_BASE, (usart_t *)UART3_BASE};

void serial_init(usart_port_t usart_port, uint32_t BAUD) {
    usart_t *serial = usarts[usart_port];
    serial->CR1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
    serial->CR2 = 0;
    serial->CR3 = 0;
    serial->GTPR = 0;
    serial->BAUD = PCLK2 / BAUD;
}

bool serial_wr_ch(usart_port_t usart_port, char c) {
    usart_t *serial = usarts[usart_port];
    serial->DATA = c;
    while(!(serial->SR & TC));
    return USART_SUCCESS;
}

bool serial_wr_str(usart_port_t usart_port, char *s, bool new_line) {
    while(*s) serial_wr_ch(usart_port, *s++);
    if (!new_line) return 1;
    serial_wr_ch(usart_port, '\r');
    serial_wr_ch(usart_port, '\n');
    return USART_SUCCESS;
}

char serial_rd_ch(usart_port_t usart_port) {
    usart_t *serial = usarts[usart_port];
    while(!(serial->SR & RXNE));
    return (char)(serial->DATA & DATA_MASK);
}

char *Serial_Read_Str(usart_port_t usart_port, char *buffer) {
    while(*buffer) {
        *buffer++ = serial_rd_ch(usart_port);
    }
    return buffer;
}
