#ifndef __ADC__
#define __ADC__

#include "stm32f103.h"
#include "intrinsic.h"

#define ADC1    0
#define ADC2    1
#define ADC3    2

#define ADC_CHAN1 0
#define ADC_CHAN2 1

#define EOC     (1<<1) // end of conversion
#define EOCIE   (1<<5) // enable end of conversion interrupt
#define ADON    (1<<0)
#define CONT    (1<<1) // continuous conversion
#define CAL     (1<<2)
#define RSTCAL  (1<<3)
#define TSVREFE (1<<23)

typedef enum {
    cycles_1Pt5, cycles_7Pt5, cycles_13Pt5, cycles_28Pt5,
    cycles_41Pt5, cycles_55Pt5, cycles_71Pt5, cycles_239Pt5
} sample_bits_t;

// analog to digital converter (pg 237)
typedef struct {
    uint32_t __IO sr; // 0x0 - status register
    uint32_t __IO cr1; // 0x4 - control register 1
    uint32_t __IO cr2; // 0x8 - control register 2
    uint32_t __IO smpr[2]; // 0xC to 0x10 - sample time registers 1 and 2
    uint32_t __IO jofr1; // 0x14 - injected channel data offset register 1
    uint32_t __IO jofr2; // 0x18 - injected channel data offset register 2
    uint32_t __IO jofr3; // 0x1C - injected channel data offset register 3
    uint32_t __IO jofr4; // 0x20 - injected channel data offset register 4
    uint32_t __IO htr; // 0x24 - watchdog high threshold register
    uint32_t __IO ltr; // 0x28 - watchdog low threshold register
    uint32_t __IO sqr1; // 0x2C - regular sequence register 1
    uint32_t __IO sqr2; // 0x30 - regular sequence register 2
    uint32_t __IO sqr3; // 0x34 - regular sequence register 3
    uint32_t __IO jsqr; // 0x38 - injected sequence register
    uint32_t __IO jdr1; // 0x3C - injected data register 1
    uint32_t __IO jdr2; // 0x40 - injected data register 2
    uint32_t __IO jdr3; // 0x44 - injected data register 3
    uint32_t __IO jdr4; // 0x48 - injected data register 4
    uint32_t __IO dr; // 0x4C - regular data register
} adc_t;

adc_t *adc1;
adc_t *adc2;
adc_t *adc3;

adc_t *adc_get(uint8_t adc_num);
void adc_init(uint8_t adc_num);
void adc_calibrate(uint8_t adc_num);
void adc_set_chan(uint8_t adc_num, uint8_t chan, uint32_t sample_bits);
uint32_t adc_read(uint8_t adc_num);

#endif
