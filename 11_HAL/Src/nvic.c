#include "nvic.h"

void NVIC_Irq_Enable(uint8_t irq_pos) {
	NVIC_t *nvic = (NVIC_t *)(NVIC_BASE);
	uint8_t idx = irq_pos / 32;
	uint8_t shift_by = irq_pos % 32;
	nvic->ISER[idx] = (1 << shift_by);
}
