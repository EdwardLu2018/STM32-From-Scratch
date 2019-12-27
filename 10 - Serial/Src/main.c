#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"
#include "systick.h"
#include "usart.h"

int main(void) {
    rcc_init();

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50);
    // pin_mode(PA10, OUT_ALT_PUSH_PULL_50);

    systick_init(1000U); // initialize systick at 1Hz
    init_serial(115200U);

    while(1) {
        led_toggle(PC13);
        serial_wr_s("hello world");
        systick_delay(1000);
    }
}
