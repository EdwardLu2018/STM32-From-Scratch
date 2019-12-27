// Base Addresses For Peripherals //
#define RCC_BASE 0x40021000U
#define GPIOA_BASE 0x40010800U
#define GPIOB_BASE 0x40010C00U
#define GPIOC_BASE 0x40011000U
#define GPIOD_BASE 0x40011400U
#define GPIOE_BASE 0x40011800U

// Offset Addresses For Peripherals //
#define RCC_CR_OFFSET 0x00U // Control register for clock and reset control
#define RCC_CFGR_OFFSET 0X04U // Configuration register for clock and reset control
#define RCC_APB2ENR_OFFSET 0X18U // Offset address for advanced peripheral bus
#define GPIOx_ODR 0X0CU // GPIO output data register address
#define GPIOx_IDR 0X08U // GPIO input data register address
#define GPIOx_CRL 0x00U // GPIO control registers for LOW register address
#define GPIOx_CRH 0x04U // GPIO control registers for HIGH register address
#define GPIOx_BSRR 0x10U // GPIO bit SET/RESET registers register address
#define GPIOx_BRR 0x14U //

#define RCC_CR (RCC_BASE + RCC_CR_OFFSET) // Adding the peripheral base address with offset address of some
                                          // register will take you to the actual address
#define RCC_CFGR (RCC_BASE + RCC_CFGR_OFFSET)
#define RCC_APB2ENR (RCC_BASE + RCC_APB2ENR_OFFSET)

#define GPIOA_MODERL (GPIOA_BASE + GPIOx_CRL)
#define GPIOA_MODERH (GPIOA_BASE + GPIOx_CRH)
#define GPIOA_ODR (GPIOA_BASE + GPIOx_ODR)
#define GPIOA_BSRR (GPIOA_BASE + GPIOx_BSRR)
#define GPIOA_BRR (GPIOA_BASE + GPIOx_BRR)

#define GPIOB_MODERL (GPIOB_BASE + GPIOx_CRL)
#define GPIOB_MODERH (GPIOB_BASE + GPIOx_CRH)
#define GPIOB_ODR (GPIOB_BASE + GPIOx_ODR)
#define GPIOB_BSRR (GPIOB_BASE + GPIOx_BSRR)
#define GPIOB_BRR (GPIOB_BASE + GPIOx_BRR)

#define GPIOC_MODERL (GPIOC_BASE + GPIOx_CRL)
#define GPIOC_MODERH (GPIOC_BASE + GPIOx_CRH)
#define GPIOC_ODR (GPIOC_BASE + GPIOx_ODR)
#define GPIOC_BSRR (GPIOC_BASE + GPIOx_BSRR)
#define GPIOC_BRR (GPIOC_BASE + GPIOx_BRR)

#define REG(X) (*(unsigned int *) X)

void delay(unsigned volatile int t) {
    for (unsigned volatile int i = 0; i < t; i++);
}

int main (void) {
    REG(RCC_CR) |= (1<<16);
    if (REG(RCC_CR) & (1<<17))
        REG(RCC_CFGR) |= (1<<0);
    REG(RCC_APB2ENR) |= (1<<4)|(1<<2)|(1<<3);
    REG(GPIOC_MODERH) &= (0<<22)|(0<<23);
    REG(GPIOC_MODERH) |= (1<<20);

    while (1) {
        REG(GPIOC_ODR) ^= (1<<13);
        delay(1000000U);
    }
}
