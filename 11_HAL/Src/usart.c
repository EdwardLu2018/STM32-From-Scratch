#include "usart.h"
#include "nvic.h"

static USART_t *const usarts[] = {(USART_t *)UART1_BASE, (USART_t *)UART2_BASE, (USART_t *)UART3_BASE};

void Serial_Init(usart_port_t usart_port, uint32_t BAUD) {
    USART_t *serial = usarts[usart_port];
    serial->CR1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
    serial->CR2 = 0;
    serial->CR3 = 0;
    serial->GTPR = 0;
    serial->BAUD = PCLK2 / BAUD;
}

bool Serial_Write_Char(usart_port_t usart_port, char c) {
    USART_t *serial = usarts[usart_port];
    serial->DATA = c;
    while(!(serial->SR & TC));
    return USART_SUCCESS;
}

bool Serial_Write_Str(usart_port_t usart_port, char *s, bool new_line) {
    while(*s) Serial_Write_Char(usart_port, *s++);
    if (!new_line) return 1;
    Serial_Write_Char(usart_port, '\r');
    Serial_Write_Char(usart_port, '\n');
    return USART_SUCCESS;
}

char Serial_Read_Char(usart_port_t usart_port) {
    USART_t *serial = usarts[usart_port];
    while(!(serial->SR & RXNE));
    return (char)(serial->DATA & DATA_MASK);
}

char *Serial_Read_Str(usart_port_t usart_port, char *buffer) {
    while(*buffer) {
        *buffer++ = Serial_Read_Char(usart_port);
    }
    return buffer;
}
