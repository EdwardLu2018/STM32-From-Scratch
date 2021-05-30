#include "nvic.h"

void nvic_irq_enable(uint8_t irq_pos) {
	nvic_t *nvic = (nvic_t *)(NVIC_BASE);
	uint8_t idx = irq_pos / 32;
	uint8_t shift_by = irq_pos % 32;
	nvic->ISER[idx] = (1 << shift_by);
}
