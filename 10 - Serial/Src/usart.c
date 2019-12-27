#include "usart.h"

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

void init_serial(uint32_t baud) {
    usart1->cr1 = (TE|UE);
    usart1->cr2 = 0;
    usart1->cr3 = 0;
    usart1->gtpr = 0;
    usart1->baud = HSI_MHZ / baud;
}

uint8_t serial_wr_c(char c) {
    while((usart1->sr & TXE)==0);
    usart1->data = c;
    return 1;
}

uint8_t serial_wr_s(char *s) {
    while(*s) {
        serial_wr_c(*s++);
    }
    serial_wr_c('\r');
    serial_wr_c('\n');
    return 1;
}
