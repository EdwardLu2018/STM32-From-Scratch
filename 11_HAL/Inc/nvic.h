#ifndef _NVIC_H_
#define _NVIC_H_

#include "stm32f103.h"
#include "intrinsic.h"

// IRQ numbers for enabling interrupts //
typedef enum
{
	NMI_IRQn = -14,     // -14 Non Maskable Interrupt
   	HardFault_IRQn,     // -13 HardFault
   	MemManage_IRQn,     // -12 MemManage Fault
   	BusFault_IRQn,      // -11 BusFault
   	UsageFault_IRQn,    // -10 UsageFault
   	SVC_IRQn = -5,      // -5 SV call
   	DebugMon_IRQn,      // -4 Debug Monitor
   	PendSV_IRQn = -2,   // -2 PendSV
   	SysTick_IRQn,       // -1 SysTick
   	WWDG_IRQn,        	// 0 WWDG
   	PVD_IRQn,         	// 1 PVD
   	TAMPER_IRQn,      	// 2 TAMPER
   	RTC_IRQn,         	// 3 RTC
   	FLASH_IRQn,       	// 4 FLASH
   	RCC_IRQn,         	// 5 RCC
   	EXTI0_IRQn,       	// 6 EXTI0
   	EXTI1_IRQn,       	// 7 EXTI1
   	EXTI2_IRQn,       	// 8 EXTI2
   	EXTI3_IRQn,       	// 9 EXTI3
   	EXTI4_IRQn,       	// 10 EXTI4
   	DMA1_Chan1_IRQn,  	// 11 DMA1_Channel1
   	DMA1_Chan2_IRQn,  	// 12 DMA1_Channel2
   	DMA1_Chan3_IRQn,  	// 13 DMA1_Channel3
   	DMA1_Chan4_IRQn,  	// 14 DMA1_Channel4
   	DMA1_Chan5_IRQn,  	// 15 DMA1_Channel5
   	DMA1_Chan6_IRQn,  	// 16 DMA1_Channel6
   	DMA1_Chan7_IRQn,  	// 17 DMA1_Channel7
   	ADC1_2_IRQn,      	// 18 ADC1_2 (both ADC1 and ADC2)
   	CAN1_TX_IRQn,     	// 19 CAN1_TX
   	CAN1_RX0_IRQn,    	// 20 CAN1_RX0
   	CAN1_RX1_IRQn,    	// 21 CAN1_RX1
   	CAN1_SCE_IRQn,    	// 22 CAN1_SCE
   	EXTI9_5_IRQn,     	// 23 EXTI9_5
   	TIM1_BRK_IRQn,    	// 24 TIM1_BRK
   	TIM1_UP_IRQn,     	// 25 TIM1_UP
   	TIM1_TRG_COM_IRQn,	// 26 TIM1_TRG_COM
   	TIM1_CC_IRQn,     	// 27 TIM1_CC
   	TIM2_IRQn,        	// 28 TIM2
   	TIM3_IRQn,        	// 29 TIM3
   	TIM4_IRQn,        	// 30 TIM4
   	I2C1_EV_IRQn,     	// 31 I2C1_EV
   	I2C1_ER_IRQn,     	// 32 I2C1_ER
   	I2C2_EV_IRQn,     	// 33 I2C2_EV
   	I2C2_ER_IRQn,     	// 34 I2C2_ER
   	SPI1_IRQn,        	// 35 SPI1
   	SPI2_IRQn,        	// 36 SPI2
   	USART1_IRQn,      	// 37 USART1
   	USART2_IRQn,      	// 38 USART2
   	USART3_IRQn,      	// 39 USART3
   	EXTI15_10_IRQn,   	// 40 EXTI15_10
   	RTCAlarm_IRQn,    	// 41 RTCAlarm
   	OTG_FS_WKUP_IRQn, 	// 42 OTG_FS_WKUP
   	TIM5_IRQn = 50,     // 50 TIM5
   	SPI3_IRQn,        	// 51 SPI3
   	UART4_IRQn,       	// 52 UART4
   	UART5_IRQn,       	// 53 UART5
   	TIM6_IRQn,        	// 54 TIM6
   	TIM7_IRQn,        	// 55 TIM7
   	DMA2_Chan1_IRQn,  	// 56 DMA2_Channel1
   	DMA2_Chan2_IRQn,  	// 57 DMA2_Channel2
   	DMA2_Chan3_IRQn,  	// 58 DMA2_Channel3
   	DMA2_Chan4_IRQn,  	// 59 DMA2_Channel4
   	DMA2_Chan5_IRQn,  	// 60 DMA2_Channel5
   	ETH_IRQn,         	// 61 ETH
   	ETH_WKUP_IRQn,    	// 62 ETH_WKUP
   	CAN2_TX_IRQn,     	// 63 CAN2_TX
   	CAN2_RX0_IRQn,    	// 64 CAN2_RX0
   	CAN2_RX1_IRQn,    	// 65 CAN2_RX1
   	CAN2_SCE_IRQn,    	// 66 CAN2_SCE
   	OTG_FS_IRQn,      	// 67 OTG_FS
} IRQn_t;

// nested vectored interrupt controller (pg 118 Programming Manual) //
typedef struct {
   	uint32_t __IO ISER[3];	// 0x0 to 0xB - interrupt set-enable registers
	uint32_t __IO ICER[3];	// 0xC to 0x18 - interrupt clear-enable registers
	uint32_t __IO ISPR[3];	// 0x18 to 0x24 - interrupt set-pending registers
	uint32_t __IO ICPR[3];	// 0x24 to 0x30 - interrupt clear-pending registers
	uint32_t __IO IABR[3];	// 0x30 to 0x3C - interrupt active bit registers
	// uint32_t __IO IPR[3];	// 0x3C to 0x48 - interrupt priority registers
	// uint32_t __IO STIR;	// 0x48 to 0x54 - software trigger interrupt register
} NVIC_t;

void NVIC_Irq_Enable(uint8_t irq_pos);

#endif
