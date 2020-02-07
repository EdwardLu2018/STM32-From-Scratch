#include "usart.h"
#include "nvic.h"

USART_t *usart1 = (USART_t *)(UART1_BASE);
USART_t *usart2 = (USART_t *)(UART2_BASE);
USART_t *usart3 = (USART_t *)(UART3_BASE);

static USART_t *USART_Get(uint8_t usart) {
    switch(usart) {
        case USART1: return usart1;
        case USART2: return usart2;
        case USART3: return usart3;
        default: return usart1;
    }
}

void Serial_Init(uint8_t usart, uint32_t BAUD) {
    USART_t *serial = USART_Get(usart);
    serial->CR1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
    serial->CR2 = 0;
    serial->CR3 = 0;
    serial->GTPR = 0;
    serial->BAUD = PCLK2 / BAUD;
}

bool Serial_Write_Char(uint8_t usart, char c) {
    USART_t *serial = USART_Get(usart);
    serial->DATA = c;
    while(!(serial->SR & TC));
    return USART_SUCCESS;
}

bool Serial_Write_Str(uint8_t usart, char *s, bool new_line) {
    while(*s) Serial_Write_Char(usart, *s++);
    if (!new_line) return 1;
    Serial_Write_Char(usart, '\r');
    Serial_Write_Char(usart, '\n');
    return USART_SUCCESS;
}

char Serial_Read_Char(uint8_t usart) {
    USART_t *serial = USART_Get(usart);
    while(!(serial->SR & RXNE));
    return (char)(serial->DATA & DATA_MASK);
}

char *Serial_Read_Str(uint8_t usart, char *buffer) {
    while(*buffer) {
        *buffer++ = Serial_Read_Char(usart);
    }
    return buffer;
}
