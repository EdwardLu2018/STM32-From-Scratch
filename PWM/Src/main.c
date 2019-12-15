#include "delay.h"
#include "gpio.h"
#include "rcc.h"
#include "timer.h"
#include "systick.h"

#define STEP 5U

int main(void) {
    rcc_init();

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);

    timer_init(TIM2, 1000U, 255U);
    pin_mode(PA2, OUT_ALT_PUSH_PULL_50);
    // enable_chan(TIM2, PWM, CHAN3, 10U);

    systick_init(1000U); // initialize systick at 1Hz

    unsigned char pwm = 10U;
    unsigned long start_t = millis();
    unsigned char up = 1;
    while(1) {
        if (millis() - start_t > 100U) {
            led_toggle(PC13);
            start_t = millis();
            if (up) {
                pwm += STEP;
            }
            else {
                pwm -= STEP;
            }

            if (pwm == 255 || pwm == 0) up = !up;
            enable_chan(TIM2, PWM, CHAN3, pwm);
        }
    }
}
