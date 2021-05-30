#ifndef __STM32f103__
#define __STM32f103__

// Memory addresses found on page 80

#define HSI_MHZ         8000000U  // 8 Mhz clock
#define PCLK1           36000000U // 36 Mhz clock
#define PCLK2           72000000U // 72 Mhz clock

// Base Addresses For Peripherals (pg 34 Reference Manual) //
#define RCC_BASE        0x40021000U

#define GPIOA_BASE      0x40010800U
#define GPIOB_BASE      0x40010C00U
#define GPIOC_BASE      0x40011000U
#define GPIOD_BASE      0x40011400U
#define GPIOE_BASE      0x40011800U

#define ADC1_BASE	    0x40012400U
#define ADC2_BASE	    0x40012800U
#define ADC3_BASE	    0x40013C00U

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

#define FLASH_ACR_BASE  0x40022000U

#define UART1_BASE	    0x40013800U
#define UART2_BASE	    0x40004400U
#define UART3_BASE	    0x40004800U

#define WWDG_BASE       0x40002C00U

#endif
