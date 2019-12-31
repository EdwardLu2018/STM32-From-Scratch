
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <_reset-0x150>:
 8000000:	20005000 	.word	0x20005000
 8000004:	08000151 	.word	0x08000151
 8000008:	00000000 	.word	0x00000000
 800000c:	0800069d 	.word	0x0800069d
 8000010:	080006a9 	.word	0x080006a9
 8000014:	080006b5 	.word	0x080006b5
 8000018:	080006c1 	.word	0x080006c1
	...
 800003c:	0800052d 	.word	0x0800052d
	...
 80000b0:	080001d5 	.word	0x080001d5
 80000b4:	080001ed 	.word	0x080001ed
 80000b8:	08000205 	.word	0x08000205
	...
 8000108:	0800021d 	.word	0x0800021d
	...
 8000118:	08000235 	.word	0x08000235
 800011c:	0800024d 	.word	0x0800024d
	...

08000150 <_reset>:
 8000150:	f000 fabc 	bl	80006cc <main>
 8000154:	e7fe      	b.n	8000154 <_reset+0x4>
	...

08000158 <get_timer>:
timer_t *tim4 = (timer_t *)(TIM4_BASE);
timer_t *tim5 = (timer_t *)(TIM5_BASE);
timer_t *tim6 = (timer_t *)(TIM6_BASE);
timer_t *tim7 = (timer_t *)(TIM7_BASE);

