#include "adc.h"

adc_t *adc1 = (adc_t *)(ADC1_BASE);
adc_t *adc2 = (adc_t *)(ADC2_BASE);
adc_t *adc3 = (adc_t *)(ADC3_BASE);

adc_t *adc_get(uint8_t adc_num) {
    switch (adc_num) {
    case ADC1: return adc1;
    case ADC2: return adc2;
    case ADC3: return adc3;
    default: return adc1;
    }
}

void adc_init(uint8_t adc_num) {
    adc_t *adc = adc_get(adc_num);
    adc->cr2 |= (CONT|ADON);
    adc_calibrate(adc_num);
}

void adc_calibrate(uint8_t adc_num) {
    adc_t *adc = adc_get(adc_num);
    adc->cr2 |= RSTCAL; // reset calibration
    while (adc->cr2 & RSTCAL); // wait for calibration register
    adc->cr2 |= CAL; // enable adc calibration
    while (adc->cr2 & CAL); // check if calibration is complete
    adc->cr1 |= EOCIE;
}

void adc_set_chan(uint8_t adc_num, uint8_t chan, uint32_t sample_bits) {
    adc_t *adc = adc_get(adc_num);
    adc->sqr1 = 0;
    adc->sqr2 = 0;
    adc->sqr3 = chan;
    adc->smpr[chan] = sample_bits;
}

uint32_t adc_read(uint8_t adc_num) {
    adc_t *adc = adc_get(adc_num);
    return (adc->sr & EOC) ? adc->dr : 0;
}
