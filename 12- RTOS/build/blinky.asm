
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000150 <TIM_Get-0x14>:
 8000150:	08000ba8 	.word	0x08000ba8
 8000154:	20000000 	.word	0x20000000
 8000158:	20000058 	.word	0x20000058
 800015c:	20000058 	.word	0x20000058
 8000160:	2000019c 	.word	0x2000019c

08000164 <TIM_Get>:
TIM_t *tim4 = (TIM_t *)(TIM4_BASE);
TIM_t *tim5 = (TIM_t *)(TIM5_BASE);
TIM_t *tim6 = (TIM_t *)(TIM6_BASE);
TIM_t *tim7 = (TIM_t *)(TIM7_BASE);

static TIM_t *TIM_Get(uint8_t timer) {
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

    // enable interrupt //
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

static GPIO_t *GPIO_Get(uint8_t pin) {
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
 80004f4:	20000058 	.word	0x20000058

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
 8000510:	f000 fb20 	bl	8000b54 <__NOP>
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
 8000556:	f000 fafd 	bl	8000b54 <__NOP>
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

static ADC_t *ADC_Get(uint8_t adc_num) {
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

080007e0 <SysTick_Handler>:
#include "bsp.h"

uint32_t __IO cnt = 0;
void SysTick_Handler(void) {
 80007e0:	b480      	push	{r7}
 80007e2:	af00      	add	r7, sp, #0
    cnt++;
 80007e4:	4b04      	ldr	r3, [pc, #16]	; (80007f8 <SysTick_Handler+0x18>)
 80007e6:	681b      	ldr	r3, [r3, #0]
 80007e8:	3301      	adds	r3, #1
 80007ea:	4a03      	ldr	r2, [pc, #12]	; (80007f8 <SysTick_Handler+0x18>)
 80007ec:	6013      	str	r3, [r2, #0]
}
 80007ee:	bf00      	nop
 80007f0:	46bd      	mov	sp, r7
 80007f2:	bc80      	pop	{r7}
 80007f4:	4770      	bx	lr
 80007f6:	bf00      	nop
 80007f8:	20000058 	.word	0x20000058

080007fc <blinky1>:

uint32_t stack_blinky1[40];
uint32_t *sp_blinky1 = &stack_blinky1[40];
void blinky1() {
 80007fc:	b580      	push	{r7, lr}
 80007fe:	af00      	add	r7, sp, #0
    while(1) {
        LED_On(PA2);
 8000800:	2002      	movs	r0, #2
 8000802:	f7ff fdfe 	bl	8000402 <LED_On>
        Systick_delay(1000);
 8000806:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800080a:	f04f 0100 	mov.w	r1, #0
 800080e:	f7ff fe94 	bl	800053a <Systick_delay>
        LED_Off(PA2);
 8000812:	2002      	movs	r0, #2
 8000814:	f7ff fe1e 	bl	8000454 <LED_Off>
        Systick_delay(1000);
 8000818:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800081c:	f04f 0100 	mov.w	r1, #0
 8000820:	f7ff fe8b 	bl	800053a <Systick_delay>
        LED_On(PA2);
 8000824:	e7ec      	b.n	8000800 <blinky1+0x4>

08000826 <blinky2>:
    }
}

uint32_t stack_blinky2[40];
uint32_t *sp_blinky2 = &stack_blinky2[40];
void blinky2() {
 8000826:	b580      	push	{r7, lr}
 8000828:	af00      	add	r7, sp, #0
    while(1) {
        LED_On(PA7);
 800082a:	2007      	movs	r0, #7
 800082c:	f7ff fde9 	bl	8000402 <LED_On>
        Systick_delay(1000);
 8000830:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000834:	f04f 0100 	mov.w	r1, #0
 8000838:	f7ff fe7f 	bl	800053a <Systick_delay>
        LED_Off(PA7);
 800083c:	2007      	movs	r0, #7
 800083e:	f7ff fe09 	bl	8000454 <LED_Off>
        Systick_delay(1000);
 8000842:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000846:	f04f 0100 	mov.w	r1, #0
 800084a:	f7ff fe76 	bl	800053a <Systick_delay>
        LED_On(PA7);
 800084e:	e7ec      	b.n	800082a <blinky2+0x4>

08000850 <main>:
    }
}

int main(void) {
 8000850:	b580      	push	{r7, lr}
 8000852:	af00      	add	r7, sp, #0
    RCC_Init(0, GPIOA_EN|GPIOB_EN|GPIOC_EN, 0, 0);
 8000854:	2300      	movs	r3, #0
 8000856:	2200      	movs	r2, #0
 8000858:	211c      	movs	r1, #28
 800085a:	2000      	movs	r0, #0
 800085c:	f7ff fe96 	bl	800058c <RCC_Init>

    GPIO_PinMode(PC13, OUT_GP_PUSH_PULL_50);
 8000860:	2103      	movs	r1, #3
 8000862:	202d      	movs	r0, #45	; 0x2d
 8000864:	f7ff fd80 	bl	8000368 <GPIO_PinMode>

    GPIO_PinMode(PA7, OUT_GP_PUSH_PULL_50); // enable PA7 as output
 8000868:	2103      	movs	r1, #3
 800086a:	2007      	movs	r0, #7
 800086c:	f7ff fd7c 	bl	8000368 <GPIO_PinMode>
    GPIO_PinMode(PA2, OUT_ALT_PUSH_PULL_50); // enable PA2 as output
 8000870:	210b      	movs	r1, #11
 8000872:	2002      	movs	r0, #2
 8000874:	f7ff fd78 	bl	8000368 <GPIO_PinMode>

    Systick_Init(1000U); // initialize systick at 1Hz
 8000878:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800087c:	f7ff fe14 	bl	80004a8 <Systick_Init>
    __enable_irq();
 8000880:	f000 f95a 	bl	8000b38 <__enable_irq>
     * |    R1     | *
     * |    R0     | * low addresses
     * Stack grows down!
     */

    *(--sp_blinky1) = (1U << 24); // set thumb state bit of xPSR (pg 22 of programming manual)
 8000884:	4b49      	ldr	r3, [pc, #292]	; (80009ac <main+0x15c>)
 8000886:	681b      	ldr	r3, [r3, #0]
 8000888:	3b04      	subs	r3, #4
 800088a:	4a48      	ldr	r2, [pc, #288]	; (80009ac <main+0x15c>)
 800088c:	6013      	str	r3, [r2, #0]
 800088e:	4b47      	ldr	r3, [pc, #284]	; (80009ac <main+0x15c>)
 8000890:	681b      	ldr	r3, [r3, #0]
 8000892:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
 8000896:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = (uint32_t)&blinky1; // set PC to address of blinky1. cast to 32 bits to fit on stack
 8000898:	4b44      	ldr	r3, [pc, #272]	; (80009ac <main+0x15c>)
 800089a:	681b      	ldr	r3, [r3, #0]
 800089c:	3b04      	subs	r3, #4
 800089e:	4a43      	ldr	r2, [pc, #268]	; (80009ac <main+0x15c>)
 80008a0:	6013      	str	r3, [r2, #0]
 80008a2:	4b42      	ldr	r3, [pc, #264]	; (80009ac <main+0x15c>)
 80008a4:	681b      	ldr	r3, [r3, #0]
 80008a6:	4a42      	ldr	r2, [pc, #264]	; (80009b0 <main+0x160>)
 80008a8:	601a      	str	r2, [r3, #0]
    // since blinky1 is a thread function, there is no return, so set remaining regs to dummy values
    *(--sp_blinky1) = 0x0000000EU; // R14
 80008aa:	4b40      	ldr	r3, [pc, #256]	; (80009ac <main+0x15c>)
 80008ac:	681b      	ldr	r3, [r3, #0]
 80008ae:	3b04      	subs	r3, #4
 80008b0:	4a3e      	ldr	r2, [pc, #248]	; (80009ac <main+0x15c>)
 80008b2:	6013      	str	r3, [r2, #0]
 80008b4:	4b3d      	ldr	r3, [pc, #244]	; (80009ac <main+0x15c>)
 80008b6:	681b      	ldr	r3, [r3, #0]
 80008b8:	220e      	movs	r2, #14
 80008ba:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x0000000CU; // R12
 80008bc:	4b3b      	ldr	r3, [pc, #236]	; (80009ac <main+0x15c>)
 80008be:	681b      	ldr	r3, [r3, #0]
 80008c0:	3b04      	subs	r3, #4
 80008c2:	4a3a      	ldr	r2, [pc, #232]	; (80009ac <main+0x15c>)
 80008c4:	6013      	str	r3, [r2, #0]
 80008c6:	4b39      	ldr	r3, [pc, #228]	; (80009ac <main+0x15c>)
 80008c8:	681b      	ldr	r3, [r3, #0]
 80008ca:	220c      	movs	r2, #12
 80008cc:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x00000003U; // R3
 80008ce:	4b37      	ldr	r3, [pc, #220]	; (80009ac <main+0x15c>)
 80008d0:	681b      	ldr	r3, [r3, #0]
 80008d2:	3b04      	subs	r3, #4
 80008d4:	4a35      	ldr	r2, [pc, #212]	; (80009ac <main+0x15c>)
 80008d6:	6013      	str	r3, [r2, #0]
 80008d8:	4b34      	ldr	r3, [pc, #208]	; (80009ac <main+0x15c>)
 80008da:	681b      	ldr	r3, [r3, #0]
 80008dc:	2203      	movs	r2, #3
 80008de:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x00000002U; // R2
 80008e0:	4b32      	ldr	r3, [pc, #200]	; (80009ac <main+0x15c>)
 80008e2:	681b      	ldr	r3, [r3, #0]
 80008e4:	3b04      	subs	r3, #4
 80008e6:	4a31      	ldr	r2, [pc, #196]	; (80009ac <main+0x15c>)
 80008e8:	6013      	str	r3, [r2, #0]
 80008ea:	4b30      	ldr	r3, [pc, #192]	; (80009ac <main+0x15c>)
 80008ec:	681b      	ldr	r3, [r3, #0]
 80008ee:	2202      	movs	r2, #2
 80008f0:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x00000001U; // R1
 80008f2:	4b2e      	ldr	r3, [pc, #184]	; (80009ac <main+0x15c>)
 80008f4:	681b      	ldr	r3, [r3, #0]
 80008f6:	3b04      	subs	r3, #4
 80008f8:	4a2c      	ldr	r2, [pc, #176]	; (80009ac <main+0x15c>)
 80008fa:	6013      	str	r3, [r2, #0]
 80008fc:	4b2b      	ldr	r3, [pc, #172]	; (80009ac <main+0x15c>)
 80008fe:	681b      	ldr	r3, [r3, #0]
 8000900:	2201      	movs	r2, #1
 8000902:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x00000000U; // R0
 8000904:	4b29      	ldr	r3, [pc, #164]	; (80009ac <main+0x15c>)
 8000906:	681b      	ldr	r3, [r3, #0]
 8000908:	3b04      	subs	r3, #4
 800090a:	4a28      	ldr	r2, [pc, #160]	; (80009ac <main+0x15c>)
 800090c:	6013      	str	r3, [r2, #0]
 800090e:	4b27      	ldr	r3, [pc, #156]	; (80009ac <main+0x15c>)
 8000910:	681b      	ldr	r3, [r3, #0]
 8000912:	2200      	movs	r2, #0
 8000914:	601a      	str	r2, [r3, #0]

    // do same for blinky2
    *(--sp_blinky1) = (1U << 24);
 8000916:	4b25      	ldr	r3, [pc, #148]	; (80009ac <main+0x15c>)
 8000918:	681b      	ldr	r3, [r3, #0]
 800091a:	3b04      	subs	r3, #4
 800091c:	4a23      	ldr	r2, [pc, #140]	; (80009ac <main+0x15c>)
 800091e:	6013      	str	r3, [r2, #0]
 8000920:	4b22      	ldr	r3, [pc, #136]	; (80009ac <main+0x15c>)
 8000922:	681b      	ldr	r3, [r3, #0]
 8000924:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
 8000928:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = (uint32_t)&blinky2;
 800092a:	4b20      	ldr	r3, [pc, #128]	; (80009ac <main+0x15c>)
 800092c:	681b      	ldr	r3, [r3, #0]
 800092e:	3b04      	subs	r3, #4
 8000930:	4a1e      	ldr	r2, [pc, #120]	; (80009ac <main+0x15c>)
 8000932:	6013      	str	r3, [r2, #0]
 8000934:	4b1d      	ldr	r3, [pc, #116]	; (80009ac <main+0x15c>)
 8000936:	681b      	ldr	r3, [r3, #0]
 8000938:	4a1e      	ldr	r2, [pc, #120]	; (80009b4 <main+0x164>)
 800093a:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x0000000EU; // R14
 800093c:	4b1b      	ldr	r3, [pc, #108]	; (80009ac <main+0x15c>)
 800093e:	681b      	ldr	r3, [r3, #0]
 8000940:	3b04      	subs	r3, #4
 8000942:	4a1a      	ldr	r2, [pc, #104]	; (80009ac <main+0x15c>)
 8000944:	6013      	str	r3, [r2, #0]
 8000946:	4b19      	ldr	r3, [pc, #100]	; (80009ac <main+0x15c>)
 8000948:	681b      	ldr	r3, [r3, #0]
 800094a:	220e      	movs	r2, #14
 800094c:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x0000000CU; // R12
 800094e:	4b17      	ldr	r3, [pc, #92]	; (80009ac <main+0x15c>)
 8000950:	681b      	ldr	r3, [r3, #0]
 8000952:	3b04      	subs	r3, #4
 8000954:	4a15      	ldr	r2, [pc, #84]	; (80009ac <main+0x15c>)
 8000956:	6013      	str	r3, [r2, #0]
 8000958:	4b14      	ldr	r3, [pc, #80]	; (80009ac <main+0x15c>)
 800095a:	681b      	ldr	r3, [r3, #0]
 800095c:	220c      	movs	r2, #12
 800095e:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x00000003U; // R3
 8000960:	4b12      	ldr	r3, [pc, #72]	; (80009ac <main+0x15c>)
 8000962:	681b      	ldr	r3, [r3, #0]
 8000964:	3b04      	subs	r3, #4
 8000966:	4a11      	ldr	r2, [pc, #68]	; (80009ac <main+0x15c>)
 8000968:	6013      	str	r3, [r2, #0]
 800096a:	4b10      	ldr	r3, [pc, #64]	; (80009ac <main+0x15c>)
 800096c:	681b      	ldr	r3, [r3, #0]
 800096e:	2203      	movs	r2, #3
 8000970:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x00000002U; // R2
 8000972:	4b0e      	ldr	r3, [pc, #56]	; (80009ac <main+0x15c>)
 8000974:	681b      	ldr	r3, [r3, #0]
 8000976:	3b04      	subs	r3, #4
 8000978:	4a0c      	ldr	r2, [pc, #48]	; (80009ac <main+0x15c>)
 800097a:	6013      	str	r3, [r2, #0]
 800097c:	4b0b      	ldr	r3, [pc, #44]	; (80009ac <main+0x15c>)
 800097e:	681b      	ldr	r3, [r3, #0]
 8000980:	2202      	movs	r2, #2
 8000982:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x00000001U; // R1
 8000984:	4b09      	ldr	r3, [pc, #36]	; (80009ac <main+0x15c>)
 8000986:	681b      	ldr	r3, [r3, #0]
 8000988:	3b04      	subs	r3, #4
 800098a:	4a08      	ldr	r2, [pc, #32]	; (80009ac <main+0x15c>)
 800098c:	6013      	str	r3, [r2, #0]
 800098e:	4b07      	ldr	r3, [pc, #28]	; (80009ac <main+0x15c>)
 8000990:	681b      	ldr	r3, [r3, #0]
 8000992:	2201      	movs	r2, #1
 8000994:	601a      	str	r2, [r3, #0]
    *(--sp_blinky1) = 0x00000000U; // R0
 8000996:	4b05      	ldr	r3, [pc, #20]	; (80009ac <main+0x15c>)
 8000998:	681b      	ldr	r3, [r3, #0]
 800099a:	3b04      	subs	r3, #4
 800099c:	4a03      	ldr	r2, [pc, #12]	; (80009ac <main+0x15c>)
 800099e:	6013      	str	r3, [r2, #0]
 80009a0:	4b02      	ldr	r3, [pc, #8]	; (80009ac <main+0x15c>)
 80009a2:	681b      	ldr	r3, [r3, #0]
 80009a4:	2200      	movs	r2, #0
 80009a6:	601a      	str	r2, [r3, #0]

    while(1) {}
 80009a8:	e7fe      	b.n	80009a8 <main+0x158>
 80009aa:	bf00      	nop
 80009ac:	20000044 	.word	0x20000044
 80009b0:	080007fd 	.word	0x080007fd
 80009b4:	08000827 	.word	0x08000827

080009b8 <USART_Get>:

USART_t *usart1 = (USART_t *)(UART1_BASE);
USART_t *usart2 = (USART_t *)(UART2_BASE);
USART_t *usart3 = (USART_t *)(UART3_BASE);

static USART_t *USART_Get(uint8_t usart) {
 80009b8:	b480      	push	{r7}
 80009ba:	b083      	sub	sp, #12
 80009bc:	af00      	add	r7, sp, #0
 80009be:	4603      	mov	r3, r0
 80009c0:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 80009c2:	79fb      	ldrb	r3, [r7, #7]
 80009c4:	2b01      	cmp	r3, #1
 80009c6:	d006      	beq.n	80009d6 <USART_Get+0x1e>
 80009c8:	2b02      	cmp	r3, #2
 80009ca:	d007      	beq.n	80009dc <USART_Get+0x24>
 80009cc:	2b00      	cmp	r3, #0
 80009ce:	d108      	bne.n	80009e2 <USART_Get+0x2a>
        case USART1: return usart1;
 80009d0:	4b07      	ldr	r3, [pc, #28]	; (80009f0 <USART_Get+0x38>)
 80009d2:	681b      	ldr	r3, [r3, #0]
 80009d4:	e007      	b.n	80009e6 <USART_Get+0x2e>
        case USART2: return usart2;
 80009d6:	4b07      	ldr	r3, [pc, #28]	; (80009f4 <USART_Get+0x3c>)
 80009d8:	681b      	ldr	r3, [r3, #0]
 80009da:	e004      	b.n	80009e6 <USART_Get+0x2e>
        case USART3: return usart3;
 80009dc:	4b06      	ldr	r3, [pc, #24]	; (80009f8 <USART_Get+0x40>)
 80009de:	681b      	ldr	r3, [r3, #0]
 80009e0:	e001      	b.n	80009e6 <USART_Get+0x2e>
        default: return usart1;
 80009e2:	4b03      	ldr	r3, [pc, #12]	; (80009f0 <USART_Get+0x38>)
 80009e4:	681b      	ldr	r3, [r3, #0]
    }
}
 80009e6:	4618      	mov	r0, r3
 80009e8:	370c      	adds	r7, #12
 80009ea:	46bd      	mov	sp, r7
 80009ec:	bc80      	pop	{r7}
 80009ee:	4770      	bx	lr
 80009f0:	2000004c 	.word	0x2000004c
 80009f4:	20000050 	.word	0x20000050
 80009f8:	20000054 	.word	0x20000054

080009fc <Serial_Init>:

void Serial_Init(uint8_t usart, uint32_t BAUD) {
 80009fc:	b580      	push	{r7, lr}
 80009fe:	b084      	sub	sp, #16
 8000a00:	af00      	add	r7, sp, #0
 8000a02:	4603      	mov	r3, r0
 8000a04:	6039      	str	r1, [r7, #0]
 8000a06:	71fb      	strb	r3, [r7, #7]
    USART_t *serial = USART_Get(usart);
 8000a08:	79fb      	ldrb	r3, [r7, #7]
 8000a0a:	4618      	mov	r0, r3
 8000a0c:	f7ff ffd4 	bl	80009b8 <USART_Get>
 8000a10:	60f8      	str	r0, [r7, #12]
    serial->CR1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
 8000a12:	68fb      	ldr	r3, [r7, #12]
 8000a14:	f242 022c 	movw	r2, #8236	; 0x202c
 8000a18:	60da      	str	r2, [r3, #12]
    serial->CR2 = 0;
 8000a1a:	68fb      	ldr	r3, [r7, #12]
 8000a1c:	2200      	movs	r2, #0
 8000a1e:	611a      	str	r2, [r3, #16]
    serial->CR3 = 0;
 8000a20:	68fb      	ldr	r3, [r7, #12]
 8000a22:	2200      	movs	r2, #0
 8000a24:	615a      	str	r2, [r3, #20]
    serial->GTPR = 0;
 8000a26:	68fb      	ldr	r3, [r7, #12]
 8000a28:	2200      	movs	r2, #0
 8000a2a:	619a      	str	r2, [r3, #24]
    serial->BAUD = PCLK2 / BAUD;
 8000a2c:	4a04      	ldr	r2, [pc, #16]	; (8000a40 <Serial_Init+0x44>)
 8000a2e:	683b      	ldr	r3, [r7, #0]
 8000a30:	fbb2 f2f3 	udiv	r2, r2, r3
 8000a34:	68fb      	ldr	r3, [r7, #12]
 8000a36:	609a      	str	r2, [r3, #8]
}
 8000a38:	bf00      	nop
 8000a3a:	3710      	adds	r7, #16
 8000a3c:	46bd      	mov	sp, r7
 8000a3e:	bd80      	pop	{r7, pc}
 8000a40:	044aa200 	.word	0x044aa200

08000a44 <Serial_Write_Char>:

bool Serial_Write_Char(uint8_t usart, char c) {
 8000a44:	b580      	push	{r7, lr}
 8000a46:	b084      	sub	sp, #16
 8000a48:	af00      	add	r7, sp, #0
 8000a4a:	4603      	mov	r3, r0
 8000a4c:	460a      	mov	r2, r1
 8000a4e:	71fb      	strb	r3, [r7, #7]
 8000a50:	4613      	mov	r3, r2
 8000a52:	71bb      	strb	r3, [r7, #6]
    USART_t *serial = USART_Get(usart);
 8000a54:	79fb      	ldrb	r3, [r7, #7]
 8000a56:	4618      	mov	r0, r3
 8000a58:	f7ff ffae 	bl	80009b8 <USART_Get>
 8000a5c:	60f8      	str	r0, [r7, #12]
    serial->DATA = c;
 8000a5e:	79ba      	ldrb	r2, [r7, #6]
 8000a60:	68fb      	ldr	r3, [r7, #12]
 8000a62:	605a      	str	r2, [r3, #4]
    while(!(serial->SR & TC));
 8000a64:	bf00      	nop
 8000a66:	68fb      	ldr	r3, [r7, #12]
 8000a68:	681b      	ldr	r3, [r3, #0]
 8000a6a:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000a6e:	2b00      	cmp	r3, #0
 8000a70:	d0f9      	beq.n	8000a66 <Serial_Write_Char+0x22>
    return USART_SUCCESS;
 8000a72:	2301      	movs	r3, #1
}
 8000a74:	4618      	mov	r0, r3
 8000a76:	3710      	adds	r7, #16
 8000a78:	46bd      	mov	sp, r7
 8000a7a:	bd80      	pop	{r7, pc}

08000a7c <Serial_Write_Str>:

bool Serial_Write_Str(uint8_t usart, char *s, bool new_line) {
 8000a7c:	b580      	push	{r7, lr}
 8000a7e:	b082      	sub	sp, #8
 8000a80:	af00      	add	r7, sp, #0
 8000a82:	4603      	mov	r3, r0
 8000a84:	6039      	str	r1, [r7, #0]
 8000a86:	71fb      	strb	r3, [r7, #7]
 8000a88:	4613      	mov	r3, r2
 8000a8a:	71bb      	strb	r3, [r7, #6]
    while(*s) Serial_Write_Char(usart, *s++);
 8000a8c:	e008      	b.n	8000aa0 <Serial_Write_Str+0x24>
 8000a8e:	683b      	ldr	r3, [r7, #0]
 8000a90:	1c5a      	adds	r2, r3, #1
 8000a92:	603a      	str	r2, [r7, #0]
 8000a94:	781a      	ldrb	r2, [r3, #0]
 8000a96:	79fb      	ldrb	r3, [r7, #7]
 8000a98:	4611      	mov	r1, r2
 8000a9a:	4618      	mov	r0, r3
 8000a9c:	f7ff ffd2 	bl	8000a44 <Serial_Write_Char>
 8000aa0:	683b      	ldr	r3, [r7, #0]
 8000aa2:	781b      	ldrb	r3, [r3, #0]
 8000aa4:	2b00      	cmp	r3, #0
 8000aa6:	d1f2      	bne.n	8000a8e <Serial_Write_Str+0x12>
    if (!new_line) return 1;
 8000aa8:	79bb      	ldrb	r3, [r7, #6]
 8000aaa:	f083 0301 	eor.w	r3, r3, #1
 8000aae:	b2db      	uxtb	r3, r3
 8000ab0:	2b00      	cmp	r3, #0
 8000ab2:	d001      	beq.n	8000ab8 <Serial_Write_Str+0x3c>
 8000ab4:	2301      	movs	r3, #1
 8000ab6:	e00a      	b.n	8000ace <Serial_Write_Str+0x52>
    Serial_Write_Char(usart, '\r');
 8000ab8:	79fb      	ldrb	r3, [r7, #7]
 8000aba:	210d      	movs	r1, #13
 8000abc:	4618      	mov	r0, r3
 8000abe:	f7ff ffc1 	bl	8000a44 <Serial_Write_Char>
    Serial_Write_Char(usart, '\n');
 8000ac2:	79fb      	ldrb	r3, [r7, #7]
 8000ac4:	210a      	movs	r1, #10
 8000ac6:	4618      	mov	r0, r3
 8000ac8:	f7ff ffbc 	bl	8000a44 <Serial_Write_Char>
    return USART_SUCCESS;
 8000acc:	2301      	movs	r3, #1
}
 8000ace:	4618      	mov	r0, r3
 8000ad0:	3708      	adds	r7, #8
 8000ad2:	46bd      	mov	sp, r7
 8000ad4:	bd80      	pop	{r7, pc}

08000ad6 <Serial_Read_Char>:

char Serial_Read_Char(uint8_t usart) {
 8000ad6:	b580      	push	{r7, lr}
 8000ad8:	b084      	sub	sp, #16
 8000ada:	af00      	add	r7, sp, #0
 8000adc:	4603      	mov	r3, r0
 8000ade:	71fb      	strb	r3, [r7, #7]
    USART_t *serial = USART_Get(usart);
 8000ae0:	79fb      	ldrb	r3, [r7, #7]
 8000ae2:	4618      	mov	r0, r3
 8000ae4:	f7ff ff68 	bl	80009b8 <USART_Get>
 8000ae8:	60f8      	str	r0, [r7, #12]
    while(!(serial->SR & RXNE));
 8000aea:	bf00      	nop
 8000aec:	68fb      	ldr	r3, [r7, #12]
 8000aee:	681b      	ldr	r3, [r3, #0]
 8000af0:	f003 0320 	and.w	r3, r3, #32
 8000af4:	2b00      	cmp	r3, #0
 8000af6:	d0f9      	beq.n	8000aec <Serial_Read_Char+0x16>
    return (char)(serial->DATA & DATA_MASK);
 8000af8:	68fb      	ldr	r3, [r7, #12]
 8000afa:	685b      	ldr	r3, [r3, #4]
 8000afc:	b2db      	uxtb	r3, r3
}
 8000afe:	4618      	mov	r0, r3
 8000b00:	3710      	adds	r7, #16
 8000b02:	46bd      	mov	sp, r7
 8000b04:	bd80      	pop	{r7, pc}

08000b06 <Serial_Read_Str>:

char *Serial_Read_Str(uint8_t usart, char *buffer) {
 8000b06:	b590      	push	{r4, r7, lr}
 8000b08:	b083      	sub	sp, #12
 8000b0a:	af00      	add	r7, sp, #0
 8000b0c:	4603      	mov	r3, r0
 8000b0e:	6039      	str	r1, [r7, #0]
 8000b10:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 8000b12:	e008      	b.n	8000b26 <Serial_Read_Str+0x20>
        *buffer++ = Serial_Read_Char(usart);
 8000b14:	683c      	ldr	r4, [r7, #0]
 8000b16:	1c63      	adds	r3, r4, #1
 8000b18:	603b      	str	r3, [r7, #0]
 8000b1a:	79fb      	ldrb	r3, [r7, #7]
 8000b1c:	4618      	mov	r0, r3
 8000b1e:	f7ff ffda 	bl	8000ad6 <Serial_Read_Char>
 8000b22:	4603      	mov	r3, r0
 8000b24:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 8000b26:	683b      	ldr	r3, [r7, #0]
 8000b28:	781b      	ldrb	r3, [r3, #0]
 8000b2a:	2b00      	cmp	r3, #0
 8000b2c:	d1f2      	bne.n	8000b14 <Serial_Read_Str+0xe>
    }
    return buffer;
 8000b2e:	683b      	ldr	r3, [r7, #0]
}
 8000b30:	4618      	mov	r0, r3
 8000b32:	370c      	adds	r7, #12
 8000b34:	46bd      	mov	sp, r7
 8000b36:	bd90      	pop	{r4, r7, pc}

08000b38 <__enable_irq>:
#include "intrinsic.h"

// enable interrupt
void __enable_irq(void) {
 8000b38:	b480      	push	{r7}
 8000b3a:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsie i" ::: "memory");
 8000b3c:	b662      	cpsie	i
}
 8000b3e:	bf00      	nop
 8000b40:	46bd      	mov	sp, r7
 8000b42:	bc80      	pop	{r7}
 8000b44:	4770      	bx	lr

08000b46 <__disable_irq>:

// disable interrupt
void __disable_irq(void) {
 8000b46:	b480      	push	{r7}
 8000b48:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsid i" ::: "memory");
 8000b4a:	b672      	cpsid	i
}
 8000b4c:	bf00      	nop
 8000b4e:	46bd      	mov	sp, r7
 8000b50:	bc80      	pop	{r7}
 8000b52:	4770      	bx	lr

08000b54 <__NOP>:

// no operation
void __NOP(void) {
 8000b54:	b480      	push	{r7}
 8000b56:	af00      	add	r7, sp, #0
    __ASM volatile ("nop");
 8000b58:	bf00      	nop
}
 8000b5a:	bf00      	nop
 8000b5c:	46bd      	mov	sp, r7
 8000b5e:	bc80      	pop	{r7}
 8000b60:	4770      	bx	lr
	...

08000b64 <Reset_Handler>:
 8000b64:	2100      	movs	r1, #0
 8000b66:	e003      	b.n	8000b70 <LoopCopyDataInit>

08000b68 <CopyDataInit>:
 8000b68:	4b09      	ldr	r3, [pc, #36]	; (8000b90 <LoopFillZerobss+0xc>)
 8000b6a:	585b      	ldr	r3, [r3, r1]
 8000b6c:	5043      	str	r3, [r0, r1]
 8000b6e:	3104      	adds	r1, #4

08000b70 <LoopCopyDataInit>:
 8000b70:	4808      	ldr	r0, [pc, #32]	; (8000b94 <LoopFillZerobss+0x10>)
 8000b72:	4b09      	ldr	r3, [pc, #36]	; (8000b98 <LoopFillZerobss+0x14>)
 8000b74:	1842      	adds	r2, r0, r1
 8000b76:	429a      	cmp	r2, r3
 8000b78:	d3f6      	bcc.n	8000b68 <CopyDataInit>
 8000b7a:	4a08      	ldr	r2, [pc, #32]	; (8000b9c <LoopFillZerobss+0x18>)
 8000b7c:	e002      	b.n	8000b84 <LoopFillZerobss>

08000b7e <FillZerobss>:
 8000b7e:	2300      	movs	r3, #0
 8000b80:	f842 3b04 	str.w	r3, [r2], #4

08000b84 <LoopFillZerobss>:
 8000b84:	4b06      	ldr	r3, [pc, #24]	; (8000ba0 <LoopFillZerobss+0x1c>)
 8000b86:	429a      	cmp	r2, r3
 8000b88:	d3f9      	bcc.n	8000b7e <FillZerobss>
 8000b8a:	f7ff fe61 	bl	8000850 <main>
 8000b8e:	4770      	bx	lr
 8000b90:	08000ba8 	.word	0x08000ba8
 8000b94:	20000000 	.word	0x20000000
 8000b98:	20000058 	.word	0x20000058
 8000b9c:	20000058 	.word	0x20000058
 8000ba0:	2000019c 	.word	0x2000019c

08000ba4 <ADC1_2_IRQHandler>:
 8000ba4:	e7fe      	b.n	8000ba4 <ADC1_2_IRQHandler>
	...
