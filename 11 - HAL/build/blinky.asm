
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000150 <TIM_Get-0x14>:
 8000150:	08000bbc 	.word	0x08000bbc
 8000154:	20000000 	.word	0x20000000
 8000158:	20000050 	.word	0x20000050
 800015c:	20000050 	.word	0x20000050
 8000160:	20000060 	.word	0x20000060

08000164 <TIM_Get>:
TIM_t *tim4 = (TIM_t *)(TIM4_BASE);
TIM_t *tim5 = (TIM_t *)(TIM5_BASE);
TIM_t *tim6 = (TIM_t *)(TIM6_BASE);
TIM_t *tim7 = (TIM_t *)(TIM7_BASE);

TIM_t *TIM_Get(uint8_t timer) {
 8000164:	b480      	push	{r7}
 8000166:	b083      	sub	sp, #12
 8000168:	af00      	add	r7, sp, #0
 800016a:	4603      	mov	r3, r0
 800016c:	71fb      	strb	r3, [r7, #7]
    switch (timer) {
 800016e:	79fb      	ldrb	r3, [r7, #7]
 8000170:	3b01      	subs	r3, #1
 8000172:	2b05      	cmp	r3, #5
 8000174:	d820      	bhi.n	80001b8 <TIM_Get+0x54>
 8000176:	a201      	add	r2, pc, #4	; (adr r2, 800017c <TIM_Get+0x18>)
 8000178:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800017c:	08000195 	.word	0x08000195
 8000180:	0800019b 	.word	0x0800019b
 8000184:	080001a1 	.word	0x080001a1
 8000188:	080001a7 	.word	0x080001a7
 800018c:	080001ad 	.word	0x080001ad
 8000190:	080001b3 	.word	0x080001b3
    case TIM2: return tim2;
 8000194:	4b0c      	ldr	r3, [pc, #48]	; (80001c8 <TIM_Get+0x64>)
 8000196:	681b      	ldr	r3, [r3, #0]
 8000198:	e010      	b.n	80001bc <TIM_Get+0x58>
    case TIM3: return tim3;
 800019a:	4b0c      	ldr	r3, [pc, #48]	; (80001cc <TIM_Get+0x68>)
 800019c:	681b      	ldr	r3, [r3, #0]
 800019e:	e00d      	b.n	80001bc <TIM_Get+0x58>
    case TIM4: return tim4;
 80001a0:	4b0b      	ldr	r3, [pc, #44]	; (80001d0 <TIM_Get+0x6c>)
 80001a2:	681b      	ldr	r3, [r3, #0]
 80001a4:	e00a      	b.n	80001bc <TIM_Get+0x58>
    case TIM5: return tim5;
 80001a6:	4b0b      	ldr	r3, [pc, #44]	; (80001d4 <TIM_Get+0x70>)
 80001a8:	681b      	ldr	r3, [r3, #0]
 80001aa:	e007      	b.n	80001bc <TIM_Get+0x58>
    case TIM6: return tim6;
 80001ac:	4b0a      	ldr	r3, [pc, #40]	; (80001d8 <TIM_Get+0x74>)
 80001ae:	681b      	ldr	r3, [r3, #0]
 80001b0:	e004      	b.n	80001bc <TIM_Get+0x58>
    case TIM7: return tim7;
 80001b2:	4b0a      	ldr	r3, [pc, #40]	; (80001dc <TIM_Get+0x78>)
 80001b4:	681b      	ldr	r3, [r3, #0]
 80001b6:	e001      	b.n	80001bc <TIM_Get+0x58>
    default: return tim2;
 80001b8:	4b03      	ldr	r3, [pc, #12]	; (80001c8 <TIM_Get+0x64>)
 80001ba:	681b      	ldr	r3, [r3, #0]
    }
}
 80001bc:	4618      	mov	r0, r3
 80001be:	370c      	adds	r7, #12
 80001c0:	46bd      	mov	sp, r7
 80001c2:	bc80      	pop	{r7}
 80001c4:	4770      	bx	lr
 80001c6:	bf00      	nop
 80001c8:	20000000 	.word	0x20000000
 80001cc:	20000004 	.word	0x20000004
 80001d0:	20000008 	.word	0x20000008
 80001d4:	2000000c 	.word	0x2000000c
 80001d8:	20000010 	.word	0x20000010
 80001dc:	20000014 	.word	0x20000014

080001e0 <TIM_Get_Cnt>:

uint32_t TIM_Get_Cnt(uint8_t timer) {
 80001e0:	b580      	push	{r7, lr}
 80001e2:	b084      	sub	sp, #16
 80001e4:	af00      	add	r7, sp, #0
 80001e6:	4603      	mov	r3, r0
 80001e8:	71fb      	strb	r3, [r7, #7]
    TIM_t *tim = TIM_Get(timer);
 80001ea:	79fb      	ldrb	r3, [r7, #7]
 80001ec:	4618      	mov	r0, r3
 80001ee:	f7ff ffb9 	bl	8000164 <TIM_Get>
 80001f2:	60f8      	str	r0, [r7, #12]
    return tim->CNT;
 80001f4:	68fb      	ldr	r3, [r7, #12]
 80001f6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
}
 80001f8:	4618      	mov	r0, r3
 80001fa:	3710      	adds	r7, #16
 80001fc:	46bd      	mov	sp, r7
 80001fe:	bd80      	pop	{r7, pc}

08000200 <TIM_Enable_Chan>:

void TIM_Enable_Chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load) {
 8000200:	b580      	push	{r7, lr}
 8000202:	b086      	sub	sp, #24
 8000204:	af00      	add	r7, sp, #0
 8000206:	603b      	str	r3, [r7, #0]
 8000208:	4603      	mov	r3, r0
 800020a:	71fb      	strb	r3, [r7, #7]
 800020c:	460b      	mov	r3, r1
 800020e:	71bb      	strb	r3, [r7, #6]
 8000210:	4613      	mov	r3, r2
 8000212:	717b      	strb	r3, [r7, #5]
    TIM_t *tim = TIM_Get(timer);
 8000214:	79fb      	ldrb	r3, [r7, #7]
 8000216:	4618      	mov	r0, r3
 8000218:	f7ff ffa4 	bl	8000164 <TIM_Get>
 800021c:	6178      	str	r0, [r7, #20]
    tim->CCR[channel] = load;
 800021e:	797b      	ldrb	r3, [r7, #5]
 8000220:	697a      	ldr	r2, [r7, #20]
 8000222:	330c      	adds	r3, #12
 8000224:	009b      	lsls	r3, r3, #2
 8000226:	4413      	add	r3, r2
 8000228:	683a      	ldr	r2, [r7, #0]
 800022a:	605a      	str	r2, [r3, #4]

    uint8_t shift_by;
    uint32_t config;

    shift_by = channel * 4;
 800022c:	797b      	ldrb	r3, [r7, #5]
 800022e:	009b      	lsls	r3, r3, #2
 8000230:	74fb      	strb	r3, [r7, #19]
    config = tim->CCER & ~(0xf << shift_by);
 8000232:	697b      	ldr	r3, [r7, #20]
 8000234:	6a1b      	ldr	r3, [r3, #32]
 8000236:	7cfa      	ldrb	r2, [r7, #19]
 8000238:	210f      	movs	r1, #15
 800023a:	fa01 f202 	lsl.w	r2, r1, r2
 800023e:	43d2      	mvns	r2, r2
 8000240:	4013      	ands	r3, r2
 8000242:	60fb      	str	r3, [r7, #12]
    tim->CCER = (config | (1 << shift_by)); // enable output
 8000244:	7cfb      	ldrb	r3, [r7, #19]
 8000246:	2201      	movs	r2, #1
 8000248:	fa02 f303 	lsl.w	r3, r2, r3
 800024c:	461a      	mov	r2, r3
 800024e:	68fb      	ldr	r3, [r7, #12]
 8000250:	431a      	orrs	r2, r3
 8000252:	697b      	ldr	r3, [r7, #20]
 8000254:	621a      	str	r2, [r3, #32]

    // output compare mode //
    shift_by = (channel % 2) * 8;
 8000256:	797b      	ldrb	r3, [r7, #5]
 8000258:	f003 0301 	and.w	r3, r3, #1
 800025c:	b2db      	uxtb	r3, r3
 800025e:	00db      	lsls	r3, r3, #3
 8000260:	74fb      	strb	r3, [r7, #19]
    uint8_t mr_idx = channel / 2;
 8000262:	797b      	ldrb	r3, [r7, #5]
 8000264:	085b      	lsrs	r3, r3, #1
 8000266:	72fb      	strb	r3, [r7, #11]
    config = tim->CCMR[mr_idx] & ~(0xff << shift_by);
 8000268:	7afa      	ldrb	r2, [r7, #11]
 800026a:	697b      	ldr	r3, [r7, #20]
 800026c:	3206      	adds	r2, #6
 800026e:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000272:	7cfa      	ldrb	r2, [r7, #19]
 8000274:	21ff      	movs	r1, #255	; 0xff
 8000276:	fa01 f202 	lsl.w	r2, r1, r2
 800027a:	43d2      	mvns	r2, r2
 800027c:	4013      	ands	r3, r2
 800027e:	60fb      	str	r3, [r7, #12]
    tim->CCMR[mr_idx] = (config | (mode << shift_by));
 8000280:	79ba      	ldrb	r2, [r7, #6]
 8000282:	7cfb      	ldrb	r3, [r7, #19]
 8000284:	fa02 f303 	lsl.w	r3, r2, r3
 8000288:	4619      	mov	r1, r3
 800028a:	7afa      	ldrb	r2, [r7, #11]
 800028c:	68fb      	ldr	r3, [r7, #12]
 800028e:	4319      	orrs	r1, r3
 8000290:	697b      	ldr	r3, [r7, #20]
 8000292:	3206      	adds	r2, #6
 8000294:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 8000298:	bf00      	nop
 800029a:	3718      	adds	r7, #24
 800029c:	46bd      	mov	sp, r7
 800029e:	bd80      	pop	{r7, pc}

080002a0 <TIM_Init>:

void TIM_Init(uint8_t timer, uint32_t prescaler, uint32_t period) {
 80002a0:	b580      	push	{r7, lr}
 80002a2:	b086      	sub	sp, #24
 80002a4:	af00      	add	r7, sp, #0
 80002a6:	4603      	mov	r3, r0
 80002a8:	60b9      	str	r1, [r7, #8]
 80002aa:	607a      	str	r2, [r7, #4]
 80002ac:	73fb      	strb	r3, [r7, #15]
    TIM_t *tim = TIM_Get(timer);
 80002ae:	7bfb      	ldrb	r3, [r7, #15]
 80002b0:	4618      	mov	r0, r3
 80002b2:	f7ff ff57 	bl	8000164 <TIM_Get>
 80002b6:	6178      	str	r0, [r7, #20]

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->PSC = PCLK2 / prescaler - 1U; // a prescaler value of PSC will increment cnt every PSC+1 clock Cycles.
 80002b8:	4a0a      	ldr	r2, [pc, #40]	; (80002e4 <TIM_Init+0x44>)
 80002ba:	68bb      	ldr	r3, [r7, #8]
 80002bc:	fbb2 f3f3 	udiv	r3, r2, r3
 80002c0:	1e5a      	subs	r2, r3, #1
 80002c2:	697b      	ldr	r3, [r7, #20]
 80002c4:	629a      	str	r2, [r3, #40]	; 0x28
    tim->ARR = period - 1U; // "period" of timer - updates every time cnt reaches ARR
 80002c6:	687b      	ldr	r3, [r7, #4]
 80002c8:	1e5a      	subs	r2, r3, #1
 80002ca:	697b      	ldr	r3, [r7, #20]
 80002cc:	62da      	str	r2, [r3, #44]	; 0x2c

    tim->DIER = 1U;
 80002ce:	697b      	ldr	r3, [r7, #20]
 80002d0:	2201      	movs	r2, #1
 80002d2:	60da      	str	r2, [r3, #12]

    // enable counter //
    tim->CR[0] = 1U;
 80002d4:	697b      	ldr	r3, [r7, #20]
 80002d6:	2201      	movs	r2, #1
 80002d8:	601a      	str	r2, [r3, #0]
}
 80002da:	bf00      	nop
 80002dc:	3718      	adds	r7, #24
 80002de:	46bd      	mov	sp, r7
 80002e0:	bd80      	pop	{r7, pc}
 80002e2:	bf00      	nop
 80002e4:	044aa200 	.word	0x044aa200

080002e8 <NVIC_Irq_Enable>:
#include "nvic.h"

NVIC_t *nvic = (NVIC_t *)(NVIC_BASE);

void NVIC_Irq_Enable(uint8_t irq_pos) {
 80002e8:	b480      	push	{r7}
 80002ea:	b085      	sub	sp, #20
 80002ec:	af00      	add	r7, sp, #0
 80002ee:	4603      	mov	r3, r0
 80002f0:	71fb      	strb	r3, [r7, #7]
	uint8_t idx = irq_pos / 32;
 80002f2:	79fb      	ldrb	r3, [r7, #7]
 80002f4:	095b      	lsrs	r3, r3, #5
 80002f6:	73fb      	strb	r3, [r7, #15]
	uint8_t shift_by = irq_pos % 32;
 80002f8:	79fb      	ldrb	r3, [r7, #7]
 80002fa:	f003 031f 	and.w	r3, r3, #31
 80002fe:	73bb      	strb	r3, [r7, #14]
	nvic->ISER[idx] = (1 << shift_by);
 8000300:	7bbb      	ldrb	r3, [r7, #14]
 8000302:	2201      	movs	r2, #1
 8000304:	fa02 f103 	lsl.w	r1, r2, r3
 8000308:	4b04      	ldr	r3, [pc, #16]	; (800031c <NVIC_Irq_Enable+0x34>)
 800030a:	681b      	ldr	r3, [r3, #0]
 800030c:	7bfa      	ldrb	r2, [r7, #15]
 800030e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 8000312:	bf00      	nop
 8000314:	3714      	adds	r7, #20
 8000316:	46bd      	mov	sp, r7
 8000318:	bc80      	pop	{r7}
 800031a:	4770      	bx	lr
 800031c:	20000018 	.word	0x20000018

08000320 <GPIO_Get>:

GPIO_t *gpio_a = (GPIO_t *)(GPIOA_BASE);
GPIO_t *gpio_b = (GPIO_t *)(GPIOB_BASE);
GPIO_t *gpio_c = (GPIO_t *)(GPIOC_BASE);

GPIO_t *GPIO_Get(uint8_t pin) {
 8000320:	b480      	push	{r7}
 8000322:	b083      	sub	sp, #12
 8000324:	af00      	add	r7, sp, #0
 8000326:	4603      	mov	r3, r0
 8000328:	71fb      	strb	r3, [r7, #7]
    switch(pin >> 4) {
 800032a:	79fb      	ldrb	r3, [r7, #7]
 800032c:	091b      	lsrs	r3, r3, #4
 800032e:	b2db      	uxtb	r3, r3
 8000330:	2b01      	cmp	r3, #1
 8000332:	d006      	beq.n	8000342 <GPIO_Get+0x22>
 8000334:	2b02      	cmp	r3, #2
 8000336:	d007      	beq.n	8000348 <GPIO_Get+0x28>
 8000338:	2b00      	cmp	r3, #0
 800033a:	d108      	bne.n	800034e <GPIO_Get+0x2e>
        case GPIOA: return gpio_a;
 800033c:	4b07      	ldr	r3, [pc, #28]	; (800035c <GPIO_Get+0x3c>)
 800033e:	681b      	ldr	r3, [r3, #0]
 8000340:	e007      	b.n	8000352 <GPIO_Get+0x32>
        case GPIOB: return gpio_b;
 8000342:	4b07      	ldr	r3, [pc, #28]	; (8000360 <GPIO_Get+0x40>)
 8000344:	681b      	ldr	r3, [r3, #0]
 8000346:	e004      	b.n	8000352 <GPIO_Get+0x32>
        case GPIOC: return gpio_c;
 8000348:	4b06      	ldr	r3, [pc, #24]	; (8000364 <GPIO_Get+0x44>)
 800034a:	681b      	ldr	r3, [r3, #0]
 800034c:	e001      	b.n	8000352 <GPIO_Get+0x32>
        default: return gpio_c;
 800034e:	4b05      	ldr	r3, [pc, #20]	; (8000364 <GPIO_Get+0x44>)
 8000350:	681b      	ldr	r3, [r3, #0]
    }
}
 8000352:	4618      	mov	r0, r3
 8000354:	370c      	adds	r7, #12
 8000356:	46bd      	mov	sp, r7
 8000358:	bc80      	pop	{r7}
 800035a:	4770      	bx	lr
 800035c:	2000001c 	.word	0x2000001c
 8000360:	20000020 	.word	0x20000020
 8000364:	20000024 	.word	0x20000024

08000368 <GPIO_PinMode>:

void GPIO_PinMode(uint8_t pin, uint8_t mode) {
 8000368:	b580      	push	{r7, lr}
 800036a:	b086      	sub	sp, #24
 800036c:	af00      	add	r7, sp, #0
 800036e:	4603      	mov	r3, r0
 8000370:	460a      	mov	r2, r1
 8000372:	71fb      	strb	r3, [r7, #7]
 8000374:	4613      	mov	r3, r2
 8000376:	71bb      	strb	r3, [r7, #6]
    GPIO_t *gpio = GPIO_Get(pin);
 8000378:	79fb      	ldrb	r3, [r7, #7]
 800037a:	4618      	mov	r0, r3
 800037c:	f7ff ffd0 	bl	8000320 <GPIO_Get>
 8000380:	6178      	str	r0, [r7, #20]
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
 8000382:	79fb      	ldrb	r3, [r7, #7]
 8000384:	f003 030f 	and.w	r3, r3, #15
 8000388:	74fb      	strb	r3, [r7, #19]
    uint8_t shift_by = (bit % 8) * 4;
 800038a:	7cfb      	ldrb	r3, [r7, #19]
 800038c:	f003 0307 	and.w	r3, r3, #7
 8000390:	b2db      	uxtb	r3, r3
 8000392:	009b      	lsls	r3, r3, #2
 8000394:	74bb      	strb	r3, [r7, #18]
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
 8000396:	7cfb      	ldrb	r3, [r7, #19]
 8000398:	08db      	lsrs	r3, r3, #3
 800039a:	747b      	strb	r3, [r7, #17]
    uint32_t config = gpio->CR[reg_idx] & ~(0xf << shift_by);
 800039c:	7c7a      	ldrb	r2, [r7, #17]
 800039e:	697b      	ldr	r3, [r7, #20]
 80003a0:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80003a4:	7cba      	ldrb	r2, [r7, #18]
 80003a6:	210f      	movs	r1, #15
 80003a8:	fa01 f202 	lsl.w	r2, r1, r2
 80003ac:	43d2      	mvns	r2, r2
 80003ae:	4013      	ands	r3, r2
 80003b0:	60fb      	str	r3, [r7, #12]
    gpio->CR[reg_idx] = (config | (mode << shift_by));
 80003b2:	79ba      	ldrb	r2, [r7, #6]
 80003b4:	7cbb      	ldrb	r3, [r7, #18]
 80003b6:	fa02 f303 	lsl.w	r3, r2, r3
 80003ba:	4619      	mov	r1, r3
 80003bc:	7c7a      	ldrb	r2, [r7, #17]
 80003be:	68fb      	ldr	r3, [r7, #12]
 80003c0:	4319      	orrs	r1, r3
 80003c2:	697b      	ldr	r3, [r7, #20]
 80003c4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 80003c8:	bf00      	nop
 80003ca:	3718      	adds	r7, #24
 80003cc:	46bd      	mov	sp, r7
 80003ce:	bd80      	pop	{r7, pc}

080003d0 <LED_Toggle>:

void LED_Toggle(uint8_t pin) {
 80003d0:	b580      	push	{r7, lr}
 80003d2:	b084      	sub	sp, #16
 80003d4:	af00      	add	r7, sp, #0
 80003d6:	4603      	mov	r3, r0
 80003d8:	71fb      	strb	r3, [r7, #7]
    GPIO_t *gpio = GPIO_Get(pin);
 80003da:	79fb      	ldrb	r3, [r7, #7]
 80003dc:	4618      	mov	r0, r3
 80003de:	f7ff ff9f 	bl	8000320 <GPIO_Get>
 80003e2:	60f8      	str	r0, [r7, #12]
    gpio->ODR ^= LED_MASK(pin & PIN_MASK);
 80003e4:	68fb      	ldr	r3, [r7, #12]
 80003e6:	68db      	ldr	r3, [r3, #12]
 80003e8:	79fa      	ldrb	r2, [r7, #7]
 80003ea:	f002 020f 	and.w	r2, r2, #15
 80003ee:	2101      	movs	r1, #1
 80003f0:	fa01 f202 	lsl.w	r2, r1, r2
 80003f4:	405a      	eors	r2, r3
 80003f6:	68fb      	ldr	r3, [r7, #12]
 80003f8:	60da      	str	r2, [r3, #12]
}
 80003fa:	bf00      	nop
 80003fc:	3710      	adds	r7, #16
 80003fe:	46bd      	mov	sp, r7
 8000400:	bd80      	pop	{r7, pc}

08000402 <LED_On>:

void LED_On(uint8_t pin) {
 8000402:	b580      	push	{r7, lr}
 8000404:	b084      	sub	sp, #16
 8000406:	af00      	add	r7, sp, #0
 8000408:	4603      	mov	r3, r0
 800040a:	71fb      	strb	r3, [r7, #7]
    GPIO_t *gpio = GPIO_Get(pin);
 800040c:	79fb      	ldrb	r3, [r7, #7]
 800040e:	4618      	mov	r0, r3
 8000410:	f7ff ff86 	bl	8000320 <GPIO_Get>
 8000414:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->ODR &= ~LED_MASK(pin & PIN_MASK);
 8000416:	79fb      	ldrb	r3, [r7, #7]
 8000418:	2b2d      	cmp	r3, #45	; 0x2d
 800041a:	d10c      	bne.n	8000436 <LED_On+0x34>
 800041c:	68fb      	ldr	r3, [r7, #12]
 800041e:	68db      	ldr	r3, [r3, #12]
 8000420:	79fa      	ldrb	r2, [r7, #7]
 8000422:	f002 020f 	and.w	r2, r2, #15
 8000426:	2101      	movs	r1, #1
 8000428:	fa01 f202 	lsl.w	r2, r1, r2
 800042c:	43d2      	mvns	r2, r2
 800042e:	401a      	ands	r2, r3
 8000430:	68fb      	ldr	r3, [r7, #12]
 8000432:	60da      	str	r2, [r3, #12]
    else gpio->ODR |= LED_MASK(pin & PIN_MASK);
}
 8000434:	e00a      	b.n	800044c <LED_On+0x4a>
    else gpio->ODR |= LED_MASK(pin & PIN_MASK);
 8000436:	68fb      	ldr	r3, [r7, #12]
 8000438:	68db      	ldr	r3, [r3, #12]
 800043a:	79fa      	ldrb	r2, [r7, #7]
 800043c:	f002 020f 	and.w	r2, r2, #15
 8000440:	2101      	movs	r1, #1
 8000442:	fa01 f202 	lsl.w	r2, r1, r2
 8000446:	431a      	orrs	r2, r3
 8000448:	68fb      	ldr	r3, [r7, #12]
 800044a:	60da      	str	r2, [r3, #12]
}
 800044c:	bf00      	nop
 800044e:	3710      	adds	r7, #16
 8000450:	46bd      	mov	sp, r7
 8000452:	bd80      	pop	{r7, pc}

08000454 <LED_Off>:

void LED_Off(uint8_t pin) {
 8000454:	b580      	push	{r7, lr}
 8000456:	b084      	sub	sp, #16
 8000458:	af00      	add	r7, sp, #0
 800045a:	4603      	mov	r3, r0
 800045c:	71fb      	strb	r3, [r7, #7]
    GPIO_t *gpio = GPIO_Get(pin);
 800045e:	79fb      	ldrb	r3, [r7, #7]
 8000460:	4618      	mov	r0, r3
 8000462:	f7ff ff5d 	bl	8000320 <GPIO_Get>
 8000466:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->ODR |= LED_MASK(pin & PIN_MASK);
 8000468:	79fb      	ldrb	r3, [r7, #7]
 800046a:	2b2d      	cmp	r3, #45	; 0x2d
 800046c:	d10b      	bne.n	8000486 <LED_Off+0x32>
 800046e:	68fb      	ldr	r3, [r7, #12]
 8000470:	68db      	ldr	r3, [r3, #12]
 8000472:	79fa      	ldrb	r2, [r7, #7]
 8000474:	f002 020f 	and.w	r2, r2, #15
 8000478:	2101      	movs	r1, #1
 800047a:	fa01 f202 	lsl.w	r2, r1, r2
 800047e:	431a      	orrs	r2, r3
 8000480:	68fb      	ldr	r3, [r7, #12]
 8000482:	60da      	str	r2, [r3, #12]
    else gpio->ODR &= ~LED_MASK(pin & PIN_MASK);
}
 8000484:	e00b      	b.n	800049e <LED_Off+0x4a>
    else gpio->ODR &= ~LED_MASK(pin & PIN_MASK);
 8000486:	68fb      	ldr	r3, [r7, #12]
 8000488:	68db      	ldr	r3, [r3, #12]
 800048a:	79fa      	ldrb	r2, [r7, #7]
 800048c:	f002 020f 	and.w	r2, r2, #15
 8000490:	2101      	movs	r1, #1
 8000492:	fa01 f202 	lsl.w	r2, r1, r2
 8000496:	43d2      	mvns	r2, r2
 8000498:	401a      	ands	r2, r3
 800049a:	68fb      	ldr	r3, [r7, #12]
 800049c:	60da      	str	r2, [r3, #12]
}
 800049e:	bf00      	nop
 80004a0:	3710      	adds	r7, #16
 80004a2:	46bd      	mov	sp, r7
 80004a4:	bd80      	pop	{r7, pc}
 80004a6:	bf00      	nop

080004a8 <Systick_Init>:
#include "systick.h"

Systick_t *systick = (Systick_t *)(SYSTICK_BASE);

void Systick_Init(uint32_t RELOAD_val) {
 80004a8:	b480      	push	{r7}
 80004aa:	b083      	sub	sp, #12
 80004ac:	af00      	add	r7, sp, #0
 80004ae:	6078      	str	r0, [r7, #4]
    systick->RELOAD = PCLK2 / RELOAD_val - 1U;
 80004b0:	4a0a      	ldr	r2, [pc, #40]	; (80004dc <Systick_Init+0x34>)
 80004b2:	687b      	ldr	r3, [r7, #4]
 80004b4:	fbb2 f2f3 	udiv	r2, r2, r3
 80004b8:	4b09      	ldr	r3, [pc, #36]	; (80004e0 <Systick_Init+0x38>)
 80004ba:	681b      	ldr	r3, [r3, #0]
 80004bc:	3a01      	subs	r2, #1
 80004be:	605a      	str	r2, [r3, #4]
    systick->VAL = 0U;
 80004c0:	4b07      	ldr	r3, [pc, #28]	; (80004e0 <Systick_Init+0x38>)
 80004c2:	681b      	ldr	r3, [r3, #0]
 80004c4:	2200      	movs	r2, #0
 80004c6:	609a      	str	r2, [r3, #8]
    systick->CTRL = (AHB_EN|TICKINT_EN|TICK_EN);
 80004c8:	4b05      	ldr	r3, [pc, #20]	; (80004e0 <Systick_Init+0x38>)
 80004ca:	681b      	ldr	r3, [r3, #0]
 80004cc:	2207      	movs	r2, #7
 80004ce:	601a      	str	r2, [r3, #0]
}
 80004d0:	bf00      	nop
 80004d2:	370c      	adds	r7, #12
 80004d4:	46bd      	mov	sp, r7
 80004d6:	bc80      	pop	{r7}
 80004d8:	4770      	bx	lr
 80004da:	bf00      	nop
 80004dc:	044aa200 	.word	0x044aa200
 80004e0:	20000028 	.word	0x20000028

080004e4 <Systick_Millis>:

uint32_t Systick_Millis(void) {
 80004e4:	b480      	push	{r7}
 80004e6:	af00      	add	r7, sp, #0
    return cnt;
 80004e8:	4b02      	ldr	r3, [pc, #8]	; (80004f4 <Systick_Millis+0x10>)
 80004ea:	681b      	ldr	r3, [r3, #0]
}
 80004ec:	4618      	mov	r0, r3
 80004ee:	46bd      	mov	sp, r7
 80004f0:	bc80      	pop	{r7}
 80004f2:	4770      	bx	lr
 80004f4:	20000050 	.word	0x20000050

080004f8 <delay>:
#include "delay.h"
#include "systick.h"
#include "intrinsic.h"

void delay(uint64_t volatile t) {
 80004f8:	b590      	push	{r4, r7, lr}
 80004fa:	b085      	sub	sp, #20
 80004fc:	af00      	add	r7, sp, #0
 80004fe:	e9c7 0100 	strd	r0, r1, [r7]
    for (uint64_t volatile i = 0; i < t; i++)
 8000502:	f04f 0300 	mov.w	r3, #0
 8000506:	f04f 0400 	mov.w	r4, #0
 800050a:	e9c7 3402 	strd	r3, r4, [r7, #8]
 800050e:	e008      	b.n	8000522 <delay+0x2a>
        __NOP();
 8000510:	f000 fb22 	bl	8000b58 <__NOP>
    for (uint64_t volatile i = 0; i < t; i++)
 8000514:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 8000518:	1c4b      	adds	r3, r1, #1
 800051a:	f142 0400 	adc.w	r4, r2, #0
 800051e:	e9c7 3402 	strd	r3, r4, [r7, #8]
 8000522:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 8000526:	e9d7 3400 	ldrd	r3, r4, [r7]
 800052a:	42a2      	cmp	r2, r4
 800052c:	bf08      	it	eq
 800052e:	4299      	cmpeq	r1, r3
 8000530:	d3ee      	bcc.n	8000510 <delay+0x18>
}
 8000532:	bf00      	nop
 8000534:	3714      	adds	r7, #20
 8000536:	46bd      	mov	sp, r7
 8000538:	bd90      	pop	{r4, r7, pc}

0800053a <Systick_delay>:

void Systick_delay(uint64_t __IO t) {
 800053a:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 800053e:	b084      	sub	sp, #16
 8000540:	af00      	add	r7, sp, #0
 8000542:	e9c7 0100 	strd	r0, r1, [r7]
    uint64_t start_t = Systick_Millis();
 8000546:	f7ff ffcd 	bl	80004e4 <Systick_Millis>
 800054a:	4603      	mov	r3, r0
 800054c:	f04f 0400 	mov.w	r4, #0
 8000550:	e9c7 3402 	strd	r3, r4, [r7, #8]
    while(Systick_Millis() - start_t < t)
 8000554:	e001      	b.n	800055a <Systick_delay+0x20>
        __NOP();
 8000556:	f000 faff 	bl	8000b58 <__NOP>
    while(Systick_Millis() - start_t < t)
 800055a:	f7ff ffc3 	bl	80004e4 <Systick_Millis>
 800055e:	4603      	mov	r3, r0
 8000560:	469b      	mov	fp, r3
 8000562:	f04f 0c00 	mov.w	ip, #0
 8000566:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 800056a:	4659      	mov	r1, fp
 800056c:	4662      	mov	r2, ip
 800056e:	1ac9      	subs	r1, r1, r3
 8000570:	eb62 0204 	sbc.w	r2, r2, r4
 8000574:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000578:	42a2      	cmp	r2, r4
 800057a:	bf08      	it	eq
 800057c:	4299      	cmpeq	r1, r3
 800057e:	d3ea      	bcc.n	8000556 <Systick_delay+0x1c>
}
 8000580:	bf00      	nop
 8000582:	3710      	adds	r7, #16
 8000584:	46bd      	mov	sp, r7
 8000586:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}
	...

0800058c <RCC_Init>:
#include "rcc.h"
#include "flash_acr.h"

RCC_t *rcc = (RCC_t *)(RCC_BASE);

void RCC_Init(uint32_t tim_en, uint32_t gpio_en, uint32_t adc_en, uint32_t usart_en) {
 800058c:	b480      	push	{r7}
 800058e:	b085      	sub	sp, #20
 8000590:	af00      	add	r7, sp, #0
 8000592:	60f8      	str	r0, [r7, #12]
 8000594:	60b9      	str	r1, [r7, #8]
 8000596:	607a      	str	r2, [r7, #4]
 8000598:	603b      	str	r3, [r7, #0]
    // switch to 72Mhz clock //
    flash->ACR |= LATENCY_2;
 800059a:	4b30      	ldr	r3, [pc, #192]	; (800065c <RCC_Init+0xd0>)
 800059c:	681b      	ldr	r3, [r3, #0]
 800059e:	681a      	ldr	r2, [r3, #0]
 80005a0:	4b2e      	ldr	r3, [pc, #184]	; (800065c <RCC_Init+0xd0>)
 80005a2:	681b      	ldr	r3, [r3, #0]
 80005a4:	f042 0202 	orr.w	r2, r2, #2
 80005a8:	601a      	str	r2, [r3, #0]
    rcc->CFGR |= APB1_DIV2;
 80005aa:	4b2d      	ldr	r3, [pc, #180]	; (8000660 <RCC_Init+0xd4>)
 80005ac:	681b      	ldr	r3, [r3, #0]
 80005ae:	685a      	ldr	r2, [r3, #4]
 80005b0:	4b2b      	ldr	r3, [pc, #172]	; (8000660 <RCC_Init+0xd4>)
 80005b2:	681b      	ldr	r3, [r3, #0]
 80005b4:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80005b8:	605a      	str	r2, [r3, #4]

    rcc->CR |= HSEON;
 80005ba:	4b29      	ldr	r3, [pc, #164]	; (8000660 <RCC_Init+0xd4>)
 80005bc:	681b      	ldr	r3, [r3, #0]
 80005be:	681a      	ldr	r2, [r3, #0]
 80005c0:	4b27      	ldr	r3, [pc, #156]	; (8000660 <RCC_Init+0xd4>)
 80005c2:	681b      	ldr	r3, [r3, #0]
 80005c4:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80005c8:	601a      	str	r2, [r3, #0]
    while (!(rcc->CR & HSERDY));
 80005ca:	bf00      	nop
 80005cc:	4b24      	ldr	r3, [pc, #144]	; (8000660 <RCC_Init+0xd4>)
 80005ce:	681b      	ldr	r3, [r3, #0]
 80005d0:	681b      	ldr	r3, [r3, #0]
 80005d2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80005d6:	2b00      	cmp	r3, #0
 80005d8:	d0f8      	beq.n	80005cc <RCC_Init+0x40>

    rcc->CFGR |= (PLLHSE|PLL_9);
 80005da:	4b21      	ldr	r3, [pc, #132]	; (8000660 <RCC_Init+0xd4>)
 80005dc:	681b      	ldr	r3, [r3, #0]
 80005de:	685a      	ldr	r2, [r3, #4]
 80005e0:	4b1f      	ldr	r3, [pc, #124]	; (8000660 <RCC_Init+0xd4>)
 80005e2:	681b      	ldr	r3, [r3, #0]
 80005e4:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80005e8:	605a      	str	r2, [r3, #4]
    rcc->CR |= PLLON;
 80005ea:	4b1d      	ldr	r3, [pc, #116]	; (8000660 <RCC_Init+0xd4>)
 80005ec:	681b      	ldr	r3, [r3, #0]
 80005ee:	681a      	ldr	r2, [r3, #0]
 80005f0:	4b1b      	ldr	r3, [pc, #108]	; (8000660 <RCC_Init+0xd4>)
 80005f2:	681b      	ldr	r3, [r3, #0]
 80005f4:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80005f8:	601a      	str	r2, [r3, #0]
    while (!(rcc->CR & PLLRDY));
 80005fa:	bf00      	nop
 80005fc:	4b18      	ldr	r3, [pc, #96]	; (8000660 <RCC_Init+0xd4>)
 80005fe:	681b      	ldr	r3, [r3, #0]
 8000600:	681b      	ldr	r3, [r3, #0]
 8000602:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000606:	2b00      	cmp	r3, #0
 8000608:	d0f8      	beq.n	80005fc <RCC_Init+0x70>

    rcc->CFGR |= SWPLL;
 800060a:	4b15      	ldr	r3, [pc, #84]	; (8000660 <RCC_Init+0xd4>)
 800060c:	681b      	ldr	r3, [r3, #0]
 800060e:	685a      	ldr	r2, [r3, #4]
 8000610:	4b13      	ldr	r3, [pc, #76]	; (8000660 <RCC_Init+0xd4>)
 8000612:	681b      	ldr	r3, [r3, #0]
 8000614:	f042 0202 	orr.w	r2, r2, #2
 8000618:	605a      	str	r2, [r3, #4]
    while (!(rcc->CFGR & SWSPLL));
 800061a:	bf00      	nop
 800061c:	4b10      	ldr	r3, [pc, #64]	; (8000660 <RCC_Init+0xd4>)
 800061e:	681b      	ldr	r3, [r3, #0]
 8000620:	685b      	ldr	r3, [r3, #4]
 8000622:	f003 0308 	and.w	r3, r3, #8
 8000626:	2b00      	cmp	r3, #0
 8000628:	d0f8      	beq.n	800061c <RCC_Init+0x90>

    rcc->APBE1 |= tim_en; // enable timers
 800062a:	4b0d      	ldr	r3, [pc, #52]	; (8000660 <RCC_Init+0xd4>)
 800062c:	681b      	ldr	r3, [r3, #0]
 800062e:	69d9      	ldr	r1, [r3, #28]
 8000630:	4b0b      	ldr	r3, [pc, #44]	; (8000660 <RCC_Init+0xd4>)
 8000632:	681b      	ldr	r3, [r3, #0]
 8000634:	68fa      	ldr	r2, [r7, #12]
 8000636:	430a      	orrs	r2, r1
 8000638:	61da      	str	r2, [r3, #28]
    rcc->APBE2 |= (gpio_en|adc_en|usart_en); // enable GPIO pins and USART
 800063a:	4b09      	ldr	r3, [pc, #36]	; (8000660 <RCC_Init+0xd4>)
 800063c:	681b      	ldr	r3, [r3, #0]
 800063e:	6999      	ldr	r1, [r3, #24]
 8000640:	68ba      	ldr	r2, [r7, #8]
 8000642:	687b      	ldr	r3, [r7, #4]
 8000644:	431a      	orrs	r2, r3
 8000646:	683b      	ldr	r3, [r7, #0]
 8000648:	431a      	orrs	r2, r3
 800064a:	4b05      	ldr	r3, [pc, #20]	; (8000660 <RCC_Init+0xd4>)
 800064c:	681b      	ldr	r3, [r3, #0]
 800064e:	430a      	orrs	r2, r1
 8000650:	619a      	str	r2, [r3, #24]
}
 8000652:	bf00      	nop
 8000654:	3714      	adds	r7, #20
 8000656:	46bd      	mov	sp, r7
 8000658:	bc80      	pop	{r7}
 800065a:	4770      	bx	lr
 800065c:	2000002c 	.word	0x2000002c
 8000660:	20000030 	.word	0x20000030

08000664 <ADC_Get>:

ADC_t *adc1 = (ADC_t *)(ADC1_BASE);
ADC_t *adc2 = (ADC_t *)(ADC2_BASE);
ADC_t *adc3 = (ADC_t *)(ADC3_BASE);

ADC_t *ADC_Get(uint8_t adc_num) {
 8000664:	b480      	push	{r7}
 8000666:	b083      	sub	sp, #12
 8000668:	af00      	add	r7, sp, #0
 800066a:	4603      	mov	r3, r0
 800066c:	71fb      	strb	r3, [r7, #7]
    switch (adc_num) {
 800066e:	79fb      	ldrb	r3, [r7, #7]
 8000670:	2b01      	cmp	r3, #1
 8000672:	d006      	beq.n	8000682 <ADC_Get+0x1e>
 8000674:	2b02      	cmp	r3, #2
 8000676:	d007      	beq.n	8000688 <ADC_Get+0x24>
 8000678:	2b00      	cmp	r3, #0
 800067a:	d108      	bne.n	800068e <ADC_Get+0x2a>
        case ADC1: return adc1;
 800067c:	4b07      	ldr	r3, [pc, #28]	; (800069c <ADC_Get+0x38>)
 800067e:	681b      	ldr	r3, [r3, #0]
 8000680:	e007      	b.n	8000692 <ADC_Get+0x2e>
        case ADC2: return adc2;
 8000682:	4b07      	ldr	r3, [pc, #28]	; (80006a0 <ADC_Get+0x3c>)
 8000684:	681b      	ldr	r3, [r3, #0]
 8000686:	e004      	b.n	8000692 <ADC_Get+0x2e>
        case ADC3: return adc3;
 8000688:	4b06      	ldr	r3, [pc, #24]	; (80006a4 <ADC_Get+0x40>)
 800068a:	681b      	ldr	r3, [r3, #0]
 800068c:	e001      	b.n	8000692 <ADC_Get+0x2e>
        default: return adc1;
 800068e:	4b03      	ldr	r3, [pc, #12]	; (800069c <ADC_Get+0x38>)
 8000690:	681b      	ldr	r3, [r3, #0]
    }
}
 8000692:	4618      	mov	r0, r3
 8000694:	370c      	adds	r7, #12
 8000696:	46bd      	mov	sp, r7
 8000698:	bc80      	pop	{r7}
 800069a:	4770      	bx	lr
 800069c:	20000034 	.word	0x20000034
 80006a0:	20000038 	.word	0x20000038
 80006a4:	2000003c 	.word	0x2000003c

080006a8 <ADC_Init>:

void ADC_Init(uint8_t adc_num) {
 80006a8:	b580      	push	{r7, lr}
 80006aa:	b084      	sub	sp, #16
 80006ac:	af00      	add	r7, sp, #0
 80006ae:	4603      	mov	r3, r0
 80006b0:	71fb      	strb	r3, [r7, #7]
    ADC_t *adc = ADC_Get(adc_num);
 80006b2:	79fb      	ldrb	r3, [r7, #7]
 80006b4:	4618      	mov	r0, r3
 80006b6:	f7ff ffd5 	bl	8000664 <ADC_Get>
 80006ba:	60f8      	str	r0, [r7, #12]
    adc->CR2 |= (CONT|ADON);
 80006bc:	68fb      	ldr	r3, [r7, #12]
 80006be:	689b      	ldr	r3, [r3, #8]
 80006c0:	f043 0203 	orr.w	r2, r3, #3
 80006c4:	68fb      	ldr	r3, [r7, #12]
 80006c6:	609a      	str	r2, [r3, #8]
    ADC_Calibrate(adc_num);
 80006c8:	79fb      	ldrb	r3, [r7, #7]
 80006ca:	4618      	mov	r0, r3
 80006cc:	f000 f804 	bl	80006d8 <ADC_Calibrate>
}
 80006d0:	bf00      	nop
 80006d2:	3710      	adds	r7, #16
 80006d4:	46bd      	mov	sp, r7
 80006d6:	bd80      	pop	{r7, pc}

080006d8 <ADC_Calibrate>:

void ADC_Calibrate(uint8_t adc_num) {
 80006d8:	b580      	push	{r7, lr}
 80006da:	b084      	sub	sp, #16
 80006dc:	af00      	add	r7, sp, #0
 80006de:	4603      	mov	r3, r0
 80006e0:	71fb      	strb	r3, [r7, #7]
    ADC_t *adc = ADC_Get(adc_num);
 80006e2:	79fb      	ldrb	r3, [r7, #7]
 80006e4:	4618      	mov	r0, r3
 80006e6:	f7ff ffbd 	bl	8000664 <ADC_Get>
 80006ea:	60f8      	str	r0, [r7, #12]
    adc->CR2 |= RSTCAL; // reset calibration
 80006ec:	68fb      	ldr	r3, [r7, #12]
 80006ee:	689b      	ldr	r3, [r3, #8]
 80006f0:	f043 0208 	orr.w	r2, r3, #8
 80006f4:	68fb      	ldr	r3, [r7, #12]
 80006f6:	609a      	str	r2, [r3, #8]
    while (adc->CR2 & RSTCAL); // wait for calibration register
 80006f8:	bf00      	nop
 80006fa:	68fb      	ldr	r3, [r7, #12]
 80006fc:	689b      	ldr	r3, [r3, #8]
 80006fe:	f003 0308 	and.w	r3, r3, #8
 8000702:	2b00      	cmp	r3, #0
 8000704:	d1f9      	bne.n	80006fa <ADC_Calibrate+0x22>
    adc->CR2 |= CAL; // enable adc calibration
 8000706:	68fb      	ldr	r3, [r7, #12]
 8000708:	689b      	ldr	r3, [r3, #8]
 800070a:	f043 0204 	orr.w	r2, r3, #4
 800070e:	68fb      	ldr	r3, [r7, #12]
 8000710:	609a      	str	r2, [r3, #8]
    while (adc->CR2 & CAL); // check if calibration is complete
 8000712:	bf00      	nop
 8000714:	68fb      	ldr	r3, [r7, #12]
 8000716:	689b      	ldr	r3, [r3, #8]
 8000718:	f003 0304 	and.w	r3, r3, #4
 800071c:	2b00      	cmp	r3, #0
 800071e:	d1f9      	bne.n	8000714 <ADC_Calibrate+0x3c>
    adc->CR1 |= EOCIE;
 8000720:	68fb      	ldr	r3, [r7, #12]
 8000722:	685b      	ldr	r3, [r3, #4]
 8000724:	f043 0220 	orr.w	r2, r3, #32
 8000728:	68fb      	ldr	r3, [r7, #12]
 800072a:	605a      	str	r2, [r3, #4]
}
 800072c:	bf00      	nop
 800072e:	3710      	adds	r7, #16
 8000730:	46bd      	mov	sp, r7
 8000732:	bd80      	pop	{r7, pc}

08000734 <ADC_Set_Chan>:

void ADC_Set_Chan(uint8_t adc_num, uint8_t chan, uint32_t sample_bits) {
 8000734:	b580      	push	{r7, lr}
 8000736:	b084      	sub	sp, #16
 8000738:	af00      	add	r7, sp, #0
 800073a:	4603      	mov	r3, r0
 800073c:	603a      	str	r2, [r7, #0]
 800073e:	71fb      	strb	r3, [r7, #7]
 8000740:	460b      	mov	r3, r1
 8000742:	71bb      	strb	r3, [r7, #6]
    ADC_t *adc = ADC_Get(adc_num);
 8000744:	79fb      	ldrb	r3, [r7, #7]
 8000746:	4618      	mov	r0, r3
 8000748:	f7ff ff8c 	bl	8000664 <ADC_Get>
 800074c:	60f8      	str	r0, [r7, #12]
    adc->SQR1 = 0;
 800074e:	68fb      	ldr	r3, [r7, #12]
 8000750:	2200      	movs	r2, #0
 8000752:	62da      	str	r2, [r3, #44]	; 0x2c
    adc->SQR2 = 0;
 8000754:	68fb      	ldr	r3, [r7, #12]
 8000756:	2200      	movs	r2, #0
 8000758:	631a      	str	r2, [r3, #48]	; 0x30
    adc->SQR3 = chan;
 800075a:	79ba      	ldrb	r2, [r7, #6]
 800075c:	68fb      	ldr	r3, [r7, #12]
 800075e:	635a      	str	r2, [r3, #52]	; 0x34
    adc->SMPR[chan] = sample_bits;
 8000760:	79bb      	ldrb	r3, [r7, #6]
 8000762:	68fa      	ldr	r2, [r7, #12]
 8000764:	3302      	adds	r3, #2
 8000766:	009b      	lsls	r3, r3, #2
 8000768:	4413      	add	r3, r2
 800076a:	683a      	ldr	r2, [r7, #0]
 800076c:	605a      	str	r2, [r3, #4]
}
 800076e:	bf00      	nop
 8000770:	3710      	adds	r7, #16
 8000772:	46bd      	mov	sp, r7
 8000774:	bd80      	pop	{r7, pc}

08000776 <ADC_Read>:

uint32_t ADC_Read(uint8_t adc_num) {
 8000776:	b580      	push	{r7, lr}
 8000778:	b084      	sub	sp, #16
 800077a:	af00      	add	r7, sp, #0
 800077c:	4603      	mov	r3, r0
 800077e:	71fb      	strb	r3, [r7, #7]
    ADC_t *adc = ADC_Get(adc_num);
 8000780:	79fb      	ldrb	r3, [r7, #7]
 8000782:	4618      	mov	r0, r3
 8000784:	f7ff ff6e 	bl	8000664 <ADC_Get>
 8000788:	60f8      	str	r0, [r7, #12]
    return (adc->SR & EOC) ? adc->DR : 0;
 800078a:	68fb      	ldr	r3, [r7, #12]
 800078c:	681b      	ldr	r3, [r3, #0]
 800078e:	f003 0302 	and.w	r3, r3, #2
 8000792:	2b00      	cmp	r3, #0
 8000794:	d002      	beq.n	800079c <ADC_Read+0x26>
 8000796:	68fb      	ldr	r3, [r7, #12]
 8000798:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800079a:	e000      	b.n	800079e <ADC_Read+0x28>
 800079c:	2300      	movs	r3, #0
}
 800079e:	4618      	mov	r0, r3
 80007a0:	3710      	adds	r7, #16
 80007a2:	46bd      	mov	sp, r7
 80007a4:	bd80      	pop	{r7, pc}
 80007a6:	bf00      	nop

080007a8 <__DSB>:
#include "scb.h"
#include "delay.h"

SCB_t *scb = (SCB_t *)(SCB_BASE);

static void __DSB(void) {
 80007a8:	b480      	push	{r7}
 80007aa:	af00      	add	r7, sp, #0
    asm("dsb 0xF" ::: "memory");
 80007ac:	f3bf 8f4f 	dsb	sy
}
 80007b0:	bf00      	nop
 80007b2:	46bd      	mov	sp, r7
 80007b4:	bc80      	pop	{r7}
 80007b6:	4770      	bx	lr

080007b8 <SCB_Reset_System>:

static void SCB_Reset_System(void) {
 80007b8:	b580      	push	{r7, lr}
 80007ba:	af00      	add	r7, sp, #0
    scb->AIRCR = (VECT_KEY|(scb->AIRCR&PRIORITY)|SYSRESETREQ);
 80007bc:	4b06      	ldr	r3, [pc, #24]	; (80007d8 <SCB_Reset_System+0x20>)
 80007be:	681b      	ldr	r3, [r3, #0]
 80007c0:	68db      	ldr	r3, [r3, #12]
 80007c2:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 80007c6:	4b04      	ldr	r3, [pc, #16]	; (80007d8 <SCB_Reset_System+0x20>)
 80007c8:	681a      	ldr	r2, [r3, #0]
 80007ca:	4b04      	ldr	r3, [pc, #16]	; (80007dc <SCB_Reset_System+0x24>)
 80007cc:	430b      	orrs	r3, r1
 80007ce:	60d3      	str	r3, [r2, #12]
    __DSB(); // ensures the completion of memory accesses
 80007d0:	f7ff ffea 	bl	80007a8 <__DSB>
    while(1);
 80007d4:	e7fe      	b.n	80007d4 <SCB_Reset_System+0x1c>
 80007d6:	bf00      	nop
 80007d8:	20000040 	.word	0x20000040
 80007dc:	05fa0004 	.word	0x05fa0004

080007e0 <ADC1_2_IRQHandler>:
#include "main.h"

uint64_t adc_in;

void ADC1_2_IRQHandler(void) {
 80007e0:	b598      	push	{r3, r4, r7, lr}
 80007e2:	af00      	add	r7, sp, #0
    adc_in = ADC_Read(ADC1);
 80007e4:	2000      	movs	r0, #0
 80007e6:	f7ff ffc6 	bl	8000776 <ADC_Read>
 80007ea:	4603      	mov	r3, r0
 80007ec:	f04f 0400 	mov.w	r4, #0
 80007f0:	4a02      	ldr	r2, [pc, #8]	; (80007fc <ADC1_2_IRQHandler+0x1c>)
 80007f2:	e9c2 3400 	strd	r3, r4, [r2]
}
 80007f6:	bf00      	nop
 80007f8:	bd98      	pop	{r3, r4, r7, pc}
 80007fa:	bf00      	nop
 80007fc:	20000058 	.word	0x20000058

08000800 <TIM2_IRQHandler>:

void TIM2_IRQHandler(void) {
 8000800:	b480      	push	{r7}
 8000802:	af00      	add	r7, sp, #0
    tim2->SR = 0U; // reset interrupt
 8000804:	4b03      	ldr	r3, [pc, #12]	; (8000814 <TIM2_IRQHandler+0x14>)
 8000806:	681b      	ldr	r3, [r3, #0]
 8000808:	2200      	movs	r2, #0
 800080a:	611a      	str	r2, [r3, #16]
}
 800080c:	bf00      	nop
 800080e:	46bd      	mov	sp, r7
 8000810:	bc80      	pop	{r7}
 8000812:	4770      	bx	lr
 8000814:	20000000 	.word	0x20000000

08000818 <TIM3_IRQHandler>:

void TIM3_IRQHandler(void) {
 8000818:	b580      	push	{r7, lr}
 800081a:	af00      	add	r7, sp, #0
    tim3->SR = 0U; // reset interrupt
 800081c:	4b04      	ldr	r3, [pc, #16]	; (8000830 <TIM3_IRQHandler+0x18>)
 800081e:	681b      	ldr	r3, [r3, #0]
 8000820:	2200      	movs	r2, #0
 8000822:	611a      	str	r2, [r3, #16]
    LED_Toggle(PA7);
 8000824:	2007      	movs	r0, #7
 8000826:	f7ff fdd3 	bl	80003d0 <LED_Toggle>
}
 800082a:	bf00      	nop
 800082c:	bd80      	pop	{r7, pc}
 800082e:	bf00      	nop
 8000830:	20000004 	.word	0x20000004

08000834 <USART1_IRQHandler>:

void USART1_IRQHandler(void) {
 8000834:	b580      	push	{r7, lr}
 8000836:	b082      	sub	sp, #8
 8000838:	af00      	add	r7, sp, #0
    char in = (char)(usart1->DATA & DATA_MASK);
 800083a:	4b06      	ldr	r3, [pc, #24]	; (8000854 <USART1_IRQHandler+0x20>)
 800083c:	681b      	ldr	r3, [r3, #0]
 800083e:	685b      	ldr	r3, [r3, #4]
 8000840:	71fb      	strb	r3, [r7, #7]
    Serial_Write_Char(USART1, in);
 8000842:	79fb      	ldrb	r3, [r7, #7]
 8000844:	4619      	mov	r1, r3
 8000846:	2000      	movs	r0, #0
 8000848:	f000 f8fe 	bl	8000a48 <Serial_Write_Char>
}
 800084c:	bf00      	nop
 800084e:	3708      	adds	r7, #8
 8000850:	46bd      	mov	sp, r7
 8000852:	bd80      	pop	{r7, pc}
 8000854:	20000044 	.word	0x20000044

08000858 <SysTick_Handler>:

uint32_t __IO cnt = 0;
void SysTick_Handler(void) {
 8000858:	b480      	push	{r7}
 800085a:	af00      	add	r7, sp, #0
    cnt++;
 800085c:	4b04      	ldr	r3, [pc, #16]	; (8000870 <SysTick_Handler+0x18>)
 800085e:	681b      	ldr	r3, [r3, #0]
 8000860:	3301      	adds	r3, #1
 8000862:	4a03      	ldr	r2, [pc, #12]	; (8000870 <SysTick_Handler+0x18>)
 8000864:	6013      	str	r3, [r2, #0]
}
 8000866:	bf00      	nop
 8000868:	46bd      	mov	sp, r7
 800086a:	bc80      	pop	{r7}
 800086c:	4770      	bx	lr
 800086e:	bf00      	nop
 8000870:	20000050 	.word	0x20000050

08000874 <main>:

#define STEP 25

int main(void) {
 8000874:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 8000878:	b086      	sub	sp, #24
 800087a:	af00      	add	r7, sp, #0
    RCC_Init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, ADC1_EN, USART1_EN);
 800087c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
 8000880:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000884:	211c      	movs	r1, #28
 8000886:	2003      	movs	r0, #3
 8000888:	f7ff fe80 	bl	800058c <RCC_Init>

    GPIO_PinMode(PC13, OUT_GP_PUSH_PULL_50);
 800088c:	2103      	movs	r1, #3
 800088e:	202d      	movs	r0, #45	; 0x2d
 8000890:	f7ff fd6a 	bl	8000368 <GPIO_PinMode>
    GPIO_PinMode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1 as output
 8000894:	210b      	movs	r1, #11
 8000896:	2009      	movs	r0, #9
 8000898:	f7ff fd66 	bl	8000368 <GPIO_PinMode>
    GPIO_PinMode(PA10, INPUT_FLOATING_PT); // enable Rx pin for usart1 as input
 800089c:	2104      	movs	r1, #4
 800089e:	200a      	movs	r0, #10
 80008a0:	f7ff fd62 	bl	8000368 <GPIO_PinMode>

    ADC_Init(ADC1);
 80008a4:	2000      	movs	r0, #0
 80008a6:	f7ff feff 	bl	80006a8 <ADC_Init>
    ADC_Set_Chan(ADC1, CHAN1, Cycles_28Pt5); // 28.5 Cycles
 80008aa:	2203      	movs	r2, #3
 80008ac:	2100      	movs	r1, #0
 80008ae:	2000      	movs	r0, #0
 80008b0:	f7ff ff40 	bl	8000734 <ADC_Set_Chan>
    GPIO_PinMode(PA0, INPUT_ANALOG); // enable analog input at A0
 80008b4:	2100      	movs	r1, #0
 80008b6:	2000      	movs	r0, #0
 80008b8:	f7ff fd56 	bl	8000368 <GPIO_PinMode>
    NVIC_Irq_Enable(ADC1_2_IRQn);
 80008bc:	2012      	movs	r0, #18
 80008be:	f7ff fd13 	bl	80002e8 <NVIC_Irq_Enable>

    TIM_Init(TIM3, 10000U, 10000U); // tim3 at 1MHz
 80008c2:	f242 7210 	movw	r2, #10000	; 0x2710
 80008c6:	f242 7110 	movw	r1, #10000	; 0x2710
 80008ca:	2002      	movs	r0, #2
 80008cc:	f7ff fce8 	bl	80002a0 <TIM_Init>
    GPIO_PinMode(PA7, OUT_GP_PUSH_PULL_50);
 80008d0:	2103      	movs	r1, #3
 80008d2:	2007      	movs	r0, #7
 80008d4:	f7ff fd48 	bl	8000368 <GPIO_PinMode>
    NVIC_Irq_Enable(TIM3_IRQn);
 80008d8:	201d      	movs	r0, #29
 80008da:	f7ff fd05 	bl	80002e8 <NVIC_Irq_Enable>

    TIM_Init(TIM2, 10000U, 255U);
 80008de:	22ff      	movs	r2, #255	; 0xff
 80008e0:	f242 7110 	movw	r1, #10000	; 0x2710
 80008e4:	2001      	movs	r0, #1
 80008e6:	f7ff fcdb 	bl	80002a0 <TIM_Init>
    GPIO_PinMode(PA2, OUT_ALT_PUSH_PULL_50);
 80008ea:	210b      	movs	r1, #11
 80008ec:	2002      	movs	r0, #2
 80008ee:	f7ff fd3b 	bl	8000368 <GPIO_PinMode>
    NVIC_Irq_Enable(TIM2_IRQn);
 80008f2:	201c      	movs	r0, #28
 80008f4:	f7ff fcf8 	bl	80002e8 <NVIC_Irq_Enable>

    Systick_Init(1000U); // initialize systick at 1Hz
 80008f8:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80008fc:	f7ff fdd4 	bl	80004a8 <Systick_Init>
    Serial_Init(USART1, 115200U); // initializer serial at 115200 BAUD
 8000900:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 8000904:	2000      	movs	r0, #0
 8000906:	f000 f87b 	bl	8000a00 <Serial_Init>
    NVIC_Irq_Enable(USART1_IRQn);
 800090a:	2025      	movs	r0, #37	; 0x25
 800090c:	f7ff fcec 	bl	80002e8 <NVIC_Irq_Enable>

    uint8_t pwm = 0U;
 8000910:	2300      	movs	r3, #0
 8000912:	75fb      	strb	r3, [r7, #23]
    uint64_t start_t = Systick_Millis();
 8000914:	f7ff fde6 	bl	80004e4 <Systick_Millis>
 8000918:	4603      	mov	r3, r0
 800091a:	f04f 0400 	mov.w	r4, #0
 800091e:	e9c7 3402 	strd	r3, r4, [r7, #8]
    bool up = true;
 8000922:	2301      	movs	r3, #1
 8000924:	71fb      	strb	r3, [r7, #7]

    while(1) {
        if (Systick_Millis() - start_t > 1000U) {
 8000926:	f7ff fddd 	bl	80004e4 <Systick_Millis>
 800092a:	4603      	mov	r3, r0
 800092c:	4619      	mov	r1, r3
 800092e:	f04f 0200 	mov.w	r2, #0
 8000932:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000936:	1ac9      	subs	r1, r1, r3
 8000938:	eb62 0204 	sbc.w	r2, r2, r4
 800093c:	468b      	mov	fp, r1
 800093e:	4694      	mov	ip, r2
 8000940:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8000944:	f04f 0200 	mov.w	r2, #0
 8000948:	4562      	cmp	r2, ip
 800094a:	bf08      	it	eq
 800094c:	4559      	cmpeq	r1, fp
 800094e:	d2ea      	bcs.n	8000926 <main+0xb2>
            Serial_Write_Str(USART1, "hello world!", true);
 8000950:	2201      	movs	r2, #1
 8000952:	4919      	ldr	r1, [pc, #100]	; (80009b8 <main+0x144>)
 8000954:	2000      	movs	r0, #0
 8000956:	f000 f893 	bl	8000a80 <Serial_Write_Str>
            LED_Toggle(PC13);
 800095a:	202d      	movs	r0, #45	; 0x2d
 800095c:	f7ff fd38 	bl	80003d0 <LED_Toggle>
            start_t = Systick_Millis();
 8000960:	f7ff fdc0 	bl	80004e4 <Systick_Millis>
 8000964:	4603      	mov	r3, r0
 8000966:	f04f 0400 	mov.w	r4, #0
 800096a:	e9c7 3402 	strd	r3, r4, [r7, #8]

            if (up) pwm += STEP;
 800096e:	79fb      	ldrb	r3, [r7, #7]
 8000970:	2b00      	cmp	r3, #0
 8000972:	d003      	beq.n	800097c <main+0x108>
 8000974:	7dfb      	ldrb	r3, [r7, #23]
 8000976:	3319      	adds	r3, #25
 8000978:	75fb      	strb	r3, [r7, #23]
 800097a:	e002      	b.n	8000982 <main+0x10e>
            else pwm -= STEP;
 800097c:	7dfb      	ldrb	r3, [r7, #23]
 800097e:	3b19      	subs	r3, #25
 8000980:	75fb      	strb	r3, [r7, #23]

            if (pwm == 250 || pwm == 0) up = !up;
 8000982:	7dfb      	ldrb	r3, [r7, #23]
 8000984:	2bfa      	cmp	r3, #250	; 0xfa
 8000986:	d002      	beq.n	800098e <main+0x11a>
 8000988:	7dfb      	ldrb	r3, [r7, #23]
 800098a:	2b00      	cmp	r3, #0
 800098c:	d10d      	bne.n	80009aa <main+0x136>
 800098e:	79fb      	ldrb	r3, [r7, #7]
 8000990:	2b00      	cmp	r3, #0
 8000992:	bf14      	ite	ne
 8000994:	2301      	movne	r3, #1
 8000996:	2300      	moveq	r3, #0
 8000998:	b2db      	uxtb	r3, r3
 800099a:	f083 0301 	eor.w	r3, r3, #1
 800099e:	b2db      	uxtb	r3, r3
 80009a0:	71fb      	strb	r3, [r7, #7]
 80009a2:	79fb      	ldrb	r3, [r7, #7]
 80009a4:	f003 0301 	and.w	r3, r3, #1
 80009a8:	71fb      	strb	r3, [r7, #7]
            TIM_Enable_Chan(TIM2, PWM, CHAN3, pwm);
 80009aa:	7dfb      	ldrb	r3, [r7, #23]
 80009ac:	2202      	movs	r2, #2
 80009ae:	2168      	movs	r1, #104	; 0x68
 80009b0:	2001      	movs	r0, #1
 80009b2:	f7ff fc25 	bl	8000200 <TIM_Enable_Chan>
        if (Systick_Millis() - start_t > 1000U) {
 80009b6:	e7b6      	b.n	8000926 <main+0xb2>
 80009b8:	08000bac 	.word	0x08000bac

080009bc <USART_Get>:

USART_t *usart1 = (USART_t *)(UART1_BASE);
USART_t *usart2 = (USART_t *)(UART2_BASE);
USART_t *usart3 = (USART_t *)(UART3_BASE);

USART_t *USART_Get(uint8_t usart) {
 80009bc:	b480      	push	{r7}
 80009be:	b083      	sub	sp, #12
 80009c0:	af00      	add	r7, sp, #0
 80009c2:	4603      	mov	r3, r0
 80009c4:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 80009c6:	79fb      	ldrb	r3, [r7, #7]
 80009c8:	2b01      	cmp	r3, #1
 80009ca:	d006      	beq.n	80009da <USART_Get+0x1e>
 80009cc:	2b02      	cmp	r3, #2
 80009ce:	d007      	beq.n	80009e0 <USART_Get+0x24>
 80009d0:	2b00      	cmp	r3, #0
 80009d2:	d108      	bne.n	80009e6 <USART_Get+0x2a>
        case USART1: return usart1;
 80009d4:	4b07      	ldr	r3, [pc, #28]	; (80009f4 <USART_Get+0x38>)
 80009d6:	681b      	ldr	r3, [r3, #0]
 80009d8:	e007      	b.n	80009ea <USART_Get+0x2e>
        case USART2: return usart2;
 80009da:	4b07      	ldr	r3, [pc, #28]	; (80009f8 <USART_Get+0x3c>)
 80009dc:	681b      	ldr	r3, [r3, #0]
 80009de:	e004      	b.n	80009ea <USART_Get+0x2e>
        case USART3: return usart3;
 80009e0:	4b06      	ldr	r3, [pc, #24]	; (80009fc <USART_Get+0x40>)
 80009e2:	681b      	ldr	r3, [r3, #0]
 80009e4:	e001      	b.n	80009ea <USART_Get+0x2e>
        default: return usart1;
 80009e6:	4b03      	ldr	r3, [pc, #12]	; (80009f4 <USART_Get+0x38>)
 80009e8:	681b      	ldr	r3, [r3, #0]
    }
}
 80009ea:	4618      	mov	r0, r3
 80009ec:	370c      	adds	r7, #12
 80009ee:	46bd      	mov	sp, r7
 80009f0:	bc80      	pop	{r7}
 80009f2:	4770      	bx	lr
 80009f4:	20000044 	.word	0x20000044
 80009f8:	20000048 	.word	0x20000048
 80009fc:	2000004c 	.word	0x2000004c

08000a00 <Serial_Init>:

void Serial_Init(uint8_t usart, uint32_t BAUD) {
 8000a00:	b580      	push	{r7, lr}
 8000a02:	b084      	sub	sp, #16
 8000a04:	af00      	add	r7, sp, #0
 8000a06:	4603      	mov	r3, r0
 8000a08:	6039      	str	r1, [r7, #0]
 8000a0a:	71fb      	strb	r3, [r7, #7]
    USART_t *serial = USART_Get(usart);
 8000a0c:	79fb      	ldrb	r3, [r7, #7]
 8000a0e:	4618      	mov	r0, r3
 8000a10:	f7ff ffd4 	bl	80009bc <USART_Get>
 8000a14:	60f8      	str	r0, [r7, #12]
    serial->CR1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
 8000a16:	68fb      	ldr	r3, [r7, #12]
 8000a18:	f242 022c 	movw	r2, #8236	; 0x202c
 8000a1c:	60da      	str	r2, [r3, #12]
    serial->CR2 = 0;
 8000a1e:	68fb      	ldr	r3, [r7, #12]
 8000a20:	2200      	movs	r2, #0
 8000a22:	611a      	str	r2, [r3, #16]
    serial->CR3 = 0;
 8000a24:	68fb      	ldr	r3, [r7, #12]
 8000a26:	2200      	movs	r2, #0
 8000a28:	615a      	str	r2, [r3, #20]
    serial->GTPR = 0;
 8000a2a:	68fb      	ldr	r3, [r7, #12]
 8000a2c:	2200      	movs	r2, #0
 8000a2e:	619a      	str	r2, [r3, #24]
    serial->BAUD = PCLK2 / BAUD;
 8000a30:	4a04      	ldr	r2, [pc, #16]	; (8000a44 <Serial_Init+0x44>)
 8000a32:	683b      	ldr	r3, [r7, #0]
 8000a34:	fbb2 f2f3 	udiv	r2, r2, r3
 8000a38:	68fb      	ldr	r3, [r7, #12]
 8000a3a:	609a      	str	r2, [r3, #8]
}
 8000a3c:	bf00      	nop
 8000a3e:	3710      	adds	r7, #16
 8000a40:	46bd      	mov	sp, r7
 8000a42:	bd80      	pop	{r7, pc}
 8000a44:	044aa200 	.word	0x044aa200

08000a48 <Serial_Write_Char>:

bool Serial_Write_Char(uint8_t usart, char c) {
 8000a48:	b580      	push	{r7, lr}
 8000a4a:	b084      	sub	sp, #16
 8000a4c:	af00      	add	r7, sp, #0
 8000a4e:	4603      	mov	r3, r0
 8000a50:	460a      	mov	r2, r1
 8000a52:	71fb      	strb	r3, [r7, #7]
 8000a54:	4613      	mov	r3, r2
 8000a56:	71bb      	strb	r3, [r7, #6]
    USART_t *serial = USART_Get(usart);
 8000a58:	79fb      	ldrb	r3, [r7, #7]
 8000a5a:	4618      	mov	r0, r3
 8000a5c:	f7ff ffae 	bl	80009bc <USART_Get>
 8000a60:	60f8      	str	r0, [r7, #12]
    serial->DATA = c;
 8000a62:	79ba      	ldrb	r2, [r7, #6]
 8000a64:	68fb      	ldr	r3, [r7, #12]
 8000a66:	605a      	str	r2, [r3, #4]
    while(!(serial->SR & TC));
 8000a68:	bf00      	nop
 8000a6a:	68fb      	ldr	r3, [r7, #12]
 8000a6c:	681b      	ldr	r3, [r3, #0]
 8000a6e:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000a72:	2b00      	cmp	r3, #0
 8000a74:	d0f9      	beq.n	8000a6a <Serial_Write_Char+0x22>
    return USART_SUCCESS;
 8000a76:	2301      	movs	r3, #1
}
 8000a78:	4618      	mov	r0, r3
 8000a7a:	3710      	adds	r7, #16
 8000a7c:	46bd      	mov	sp, r7
 8000a7e:	bd80      	pop	{r7, pc}

08000a80 <Serial_Write_Str>:

bool Serial_Write_Str(uint8_t usart, char *s, bool new_line) {
 8000a80:	b580      	push	{r7, lr}
 8000a82:	b082      	sub	sp, #8
 8000a84:	af00      	add	r7, sp, #0
 8000a86:	4603      	mov	r3, r0
 8000a88:	6039      	str	r1, [r7, #0]
 8000a8a:	71fb      	strb	r3, [r7, #7]
 8000a8c:	4613      	mov	r3, r2
 8000a8e:	71bb      	strb	r3, [r7, #6]
    while(*s) Serial_Write_Char(usart, *s++);
 8000a90:	e008      	b.n	8000aa4 <Serial_Write_Str+0x24>
 8000a92:	683b      	ldr	r3, [r7, #0]
 8000a94:	1c5a      	adds	r2, r3, #1
 8000a96:	603a      	str	r2, [r7, #0]
 8000a98:	781a      	ldrb	r2, [r3, #0]
 8000a9a:	79fb      	ldrb	r3, [r7, #7]
 8000a9c:	4611      	mov	r1, r2
 8000a9e:	4618      	mov	r0, r3
 8000aa0:	f7ff ffd2 	bl	8000a48 <Serial_Write_Char>
 8000aa4:	683b      	ldr	r3, [r7, #0]
 8000aa6:	781b      	ldrb	r3, [r3, #0]
 8000aa8:	2b00      	cmp	r3, #0
 8000aaa:	d1f2      	bne.n	8000a92 <Serial_Write_Str+0x12>
    if (!new_line) return 1;
 8000aac:	79bb      	ldrb	r3, [r7, #6]
 8000aae:	f083 0301 	eor.w	r3, r3, #1
 8000ab2:	b2db      	uxtb	r3, r3
 8000ab4:	2b00      	cmp	r3, #0
 8000ab6:	d001      	beq.n	8000abc <Serial_Write_Str+0x3c>
 8000ab8:	2301      	movs	r3, #1
 8000aba:	e00a      	b.n	8000ad2 <Serial_Write_Str+0x52>
    Serial_Write_Char(usart, '\r');
 8000abc:	79fb      	ldrb	r3, [r7, #7]
 8000abe:	210d      	movs	r1, #13
 8000ac0:	4618      	mov	r0, r3
 8000ac2:	f7ff ffc1 	bl	8000a48 <Serial_Write_Char>
    Serial_Write_Char(usart, '\n');
 8000ac6:	79fb      	ldrb	r3, [r7, #7]
 8000ac8:	210a      	movs	r1, #10
 8000aca:	4618      	mov	r0, r3
 8000acc:	f7ff ffbc 	bl	8000a48 <Serial_Write_Char>
    return USART_SUCCESS;
 8000ad0:	2301      	movs	r3, #1
}
 8000ad2:	4618      	mov	r0, r3
 8000ad4:	3708      	adds	r7, #8
 8000ad6:	46bd      	mov	sp, r7
 8000ad8:	bd80      	pop	{r7, pc}

08000ada <Serial_Read_Char>:

char Serial_Read_Char(uint8_t usart) {
 8000ada:	b580      	push	{r7, lr}
 8000adc:	b084      	sub	sp, #16
 8000ade:	af00      	add	r7, sp, #0
 8000ae0:	4603      	mov	r3, r0
 8000ae2:	71fb      	strb	r3, [r7, #7]
    USART_t *serial = USART_Get(usart);
 8000ae4:	79fb      	ldrb	r3, [r7, #7]
 8000ae6:	4618      	mov	r0, r3
 8000ae8:	f7ff ff68 	bl	80009bc <USART_Get>
 8000aec:	60f8      	str	r0, [r7, #12]
    while(!(serial->SR & RXNE));
 8000aee:	bf00      	nop
 8000af0:	68fb      	ldr	r3, [r7, #12]
 8000af2:	681b      	ldr	r3, [r3, #0]
 8000af4:	f003 0320 	and.w	r3, r3, #32
 8000af8:	2b00      	cmp	r3, #0
 8000afa:	d0f9      	beq.n	8000af0 <Serial_Read_Char+0x16>
    return (char)(serial->DATA & DATA_MASK);
 8000afc:	68fb      	ldr	r3, [r7, #12]
 8000afe:	685b      	ldr	r3, [r3, #4]
 8000b00:	b2db      	uxtb	r3, r3
}
 8000b02:	4618      	mov	r0, r3
 8000b04:	3710      	adds	r7, #16
 8000b06:	46bd      	mov	sp, r7
 8000b08:	bd80      	pop	{r7, pc}

08000b0a <Serial_Read_Str>:

char *Serial_Read_Str(uint8_t usart, char *buffer) {
 8000b0a:	b590      	push	{r4, r7, lr}
 8000b0c:	b083      	sub	sp, #12
 8000b0e:	af00      	add	r7, sp, #0
 8000b10:	4603      	mov	r3, r0
 8000b12:	6039      	str	r1, [r7, #0]
 8000b14:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 8000b16:	e008      	b.n	8000b2a <Serial_Read_Str+0x20>
        *buffer++ = Serial_Read_Char(usart);
 8000b18:	683c      	ldr	r4, [r7, #0]
 8000b1a:	1c63      	adds	r3, r4, #1
 8000b1c:	603b      	str	r3, [r7, #0]
 8000b1e:	79fb      	ldrb	r3, [r7, #7]
 8000b20:	4618      	mov	r0, r3
 8000b22:	f7ff ffda 	bl	8000ada <Serial_Read_Char>
 8000b26:	4603      	mov	r3, r0
 8000b28:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 8000b2a:	683b      	ldr	r3, [r7, #0]
 8000b2c:	781b      	ldrb	r3, [r3, #0]
 8000b2e:	2b00      	cmp	r3, #0
 8000b30:	d1f2      	bne.n	8000b18 <Serial_Read_Str+0xe>
    }
    return buffer;
 8000b32:	683b      	ldr	r3, [r7, #0]
}
 8000b34:	4618      	mov	r0, r3
 8000b36:	370c      	adds	r7, #12
 8000b38:	46bd      	mov	sp, r7
 8000b3a:	bd90      	pop	{r4, r7, pc}

08000b3c <__enable_irq>:
#include "intrinsic.h"

// enable interrupt
void __enable_irq(void) {
 8000b3c:	b480      	push	{r7}
 8000b3e:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsie i" ::: "memory");
 8000b40:	b662      	cpsie	i
}
 8000b42:	bf00      	nop
 8000b44:	46bd      	mov	sp, r7
 8000b46:	bc80      	pop	{r7}
 8000b48:	4770      	bx	lr

08000b4a <__disable_irq>:

// disable interrupt
void __disable_irq(void) {
 8000b4a:	b480      	push	{r7}
 8000b4c:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsid i" ::: "memory");
 8000b4e:	b672      	cpsid	i
}
 8000b50:	bf00      	nop
 8000b52:	46bd      	mov	sp, r7
 8000b54:	bc80      	pop	{r7}
 8000b56:	4770      	bx	lr

08000b58 <__NOP>:

// no operation
void __NOP(void) {
 8000b58:	b480      	push	{r7}
 8000b5a:	af00      	add	r7, sp, #0
    __ASM volatile ("nop");
 8000b5c:	bf00      	nop
}
 8000b5e:	bf00      	nop
 8000b60:	46bd      	mov	sp, r7
 8000b62:	bc80      	pop	{r7}
 8000b64:	4770      	bx	lr
	...

08000b68 <Reset_Handler>:
 8000b68:	2100      	movs	r1, #0
 8000b6a:	e003      	b.n	8000b74 <LoopCopyDataInit>

08000b6c <CopyDataInit>:
 8000b6c:	4b09      	ldr	r3, [pc, #36]	; (8000b94 <LoopFillZerobss+0xc>)
 8000b6e:	585b      	ldr	r3, [r3, r1]
 8000b70:	5043      	str	r3, [r0, r1]
 8000b72:	3104      	adds	r1, #4

08000b74 <LoopCopyDataInit>:
 8000b74:	4808      	ldr	r0, [pc, #32]	; (8000b98 <LoopFillZerobss+0x10>)
 8000b76:	4b09      	ldr	r3, [pc, #36]	; (8000b9c <LoopFillZerobss+0x14>)
 8000b78:	1842      	adds	r2, r0, r1
 8000b7a:	429a      	cmp	r2, r3
 8000b7c:	d3f6      	bcc.n	8000b6c <CopyDataInit>
 8000b7e:	4a08      	ldr	r2, [pc, #32]	; (8000ba0 <LoopFillZerobss+0x18>)
 8000b80:	e002      	b.n	8000b88 <LoopFillZerobss>

08000b82 <FillZerobss>:
 8000b82:	2300      	movs	r3, #0
 8000b84:	f842 3b04 	str.w	r3, [r2], #4

08000b88 <LoopFillZerobss>:
 8000b88:	4b06      	ldr	r3, [pc, #24]	; (8000ba4 <LoopFillZerobss+0x1c>)
 8000b8a:	429a      	cmp	r2, r3
 8000b8c:	d3f9      	bcc.n	8000b82 <FillZerobss>
 8000b8e:	f7ff fe71 	bl	8000874 <main>
 8000b92:	4770      	bx	lr
 8000b94:	08000bbc 	.word	0x08000bbc
 8000b98:	20000000 	.word	0x20000000
 8000b9c:	20000050 	.word	0x20000050
 8000ba0:	20000050 	.word	0x20000050
 8000ba4:	20000060 	.word	0x20000060

08000ba8 <BusFault_Handler>:
 8000ba8:	e7fe      	b.n	8000ba8 <BusFault_Handler>
	...
