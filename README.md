# STM32-From-Scratch
Programming an STM32F103 microcontroller at the register level. Writing my own minimal HAL and eventually a simple RTOS.

The goal is to write low level drivers, and eventually an RTOS, without the use of fancy libraries and IDEs for embedded development.

Everything should be able to be done with just a Unix machine, make, and the [gnu arm embedded toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm).

## Directories
* **00 - Blinky** -> Blink program. Simple code to make on-board LED blink.
* **01 - Blinky 2** -> Blink program, but improved. Code clean up and improved directory structure.
* **02 - Blinky 3** -> Blink program, but more improved. Added separate header and implementation files for GPIO and RCC registers.
* **03 - Extern Blinky** -> Blink program, but with an external LED on A0. Started using OpenOCD and GDB server for debugging.
* **04 - Extern Blinky 2** -> External blink program with more organized code and extends to all GPIO pins.
* **05 - Timer2 Interrupt** -> Enabling and using timer 2 interrupt to blink an LED while the main loop fires.
* **06 - General Timer Interrupt** -> Enabling and using all general purpose timers and timer interrupts.
* **07 - Systick Interrupt** -> Enabling and using Systick interrupt and counter for improved timing delays.
* **08 - PWM** -> Using general purpose timers to generate a PWM signal. Started using objdump for disassembly. Also code cleanup and fixed issue with timing.
* **09 - SCB** -> Adding system control block exception handlers.
* **10 - Serial** -> Enabling and using USART/Serial communication.
* **11 - HAL** -> Non-exhaustive hardware abstraction layer.
* **12 - RTOS** -> Minimal Real Time Operating System Kernel. Work in progress.

## Getting Started
Install `arm-none-eabi` toolchain and `openocd`.

### MacOS
```
brew install arm-gcc-bin openocd
```
