# The Cortex M3 is a thumb only processor
.cpu cortex-m3
.thumb

// Vector Table (pg 198)    //
.word   _estack             // Stack top address
.word   _reset              // - Reset
.word   0                   // - NMI
.word   HardFault_Handler   // - HardFault
.word   MemManage_Handler   // - MemManage Fault
.word   BusFault_Handler    // - BusFault
.word   UsageFault_Handler  // - UsageFault
.word   0                   // - RESERVED
.word   0                   // - RESERVED
.word   0                   // - RESERVED
.word   0                   // - RESERVED
.word   0                   // - SV call
.word   0                   // - Debug Monitor
.word   0                   // - RESERVED
.word   0                   // - PendSV
.word   Systick_Handler     // - SysTick
.word   0                   // 0 WWDG
.word   0                   // 1 PVD
.word   0                   // 2 TAMPER
.word   0                   // 3 RTC
.word   0                   // 4 FLASH
.word   0                   // 5 RCC
.word   0                   // 6 EXTI0
.word   0                   // 7 EXTI1
.word   0                   // 8 EXTI2
.word   0                   // 9 EXTI3
.word   0                   // 10 EXTI4
.word   0                   // 11 DMA1_Channel1
.word   0                   // 12 DMA1_Channel2
.word   0                   // 13 DMA1_Channel3
.word   0                   // 14 DMA1_Channel4
.word   0                   // 15 DMA1_Channel5
.word   0                   // 16 DMA1_Channel6
.word   0                   // 17 DMA1_Channel7
.word   0                   // 18 ADC1_2
.word   0                   // 19 CAN1_TX
.word   0                   // 20 CAN1_RX0
.word   0                   // 21 CAN1_RX1
.word   0                   // 22 CAN1_SCE
.word   0                   // 23 EXTI9_5
.word   0                   // 24 TIM1_BRK
.word   0                   // 25 TIM1_UP
.word   0                   // 26 TIM1_TRG_COM
.word   0                   // 27 TIM1_CC
.word   Timer2_Handler      // 28 TIM2
.word   Timer3_Handler      // 29 TIM3
.word   Timer4_Handler      // 30 TIM4
.word   0                   // 31 I2C1_EV
.word   0                   // 32 I2C1_ER
.word   0                   // 33 I2C2_EV
.word   0                   // 34 I2C2_ER
.word   0                   // 35 SPI1
.word   0                   // 36 SPI2
.word   0                   // 37 USART1
.word   0                   // 38 USART2
.word   0                   // 39 USART3
.word   0                   // 40 EXTI15_10
.word   0                   // 41 RTCAlarm
.word   0                   // 42 OTG_FS_WKUP
.word   0                   // 43 RESERVED
.word   0                   // 44 RESERVED
.word   0                   // 45 RESERVED
.word   0                   // 46 RESERVED
.word   0                   // 47 RESERVED
.word   0                   // 48 RESERVED
.word   0                   // 49 RESERVED
.word   Timer5_Handler      // 50 TIM5
.word   0                   // 51 SPI3
.word   0                   // 52 UART4
.word   0                   // 53 UART5
.word   Timer6_Handler      // 54 TIM6
.word   Timer7_Handler      // 55 TIM7
.word   0                   // 56 DMA2_Channel1
.word   0                   // 57 DMA2_Channel2
.word   0                   // 58 DMA2_Channel3
.word   0                   // 59 DMA2_Channel4
.word   0                   // 60 DMA2_Channel5
.word   0                   // 61 ETH
.word   0                   // 62 ETH_WKUP
.word   0                   // 63 CAN2_TX
.word   0                   // 64 CAN2_RX0
.word   0                   // 65 CAN2_RX1
.word   0                   // 66 CAN2_SCE
.word   0                   // 67 OTG_FS

.thumb_func
_reset:
    bl main
    b .

/* THE END */
