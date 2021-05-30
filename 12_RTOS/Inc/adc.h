#ifndef __ADC__
#define __ADC__

#include "stm32f103.h"
#include "intrinsic.h"

typedef enum
{
    ADC1, ADC2, ADC3
} adc_num_t;

#define ADC_CHAN1 0
#define ADC_CHAN2 1

#define EOC     (1<<1) // end of conversion
#define EOCIE   (1<<5) // enable end of conversion interrupt
#define ADON    (1<<0)
#define CONT    (1<<1) // continuous conversion
#define CAL     (1<<2)
#define RSTCAL  (1<<3)
#define TSVREFE (1<<23)

typedef enum
{
    Cycles_1Pt5, Cycles_7Pt5, Cycles_13Pt5, Cycles_28Pt5,
    Cycles_41Pt5, Cycles_55Pt5, Cycles_71Pt5, Cycles_239Pt5
} sample_bits_t;

// analog to digital converter (pg 237) //
typedef struct
{
    uint32_t __IO SR; // 0x0 - status register
    uint32_t __IO CR1; // 0x4 - control register 1
    uint32_t __IO CR2; // 0x8 - control register 2
    uint32_t __IO SMPR[2]; // 0xC to 0x10 - sample time registers 1 and 2
    uint32_t __IO JOFR1; // 0x14 - injected channel DATA offset register 1
    uint32_t __IO JOFR2; // 0x18 - injected channel DATA offset register 2
    uint32_t __IO JOFR3; // 0x1C - injected channel DATA offset register 3
    uint32_t __IO JOFR4; // 0x20 - injected channel DATA offset register 4
    uint32_t __IO HTR; // 0x24 - watchdog high threshold register
    uint32_t __IO LTR; // 0x28 - watchdog low threshold register
    uint32_t __IO SQR1; // 0x2C - regular sequence register 1
    uint32_t __IO SQR2; // 0x30 - regular sequence register 2
    uint32_t __IO SQR3; // 0x34 - regular sequence register 3
    uint32_t __IO JSQR; // 0x38 - injected sequence register
    uint32_t __IO JDR1; // 0x3C - injected DATA register 1
    uint32_t __IO JDR2; // 0x40 - injected DATA register 2
    uint32_t __IO JDR3; // 0x44 - injected DATA register 3
    uint32_t __IO JDR4; // 0x48 - injected DATA register 4
    uint32_t __IO DR; // 0x4C - regular DATA register
} ADC_t;

extern ADC_t *adc1;
extern ADC_t *adc2;
extern ADC_t *adc3;

void ADC_Init(uint8_t adc_num);
void ADC_Calibrate(uint8_t adc_num);
void ADC_Set_Chan(uint8_t adc_num, uint8_t chan, uint32_t sample_bits);
uint32_t ADC_Read(uint8_t adc_num);

#endif
