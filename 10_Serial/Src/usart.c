#include "usart.h"
#include "nvic.h"

static usart_t *const usarts[] = {(usart_t *)UART1_BASE, (usart_t *)UART2_BASE, (usart_t *)UART3_BASE};

void usart1_handle(void) {
    usart_t *usart1 = usarts[USART1];
    char in = (char)(usart1->data & DATA_MASK);
    serial_wr_ch(USART1, in);
}

void serial_init(usart_port_t usart_port, uint32_t baud) {
    usart_t *serial = usarts[usart_port];
    serial->cr1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
    serial->cr2 = 0;
    serial->cr3 = 0;
    serial->gtpr = 0;
    serial->baud = PCLK2 / baud;
    nvic_enable(USART1_IRQ_START_POS+usart_port);
}

bool serial_wr_ch(usart_port_t usart_port, char c) {
    usart_t *serial = usarts[usart_port];
    serial->data = c;
    while(!(serial->sr & TC));
    return 1;
}

bool serial_wr_str(usart_port_t usart_port, char *s, bool new_line) {
    while(*s) serial_wr_ch(usart_port, *s++);
    if (!new_line) return 1;
    serial_wr_ch(usart_port, '\r');
    serial_wr_ch(usart_port, '\n');
    return 1;
}

char serial_rd_ch(usart_port_t usart_port) {
    usart_t *serial = usarts[usart_port];
    while(!(serial->sr & RXNE));
    return (char)(serial->data & DATA_MASK);
}

char *Serial_Read_Str(usart_port_t usart_port, char *buffer) {
    while(*buffer) {
        *buffer++ = serial_rd_ch(usart_port);
    }
    return buffer;
}
