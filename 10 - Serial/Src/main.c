#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"
#include "systick.h"
#include "usart.h"

int main(void) {
    rcc_init();

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1
    pin_mode(PA10, OUT_ALT_PUSH_PULL_50); // enable Rx pin for usart1

    systick_init(1000U); // initialize systick at 1Hz
    init_serial(USART1, 115200U);

    while(1) {
        // char a = serial_r_c(USART1);
        serial_wr_w(USART1, "hello world", 1);
        // if (a == (char)'a' || a == (char)'\n' || a == (char)'\r')
        led_toggle(PC13);
        systick_delay(1000);
    }
}
