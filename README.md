# STM32-From-Scratch
Playing around with an STM32F103 microcontroller.

## Directories
* **00 - Blinky** -> Blink program. Simple code to make on board LED blink. 
* **01 - Blinky 2** -> Blink program, but improved. Code clean up and improved directory structure. 
* **02 - Blinky 3** -> Blink program, but more improved. Added separate header and implementation files for GPIO and RCC registers.
* **03 - Extern Blinky** -> Blink program, but with an external LED on A0. Started using OpenOCD and GDB server for debugging.
* **04 - Extern Blinky 2** -> External blink program with more organized code and extends to all GPIO pins.
* **05 - Timer2 Interrupt** -> Enabling and using timer 2 interrupt.
* **06 - General Timer Interrupt** -> Enabling and using all general purpose timers.
* **07 - Systick Interrupt** -> Enabling and using Systick.
* **08 - PWM** -> Using general purpose timers to generate a PWM signal. Started using objdump for disassembly. Also code cleanup.
* **09 - SCB** -> Adding system control block exception handlers.
* **10 - Serial** -> Enabling and using USART.
