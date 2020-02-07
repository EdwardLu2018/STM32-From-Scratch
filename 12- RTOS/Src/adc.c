#include "adc.h"

ADC_t *adc1 = (ADC_t *)(ADC1_BASE);
ADC_t *adc2 = (ADC_t *)(ADC2_BASE);
ADC_t *adc3 = (ADC_t *)(ADC3_BASE);

static ADC_t *ADC_Get(uint8_t adc_num) {
    switch (adc_num) {
        case ADC1: return adc1;
        case ADC2: return adc2;
        case ADC3: return adc3;
        default: return adc1;
    }
}

void ADC_Init(uint8_t adc_num) {
    ADC_t *adc = ADC_Get(adc_num);
    adc->CR2 |= (CONT|ADON);
    ADC_Calibrate(adc_num);
}

void ADC_Calibrate(uint8_t adc_num) {
    ADC_t *adc = ADC_Get(adc_num);
    adc->CR2 |= RSTCAL; // reset calibration
    while (adc->CR2 & RSTCAL); // wait for calibration register
    adc->CR2 |= CAL; // enable adc calibration
    while (adc->CR2 & CAL); // check if calibration is complete
    adc->CR1 |= EOCIE;
}

void ADC_Set_Chan(uint8_t adc_num, uint8_t chan, uint32_t sample_bits) {
    ADC_t *adc = ADC_Get(adc_num);
    adc->SQR1 = 0;
    adc->SQR2 = 0;
    adc->SQR3 = chan;
    adc->SMPR[chan] = sample_bits;
}

uint32_t ADC_Read(uint8_t adc_num) {
    ADC_t *adc = ADC_Get(adc_num);
    return (adc->SR & EOC) ? adc->DR : 0;
}
