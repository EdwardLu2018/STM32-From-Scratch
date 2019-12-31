#include "nvic.h"

nvic_t *nvic = (nvic_t *)(NVIC_BASE);

void nvic_enable(uint8_t irq_pos) {
	uint8_t idx = irq_pos / 32;
	uint8_t shift_by = irq_pos % 32;
	nvic->iser[idx] = (1 << shift_by);
}
