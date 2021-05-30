#ifndef _STM32F103_H_
#define _STM32F103_H_

#include <stdint.h>

#define __IO volatile

// Base Addresses For Peripherals (pg 34 Reference Manual) //
#define RCC_BASE        0x40021000U

#define GPIOA_BASE      0x40010800U
#define GPIOB_BASE      0x40010C00U
#define GPIOC_BASE      0x40011000U
#define GPIOD_BASE      0x40011400U
#define GPIOE_BASE      0x40011800U

#define TIM1_BASE       0x40012C00U
#define TIM2_BASE       0x40000000U
#define TIM3_BASE       0x40000400U
#define TIM4_BASE       0x40000800U
#define TIM5_BASE       0x40000C00U
#define TIM6_BASE       0x40001000U
#define TIM7_BASE       0x40001400U

#define NVIC_BASE       0xE000E100U

#define SYSTICK_BASE    0xE000E010U

#define SCB_BASE        0xE000ED00U

#endif
