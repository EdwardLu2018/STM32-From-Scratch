#include "nvic.h"

nvic_t *nvic = (nvic_t *)(NVIC_BASE);

void nvic_enable(unsigned char irq_pos) {
	unsigned char idx = irq_pos / 32;
	unsigned char shift_by = irq_pos % 32;
	nvic->iser[idx] = (1 << shift_by);
}
