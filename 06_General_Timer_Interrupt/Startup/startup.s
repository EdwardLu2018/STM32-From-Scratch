# The Cortex M3 is a thumb only processor
.cpu cortex-m3
.thumb

// Vector Table (pg 198) //
.word   0x20005000  // Stack top address
.word   _reset      // - Reset
.word   none        // - NMI
.word   none        // - HardFault
.word   none        // - MemManage Fault
.word   none        // - BusFault
.word   none        // - UsageFault
.word   none        // - RESERVED
.word   none        // - RESERVED
.word   none        // - RESERVED
.word   none        // - RESERVED
.word   none        // - SV call
.word   none        // - Debug Monitor
.word   none        // - RESERVED
.word   none        // - PendSV
.word   none        // - SysTick
.word   none        // 0 WWDG
.word   none        // 1 PVD
.word   none        // 2 TAMPER
.word   none        // 3 RTC
.word   none        // 4 FLASH
.word   none        // 5 RCC
.word   none        // 6 EXTI0
.word   none        // 7 EXTI1
.word   none        // 8 EXTI2
.word   none        // 9 EXTI3
.word   none        // 10 EXTI4
.word   none        // 11 DMA1_Channel1
.word   none        // 12 DMA1_Channel2
.word   none        // 13 DMA1_Channel3
.word   none        // 14 DMA1_Channel4
.word   none        // 15 DMA1_Channel5
.word   none        // 16 DMA1_Channel6
.word   none        // 17 DMA1_Channel7
.word   none        // 18 ADC1_2
.word   none        // 19 CAN1_TX
.word   none        // 20 CAN1_RX0
.word   none        // 21 CAN1_RX1
.word   none        // 22 CAN1_SCE
.word   none        // 23 EXTI9_5
.word   none        // 24 TIM1_BRK
.word   none        // 25 TIM1_UP
.word   none        // 26 TIM1_TRG_COM
.word   none        // 27 TIM1_CC
.word   tim2_handle // 28 TIM2
.word   tim3_handle // 29 TIM3
.word   tim4_handle // 30 TIM4
.word   none        // 31 I2C1_EV
.word   none        // 32 I2C1_ER
.word   none        // 33 I2C2_EV
.word   none        // 34 I2C2_ER
.word   none        // 35 SPI1
.word   none        // 36 SPI2
.word   none        // 37 USART1
.word   none        // 38 USART2
.word   none        // 39 USART3
.word   none        // 40 EXTI15_10
.word   none        // 41 RTCAlarm
.word   none        // 42 OTG_FS_WKUP
.word   none        // 43 RESERVED
.word   none        // 44 RESERVED
.word   none        // 45 RESERVED
.word   none        // 46 RESERVED
.word   none        // 47 RESERVED
.word   none        // 48 RESERVED
.word   none        // 49 RESERVED
.word   none        // 50 TIM5
.word   none        // 51 SPI3
.word   none        // 52 UART4
.word   none        // 53 UART5
.word   none        // 54 TIM6
.word   none        // 55 TIM7
.word   none        // 56 DMA2_Channel1
.word   none        // 57 DMA2_Channel2
.word   none        // 58 DMA2_Channel3
.word   none        // 59 DMA2_Channel4
.word   none        // 60 DMA2_Channel5
.word   none        // 61 ETH
.word   none        // 62 ETH_WKUP
.word   none        // 63 CAN2_TX
.word   none        // 64 CAN2_RX0
.word   none        // 65 CAN2_RX1
.word   none        // 66 CAN2_SCE
.word   none        // 67 OTG_FS

.thumb_func
none:   b .

.thumb_func
_reset:
    bl main
    b .