timer_t *get_timer(uint8_t timer) {
 8000158:	b480      	push	{r7}
 800015a:	b083      	sub	sp, #12
 800015c:	af00      	add	r7, sp, #0
 800015e:	4603      	mov	r3, r0
 8000160:	71fb      	strb	r3, [r7, #7]
    switch (timer) {
 8000162:	79fb      	ldrb	r3, [r7, #7]
 8000164:	3b02      	subs	r3, #2
 8000166:	2b05      	cmp	r3, #5
 8000168:	d820      	bhi.n	80001ac <get_timer+0x54>
 800016a:	a201      	add	r2, pc, #4	; (adr r2, 8000170 <get_timer+0x18>)
 800016c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000170:	08000189 	.word	0x08000189
 8000174:	0800018f 	.word	0x0800018f
 8000178:	08000195 	.word	0x08000195
 800017c:	0800019b 	.word	0x0800019b
 8000180:	080001a1 	.word	0x080001a1
 8000184:	080001a7 	.word	0x080001a7
    case TIM2: return tim2;
 8000188:	4b0c      	ldr	r3, [pc, #48]	; (80001bc <get_timer+0x64>)
 800018a:	681b      	ldr	r3, [r3, #0]
 800018c:	e010      	b.n	80001b0 <get_timer+0x58>
    case TIM3: return tim3;
 800018e:	4b0c      	ldr	r3, [pc, #48]	; (80001c0 <get_timer+0x68>)
 8000190:	681b      	ldr	r3, [r3, #0]
 8000192:	e00d      	b.n	80001b0 <get_timer+0x58>
    case TIM4: return tim4;
 8000194:	4b0b      	ldr	r3, [pc, #44]	; (80001c4 <get_timer+0x6c>)
 8000196:	681b      	ldr	r3, [r3, #0]
 8000198:	e00a      	b.n	80001b0 <get_timer+0x58>
    case TIM5: return tim5;
 800019a:	4b0b      	ldr	r3, [pc, #44]	; (80001c8 <get_timer+0x70>)
 800019c:	681b      	ldr	r3, [r3, #0]
 800019e:	e007      	b.n	80001b0 <get_timer+0x58>
    case TIM6: return tim6;
 80001a0:	4b0a      	ldr	r3, [pc, #40]	; (80001cc <get_timer+0x74>)
 80001a2:	681b      	ldr	r3, [r3, #0]
 80001a4:	e004      	b.n	80001b0 <get_timer+0x58>
    case TIM7: return tim7;
 80001a6:	4b0a      	ldr	r3, [pc, #40]	; (80001d0 <get_timer+0x78>)
 80001a8:	681b      	ldr	r3, [r3, #0]
 80001aa:	e001      	b.n	80001b0 <get_timer+0x58>
    default: return tim2;
 80001ac:	4b03      	ldr	r3, [pc, #12]	; (80001bc <get_timer+0x64>)
 80001ae:	681b      	ldr	r3, [r3, #0]
    }
}
 80001b0:	4618      	mov	r0, r3
 80001b2:	370c      	adds	r7, #12
 80001b4:	46bd      	mov	sp, r7
 80001b6:	bc80      	pop	{r7}
 80001b8:	4770      	bx	lr
 80001ba:	bf00      	nop
 80001bc:	080008bc 	.word	0x080008bc
 80001c0:	080008c0 	.word	0x080008c0
 80001c4:	080008c4 	.word	0x080008c4
 80001c8:	080008c8 	.word	0x080008c8
 80001cc:	080008cc 	.word	0x080008cc
 80001d0:	080008d0 	.word	0x080008d0

080001d4 <Timer2_Handler>:

void Timer2_Handler(void) {
 80001d4:	b480      	push	{r7}
 80001d6:	af00      	add	r7, sp, #0
    tim2->sr = 0U; // reset interrupt
 80001d8:	4b03      	ldr	r3, [pc, #12]	; (80001e8 <Timer2_Handler+0x14>)
 80001da:	681b      	ldr	r3, [r3, #0]
 80001dc:	2200      	movs	r2, #0
 80001de:	611a      	str	r2, [r3, #16]
}
 80001e0:	bf00      	nop
 80001e2:	46bd      	mov	sp, r7
 80001e4:	bc80      	pop	{r7}
 80001e6:	4770      	bx	lr
 80001e8:	080008bc 	.word	0x080008bc

080001ec <Timer3_Handler>:

void Timer3_Handler(void) {
 80001ec:	b480      	push	{r7}
 80001ee:	af00      	add	r7, sp, #0
    tim3->sr = 0U; // reset interrupt
 80001f0:	4b03      	ldr	r3, [pc, #12]	; (8000200 <Timer3_Handler+0x14>)
 80001f2:	681b      	ldr	r3, [r3, #0]
 80001f4:	2200      	movs	r2, #0
 80001f6:	611a      	str	r2, [r3, #16]
}
 80001f8:	bf00      	nop
 80001fa:	46bd      	mov	sp, r7
 80001fc:	bc80      	pop	{r7}
 80001fe:	4770      	bx	lr
 8000200:	080008c0 	.word	0x080008c0

08000204 <Timer4_Handler>:

void Timer4_Handler(void) {
 8000204:	b480      	push	{r7}
 8000206:	af00      	add	r7, sp, #0
    tim4->sr = 0U; // reset interrupt
 8000208:	4b03      	ldr	r3, [pc, #12]	; (8000218 <Timer4_Handler+0x14>)
 800020a:	681b      	ldr	r3, [r3, #0]
 800020c:	2200      	movs	r2, #0
 800020e:	611a      	str	r2, [r3, #16]
}
 8000210:	bf00      	nop
 8000212:	46bd      	mov	sp, r7
 8000214:	bc80      	pop	{r7}
 8000216:	4770      	bx	lr
 8000218:	080008c4 	.word	0x080008c4

0800021c <Timer5_Handler>:

void Timer5_Handler(void) {
 800021c:	b480      	push	{r7}
 800021e:	af00      	add	r7, sp, #0
    tim5->sr = 0U; // reset interrupt
 8000220:	4b03      	ldr	r3, [pc, #12]	; (8000230 <Timer5_Handler+0x14>)
 8000222:	681b      	ldr	r3, [r3, #0]
 8000224:	2200      	movs	r2, #0
 8000226:	611a      	str	r2, [r3, #16]
}
 8000228:	bf00      	nop
 800022a:	46bd      	mov	sp, r7
 800022c:	bc80      	pop	{r7}
 800022e:	4770      	bx	lr
 8000230:	080008c8 	.word	0x080008c8

08000234 <Timer6_Handler>:

void Timer6_Handler(void) {
 8000234:	b480      	push	{r7}
 8000236:	af00      	add	r7, sp, #0
    tim6->sr = 0U; // reset interrupt
 8000238:	4b03      	ldr	r3, [pc, #12]	; (8000248 <Timer6_Handler+0x14>)
 800023a:	681b      	ldr	r3, [r3, #0]
 800023c:	2200      	movs	r2, #0
 800023e:	611a      	str	r2, [r3, #16]
}
 8000240:	bf00      	nop
 8000242:	46bd      	mov	sp, r7
 8000244:	bc80      	pop	{r7}
 8000246:	4770      	bx	lr
 8000248:	080008cc 	.word	0x080008cc

0800024c <Timer7_Handler>:

void Timer7_Handler(void) {
 800024c:	b480      	push	{r7}
 800024e:	af00      	add	r7, sp, #0
    tim7->sr = 0U; // reset interrupt
 8000250:	4b03      	ldr	r3, [pc, #12]	; (8000260 <Timer7_Handler+0x14>)
 8000252:	681b      	ldr	r3, [r3, #0]
 8000254:	2200      	movs	r2, #0
 8000256:	611a      	str	r2, [r3, #16]
}
 8000258:	bf00      	nop
 800025a:	46bd      	mov	sp, r7
 800025c:	bc80      	pop	{r7}
 800025e:	4770      	bx	lr
 8000260:	080008d0 	.word	0x080008d0

08000264 <get_timer_cnt>:

uint32_t get_timer_cnt(uint8_t timer) {
 8000264:	b580      	push	{r7, lr}
 8000266:	b084      	sub	sp, #16
 8000268:	af00      	add	r7, sp, #0
 800026a:	4603      	mov	r3, r0
 800026c:	71fb      	strb	r3, [r7, #7]
    timer_t *tim = get_timer(timer);
 800026e:	79fb      	ldrb	r3, [r7, #7]
 8000270:	4618      	mov	r0, r3
 8000272:	f7ff ff71 	bl	8000158 <get_timer>
 8000276:	60f8      	str	r0, [r7, #12]
    return tim->cnt;
 8000278:	68fb      	ldr	r3, [r7, #12]
 800027a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
}
 800027c:	4618      	mov	r0, r3
 800027e:	3710      	adds	r7, #16
 8000280:	46bd      	mov	sp, r7
 8000282:	bd80      	pop	{r7, pc}

08000284 <enable_chan>:

void enable_chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load) {
 8000284:	b580      	push	{r7, lr}
 8000286:	b086      	sub	sp, #24
 8000288:	af00      	add	r7, sp, #0
 800028a:	603b      	str	r3, [r7, #0]
 800028c:	4603      	mov	r3, r0
 800028e:	71fb      	strb	r3, [r7, #7]
 8000290:	460b      	mov	r3, r1
 8000292:	71bb      	strb	r3, [r7, #6]
 8000294:	4613      	mov	r3, r2
 8000296:	717b      	strb	r3, [r7, #5]
    timer_t *tim = get_timer(timer);
 8000298:	79fb      	ldrb	r3, [r7, #7]
 800029a:	4618      	mov	r0, r3
 800029c:	f7ff ff5c 	bl	8000158 <get_timer>
 80002a0:	6178      	str	r0, [r7, #20]
    tim->ccr[channel] = load;
 80002a2:	797b      	ldrb	r3, [r7, #5]
 80002a4:	697a      	ldr	r2, [r7, #20]
 80002a6:	330c      	adds	r3, #12
 80002a8:	009b      	lsls	r3, r3, #2
 80002aa:	4413      	add	r3, r2
 80002ac:	683a      	ldr	r2, [r7, #0]
 80002ae:	605a      	str	r2, [r3, #4]

    uint8_t shift_by;
    uint32_t config;

    shift_by = channel * 4;
 80002b0:	797b      	ldrb	r3, [r7, #5]
 80002b2:	009b      	lsls	r3, r3, #2
 80002b4:	74fb      	strb	r3, [r7, #19]
    config = tim->ccer & ~(0xf << shift_by);
 80002b6:	697b      	ldr	r3, [r7, #20]
 80002b8:	6a1b      	ldr	r3, [r3, #32]
 80002ba:	7cfa      	ldrb	r2, [r7, #19]
 80002bc:	210f      	movs	r1, #15
 80002be:	fa01 f202 	lsl.w	r2, r1, r2
 80002c2:	43d2      	mvns	r2, r2
 80002c4:	4013      	ands	r3, r2
 80002c6:	60fb      	str	r3, [r7, #12]
    tim->ccer = (config | (1 << shift_by)); // enable output
 80002c8:	7cfb      	ldrb	r3, [r7, #19]
 80002ca:	2201      	movs	r2, #1
 80002cc:	fa02 f303 	lsl.w	r3, r2, r3
 80002d0:	461a      	mov	r2, r3
 80002d2:	68fb      	ldr	r3, [r7, #12]
 80002d4:	431a      	orrs	r2, r3
 80002d6:	697b      	ldr	r3, [r7, #20]
 80002d8:	621a      	str	r2, [r3, #32]

    // output compare mode //
    shift_by = (channel % 2) * 8;
 80002da:	797b      	ldrb	r3, [r7, #5]
 80002dc:	f003 0301 	and.w	r3, r3, #1
 80002e0:	b2db      	uxtb	r3, r3
 80002e2:	00db      	lsls	r3, r3, #3
 80002e4:	74fb      	strb	r3, [r7, #19]
    uint8_t mr_idx = channel / 2;
 80002e6:	797b      	ldrb	r3, [r7, #5]
 80002e8:	085b      	lsrs	r3, r3, #1
 80002ea:	72fb      	strb	r3, [r7, #11]
    config = tim->ccmr[mr_idx] & ~(0xff << shift_by);
 80002ec:	7afa      	ldrb	r2, [r7, #11]
 80002ee:	697b      	ldr	r3, [r7, #20]
 80002f0:	3206      	adds	r2, #6
 80002f2:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80002f6:	7cfa      	ldrb	r2, [r7, #19]
 80002f8:	21ff      	movs	r1, #255	; 0xff
 80002fa:	fa01 f202 	lsl.w	r2, r1, r2
 80002fe:	43d2      	mvns	r2, r2
 8000300:	4013      	ands	r3, r2
 8000302:	60fb      	str	r3, [r7, #12]
    tim->ccmr[mr_idx] = (config | (mode << shift_by));
 8000304:	79ba      	ldrb	r2, [r7, #6]
 8000306:	7cfb      	ldrb	r3, [r7, #19]
 8000308:	fa02 f303 	lsl.w	r3, r2, r3
 800030c:	4619      	mov	r1, r3
 800030e:	7afa      	ldrb	r2, [r7, #11]
 8000310:	68fb      	ldr	r3, [r7, #12]
 8000312:	4319      	orrs	r1, r3
 8000314:	697b      	ldr	r3, [r7, #20]
 8000316:	3206      	adds	r2, #6
 8000318:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 800031c:	bf00      	nop
 800031e:	3718      	adds	r7, #24
 8000320:	46bd      	mov	sp, r7
 8000322:	bd80      	pop	{r7, pc}

08000324 <timer_init>:

void timer_init(uint8_t timer, uint32_t prescaler, uint32_t period) {
 8000324:	b580      	push	{r7, lr}
 8000326:	b086      	sub	sp, #24
 8000328:	af00      	add	r7, sp, #0
 800032a:	4603      	mov	r3, r0
 800032c:	60b9      	str	r1, [r7, #8]
 800032e:	607a      	str	r2, [r7, #4]
 8000330:	73fb      	strb	r3, [r7, #15]
    timer_t *tim = get_timer(timer);
 8000332:	7bfb      	ldrb	r3, [r7, #15]
 8000334:	4618      	mov	r0, r3
 8000336:	f7ff ff0f 	bl	8000158 <get_timer>
 800033a:	6178      	str	r0, [r7, #20]

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->psc = HSI_MHZ / prescaler; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
 800033c:	4a0c      	ldr	r2, [pc, #48]	; (8000370 <timer_init+0x4c>)
 800033e:	68bb      	ldr	r3, [r7, #8]
 8000340:	fbb2 f2f3 	udiv	r2, r2, r3
 8000344:	697b      	ldr	r3, [r7, #20]
 8000346:	629a      	str	r2, [r3, #40]	; 0x28
    tim->arr = period - 1U; // "period" of timer - updates every time cnt reaches arr
 8000348:	687b      	ldr	r3, [r7, #4]
 800034a:	1e5a      	subs	r2, r3, #1
 800034c:	697b      	ldr	r3, [r7, #20]
 800034e:	62da      	str	r2, [r3, #44]	; 0x2c

    tim->dier = 1U;
 8000350:	697b      	ldr	r3, [r7, #20]
 8000352:	2201      	movs	r2, #1
 8000354:	60da      	str	r2, [r3, #12]

    nvic_enable(TIM_IRQ_START_POS + (timer-2));
 8000356:	7bfb      	ldrb	r3, [r7, #15]
 8000358:	331a      	adds	r3, #26
 800035a:	b2db      	uxtb	r3, r3
 800035c:	4618      	mov	r0, r3
 800035e:	f000 f809 	bl	8000374 <nvic_enable>

    // enable counter //
    tim->cr[0] = 1U;
 8000362:	697b      	ldr	r3, [r7, #20]
 8000364:	2201      	movs	r2, #1
 8000366:	601a      	str	r2, [r3, #0]
}
 8000368:	bf00      	nop
 800036a:	3718      	adds	r7, #24
 800036c:	46bd      	mov	sp, r7
 800036e:	bd80      	pop	{r7, pc}
 8000370:	007a1200 	.word	0x007a1200

08000374 <nvic_enable>:
#include "nvic.h"

nvic_t *nvic = (nvic_t *)(NVIC_BASE);

void nvic_enable(uint8_t irq_pos) {
 8000374:	b480      	push	{r7}
 8000376:	b085      	sub	sp, #20
 8000378:	af00      	add	r7, sp, #0
 800037a:	4603      	mov	r3, r0
 800037c:	71fb      	strb	r3, [r7, #7]
	uint8_t idx = irq_pos / 32;
 800037e:	79fb      	ldrb	r3, [r7, #7]
 8000380:	095b      	lsrs	r3, r3, #5
 8000382:	73fb      	strb	r3, [r7, #15]
	uint8_t shift_by = irq_pos % 32;
 8000384:	79fb      	ldrb	r3, [r7, #7]
 8000386:	f003 031f 	and.w	r3, r3, #31
 800038a:	73bb      	strb	r3, [r7, #14]
	nvic->iser[idx] = (1 << shift_by);
 800038c:	7bbb      	ldrb	r3, [r7, #14]
 800038e:	2201      	movs	r2, #1
 8000390:	fa02 f103 	lsl.w	r1, r2, r3
 8000394:	4b04      	ldr	r3, [pc, #16]	; (80003a8 <nvic_enable+0x34>)
 8000396:	681b      	ldr	r3, [r3, #0]
 8000398:	7bfa      	ldrb	r2, [r7, #15]
 800039a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 800039e:	bf00      	nop
 80003a0:	3714      	adds	r7, #20
 80003a2:	46bd      	mov	sp, r7
 80003a4:	bc80      	pop	{r7}
 80003a6:	4770      	bx	lr
 80003a8:	080008d4 	.word	0x080008d4

080003ac <get_gpio>:

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

gpio_t *get_gpio(uint8_t pin) {
 80003ac:	b480      	push	{r7}
 80003ae:	b083      	sub	sp, #12
 80003b0:	af00      	add	r7, sp, #0
 80003b2:	4603      	mov	r3, r0
 80003b4:	71fb      	strb	r3, [r7, #7]
    switch(pin >> 4) {
 80003b6:	79fb      	ldrb	r3, [r7, #7]
 80003b8:	091b      	lsrs	r3, r3, #4
 80003ba:	b2db      	uxtb	r3, r3
 80003bc:	2b00      	cmp	r3, #0
 80003be:	d002      	beq.n	80003c6 <get_gpio+0x1a>
 80003c0:	2b01      	cmp	r3, #1
 80003c2:	d003      	beq.n	80003cc <get_gpio+0x20>
 80003c4:	e005      	b.n	80003d2 <get_gpio+0x26>
        case 0: return gpio_a;
 80003c6:	4b06      	ldr	r3, [pc, #24]	; (80003e0 <get_gpio+0x34>)
 80003c8:	681b      	ldr	r3, [r3, #0]
 80003ca:	e004      	b.n	80003d6 <get_gpio+0x2a>
        case 1: return gpio_b;
 80003cc:	4b05      	ldr	r3, [pc, #20]	; (80003e4 <get_gpio+0x38>)
 80003ce:	681b      	ldr	r3, [r3, #0]
 80003d0:	e001      	b.n	80003d6 <get_gpio+0x2a>
        // case 2: return gpio_c;
        default: return gpio_c;
 80003d2:	4b05      	ldr	r3, [pc, #20]	; (80003e8 <get_gpio+0x3c>)
 80003d4:	681b      	ldr	r3, [r3, #0]
    }
}
 80003d6:	4618      	mov	r0, r3
 80003d8:	370c      	adds	r7, #12
 80003da:	46bd      	mov	sp, r7
 80003dc:	bc80      	pop	{r7}
 80003de:	4770      	bx	lr
 80003e0:	080008d8 	.word	0x080008d8
 80003e4:	080008dc 	.word	0x080008dc
 80003e8:	080008e0 	.word	0x080008e0

080003ec <pin_mode>:

void pin_mode(uint8_t pin, uint8_t mode) {
 80003ec:	b580      	push	{r7, lr}
 80003ee:	b086      	sub	sp, #24
 80003f0:	af00      	add	r7, sp, #0
 80003f2:	4603      	mov	r3, r0
 80003f4:	460a      	mov	r2, r1
 80003f6:	71fb      	strb	r3, [r7, #7]
 80003f8:	4613      	mov	r3, r2
 80003fa:	71bb      	strb	r3, [r7, #6]
    gpio_t *gpio = get_gpio(pin);
 80003fc:	79fb      	ldrb	r3, [r7, #7]
 80003fe:	4618      	mov	r0, r3
 8000400:	f7ff ffd4 	bl	80003ac <get_gpio>
 8000404:	6178      	str	r0, [r7, #20]
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
 8000406:	79fb      	ldrb	r3, [r7, #7]
 8000408:	f003 030f 	and.w	r3, r3, #15
 800040c:	74fb      	strb	r3, [r7, #19]
    uint8_t shift_by = (bit % 8) * 4;
 800040e:	7cfb      	ldrb	r3, [r7, #19]
 8000410:	f003 0307 	and.w	r3, r3, #7
 8000414:	b2db      	uxtb	r3, r3
 8000416:	009b      	lsls	r3, r3, #2
 8000418:	74bb      	strb	r3, [r7, #18]
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
 800041a:	7cfb      	ldrb	r3, [r7, #19]
 800041c:	08db      	lsrs	r3, r3, #3
 800041e:	747b      	strb	r3, [r7, #17]
    uint32_t config = gpio->cr[reg_idx] & ~(0xf << shift_by);
 8000420:	7c7a      	ldrb	r2, [r7, #17]
 8000422:	697b      	ldr	r3, [r7, #20]
 8000424:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000428:	7cba      	ldrb	r2, [r7, #18]
 800042a:	210f      	movs	r1, #15
 800042c:	fa01 f202 	lsl.w	r2, r1, r2
 8000430:	43d2      	mvns	r2, r2
 8000432:	4013      	ands	r3, r2
 8000434:	60fb      	str	r3, [r7, #12]
    gpio->cr[reg_idx] = (config | (mode << shift_by));
 8000436:	79ba      	ldrb	r2, [r7, #6]
 8000438:	7cbb      	ldrb	r3, [r7, #18]
 800043a:	fa02 f303 	lsl.w	r3, r2, r3
 800043e:	4619      	mov	r1, r3
 8000440:	7c7a      	ldrb	r2, [r7, #17]
 8000442:	68fb      	ldr	r3, [r7, #12]
 8000444:	4319      	orrs	r1, r3
 8000446:	697b      	ldr	r3, [r7, #20]
 8000448:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 800044c:	bf00      	nop
 800044e:	3718      	adds	r7, #24
 8000450:	46bd      	mov	sp, r7
 8000452:	bd80      	pop	{r7, pc}

08000454 <led_toggle>:

void led_toggle(uint8_t pin) {
 8000454:	b580      	push	{r7, lr}
 8000456:	b084      	sub	sp, #16
 8000458:	af00      	add	r7, sp, #0
 800045a:	4603      	mov	r3, r0
 800045c:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 800045e:	79fb      	ldrb	r3, [r7, #7]
 8000460:	4618      	mov	r0, r3
 8000462:	f7ff ffa3 	bl	80003ac <get_gpio>
 8000466:	60f8      	str	r0, [r7, #12]
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
 8000468:	68fb      	ldr	r3, [r7, #12]
 800046a:	68db      	ldr	r3, [r3, #12]
 800046c:	79fa      	ldrb	r2, [r7, #7]
 800046e:	f002 020f 	and.w	r2, r2, #15
 8000472:	2101      	movs	r1, #1
 8000474:	fa01 f202 	lsl.w	r2, r1, r2
 8000478:	405a      	eors	r2, r3
 800047a:	68fb      	ldr	r3, [r7, #12]
 800047c:	60da      	str	r2, [r3, #12]
}
 800047e:	bf00      	nop
 8000480:	3710      	adds	r7, #16
 8000482:	46bd      	mov	sp, r7
 8000484:	bd80      	pop	{r7, pc}

08000486 <led_on>:

void led_on(uint8_t pin) {
 8000486:	b580      	push	{r7, lr}
 8000488:	b084      	sub	sp, #16
 800048a:	af00      	add	r7, sp, #0
 800048c:	4603      	mov	r3, r0
 800048e:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 8000490:	79fb      	ldrb	r3, [r7, #7]
 8000492:	4618      	mov	r0, r3
 8000494:	f7ff ff8a 	bl	80003ac <get_gpio>
 8000498:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 800049a:	79fb      	ldrb	r3, [r7, #7]
 800049c:	2b2d      	cmp	r3, #45	; 0x2d
 800049e:	d10c      	bne.n	80004ba <led_on+0x34>
 80004a0:	68fb      	ldr	r3, [r7, #12]
 80004a2:	68db      	ldr	r3, [r3, #12]
 80004a4:	79fa      	ldrb	r2, [r7, #7]
 80004a6:	f002 020f 	and.w	r2, r2, #15
 80004aa:	2101      	movs	r1, #1
 80004ac:	fa01 f202 	lsl.w	r2, r1, r2
 80004b0:	43d2      	mvns	r2, r2
 80004b2:	401a      	ands	r2, r3
 80004b4:	68fb      	ldr	r3, [r7, #12]
 80004b6:	60da      	str	r2, [r3, #12]
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}
 80004b8:	e00a      	b.n	80004d0 <led_on+0x4a>
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
 80004ba:	68fb      	ldr	r3, [r7, #12]
 80004bc:	68db      	ldr	r3, [r3, #12]
 80004be:	79fa      	ldrb	r2, [r7, #7]
 80004c0:	f002 020f 	and.w	r2, r2, #15
 80004c4:	2101      	movs	r1, #1
 80004c6:	fa01 f202 	lsl.w	r2, r1, r2
 80004ca:	431a      	orrs	r2, r3
 80004cc:	68fb      	ldr	r3, [r7, #12]
 80004ce:	60da      	str	r2, [r3, #12]
}
 80004d0:	bf00      	nop
 80004d2:	3710      	adds	r7, #16
 80004d4:	46bd      	mov	sp, r7
 80004d6:	bd80      	pop	{r7, pc}

080004d8 <led_off>:

void led_off(uint8_t pin) {
 80004d8:	b580      	push	{r7, lr}
 80004da:	b084      	sub	sp, #16
 80004dc:	af00      	add	r7, sp, #0
 80004de:	4603      	mov	r3, r0
 80004e0:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 80004e2:	79fb      	ldrb	r3, [r7, #7]
 80004e4:	4618      	mov	r0, r3
 80004e6:	f7ff ff61 	bl	80003ac <get_gpio>
 80004ea:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
 80004ec:	79fb      	ldrb	r3, [r7, #7]
 80004ee:	2b2d      	cmp	r3, #45	; 0x2d
 80004f0:	d10b      	bne.n	800050a <led_off+0x32>
 80004f2:	68fb      	ldr	r3, [r7, #12]
 80004f4:	68db      	ldr	r3, [r3, #12]
 80004f6:	79fa      	ldrb	r2, [r7, #7]
 80004f8:	f002 020f 	and.w	r2, r2, #15
 80004fc:	2101      	movs	r1, #1
 80004fe:	fa01 f202 	lsl.w	r2, r1, r2
 8000502:	431a      	orrs	r2, r3
 8000504:	68fb      	ldr	r3, [r7, #12]
 8000506:	60da      	str	r2, [r3, #12]
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
 8000508:	e00b      	b.n	8000522 <led_off+0x4a>
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 800050a:	68fb      	ldr	r3, [r7, #12]
 800050c:	68db      	ldr	r3, [r3, #12]
 800050e:	79fa      	ldrb	r2, [r7, #7]
 8000510:	f002 020f 	and.w	r2, r2, #15
 8000514:	2101      	movs	r1, #1
 8000516:	fa01 f202 	lsl.w	r2, r1, r2
 800051a:	43d2      	mvns	r2, r2
 800051c:	401a      	ands	r2, r3
 800051e:	68fb      	ldr	r3, [r7, #12]
 8000520:	60da      	str	r2, [r3, #12]
}
 8000522:	bf00      	nop
 8000524:	3710      	adds	r7, #16
 8000526:	46bd      	mov	sp, r7
 8000528:	bd80      	pop	{r7, pc}
 800052a:	bf00      	nop

0800052c <Systick_Handler>:
#include "systick.h"

systick_t *systick = (systick_t *)(SYSTICK_BASE);

uint32_t __IO cnt = 0;
void Systick_Handler(void) {
 800052c:	b480      	push	{r7}
 800052e:	af00      	add	r7, sp, #0
    cnt++;
 8000530:	4b04      	ldr	r3, [pc, #16]	; (8000544 <Systick_Handler+0x18>)
 8000532:	681b      	ldr	r3, [r3, #0]
 8000534:	3301      	adds	r3, #1
 8000536:	4a03      	ldr	r2, [pc, #12]	; (8000544 <Systick_Handler+0x18>)
 8000538:	6013      	str	r3, [r2, #0]
}
 800053a:	bf00      	nop
 800053c:	46bd      	mov	sp, r7
 800053e:	bc80      	pop	{r7}
 8000540:	4770      	bx	lr
 8000542:	bf00      	nop
 8000544:	20000000 	.word	0x20000000

08000548 <systick_init>:

void systick_init(uint32_t reload_val) {
 8000548:	b480      	push	{r7}
 800054a:	b083      	sub	sp, #12
 800054c:	af00      	add	r7, sp, #0
 800054e:	6078      	str	r0, [r7, #4]
    systick->reload = reload_val - 1U;
 8000550:	4b0a      	ldr	r3, [pc, #40]	; (800057c <systick_init+0x34>)
 8000552:	681b      	ldr	r3, [r3, #0]
 8000554:	687a      	ldr	r2, [r7, #4]
 8000556:	3a01      	subs	r2, #1
 8000558:	605a      	str	r2, [r3, #4]
    systick->val = 0U;
 800055a:	4b08      	ldr	r3, [pc, #32]	; (800057c <systick_init+0x34>)
 800055c:	681b      	ldr	r3, [r3, #0]
 800055e:	2200      	movs	r2, #0
 8000560:	609a      	str	r2, [r3, #8]
    cnt = 0;
 8000562:	4b07      	ldr	r3, [pc, #28]	; (8000580 <systick_init+0x38>)
 8000564:	2200      	movs	r2, #0
 8000566:	601a      	str	r2, [r3, #0]
    systick->ctrl = (TICKINT_EN | TICK_EN);
 8000568:	4b04      	ldr	r3, [pc, #16]	; (800057c <systick_init+0x34>)
 800056a:	681b      	ldr	r3, [r3, #0]
 800056c:	2203      	movs	r2, #3
 800056e:	601a      	str	r2, [r3, #0]
}
 8000570:	bf00      	nop
 8000572:	370c      	adds	r7, #12
 8000574:	46bd      	mov	sp, r7
 8000576:	bc80      	pop	{r7}
 8000578:	4770      	bx	lr
 800057a:	bf00      	nop
 800057c:	080008e4 	.word	0x080008e4
 8000580:	20000000 	.word	0x20000000

08000584 <millis>:

uint32_t millis(void) {
 8000584:	b480      	push	{r7}
 8000586:	af00      	add	r7, sp, #0
    return cnt;
 8000588:	4b02      	ldr	r3, [pc, #8]	; (8000594 <millis+0x10>)
 800058a:	681b      	ldr	r3, [r3, #0]
}
 800058c:	4618      	mov	r0, r3
 800058e:	46bd      	mov	sp, r7
 8000590:	bc80      	pop	{r7}
 8000592:	4770      	bx	lr
 8000594:	20000000 	.word	0x20000000

08000598 <delay>:
#include "delay.h"
#include "systick.h"

void delay(uint64_t __IO t) {
 8000598:	b490      	push	{r4, r7}
 800059a:	b084      	sub	sp, #16
 800059c:	af00      	add	r7, sp, #0
 800059e:	e9c7 0100 	strd	r0, r1, [r7]
    for (uint64_t __IO i = 0; i < t; i++);
 80005a2:	f04f 0300 	mov.w	r3, #0
 80005a6:	f04f 0400 	mov.w	r4, #0
 80005aa:	e9c7 3402 	strd	r3, r4, [r7, #8]
 80005ae:	e006      	b.n	80005be <delay+0x26>
 80005b0:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 80005b4:	1c4b      	adds	r3, r1, #1
 80005b6:	f142 0400 	adc.w	r4, r2, #0
 80005ba:	e9c7 3402 	strd	r3, r4, [r7, #8]
 80005be:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 80005c2:	e9d7 3400 	ldrd	r3, r4, [r7]
 80005c6:	42a2      	cmp	r2, r4
 80005c8:	bf08      	it	eq
 80005ca:	4299      	cmpeq	r1, r3
 80005cc:	d3f0      	bcc.n	80005b0 <delay+0x18>
}
 80005ce:	bf00      	nop
 80005d0:	3710      	adds	r7, #16
 80005d2:	46bd      	mov	sp, r7
 80005d4:	bc90      	pop	{r4, r7}
 80005d6:	4770      	bx	lr

080005d8 <systick_delay>:

void systick_delay(uint64_t __IO t) {
 80005d8:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 80005dc:	b084      	sub	sp, #16
 80005de:	af00      	add	r7, sp, #0
 80005e0:	e9c7 0100 	strd	r0, r1, [r7]
    uint64_t start_t = millis();
 80005e4:	f7ff ffce 	bl	8000584 <millis>
 80005e8:	4603      	mov	r3, r0
 80005ea:	f04f 0400 	mov.w	r4, #0
 80005ee:	e9c7 3402 	strd	r3, r4, [r7, #8]
    while(millis() - start_t < t);
 80005f2:	bf00      	nop
 80005f4:	f7ff ffc6 	bl	8000584 <millis>
 80005f8:	4603      	mov	r3, r0
 80005fa:	469b      	mov	fp, r3
 80005fc:	f04f 0c00 	mov.w	ip, #0
 8000600:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000604:	4659      	mov	r1, fp
 8000606:	4662      	mov	r2, ip
 8000608:	1ac9      	subs	r1, r1, r3
 800060a:	eb62 0204 	sbc.w	r2, r2, r4
 800060e:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000612:	42a2      	cmp	r2, r4
 8000614:	bf08      	it	eq
 8000616:	4299      	cmpeq	r1, r3
 8000618:	d3ec      	bcc.n	80005f4 <systick_delay+0x1c>
}
 800061a:	bf00      	nop
 800061c:	3710      	adds	r7, #16
 800061e:	46bd      	mov	sp, r7
 8000620:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}

08000624 <rcc_init>:
#include "rcc.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(uint32_t tim_en, uint32_t gpio_en, uint32_t usart_en) {
 8000624:	b480      	push	{r7}
 8000626:	b085      	sub	sp, #20
 8000628:	af00      	add	r7, sp, #0
 800062a:	60f8      	str	r0, [r7, #12]
 800062c:	60b9      	str	r1, [r7, #8]
 800062e:	607a      	str	r2, [r7, #4]
    rcc->apbe1 |= tim_en; // enable timers
 8000630:	4b0b      	ldr	r3, [pc, #44]	; (8000660 <rcc_init+0x3c>)
 8000632:	681b      	ldr	r3, [r3, #0]
 8000634:	69d9      	ldr	r1, [r3, #28]
 8000636:	4b0a      	ldr	r3, [pc, #40]	; (8000660 <rcc_init+0x3c>)
 8000638:	681b      	ldr	r3, [r3, #0]
 800063a:	68fa      	ldr	r2, [r7, #12]
 800063c:	430a      	orrs	r2, r1
 800063e:	61da      	str	r2, [r3, #28]
    rcc->apbe2 |= gpio_en | usart_en; // enable GPIO pins and USART
 8000640:	4b07      	ldr	r3, [pc, #28]	; (8000660 <rcc_init+0x3c>)
 8000642:	681b      	ldr	r3, [r3, #0]
 8000644:	6999      	ldr	r1, [r3, #24]
 8000646:	68ba      	ldr	r2, [r7, #8]
 8000648:	687b      	ldr	r3, [r7, #4]
 800064a:	431a      	orrs	r2, r3
 800064c:	4b04      	ldr	r3, [pc, #16]	; (8000660 <rcc_init+0x3c>)
 800064e:	681b      	ldr	r3, [r3, #0]
 8000650:	430a      	orrs	r2, r1
 8000652:	619a      	str	r2, [r3, #24]
}
 8000654:	bf00      	nop
 8000656:	3714      	adds	r7, #20
 8000658:	46bd      	mov	sp, r7
 800065a:	bc80      	pop	{r7}
 800065c:	4770      	bx	lr
 800065e:	bf00      	nop
 8000660:	080008e8 	.word	0x080008e8

08000664 <__DSB>:
#include "scb.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

static void __DSB(void) {
 8000664:	b480      	push	{r7}
 8000666:	af00      	add	r7, sp, #0
    asm("dsb 0xF" ::: "memory");
 8000668:	f3bf 8f4f 	dsb	sy
}
 800066c:	bf00      	nop
 800066e:	46bd      	mov	sp, r7
 8000670:	bc80      	pop	{r7}
 8000672:	4770      	bx	lr

08000674 <reset_system>:

static void reset_system(void) {
 8000674:	b580      	push	{r7, lr}
 8000676:	af00      	add	r7, sp, #0
    scb->aircr = (VECT_KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
 8000678:	4b06      	ldr	r3, [pc, #24]	; (8000694 <reset_system+0x20>)
 800067a:	681b      	ldr	r3, [r3, #0]
 800067c:	68db      	ldr	r3, [r3, #12]
 800067e:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 8000682:	4b04      	ldr	r3, [pc, #16]	; (8000694 <reset_system+0x20>)
 8000684:	681a      	ldr	r2, [r3, #0]
 8000686:	4b04      	ldr	r3, [pc, #16]	; (8000698 <reset_system+0x24>)
 8000688:	430b      	orrs	r3, r1
 800068a:	60d3      	str	r3, [r2, #12]
    __DSB(); // ensures the completion of memory accesses
 800068c:	f7ff ffea 	bl	8000664 <__DSB>
    while(1);
 8000690:	e7fe      	b.n	8000690 <reset_system+0x1c>
 8000692:	bf00      	nop
 8000694:	080008ec 	.word	0x080008ec
 8000698:	05fa0004 	.word	0x05fa0004

0800069c <HardFault_Handler>:
}

void HardFault_Handler(void) {
 800069c:	b580      	push	{r7, lr}
 800069e:	af00      	add	r7, sp, #0
    reset_system();
 80006a0:	f7ff ffe8 	bl	8000674 <reset_system>
}
 80006a4:	bf00      	nop
 80006a6:	bd80      	pop	{r7, pc}

080006a8 <MemManage_Handler>:

void MemManage_Handler(void) {
 80006a8:	b580      	push	{r7, lr}
 80006aa:	af00      	add	r7, sp, #0
    reset_system();
 80006ac:	f7ff ffe2 	bl	8000674 <reset_system>
}
 80006b0:	bf00      	nop
 80006b2:	bd80      	pop	{r7, pc}

080006b4 <BusFault_Handler>:

void BusFault_Handler(void) {
 80006b4:	b580      	push	{r7, lr}
 80006b6:	af00      	add	r7, sp, #0
    reset_system();
 80006b8:	f7ff ffdc 	bl	8000674 <reset_system>
}
 80006bc:	bf00      	nop
 80006be:	bd80      	pop	{r7, pc}

080006c0 <UsageFault_Handler>:

void UsageFault_Handler(void) {
 80006c0:	b580      	push	{r7, lr}
 80006c2:	af00      	add	r7, sp, #0
    reset_system();
 80006c4:	f7ff ffd6 	bl	8000674 <reset_system>
}
 80006c8:	bf00      	nop
 80006ca:	bd80      	pop	{r7, pc}

080006cc <main>:
#include "main.h"

int main(void) {
 80006cc:	b580      	push	{r7, lr}
 80006ce:	af00      	add	r7, sp, #0
    rcc_init(TIM2_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, USART1_EN);
 80006d0:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 80006d4:	211c      	movs	r1, #28
 80006d6:	2001      	movs	r0, #1
 80006d8:	f7ff ffa4 	bl	8000624 <rcc_init>

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 80006dc:	2103      	movs	r1, #3
 80006de:	202d      	movs	r0, #45	; 0x2d
 80006e0:	f7ff fe84 	bl	80003ec <pin_mode>
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1
 80006e4:	210b      	movs	r1, #11
 80006e6:	2009      	movs	r0, #9
 80006e8:	f7ff fe80 	bl	80003ec <pin_mode>
    pin_mode(PA10, OUT_ALT_PUSH_PULL_50); // enable Rx pin for usart1
 80006ec:	210b      	movs	r1, #11
 80006ee:	200a      	movs	r0, #10
 80006f0:	f7ff fe7c 	bl	80003ec <pin_mode>

    systick_init(1000U); // initialize systick at 1Hz
 80006f4:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80006f8:	f7ff ff26 	bl	8000548 <systick_init>
    while(1) {
        // char a = serial_r_c(USART1);
        // serial_wr_s(USART1, "hello world", 1);
        // systick_delay(1000);
        // serial_wr_c(USART1, a);
        led_toggle(PC13);
 80006fc:	202d      	movs	r0, #45	; 0x2d
 80006fe:	f7ff fea9 	bl	8000454 <led_toggle>
        systick_delay(1000);
 8000702:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000706:	f04f 0100 	mov.w	r1, #0
 800070a:	f7ff ff65 	bl	80005d8 <systick_delay>
        led_toggle(PC13);
 800070e:	e7f5      	b.n	80006fc <main+0x30>

08000710 <get_usart>:

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

usart_t *get_usart(uint8_t usart) {
 8000710:	b480      	push	{r7}
 8000712:	b083      	sub	sp, #12
 8000714:	af00      	add	r7, sp, #0
 8000716:	4603      	mov	r3, r0
 8000718:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 800071a:	79fb      	ldrb	r3, [r7, #7]
 800071c:	2b02      	cmp	r3, #2
 800071e:	d006      	beq.n	800072e <get_usart+0x1e>
 8000720:	2b03      	cmp	r3, #3
 8000722:	d007      	beq.n	8000734 <get_usart+0x24>
 8000724:	2b01      	cmp	r3, #1
 8000726:	d108      	bne.n	800073a <get_usart+0x2a>
        case USART1: return usart1;
 8000728:	4b07      	ldr	r3, [pc, #28]	; (8000748 <get_usart+0x38>)
 800072a:	681b      	ldr	r3, [r3, #0]
 800072c:	e007      	b.n	800073e <get_usart+0x2e>
        case USART2: return usart2;
 800072e:	4b07      	ldr	r3, [pc, #28]	; (800074c <get_usart+0x3c>)
 8000730:	681b      	ldr	r3, [r3, #0]
 8000732:	e004      	b.n	800073e <get_usart+0x2e>
        case USART3: return usart3;
 8000734:	4b06      	ldr	r3, [pc, #24]	; (8000750 <get_usart+0x40>)
 8000736:	681b      	ldr	r3, [r3, #0]
 8000738:	e001      	b.n	800073e <get_usart+0x2e>
        default: return usart1;
 800073a:	4b03      	ldr	r3, [pc, #12]	; (8000748 <get_usart+0x38>)
 800073c:	681b      	ldr	r3, [r3, #0]
    }
}
 800073e:	4618      	mov	r0, r3
 8000740:	370c      	adds	r7, #12
 8000742:	46bd      	mov	sp, r7
 8000744:	bc80      	pop	{r7}
 8000746:	4770      	bx	lr
 8000748:	080008f0 	.word	0x080008f0
 800074c:	080008f4 	.word	0x080008f4
 8000750:	080008f8 	.word	0x080008f8

08000754 <init_serial>:

void init_serial(uint8_t usart, uint32_t baud) {
 8000754:	b580      	push	{r7, lr}
 8000756:	b084      	sub	sp, #16
 8000758:	af00      	add	r7, sp, #0
 800075a:	4603      	mov	r3, r0
 800075c:	6039      	str	r1, [r7, #0]
 800075e:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 8000760:	79fb      	ldrb	r3, [r7, #7]
 8000762:	4618      	mov	r0, r3
 8000764:	f7ff ffd4 	bl	8000710 <get_usart>
 8000768:	60f8      	str	r0, [r7, #12]
    serial->cr1 = (RE|TE|W_LEN_9|UE); // enable Tx/Rx, word length 9, usart
 800076a:	68fb      	ldr	r3, [r7, #12]
 800076c:	f243 020c 	movw	r2, #12300	; 0x300c
 8000770:	60da      	str	r2, [r3, #12]
    serial->cr2 = 0;
 8000772:	68fb      	ldr	r3, [r7, #12]
 8000774:	2200      	movs	r2, #0
 8000776:	611a      	str	r2, [r3, #16]
    serial->cr3 = 0;
 8000778:	68fb      	ldr	r3, [r7, #12]
 800077a:	2200      	movs	r2, #0
 800077c:	615a      	str	r2, [r3, #20]
    serial->gtpr = 0;
 800077e:	68fb      	ldr	r3, [r7, #12]
 8000780:	2200      	movs	r2, #0
 8000782:	619a      	str	r2, [r3, #24]
    serial->baud = HSI_MHZ / baud;
 8000784:	4a04      	ldr	r2, [pc, #16]	; (8000798 <init_serial+0x44>)
 8000786:	683b      	ldr	r3, [r7, #0]
 8000788:	fbb2 f2f3 	udiv	r2, r2, r3
 800078c:	68fb      	ldr	r3, [r7, #12]
 800078e:	609a      	str	r2, [r3, #8]
}
 8000790:	bf00      	nop
 8000792:	3710      	adds	r7, #16
 8000794:	46bd      	mov	sp, r7
 8000796:	bd80      	pop	{r7, pc}
 8000798:	007a1200 	.word	0x007a1200

0800079c <serial_wr_c>:

bool serial_wr_c(uint8_t usart, char c) {
 800079c:	b580      	push	{r7, lr}
 800079e:	b084      	sub	sp, #16
 80007a0:	af00      	add	r7, sp, #0
 80007a2:	4603      	mov	r3, r0
 80007a4:	460a      	mov	r2, r1
 80007a6:	71fb      	strb	r3, [r7, #7]
 80007a8:	4613      	mov	r3, r2
 80007aa:	71bb      	strb	r3, [r7, #6]
    usart_t *serial = get_usart(usart);
 80007ac:	79fb      	ldrb	r3, [r7, #7]
 80007ae:	4618      	mov	r0, r3
 80007b0:	f7ff ffae 	bl	8000710 <get_usart>
 80007b4:	60f8      	str	r0, [r7, #12]
    serial->data = c;
 80007b6:	79ba      	ldrb	r2, [r7, #6]
 80007b8:	68fb      	ldr	r3, [r7, #12]
 80007ba:	605a      	str	r2, [r3, #4]
    while(!(serial->sr & TC));
 80007bc:	bf00      	nop
 80007be:	68fb      	ldr	r3, [r7, #12]
 80007c0:	681b      	ldr	r3, [r3, #0]
 80007c2:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80007c6:	2b00      	cmp	r3, #0
 80007c8:	d0f9      	beq.n	80007be <serial_wr_c+0x22>
    return 1;
 80007ca:	2301      	movs	r3, #1
}
 80007cc:	4618      	mov	r0, r3
 80007ce:	3710      	adds	r7, #16
 80007d0:	46bd      	mov	sp, r7
 80007d2:	bd80      	pop	{r7, pc}

080007d4 <serial_wr_s>:

bool serial_wr_s(uint8_t usart, char *s, bool new_line) {
 80007d4:	b580      	push	{r7, lr}
 80007d6:	b082      	sub	sp, #8
 80007d8:	af00      	add	r7, sp, #0
 80007da:	4603      	mov	r3, r0
 80007dc:	6039      	str	r1, [r7, #0]
 80007de:	71fb      	strb	r3, [r7, #7]
 80007e0:	4613      	mov	r3, r2
 80007e2:	71bb      	strb	r3, [r7, #6]
    while(*s) serial_wr_c(usart, *s++);
 80007e4:	e008      	b.n	80007f8 <serial_wr_s+0x24>
 80007e6:	683b      	ldr	r3, [r7, #0]
 80007e8:	1c5a      	adds	r2, r3, #1
 80007ea:	603a      	str	r2, [r7, #0]
 80007ec:	781a      	ldrb	r2, [r3, #0]
 80007ee:	79fb      	ldrb	r3, [r7, #7]
 80007f0:	4611      	mov	r1, r2
 80007f2:	4618      	mov	r0, r3
 80007f4:	f7ff ffd2 	bl	800079c <serial_wr_c>
 80007f8:	683b      	ldr	r3, [r7, #0]
 80007fa:	781b      	ldrb	r3, [r3, #0]
 80007fc:	2b00      	cmp	r3, #0
 80007fe:	d1f2      	bne.n	80007e6 <serial_wr_s+0x12>
    if (!new_line) return 1;
 8000800:	79bb      	ldrb	r3, [r7, #6]
 8000802:	f083 0301 	eor.w	r3, r3, #1
 8000806:	b2db      	uxtb	r3, r3
 8000808:	2b00      	cmp	r3, #0
 800080a:	d001      	beq.n	8000810 <serial_wr_s+0x3c>
 800080c:	2301      	movs	r3, #1
 800080e:	e00a      	b.n	8000826 <serial_wr_s+0x52>
    serial_wr_c(usart, '\r');
 8000810:	79fb      	ldrb	r3, [r7, #7]
 8000812:	210d      	movs	r1, #13
 8000814:	4618      	mov	r0, r3
 8000816:	f7ff ffc1 	bl	800079c <serial_wr_c>
    serial_wr_c(usart, '\n');
 800081a:	79fb      	ldrb	r3, [r7, #7]
 800081c:	210a      	movs	r1, #10
 800081e:	4618      	mov	r0, r3
 8000820:	f7ff ffbc 	bl	800079c <serial_wr_c>
    return 1;
 8000824:	2301      	movs	r3, #1
}
 8000826:	4618      	mov	r0, r3
 8000828:	3708      	adds	r7, #8
 800082a:	46bd      	mov	sp, r7
 800082c:	bd80      	pop	{r7, pc}

0800082e <serial_r_c>:

char serial_r_c(uint8_t usart) {
 800082e:	b580      	push	{r7, lr}
 8000830:	b084      	sub	sp, #16
 8000832:	af00      	add	r7, sp, #0
 8000834:	4603      	mov	r3, r0
 8000836:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 8000838:	79fb      	ldrb	r3, [r7, #7]
 800083a:	4618      	mov	r0, r3
 800083c:	f7ff ff68 	bl	8000710 <get_usart>
 8000840:	60f8      	str	r0, [r7, #12]
    while(!(serial->sr & RXNE));
 8000842:	bf00      	nop
 8000844:	68fb      	ldr	r3, [r7, #12]
 8000846:	681b      	ldr	r3, [r3, #0]
 8000848:	f003 0320 	and.w	r3, r3, #32
 800084c:	2b00      	cmp	r3, #0
 800084e:	d0f9      	beq.n	8000844 <serial_r_c+0x16>
    return (char)(serial->data & DATA_MASK);
 8000850:	68fb      	ldr	r3, [r7, #12]
 8000852:	685b      	ldr	r3, [r3, #4]
 8000854:	b2db      	uxtb	r3, r3
}
 8000856:	4618      	mov	r0, r3
 8000858:	3710      	adds	r7, #16
 800085a:	46bd      	mov	sp, r7
 800085c:	bd80      	pop	{r7, pc}

0800085e <serial_r_s>:

char *serial_r_s(uint8_t usart, char *buffer) {
 800085e:	b590      	push	{r4, r7, lr}
 8000860:	b083      	sub	sp, #12
 8000862:	af00      	add	r7, sp, #0
 8000864:	4603      	mov	r3, r0
 8000866:	6039      	str	r1, [r7, #0]
 8000868:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 800086a:	e008      	b.n	800087e <serial_r_s+0x20>
        *buffer++ = serial_r_c(usart);
 800086c:	683c      	ldr	r4, [r7, #0]
 800086e:	1c63      	adds	r3, r4, #1
 8000870:	603b      	str	r3, [r7, #0]
 8000872:	79fb      	ldrb	r3, [r7, #7]
 8000874:	4618      	mov	r0, r3
 8000876:	f7ff ffda 	bl	800082e <serial_r_c>
 800087a:	4603      	mov	r3, r0
 800087c:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 800087e:	683b      	ldr	r3, [r7, #0]
 8000880:	781b      	ldrb	r3, [r3, #0]
 8000882:	2b00      	cmp	r3, #0
 8000884:	d1f2      	bne.n	800086c <serial_r_s+0xe>
    }
    return buffer;
 8000886:	683b      	ldr	r3, [r7, #0]
}
 8000888:	4618      	mov	r0, r3
 800088a:	370c      	adds	r7, #12
 800088c:	46bd      	mov	sp, r7
 800088e:	bd90      	pop	{r4, r7, pc}

08000890 <__enable_irq>:
#include "intrinsic.h"

// enable interrupt
void __enable_irq(void) {
 8000890:	b480      	push	{r7}
 8000892:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsie i" ::: "memory");
 8000894:	b662      	cpsie	i
}
 8000896:	bf00      	nop
 8000898:	46bd      	mov	sp, r7
 800089a:	bc80      	pop	{r7}
 800089c:	4770      	bx	lr

0800089e <__disable_irq>:

// disable interrupt
void __disable_irq(void) {
 800089e:	b480      	push	{r7}
 80008a0:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsid i" ::: "memory");
 80008a2:	b672      	cpsid	i
}
 80008a4:	bf00      	nop
 80008a6:	46bd      	mov	sp, r7
 80008a8:	bc80      	pop	{r7}
 80008aa:	4770      	bx	lr

080008ac <__NOP>:

// no operation
void __NOP(void) {
 80008ac:	b480      	push	{r7}
 80008ae:	af00      	add	r7, sp, #0
    __ASM volatile ("nop");
 80008b0:	bf00      	nop
}
 80008b2:	bf00      	nop
 80008b4:	46bd      	mov	sp, r7
 80008b6:	bc80      	pop	{r7}
 80008b8:	4770      	bx	lr
