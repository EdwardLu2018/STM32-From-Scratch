#include "scb.h"
#include "gpio.h"
#include "delay.h"

void reset_system(void) {
    scb_t *scb = (scb_t *)(SCB_BASE);
    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
    for (uint8_t i = 0; i <= 5; i++) {
        gpio_toggle(PC13);
        systick_delay(100);
    }
    scb->aircr = (KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
}

void hard_fault_handle(void) {
    reset_system();
}

void mem_manage_handle(void) {
    reset_system();
}

void bus_fault_handle(void) {
    reset_system();
}
