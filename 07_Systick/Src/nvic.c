#include "nvic.h"

void nvic_enable(unsigned char irq_pos) {
	nvic_t *nvic = (nvic_t *)(NVIC_BASE);
	unsigned char idx = irq_pos / 32;
	unsigned char shift_by = irq_pos % 32;
	nvic->iser[idx] = (1 << shift_by);
}
