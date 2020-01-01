
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <_reset-0x150>:
 8000000:	20005000 	.word	0x20005000
 8000004:	08000151 	.word	0x08000151
 8000008:	00000000 	.word	0x00000000
 800000c:	08000741 	.word	0x08000741
 8000010:	0800074d 	.word	0x0800074d
 8000014:	08000759 	.word	0x08000759
 8000018:	08000765 	.word	0x08000765
	...
 800003c:	08000535 	.word	0x08000535
	...
 80000b0:	080001d5 	.word	0x080001d5
 80000b4:	080001ed 	.word	0x080001ed
 80000b8:	08000209 	.word	0x08000209
	...
 8000108:	08000221 	.word	0x08000221
	...
 8000118:	08000239 	.word	0x08000239
 800011c:	08000251 	.word	0x08000251
	...

08000150 <_reset>:
 8000150:	f000 fb0e 	bl	8000770 <main>
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
 80001bc:	08000a18 	.word	0x08000a18
 80001c0:	08000a1c 	.word	0x08000a1c
 80001c4:	08000a20 	.word	0x08000a20
 80001c8:	08000a24 	.word	0x08000a24
 80001cc:	08000a28 	.word	0x08000a28
 80001d0:	08000a2c 	.word	0x08000a2c

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
 80001e8:	08000a18 	.word	0x08000a18

080001ec <Timer3_Handler>:

void Timer3_Handler(void) {
 80001ec:	b580      	push	{r7, lr}
 80001ee:	af00      	add	r7, sp, #0
    tim3->sr = 0U; // reset interrupt
 80001f0:	4b04      	ldr	r3, [pc, #16]	; (8000204 <Timer3_Handler+0x18>)
 80001f2:	681b      	ldr	r3, [r3, #0]
 80001f4:	2200      	movs	r2, #0
 80001f6:	611a      	str	r2, [r3, #16]
    led_toggle(PA7);
 80001f8:	2007      	movs	r0, #7
 80001fa:	f000 f92f 	bl	800045c <led_toggle>
}
 80001fe:	bf00      	nop
 8000200:	bd80      	pop	{r7, pc}
 8000202:	bf00      	nop
 8000204:	08000a1c 	.word	0x08000a1c

08000208 <Timer4_Handler>:

void Timer4_Handler(void) {
 8000208:	b480      	push	{r7}
 800020a:	af00      	add	r7, sp, #0
    tim4->sr = 0U; // reset interrupt
 800020c:	4b03      	ldr	r3, [pc, #12]	; (800021c <Timer4_Handler+0x14>)
 800020e:	681b      	ldr	r3, [r3, #0]
 8000210:	2200      	movs	r2, #0
 8000212:	611a      	str	r2, [r3, #16]
}
 8000214:	bf00      	nop
 8000216:	46bd      	mov	sp, r7
 8000218:	bc80      	pop	{r7}
 800021a:	4770      	bx	lr
 800021c:	08000a20 	.word	0x08000a20

08000220 <Timer5_Handler>:

void Timer5_Handler(void) {
 8000220:	b480      	push	{r7}
 8000222:	af00      	add	r7, sp, #0
    tim5->sr = 0U; // reset interrupt
 8000224:	4b03      	ldr	r3, [pc, #12]	; (8000234 <Timer5_Handler+0x14>)
 8000226:	681b      	ldr	r3, [r3, #0]
 8000228:	2200      	movs	r2, #0
 800022a:	611a      	str	r2, [r3, #16]
}
 800022c:	bf00      	nop
 800022e:	46bd      	mov	sp, r7
 8000230:	bc80      	pop	{r7}
 8000232:	4770      	bx	lr
 8000234:	08000a24 	.word	0x08000a24

08000238 <Timer6_Handler>:

void Timer6_Handler(void) {
 8000238:	b480      	push	{r7}
 800023a:	af00      	add	r7, sp, #0
    tim6->sr = 0U; // reset interrupt
 800023c:	4b03      	ldr	r3, [pc, #12]	; (800024c <Timer6_Handler+0x14>)
 800023e:	681b      	ldr	r3, [r3, #0]
 8000240:	2200      	movs	r2, #0
 8000242:	611a      	str	r2, [r3, #16]
}
 8000244:	bf00      	nop
 8000246:	46bd      	mov	sp, r7
 8000248:	bc80      	pop	{r7}
 800024a:	4770      	bx	lr
 800024c:	08000a28 	.word	0x08000a28

08000250 <Timer7_Handler>:

void Timer7_Handler(void) {
 8000250:	b480      	push	{r7}
 8000252:	af00      	add	r7, sp, #0
    tim7->sr = 0U; // reset interrupt
 8000254:	4b03      	ldr	r3, [pc, #12]	; (8000264 <Timer7_Handler+0x14>)
 8000256:	681b      	ldr	r3, [r3, #0]
 8000258:	2200      	movs	r2, #0
 800025a:	611a      	str	r2, [r3, #16]
}
 800025c:	bf00      	nop
 800025e:	46bd      	mov	sp, r7
 8000260:	bc80      	pop	{r7}
 8000262:	4770      	bx	lr
 8000264:	08000a2c 	.word	0x08000a2c

08000268 <get_timer_cnt>:

uint32_t get_timer_cnt(uint8_t timer) {
 8000268:	b580      	push	{r7, lr}
 800026a:	b084      	sub	sp, #16
 800026c:	af00      	add	r7, sp, #0
 800026e:	4603      	mov	r3, r0
 8000270:	71fb      	strb	r3, [r7, #7]
    timer_t *tim = get_timer(timer);
 8000272:	79fb      	ldrb	r3, [r7, #7]
 8000274:	4618      	mov	r0, r3
 8000276:	f7ff ff6f 	bl	8000158 <get_timer>
 800027a:	60f8      	str	r0, [r7, #12]
    return tim->cnt;
 800027c:	68fb      	ldr	r3, [r7, #12]
 800027e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
}
 8000280:	4618      	mov	r0, r3
 8000282:	3710      	adds	r7, #16
 8000284:	46bd      	mov	sp, r7
 8000286:	bd80      	pop	{r7, pc}

08000288 <enable_chan>:

void enable_chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load) {
 8000288:	b580      	push	{r7, lr}
 800028a:	b086      	sub	sp, #24
 800028c:	af00      	add	r7, sp, #0
 800028e:	603b      	str	r3, [r7, #0]
 8000290:	4603      	mov	r3, r0
 8000292:	71fb      	strb	r3, [r7, #7]
 8000294:	460b      	mov	r3, r1
 8000296:	71bb      	strb	r3, [r7, #6]
 8000298:	4613      	mov	r3, r2
 800029a:	717b      	strb	r3, [r7, #5]
    timer_t *tim = get_timer(timer);
 800029c:	79fb      	ldrb	r3, [r7, #7]
 800029e:	4618      	mov	r0, r3
 80002a0:	f7ff ff5a 	bl	8000158 <get_timer>
 80002a4:	6178      	str	r0, [r7, #20]
    tim->ccr[channel] = load;
 80002a6:	797b      	ldrb	r3, [r7, #5]
 80002a8:	697a      	ldr	r2, [r7, #20]
 80002aa:	330c      	adds	r3, #12
 80002ac:	009b      	lsls	r3, r3, #2
 80002ae:	4413      	add	r3, r2
 80002b0:	683a      	ldr	r2, [r7, #0]
 80002b2:	605a      	str	r2, [r3, #4]

    uint8_t shift_by;
    uint32_t config;

    shift_by = channel * 4;
 80002b4:	797b      	ldrb	r3, [r7, #5]
 80002b6:	009b      	lsls	r3, r3, #2
 80002b8:	74fb      	strb	r3, [r7, #19]
    config = tim->ccer & ~(0xf << shift_by);
 80002ba:	697b      	ldr	r3, [r7, #20]
 80002bc:	6a1b      	ldr	r3, [r3, #32]
 80002be:	7cfa      	ldrb	r2, [r7, #19]
 80002c0:	210f      	movs	r1, #15
 80002c2:	fa01 f202 	lsl.w	r2, r1, r2
 80002c6:	43d2      	mvns	r2, r2
 80002c8:	4013      	ands	r3, r2
 80002ca:	60fb      	str	r3, [r7, #12]
    tim->ccer = (config | (1 << shift_by)); // enable output
 80002cc:	7cfb      	ldrb	r3, [r7, #19]
 80002ce:	2201      	movs	r2, #1
 80002d0:	fa02 f303 	lsl.w	r3, r2, r3
 80002d4:	461a      	mov	r2, r3
 80002d6:	68fb      	ldr	r3, [r7, #12]
 80002d8:	431a      	orrs	r2, r3
 80002da:	697b      	ldr	r3, [r7, #20]
 80002dc:	621a      	str	r2, [r3, #32]

    // output compare mode //
    shift_by = (channel % 2) * 8;
 80002de:	797b      	ldrb	r3, [r7, #5]
 80002e0:	f003 0301 	and.w	r3, r3, #1
 80002e4:	b2db      	uxtb	r3, r3
 80002e6:	00db      	lsls	r3, r3, #3
 80002e8:	74fb      	strb	r3, [r7, #19]
    uint8_t mr_idx = channel / 2;
 80002ea:	797b      	ldrb	r3, [r7, #5]
 80002ec:	085b      	lsrs	r3, r3, #1
 80002ee:	72fb      	strb	r3, [r7, #11]
    config = tim->ccmr[mr_idx] & ~(0xff << shift_by);
 80002f0:	7afa      	ldrb	r2, [r7, #11]
 80002f2:	697b      	ldr	r3, [r7, #20]
 80002f4:	3206      	adds	r2, #6
 80002f6:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80002fa:	7cfa      	ldrb	r2, [r7, #19]
 80002fc:	21ff      	movs	r1, #255	; 0xff
 80002fe:	fa01 f202 	lsl.w	r2, r1, r2
 8000302:	43d2      	mvns	r2, r2
 8000304:	4013      	ands	r3, r2
 8000306:	60fb      	str	r3, [r7, #12]
    tim->ccmr[mr_idx] = (config | (mode << shift_by));
 8000308:	79ba      	ldrb	r2, [r7, #6]
 800030a:	7cfb      	ldrb	r3, [r7, #19]
 800030c:	fa02 f303 	lsl.w	r3, r2, r3
 8000310:	4619      	mov	r1, r3
 8000312:	7afa      	ldrb	r2, [r7, #11]
 8000314:	68fb      	ldr	r3, [r7, #12]
 8000316:	4319      	orrs	r1, r3
 8000318:	697b      	ldr	r3, [r7, #20]
 800031a:	3206      	adds	r2, #6
 800031c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 8000320:	bf00      	nop
 8000322:	3718      	adds	r7, #24
 8000324:	46bd      	mov	sp, r7
 8000326:	bd80      	pop	{r7, pc}

08000328 <timer_init>:

void timer_init(uint8_t timer, uint32_t prescaler, uint32_t period) {
 8000328:	b580      	push	{r7, lr}
 800032a:	b086      	sub	sp, #24
 800032c:	af00      	add	r7, sp, #0
 800032e:	4603      	mov	r3, r0
 8000330:	60b9      	str	r1, [r7, #8]
 8000332:	607a      	str	r2, [r7, #4]
 8000334:	73fb      	strb	r3, [r7, #15]
    timer_t *tim = get_timer(timer);
 8000336:	7bfb      	ldrb	r3, [r7, #15]
 8000338:	4618      	mov	r0, r3
 800033a:	f7ff ff0d 	bl	8000158 <get_timer>
 800033e:	6178      	str	r0, [r7, #20]

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->psc = PCLK2 / prescaler - 1U; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
 8000340:	4a0d      	ldr	r2, [pc, #52]	; (8000378 <timer_init+0x50>)
 8000342:	68bb      	ldr	r3, [r7, #8]
 8000344:	fbb2 f3f3 	udiv	r3, r2, r3
 8000348:	1e5a      	subs	r2, r3, #1
 800034a:	697b      	ldr	r3, [r7, #20]
 800034c:	629a      	str	r2, [r3, #40]	; 0x28
    tim->arr = period - 1U; // "period" of timer - updates every time cnt reaches arr
 800034e:	687b      	ldr	r3, [r7, #4]
 8000350:	1e5a      	subs	r2, r3, #1
 8000352:	697b      	ldr	r3, [r7, #20]
 8000354:	62da      	str	r2, [r3, #44]	; 0x2c

    tim->dier = 1U;
 8000356:	697b      	ldr	r3, [r7, #20]
 8000358:	2201      	movs	r2, #1
 800035a:	60da      	str	r2, [r3, #12]

    nvic_enable(TIM_IRQ_START_POS + (timer-2));
 800035c:	7bfb      	ldrb	r3, [r7, #15]
 800035e:	331a      	adds	r3, #26
 8000360:	b2db      	uxtb	r3, r3
 8000362:	4618      	mov	r0, r3
 8000364:	f000 f80a 	bl	800037c <nvic_enable>

    // enable counter //
    tim->cr[0] = 1U;
 8000368:	697b      	ldr	r3, [r7, #20]
 800036a:	2201      	movs	r2, #1
 800036c:	601a      	str	r2, [r3, #0]
}
 800036e:	bf00      	nop
 8000370:	3718      	adds	r7, #24
 8000372:	46bd      	mov	sp, r7
 8000374:	bd80      	pop	{r7, pc}
 8000376:	bf00      	nop
 8000378:	044aa200 	.word	0x044aa200

0800037c <nvic_enable>:
#include "nvic.h"

nvic_t *nvic = (nvic_t *)(NVIC_BASE);

void nvic_enable(uint8_t irq_pos) {
 800037c:	b480      	push	{r7}
 800037e:	b085      	sub	sp, #20
 8000380:	af00      	add	r7, sp, #0
 8000382:	4603      	mov	r3, r0
 8000384:	71fb      	strb	r3, [r7, #7]
	uint8_t idx = irq_pos / 32;
 8000386:	79fb      	ldrb	r3, [r7, #7]
 8000388:	095b      	lsrs	r3, r3, #5
 800038a:	73fb      	strb	r3, [r7, #15]
	uint8_t shift_by = irq_pos % 32;
 800038c:	79fb      	ldrb	r3, [r7, #7]
 800038e:	f003 031f 	and.w	r3, r3, #31
 8000392:	73bb      	strb	r3, [r7, #14]
	nvic->iser[idx] = (1 << shift_by);
 8000394:	7bbb      	ldrb	r3, [r7, #14]
 8000396:	2201      	movs	r2, #1
 8000398:	fa02 f103 	lsl.w	r1, r2, r3
 800039c:	4b04      	ldr	r3, [pc, #16]	; (80003b0 <nvic_enable+0x34>)
 800039e:	681b      	ldr	r3, [r3, #0]
 80003a0:	7bfa      	ldrb	r2, [r7, #15]
 80003a2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 80003a6:	bf00      	nop
 80003a8:	3714      	adds	r7, #20
 80003aa:	46bd      	mov	sp, r7
 80003ac:	bc80      	pop	{r7}
 80003ae:	4770      	bx	lr
 80003b0:	08000a30 	.word	0x08000a30

080003b4 <get_gpio>:

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

gpio_t *get_gpio(uint8_t pin) {
 80003b4:	b480      	push	{r7}
 80003b6:	b083      	sub	sp, #12
 80003b8:	af00      	add	r7, sp, #0
 80003ba:	4603      	mov	r3, r0
 80003bc:	71fb      	strb	r3, [r7, #7]
    switch(pin >> 4) {
 80003be:	79fb      	ldrb	r3, [r7, #7]
 80003c0:	091b      	lsrs	r3, r3, #4
 80003c2:	b2db      	uxtb	r3, r3
 80003c4:	2b00      	cmp	r3, #0
 80003c6:	d002      	beq.n	80003ce <get_gpio+0x1a>
 80003c8:	2b01      	cmp	r3, #1
 80003ca:	d003      	beq.n	80003d4 <get_gpio+0x20>
 80003cc:	e005      	b.n	80003da <get_gpio+0x26>
        case 0: return gpio_a;
 80003ce:	4b06      	ldr	r3, [pc, #24]	; (80003e8 <get_gpio+0x34>)
 80003d0:	681b      	ldr	r3, [r3, #0]
 80003d2:	e004      	b.n	80003de <get_gpio+0x2a>
        case 1: return gpio_b;
 80003d4:	4b05      	ldr	r3, [pc, #20]	; (80003ec <get_gpio+0x38>)
 80003d6:	681b      	ldr	r3, [r3, #0]
 80003d8:	e001      	b.n	80003de <get_gpio+0x2a>
        // case 2: return gpio_c;
        default: return gpio_c;
 80003da:	4b05      	ldr	r3, [pc, #20]	; (80003f0 <get_gpio+0x3c>)
 80003dc:	681b      	ldr	r3, [r3, #0]
    }
}
 80003de:	4618      	mov	r0, r3
 80003e0:	370c      	adds	r7, #12
 80003e2:	46bd      	mov	sp, r7
 80003e4:	bc80      	pop	{r7}
 80003e6:	4770      	bx	lr
 80003e8:	08000a34 	.word	0x08000a34
 80003ec:	08000a38 	.word	0x08000a38
 80003f0:	08000a3c 	.word	0x08000a3c

080003f4 <pin_mode>:

void pin_mode(uint8_t pin, uint8_t mode) {
 80003f4:	b580      	push	{r7, lr}
 80003f6:	b086      	sub	sp, #24
 80003f8:	af00      	add	r7, sp, #0
 80003fa:	4603      	mov	r3, r0
 80003fc:	460a      	mov	r2, r1
 80003fe:	71fb      	strb	r3, [r7, #7]
 8000400:	4613      	mov	r3, r2
 8000402:	71bb      	strb	r3, [r7, #6]
    gpio_t *gpio = get_gpio(pin);
 8000404:	79fb      	ldrb	r3, [r7, #7]
 8000406:	4618      	mov	r0, r3
 8000408:	f7ff ffd4 	bl	80003b4 <get_gpio>
 800040c:	6178      	str	r0, [r7, #20]
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
 800040e:	79fb      	ldrb	r3, [r7, #7]
 8000410:	f003 030f 	and.w	r3, r3, #15
 8000414:	74fb      	strb	r3, [r7, #19]
    uint8_t shift_by = (bit % 8) * 4;
 8000416:	7cfb      	ldrb	r3, [r7, #19]
 8000418:	f003 0307 	and.w	r3, r3, #7
 800041c:	b2db      	uxtb	r3, r3
 800041e:	009b      	lsls	r3, r3, #2
 8000420:	74bb      	strb	r3, [r7, #18]
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
 8000422:	7cfb      	ldrb	r3, [r7, #19]
 8000424:	08db      	lsrs	r3, r3, #3
 8000426:	747b      	strb	r3, [r7, #17]
    uint32_t config = gpio->cr[reg_idx] & ~(0xf << shift_by);
 8000428:	7c7a      	ldrb	r2, [r7, #17]
 800042a:	697b      	ldr	r3, [r7, #20]
 800042c:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000430:	7cba      	ldrb	r2, [r7, #18]
 8000432:	210f      	movs	r1, #15
 8000434:	fa01 f202 	lsl.w	r2, r1, r2
 8000438:	43d2      	mvns	r2, r2
 800043a:	4013      	ands	r3, r2
 800043c:	60fb      	str	r3, [r7, #12]
    gpio->cr[reg_idx] = (config | (mode << shift_by));
 800043e:	79ba      	ldrb	r2, [r7, #6]
 8000440:	7cbb      	ldrb	r3, [r7, #18]
 8000442:	fa02 f303 	lsl.w	r3, r2, r3
 8000446:	4619      	mov	r1, r3
 8000448:	7c7a      	ldrb	r2, [r7, #17]
 800044a:	68fb      	ldr	r3, [r7, #12]
 800044c:	4319      	orrs	r1, r3
 800044e:	697b      	ldr	r3, [r7, #20]
 8000450:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 8000454:	bf00      	nop
 8000456:	3718      	adds	r7, #24
 8000458:	46bd      	mov	sp, r7
 800045a:	bd80      	pop	{r7, pc}

0800045c <led_toggle>:

void led_toggle(uint8_t pin) {
 800045c:	b580      	push	{r7, lr}
 800045e:	b084      	sub	sp, #16
 8000460:	af00      	add	r7, sp, #0
 8000462:	4603      	mov	r3, r0
 8000464:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 8000466:	79fb      	ldrb	r3, [r7, #7]
 8000468:	4618      	mov	r0, r3
 800046a:	f7ff ffa3 	bl	80003b4 <get_gpio>
 800046e:	60f8      	str	r0, [r7, #12]
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
 8000470:	68fb      	ldr	r3, [r7, #12]
 8000472:	68db      	ldr	r3, [r3, #12]
 8000474:	79fa      	ldrb	r2, [r7, #7]
 8000476:	f002 020f 	and.w	r2, r2, #15
 800047a:	2101      	movs	r1, #1
 800047c:	fa01 f202 	lsl.w	r2, r1, r2
 8000480:	405a      	eors	r2, r3
 8000482:	68fb      	ldr	r3, [r7, #12]
 8000484:	60da      	str	r2, [r3, #12]
}
 8000486:	bf00      	nop
 8000488:	3710      	adds	r7, #16
 800048a:	46bd      	mov	sp, r7
 800048c:	bd80      	pop	{r7, pc}

0800048e <led_on>:

void led_on(uint8_t pin) {
 800048e:	b580      	push	{r7, lr}
 8000490:	b084      	sub	sp, #16
 8000492:	af00      	add	r7, sp, #0
 8000494:	4603      	mov	r3, r0
 8000496:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 8000498:	79fb      	ldrb	r3, [r7, #7]
 800049a:	4618      	mov	r0, r3
 800049c:	f7ff ff8a 	bl	80003b4 <get_gpio>
 80004a0:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 80004a2:	79fb      	ldrb	r3, [r7, #7]
 80004a4:	2b2d      	cmp	r3, #45	; 0x2d
 80004a6:	d10c      	bne.n	80004c2 <led_on+0x34>
 80004a8:	68fb      	ldr	r3, [r7, #12]
 80004aa:	68db      	ldr	r3, [r3, #12]
 80004ac:	79fa      	ldrb	r2, [r7, #7]
 80004ae:	f002 020f 	and.w	r2, r2, #15
 80004b2:	2101      	movs	r1, #1
 80004b4:	fa01 f202 	lsl.w	r2, r1, r2
 80004b8:	43d2      	mvns	r2, r2
 80004ba:	401a      	ands	r2, r3
 80004bc:	68fb      	ldr	r3, [r7, #12]
 80004be:	60da      	str	r2, [r3, #12]
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}
 80004c0:	e00a      	b.n	80004d8 <led_on+0x4a>
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
 80004c2:	68fb      	ldr	r3, [r7, #12]
 80004c4:	68db      	ldr	r3, [r3, #12]
 80004c6:	79fa      	ldrb	r2, [r7, #7]
 80004c8:	f002 020f 	and.w	r2, r2, #15
 80004cc:	2101      	movs	r1, #1
 80004ce:	fa01 f202 	lsl.w	r2, r1, r2
 80004d2:	431a      	orrs	r2, r3
 80004d4:	68fb      	ldr	r3, [r7, #12]
 80004d6:	60da      	str	r2, [r3, #12]
}
 80004d8:	bf00      	nop
 80004da:	3710      	adds	r7, #16
 80004dc:	46bd      	mov	sp, r7
 80004de:	bd80      	pop	{r7, pc}

080004e0 <led_off>:

void led_off(uint8_t pin) {
 80004e0:	b580      	push	{r7, lr}
 80004e2:	b084      	sub	sp, #16
 80004e4:	af00      	add	r7, sp, #0
 80004e6:	4603      	mov	r3, r0
 80004e8:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 80004ea:	79fb      	ldrb	r3, [r7, #7]
 80004ec:	4618      	mov	r0, r3
 80004ee:	f7ff ff61 	bl	80003b4 <get_gpio>
 80004f2:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
 80004f4:	79fb      	ldrb	r3, [r7, #7]
 80004f6:	2b2d      	cmp	r3, #45	; 0x2d
 80004f8:	d10b      	bne.n	8000512 <led_off+0x32>
 80004fa:	68fb      	ldr	r3, [r7, #12]
 80004fc:	68db      	ldr	r3, [r3, #12]
 80004fe:	79fa      	ldrb	r2, [r7, #7]
 8000500:	f002 020f 	and.w	r2, r2, #15
 8000504:	2101      	movs	r1, #1
 8000506:	fa01 f202 	lsl.w	r2, r1, r2
 800050a:	431a      	orrs	r2, r3
 800050c:	68fb      	ldr	r3, [r7, #12]
 800050e:	60da      	str	r2, [r3, #12]
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
 8000510:	e00b      	b.n	800052a <led_off+0x4a>
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 8000512:	68fb      	ldr	r3, [r7, #12]
 8000514:	68db      	ldr	r3, [r3, #12]
 8000516:	79fa      	ldrb	r2, [r7, #7]
 8000518:	f002 020f 	and.w	r2, r2, #15
 800051c:	2101      	movs	r1, #1
 800051e:	fa01 f202 	lsl.w	r2, r1, r2
 8000522:	43d2      	mvns	r2, r2
 8000524:	401a      	ands	r2, r3
 8000526:	68fb      	ldr	r3, [r7, #12]
 8000528:	60da      	str	r2, [r3, #12]
}
 800052a:	bf00      	nop
 800052c:	3710      	adds	r7, #16
 800052e:	46bd      	mov	sp, r7
 8000530:	bd80      	pop	{r7, pc}
 8000532:	bf00      	nop

08000534 <Systick_Handler>:
#include "systick.h"

systick_t *systick = (systick_t *)(SYSTICK_BASE);

uint32_t __IO cnt = 0;
void Systick_Handler(void) {
 8000534:	b480      	push	{r7}
 8000536:	af00      	add	r7, sp, #0
    cnt++;
 8000538:	4b04      	ldr	r3, [pc, #16]	; (800054c <Systick_Handler+0x18>)
 800053a:	681b      	ldr	r3, [r3, #0]
 800053c:	3301      	adds	r3, #1
 800053e:	4a03      	ldr	r2, [pc, #12]	; (800054c <Systick_Handler+0x18>)
 8000540:	6013      	str	r3, [r2, #0]
}
 8000542:	bf00      	nop
 8000544:	46bd      	mov	sp, r7
 8000546:	bc80      	pop	{r7}
 8000548:	4770      	bx	lr
 800054a:	bf00      	nop
 800054c:	20000000 	.word	0x20000000

08000550 <systick_init>:

void systick_init(uint32_t reload_val) {
 8000550:	b480      	push	{r7}
 8000552:	b083      	sub	sp, #12
 8000554:	af00      	add	r7, sp, #0
 8000556:	6078      	str	r0, [r7, #4]
    systick->reload = PCLK2 / reload_val - 1U;
 8000558:	4a0b      	ldr	r2, [pc, #44]	; (8000588 <systick_init+0x38>)
 800055a:	687b      	ldr	r3, [r7, #4]
 800055c:	fbb2 f2f3 	udiv	r2, r2, r3
 8000560:	4b0a      	ldr	r3, [pc, #40]	; (800058c <systick_init+0x3c>)
 8000562:	681b      	ldr	r3, [r3, #0]
 8000564:	3a01      	subs	r2, #1
 8000566:	605a      	str	r2, [r3, #4]
    systick->val = 0U;
 8000568:	4b08      	ldr	r3, [pc, #32]	; (800058c <systick_init+0x3c>)
 800056a:	681b      	ldr	r3, [r3, #0]
 800056c:	2200      	movs	r2, #0
 800056e:	609a      	str	r2, [r3, #8]
    cnt = 0;
 8000570:	4b07      	ldr	r3, [pc, #28]	; (8000590 <systick_init+0x40>)
 8000572:	2200      	movs	r2, #0
 8000574:	601a      	str	r2, [r3, #0]
    systick->ctrl = (AHB_EN|TICKINT_EN|TICK_EN);
 8000576:	4b05      	ldr	r3, [pc, #20]	; (800058c <systick_init+0x3c>)
 8000578:	681b      	ldr	r3, [r3, #0]
 800057a:	2207      	movs	r2, #7
 800057c:	601a      	str	r2, [r3, #0]
}
 800057e:	bf00      	nop
 8000580:	370c      	adds	r7, #12
 8000582:	46bd      	mov	sp, r7
 8000584:	bc80      	pop	{r7}
 8000586:	4770      	bx	lr
 8000588:	044aa200 	.word	0x044aa200
 800058c:	08000a40 	.word	0x08000a40
 8000590:	20000000 	.word	0x20000000

08000594 <millis>:

uint32_t millis(void) {
 8000594:	b480      	push	{r7}
 8000596:	af00      	add	r7, sp, #0
    return cnt;
 8000598:	4b02      	ldr	r3, [pc, #8]	; (80005a4 <millis+0x10>)
 800059a:	681b      	ldr	r3, [r3, #0]
}
 800059c:	4618      	mov	r0, r3
 800059e:	46bd      	mov	sp, r7
 80005a0:	bc80      	pop	{r7}
 80005a2:	4770      	bx	lr
 80005a4:	20000000 	.word	0x20000000

080005a8 <delay>:
#include "delay.h"
#include "systick.h"

void delay(uint64_t __IO t) {
 80005a8:	b490      	push	{r4, r7}
 80005aa:	b084      	sub	sp, #16
 80005ac:	af00      	add	r7, sp, #0
 80005ae:	e9c7 0100 	strd	r0, r1, [r7]
    for (uint64_t __IO i = 0; i < t; i++);
 80005b2:	f04f 0300 	mov.w	r3, #0
 80005b6:	f04f 0400 	mov.w	r4, #0
 80005ba:	e9c7 3402 	strd	r3, r4, [r7, #8]
 80005be:	e006      	b.n	80005ce <delay+0x26>
 80005c0:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 80005c4:	1c4b      	adds	r3, r1, #1
 80005c6:	f142 0400 	adc.w	r4, r2, #0
 80005ca:	e9c7 3402 	strd	r3, r4, [r7, #8]
 80005ce:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 80005d2:	e9d7 3400 	ldrd	r3, r4, [r7]
 80005d6:	42a2      	cmp	r2, r4
 80005d8:	bf08      	it	eq
 80005da:	4299      	cmpeq	r1, r3
 80005dc:	d3f0      	bcc.n	80005c0 <delay+0x18>
}
 80005de:	bf00      	nop
 80005e0:	3710      	adds	r7, #16
 80005e2:	46bd      	mov	sp, r7
 80005e4:	bc90      	pop	{r4, r7}
 80005e6:	4770      	bx	lr

080005e8 <systick_delay>:

void systick_delay(uint64_t __IO t) {
 80005e8:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 80005ec:	b084      	sub	sp, #16
 80005ee:	af00      	add	r7, sp, #0
 80005f0:	e9c7 0100 	strd	r0, r1, [r7]
    uint64_t start_t = millis();
 80005f4:	f7ff ffce 	bl	8000594 <millis>
 80005f8:	4603      	mov	r3, r0
 80005fa:	f04f 0400 	mov.w	r4, #0
 80005fe:	e9c7 3402 	strd	r3, r4, [r7, #8]
    while(millis() - start_t < t);
 8000602:	bf00      	nop
 8000604:	f7ff ffc6 	bl	8000594 <millis>
 8000608:	4603      	mov	r3, r0
 800060a:	469b      	mov	fp, r3
 800060c:	f04f 0c00 	mov.w	ip, #0
 8000610:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000614:	4659      	mov	r1, fp
 8000616:	4662      	mov	r2, ip
 8000618:	1ac9      	subs	r1, r1, r3
 800061a:	eb62 0204 	sbc.w	r2, r2, r4
 800061e:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000622:	42a2      	cmp	r2, r4
 8000624:	bf08      	it	eq
 8000626:	4299      	cmpeq	r1, r3
 8000628:	d3ec      	bcc.n	8000604 <systick_delay+0x1c>
}
 800062a:	bf00      	nop
 800062c:	3710      	adds	r7, #16
 800062e:	46bd      	mov	sp, r7
 8000630:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}

08000634 <rcc_init>:
#include "rcc.h"
#include "flash_acr.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(uint32_t tim_en, uint32_t gpio_en, uint32_t usart_en) {
 8000634:	b480      	push	{r7}
 8000636:	b085      	sub	sp, #20
 8000638:	af00      	add	r7, sp, #0
 800063a:	60f8      	str	r0, [r7, #12]
 800063c:	60b9      	str	r1, [r7, #8]
 800063e:	607a      	str	r2, [r7, #4]
    // switch to 72Mhz clock //
    flash->acr |= LATENCY_2;
 8000640:	4b2f      	ldr	r3, [pc, #188]	; (8000700 <rcc_init+0xcc>)
 8000642:	681b      	ldr	r3, [r3, #0]
 8000644:	681a      	ldr	r2, [r3, #0]
 8000646:	4b2e      	ldr	r3, [pc, #184]	; (8000700 <rcc_init+0xcc>)
 8000648:	681b      	ldr	r3, [r3, #0]
 800064a:	f042 0202 	orr.w	r2, r2, #2
 800064e:	601a      	str	r2, [r3, #0]
    rcc->cfgr |= APB1_DIV2;
 8000650:	4b2c      	ldr	r3, [pc, #176]	; (8000704 <rcc_init+0xd0>)
 8000652:	681b      	ldr	r3, [r3, #0]
 8000654:	685a      	ldr	r2, [r3, #4]
 8000656:	4b2b      	ldr	r3, [pc, #172]	; (8000704 <rcc_init+0xd0>)
 8000658:	681b      	ldr	r3, [r3, #0]
 800065a:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800065e:	605a      	str	r2, [r3, #4]

    rcc->cr |= HSEON;
 8000660:	4b28      	ldr	r3, [pc, #160]	; (8000704 <rcc_init+0xd0>)
 8000662:	681b      	ldr	r3, [r3, #0]
 8000664:	681a      	ldr	r2, [r3, #0]
 8000666:	4b27      	ldr	r3, [pc, #156]	; (8000704 <rcc_init+0xd0>)
 8000668:	681b      	ldr	r3, [r3, #0]
 800066a:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800066e:	601a      	str	r2, [r3, #0]
    while(!(rcc->cr & HSERDY));
 8000670:	bf00      	nop
 8000672:	4b24      	ldr	r3, [pc, #144]	; (8000704 <rcc_init+0xd0>)
 8000674:	681b      	ldr	r3, [r3, #0]
 8000676:	681b      	ldr	r3, [r3, #0]
 8000678:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800067c:	2b00      	cmp	r3, #0
 800067e:	d0f8      	beq.n	8000672 <rcc_init+0x3e>

    rcc->cfgr |= (PLLHSE|PLL_9);
 8000680:	4b20      	ldr	r3, [pc, #128]	; (8000704 <rcc_init+0xd0>)
 8000682:	681b      	ldr	r3, [r3, #0]
 8000684:	685a      	ldr	r2, [r3, #4]
 8000686:	4b1f      	ldr	r3, [pc, #124]	; (8000704 <rcc_init+0xd0>)
 8000688:	681b      	ldr	r3, [r3, #0]
 800068a:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800068e:	605a      	str	r2, [r3, #4]
    rcc->cr |= PLLON;
 8000690:	4b1c      	ldr	r3, [pc, #112]	; (8000704 <rcc_init+0xd0>)
 8000692:	681b      	ldr	r3, [r3, #0]
 8000694:	681a      	ldr	r2, [r3, #0]
 8000696:	4b1b      	ldr	r3, [pc, #108]	; (8000704 <rcc_init+0xd0>)
 8000698:	681b      	ldr	r3, [r3, #0]
 800069a:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800069e:	601a      	str	r2, [r3, #0]
    while(!(rcc->cr & PLLRDY));
 80006a0:	bf00      	nop
 80006a2:	4b18      	ldr	r3, [pc, #96]	; (8000704 <rcc_init+0xd0>)
 80006a4:	681b      	ldr	r3, [r3, #0]
 80006a6:	681b      	ldr	r3, [r3, #0]
 80006a8:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80006ac:	2b00      	cmp	r3, #0
 80006ae:	d0f8      	beq.n	80006a2 <rcc_init+0x6e>

    rcc->cfgr |= SWPLL;
 80006b0:	4b14      	ldr	r3, [pc, #80]	; (8000704 <rcc_init+0xd0>)
 80006b2:	681b      	ldr	r3, [r3, #0]
 80006b4:	685a      	ldr	r2, [r3, #4]
 80006b6:	4b13      	ldr	r3, [pc, #76]	; (8000704 <rcc_init+0xd0>)
 80006b8:	681b      	ldr	r3, [r3, #0]
 80006ba:	f042 0202 	orr.w	r2, r2, #2
 80006be:	605a      	str	r2, [r3, #4]
    while(!(rcc->cfgr & SWSPLL));
 80006c0:	bf00      	nop
 80006c2:	4b10      	ldr	r3, [pc, #64]	; (8000704 <rcc_init+0xd0>)
 80006c4:	681b      	ldr	r3, [r3, #0]
 80006c6:	685b      	ldr	r3, [r3, #4]
 80006c8:	f003 0308 	and.w	r3, r3, #8
 80006cc:	2b00      	cmp	r3, #0
 80006ce:	d0f8      	beq.n	80006c2 <rcc_init+0x8e>

    rcc->apbe1 |= tim_en; // enable timers
 80006d0:	4b0c      	ldr	r3, [pc, #48]	; (8000704 <rcc_init+0xd0>)
 80006d2:	681b      	ldr	r3, [r3, #0]
 80006d4:	69d9      	ldr	r1, [r3, #28]
 80006d6:	4b0b      	ldr	r3, [pc, #44]	; (8000704 <rcc_init+0xd0>)
 80006d8:	681b      	ldr	r3, [r3, #0]
 80006da:	68fa      	ldr	r2, [r7, #12]
 80006dc:	430a      	orrs	r2, r1
 80006de:	61da      	str	r2, [r3, #28]
    rcc->apbe2 |= gpio_en | usart_en; // enable GPIO pins and USART
 80006e0:	4b08      	ldr	r3, [pc, #32]	; (8000704 <rcc_init+0xd0>)
 80006e2:	681b      	ldr	r3, [r3, #0]
 80006e4:	6999      	ldr	r1, [r3, #24]
 80006e6:	68ba      	ldr	r2, [r7, #8]
 80006e8:	687b      	ldr	r3, [r7, #4]
 80006ea:	431a      	orrs	r2, r3
 80006ec:	4b05      	ldr	r3, [pc, #20]	; (8000704 <rcc_init+0xd0>)
 80006ee:	681b      	ldr	r3, [r3, #0]
 80006f0:	430a      	orrs	r2, r1
 80006f2:	619a      	str	r2, [r3, #24]
}
 80006f4:	bf00      	nop
 80006f6:	3714      	adds	r7, #20
 80006f8:	46bd      	mov	sp, r7
 80006fa:	bc80      	pop	{r7}
 80006fc:	4770      	bx	lr
 80006fe:	bf00      	nop
 8000700:	08000a44 	.word	0x08000a44
 8000704:	08000a48 	.word	0x08000a48

08000708 <__DSB>:
#include "scb.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

static void __DSB(void) {
 8000708:	b480      	push	{r7}
 800070a:	af00      	add	r7, sp, #0
    asm("dsb 0xF" ::: "memory");
 800070c:	f3bf 8f4f 	dsb	sy
}
 8000710:	bf00      	nop
 8000712:	46bd      	mov	sp, r7
 8000714:	bc80      	pop	{r7}
 8000716:	4770      	bx	lr

08000718 <reset_system>:

static void reset_system(void) {
 8000718:	b580      	push	{r7, lr}
 800071a:	af00      	add	r7, sp, #0
    scb->aircr = (VECT_KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
 800071c:	4b06      	ldr	r3, [pc, #24]	; (8000738 <reset_system+0x20>)
 800071e:	681b      	ldr	r3, [r3, #0]
 8000720:	68db      	ldr	r3, [r3, #12]
 8000722:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 8000726:	4b04      	ldr	r3, [pc, #16]	; (8000738 <reset_system+0x20>)
 8000728:	681a      	ldr	r2, [r3, #0]
 800072a:	4b04      	ldr	r3, [pc, #16]	; (800073c <reset_system+0x24>)
 800072c:	430b      	orrs	r3, r1
 800072e:	60d3      	str	r3, [r2, #12]
    __DSB(); // ensures the completion of memory accesses
 8000730:	f7ff ffea 	bl	8000708 <__DSB>
    while(1);
 8000734:	e7fe      	b.n	8000734 <reset_system+0x1c>
 8000736:	bf00      	nop
 8000738:	08000a4c 	.word	0x08000a4c
 800073c:	05fa0004 	.word	0x05fa0004

08000740 <HardFault_Handler>:
}

void HardFault_Handler(void) {
 8000740:	b580      	push	{r7, lr}
 8000742:	af00      	add	r7, sp, #0
    reset_system();
 8000744:	f7ff ffe8 	bl	8000718 <reset_system>
}
 8000748:	bf00      	nop
 800074a:	bd80      	pop	{r7, pc}

0800074c <MemManage_Handler>:

void MemManage_Handler(void) {
 800074c:	b580      	push	{r7, lr}
 800074e:	af00      	add	r7, sp, #0
    reset_system();
 8000750:	f7ff ffe2 	bl	8000718 <reset_system>
}
 8000754:	bf00      	nop
 8000756:	bd80      	pop	{r7, pc}

08000758 <BusFault_Handler>:

void BusFault_Handler(void) {
 8000758:	b580      	push	{r7, lr}
 800075a:	af00      	add	r7, sp, #0
    reset_system();
 800075c:	f7ff ffdc 	bl	8000718 <reset_system>
}
 8000760:	bf00      	nop
 8000762:	bd80      	pop	{r7, pc}

08000764 <UsageFault_Handler>:

void UsageFault_Handler(void) {
 8000764:	b580      	push	{r7, lr}
 8000766:	af00      	add	r7, sp, #0
    reset_system();
 8000768:	f7ff ffd6 	bl	8000718 <reset_system>
}
 800076c:	bf00      	nop
 800076e:	bd80      	pop	{r7, pc}

08000770 <main>:
#include "main.h"

#define STEP 10

int main(void) {
 8000770:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 8000774:	b086      	sub	sp, #24
 8000776:	af00      	add	r7, sp, #0
    rcc_init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, USART1_EN);
 8000778:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 800077c:	211c      	movs	r1, #28
 800077e:	2003      	movs	r0, #3
 8000780:	f7ff ff58 	bl	8000634 <rcc_init>

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 8000784:	2103      	movs	r1, #3
 8000786:	202d      	movs	r0, #45	; 0x2d
 8000788:	f7ff fe34 	bl	80003f4 <pin_mode>
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1
 800078c:	210b      	movs	r1, #11
 800078e:	2009      	movs	r0, #9
 8000790:	f7ff fe30 	bl	80003f4 <pin_mode>
    pin_mode(PA10, OUT_ALT_PUSH_PULL_50); // enable Rx pin for usart1
 8000794:	210b      	movs	r1, #11
 8000796:	200a      	movs	r0, #10
 8000798:	f7ff fe2c 	bl	80003f4 <pin_mode>

    timer_init(TIM3, 10000U, 10000U); // tim3 at 1MHz
 800079c:	f242 7210 	movw	r2, #10000	; 0x2710
 80007a0:	f242 7110 	movw	r1, #10000	; 0x2710
 80007a4:	2003      	movs	r0, #3
 80007a6:	f7ff fdbf 	bl	8000328 <timer_init>
    pin_mode(PA7, OUT_GP_PUSH_PULL_50);
 80007aa:	2103      	movs	r1, #3
 80007ac:	2007      	movs	r0, #7
 80007ae:	f7ff fe21 	bl	80003f4 <pin_mode>

    timer_init(TIM2, 10000U, 255U);
 80007b2:	22ff      	movs	r2, #255	; 0xff
 80007b4:	f242 7110 	movw	r1, #10000	; 0x2710
 80007b8:	2002      	movs	r0, #2
 80007ba:	f7ff fdb5 	bl	8000328 <timer_init>
    pin_mode(PA2, OUT_ALT_PUSH_PULL_50);
 80007be:	210b      	movs	r1, #11
 80007c0:	2002      	movs	r0, #2
 80007c2:	f7ff fe17 	bl	80003f4 <pin_mode>

    systick_init(1000U); // initialize systick at 1Hz
 80007c6:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80007ca:	f7ff fec1 	bl	8000550 <systick_init>

    uint8_t pwm = 0U;
 80007ce:	2300      	movs	r3, #0
 80007d0:	75fb      	strb	r3, [r7, #23]
    uint64_t start_t = millis();
 80007d2:	f7ff fedf 	bl	8000594 <millis>
 80007d6:	4603      	mov	r3, r0
 80007d8:	f04f 0400 	mov.w	r4, #0
 80007dc:	e9c7 3402 	strd	r3, r4, [r7, #8]
    bool up = true;
 80007e0:	2301      	movs	r3, #1
 80007e2:	71fb      	strb	r3, [r7, #7]

    while(1) {
        if (millis() - start_t > 1000U) {
 80007e4:	f7ff fed6 	bl	8000594 <millis>
 80007e8:	4603      	mov	r3, r0
 80007ea:	4619      	mov	r1, r3
 80007ec:	f04f 0200 	mov.w	r2, #0
 80007f0:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 80007f4:	1ac9      	subs	r1, r1, r3
 80007f6:	eb62 0204 	sbc.w	r2, r2, r4
 80007fa:	468b      	mov	fp, r1
 80007fc:	4694      	mov	ip, r2
 80007fe:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8000802:	f04f 0200 	mov.w	r2, #0
 8000806:	4562      	cmp	r2, ip
 8000808:	bf08      	it	eq
 800080a:	4559      	cmpeq	r1, fp
 800080c:	d2ea      	bcs.n	80007e4 <main+0x74>
            led_toggle(PC13);
 800080e:	202d      	movs	r0, #45	; 0x2d
 8000810:	f7ff fe24 	bl	800045c <led_toggle>
            start_t = millis();
 8000814:	f7ff febe 	bl	8000594 <millis>
 8000818:	4603      	mov	r3, r0
 800081a:	f04f 0400 	mov.w	r4, #0
 800081e:	e9c7 3402 	strd	r3, r4, [r7, #8]
            if (up) {
 8000822:	79fb      	ldrb	r3, [r7, #7]
 8000824:	2b00      	cmp	r3, #0
 8000826:	d003      	beq.n	8000830 <main+0xc0>
                pwm += STEP;
 8000828:	7dfb      	ldrb	r3, [r7, #23]
 800082a:	330a      	adds	r3, #10
 800082c:	75fb      	strb	r3, [r7, #23]
 800082e:	e002      	b.n	8000836 <main+0xc6>
            }
            else {
                pwm -= STEP;
 8000830:	7dfb      	ldrb	r3, [r7, #23]
 8000832:	3b0a      	subs	r3, #10
 8000834:	75fb      	strb	r3, [r7, #23]
            }

            if (pwm == 250 || pwm == 0) up = !up;
 8000836:	7dfb      	ldrb	r3, [r7, #23]
 8000838:	2bfa      	cmp	r3, #250	; 0xfa
 800083a:	d002      	beq.n	8000842 <main+0xd2>
 800083c:	7dfb      	ldrb	r3, [r7, #23]
 800083e:	2b00      	cmp	r3, #0
 8000840:	d10d      	bne.n	800085e <main+0xee>
 8000842:	79fb      	ldrb	r3, [r7, #7]
 8000844:	2b00      	cmp	r3, #0
 8000846:	bf14      	ite	ne
 8000848:	2301      	movne	r3, #1
 800084a:	2300      	moveq	r3, #0
 800084c:	b2db      	uxtb	r3, r3
 800084e:	f083 0301 	eor.w	r3, r3, #1
 8000852:	b2db      	uxtb	r3, r3
 8000854:	71fb      	strb	r3, [r7, #7]
 8000856:	79fb      	ldrb	r3, [r7, #7]
 8000858:	f003 0301 	and.w	r3, r3, #1
 800085c:	71fb      	strb	r3, [r7, #7]
            enable_chan(TIM2, PWM, CHAN3, pwm);
 800085e:	7dfb      	ldrb	r3, [r7, #23]
 8000860:	2202      	movs	r2, #2
 8000862:	2168      	movs	r1, #104	; 0x68
 8000864:	2002      	movs	r0, #2
 8000866:	f7ff fd0f 	bl	8000288 <enable_chan>
        if (millis() - start_t > 1000U) {
 800086a:	e7bb      	b.n	80007e4 <main+0x74>

0800086c <get_usart>:

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

usart_t *get_usart(uint8_t usart) {
 800086c:	b480      	push	{r7}
 800086e:	b083      	sub	sp, #12
 8000870:	af00      	add	r7, sp, #0
 8000872:	4603      	mov	r3, r0
 8000874:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 8000876:	79fb      	ldrb	r3, [r7, #7]
 8000878:	2b02      	cmp	r3, #2
 800087a:	d006      	beq.n	800088a <get_usart+0x1e>
 800087c:	2b03      	cmp	r3, #3
 800087e:	d007      	beq.n	8000890 <get_usart+0x24>
 8000880:	2b01      	cmp	r3, #1
 8000882:	d108      	bne.n	8000896 <get_usart+0x2a>
        case USART1: return usart1;
 8000884:	4b07      	ldr	r3, [pc, #28]	; (80008a4 <get_usart+0x38>)
 8000886:	681b      	ldr	r3, [r3, #0]
 8000888:	e007      	b.n	800089a <get_usart+0x2e>
        case USART2: return usart2;
 800088a:	4b07      	ldr	r3, [pc, #28]	; (80008a8 <get_usart+0x3c>)
 800088c:	681b      	ldr	r3, [r3, #0]
 800088e:	e004      	b.n	800089a <get_usart+0x2e>
        case USART3: return usart3;
 8000890:	4b06      	ldr	r3, [pc, #24]	; (80008ac <get_usart+0x40>)
 8000892:	681b      	ldr	r3, [r3, #0]
 8000894:	e001      	b.n	800089a <get_usart+0x2e>
        default: return usart1;
 8000896:	4b03      	ldr	r3, [pc, #12]	; (80008a4 <get_usart+0x38>)
 8000898:	681b      	ldr	r3, [r3, #0]
    }
}
 800089a:	4618      	mov	r0, r3
 800089c:	370c      	adds	r7, #12
 800089e:	46bd      	mov	sp, r7
 80008a0:	bc80      	pop	{r7}
 80008a2:	4770      	bx	lr
 80008a4:	08000a50 	.word	0x08000a50
 80008a8:	08000a54 	.word	0x08000a54
 80008ac:	08000a58 	.word	0x08000a58

080008b0 <init_serial>:

void init_serial(uint8_t usart, uint32_t baud) {
 80008b0:	b580      	push	{r7, lr}
 80008b2:	b084      	sub	sp, #16
 80008b4:	af00      	add	r7, sp, #0
 80008b6:	4603      	mov	r3, r0
 80008b8:	6039      	str	r1, [r7, #0]
 80008ba:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 80008bc:	79fb      	ldrb	r3, [r7, #7]
 80008be:	4618      	mov	r0, r3
 80008c0:	f7ff ffd4 	bl	800086c <get_usart>
 80008c4:	60f8      	str	r0, [r7, #12]
    serial->cr1 = (RE|TE|W_LEN_9|UE); // enable Tx/Rx, word length 9, usart
 80008c6:	68fb      	ldr	r3, [r7, #12]
 80008c8:	f243 020c 	movw	r2, #12300	; 0x300c
 80008cc:	60da      	str	r2, [r3, #12]
    serial->cr2 = 0;
 80008ce:	68fb      	ldr	r3, [r7, #12]
 80008d0:	2200      	movs	r2, #0
 80008d2:	611a      	str	r2, [r3, #16]
    serial->cr3 = 0;
 80008d4:	68fb      	ldr	r3, [r7, #12]
 80008d6:	2200      	movs	r2, #0
 80008d8:	615a      	str	r2, [r3, #20]
    serial->gtpr = 0;
 80008da:	68fb      	ldr	r3, [r7, #12]
 80008dc:	2200      	movs	r2, #0
 80008de:	619a      	str	r2, [r3, #24]
    serial->baud = PCLK2 / baud;
 80008e0:	4a04      	ldr	r2, [pc, #16]	; (80008f4 <init_serial+0x44>)
 80008e2:	683b      	ldr	r3, [r7, #0]
 80008e4:	fbb2 f2f3 	udiv	r2, r2, r3
 80008e8:	68fb      	ldr	r3, [r7, #12]
 80008ea:	609a      	str	r2, [r3, #8]
}
 80008ec:	bf00      	nop
 80008ee:	3710      	adds	r7, #16
 80008f0:	46bd      	mov	sp, r7
 80008f2:	bd80      	pop	{r7, pc}
 80008f4:	044aa200 	.word	0x044aa200

080008f8 <serial_wr_c>:

bool serial_wr_c(uint8_t usart, char c) {
 80008f8:	b580      	push	{r7, lr}
 80008fa:	b084      	sub	sp, #16
 80008fc:	af00      	add	r7, sp, #0
 80008fe:	4603      	mov	r3, r0
 8000900:	460a      	mov	r2, r1
 8000902:	71fb      	strb	r3, [r7, #7]
 8000904:	4613      	mov	r3, r2
 8000906:	71bb      	strb	r3, [r7, #6]
    usart_t *serial = get_usart(usart);
 8000908:	79fb      	ldrb	r3, [r7, #7]
 800090a:	4618      	mov	r0, r3
 800090c:	f7ff ffae 	bl	800086c <get_usart>
 8000910:	60f8      	str	r0, [r7, #12]
    serial->data = c;
 8000912:	79ba      	ldrb	r2, [r7, #6]
 8000914:	68fb      	ldr	r3, [r7, #12]
 8000916:	605a      	str	r2, [r3, #4]
    while(!(serial->sr & TC));
 8000918:	bf00      	nop
 800091a:	68fb      	ldr	r3, [r7, #12]
 800091c:	681b      	ldr	r3, [r3, #0]
 800091e:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000922:	2b00      	cmp	r3, #0
 8000924:	d0f9      	beq.n	800091a <serial_wr_c+0x22>
    return 1;
 8000926:	2301      	movs	r3, #1
}
 8000928:	4618      	mov	r0, r3
 800092a:	3710      	adds	r7, #16
 800092c:	46bd      	mov	sp, r7
 800092e:	bd80      	pop	{r7, pc}

08000930 <serial_wr_s>:

bool serial_wr_s(uint8_t usart, char *s, bool new_line) {
 8000930:	b580      	push	{r7, lr}
 8000932:	b082      	sub	sp, #8
 8000934:	af00      	add	r7, sp, #0
 8000936:	4603      	mov	r3, r0
 8000938:	6039      	str	r1, [r7, #0]
 800093a:	71fb      	strb	r3, [r7, #7]
 800093c:	4613      	mov	r3, r2
 800093e:	71bb      	strb	r3, [r7, #6]
    while(*s) serial_wr_c(usart, *s++);
 8000940:	e008      	b.n	8000954 <serial_wr_s+0x24>
 8000942:	683b      	ldr	r3, [r7, #0]
 8000944:	1c5a      	adds	r2, r3, #1
 8000946:	603a      	str	r2, [r7, #0]
 8000948:	781a      	ldrb	r2, [r3, #0]
 800094a:	79fb      	ldrb	r3, [r7, #7]
 800094c:	4611      	mov	r1, r2
 800094e:	4618      	mov	r0, r3
 8000950:	f7ff ffd2 	bl	80008f8 <serial_wr_c>
 8000954:	683b      	ldr	r3, [r7, #0]
 8000956:	781b      	ldrb	r3, [r3, #0]
 8000958:	2b00      	cmp	r3, #0
 800095a:	d1f2      	bne.n	8000942 <serial_wr_s+0x12>
    if (!new_line) return 1;
 800095c:	79bb      	ldrb	r3, [r7, #6]
 800095e:	f083 0301 	eor.w	r3, r3, #1
 8000962:	b2db      	uxtb	r3, r3
 8000964:	2b00      	cmp	r3, #0
 8000966:	d001      	beq.n	800096c <serial_wr_s+0x3c>
 8000968:	2301      	movs	r3, #1
 800096a:	e00a      	b.n	8000982 <serial_wr_s+0x52>
    serial_wr_c(usart, '\r');
 800096c:	79fb      	ldrb	r3, [r7, #7]
 800096e:	210d      	movs	r1, #13
 8000970:	4618      	mov	r0, r3
 8000972:	f7ff ffc1 	bl	80008f8 <serial_wr_c>
    serial_wr_c(usart, '\n');
 8000976:	79fb      	ldrb	r3, [r7, #7]
 8000978:	210a      	movs	r1, #10
 800097a:	4618      	mov	r0, r3
 800097c:	f7ff ffbc 	bl	80008f8 <serial_wr_c>
    return 1;
 8000980:	2301      	movs	r3, #1
}
 8000982:	4618      	mov	r0, r3
 8000984:	3708      	adds	r7, #8
 8000986:	46bd      	mov	sp, r7
 8000988:	bd80      	pop	{r7, pc}

0800098a <serial_r_c>:

char serial_r_c(uint8_t usart) {
 800098a:	b580      	push	{r7, lr}
 800098c:	b084      	sub	sp, #16
 800098e:	af00      	add	r7, sp, #0
 8000990:	4603      	mov	r3, r0
 8000992:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 8000994:	79fb      	ldrb	r3, [r7, #7]
 8000996:	4618      	mov	r0, r3
 8000998:	f7ff ff68 	bl	800086c <get_usart>
 800099c:	60f8      	str	r0, [r7, #12]
    while(!(serial->sr & RXNE));
 800099e:	bf00      	nop
 80009a0:	68fb      	ldr	r3, [r7, #12]
 80009a2:	681b      	ldr	r3, [r3, #0]
 80009a4:	f003 0320 	and.w	r3, r3, #32
 80009a8:	2b00      	cmp	r3, #0
 80009aa:	d0f9      	beq.n	80009a0 <serial_r_c+0x16>
    return (char)(serial->data & DATA_MASK);
 80009ac:	68fb      	ldr	r3, [r7, #12]
 80009ae:	685b      	ldr	r3, [r3, #4]
 80009b0:	b2db      	uxtb	r3, r3
}
 80009b2:	4618      	mov	r0, r3
 80009b4:	3710      	adds	r7, #16
 80009b6:	46bd      	mov	sp, r7
 80009b8:	bd80      	pop	{r7, pc}

080009ba <serial_r_s>:

char *serial_r_s(uint8_t usart, char *buffer) {
 80009ba:	b590      	push	{r4, r7, lr}
 80009bc:	b083      	sub	sp, #12
 80009be:	af00      	add	r7, sp, #0
 80009c0:	4603      	mov	r3, r0
 80009c2:	6039      	str	r1, [r7, #0]
 80009c4:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 80009c6:	e008      	b.n	80009da <serial_r_s+0x20>
        *buffer++ = serial_r_c(usart);
 80009c8:	683c      	ldr	r4, [r7, #0]
 80009ca:	1c63      	adds	r3, r4, #1
 80009cc:	603b      	str	r3, [r7, #0]
 80009ce:	79fb      	ldrb	r3, [r7, #7]
 80009d0:	4618      	mov	r0, r3
 80009d2:	f7ff ffda 	bl	800098a <serial_r_c>
 80009d6:	4603      	mov	r3, r0
 80009d8:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 80009da:	683b      	ldr	r3, [r7, #0]
 80009dc:	781b      	ldrb	r3, [r3, #0]
 80009de:	2b00      	cmp	r3, #0
 80009e0:	d1f2      	bne.n	80009c8 <serial_r_s+0xe>
    }
    return buffer;
 80009e2:	683b      	ldr	r3, [r7, #0]
}
 80009e4:	4618      	mov	r0, r3
 80009e6:	370c      	adds	r7, #12
 80009e8:	46bd      	mov	sp, r7
 80009ea:	bd90      	pop	{r4, r7, pc}

080009ec <__enable_irq>:
#include "intrinsic.h"

// enable interrupt
void __enable_irq(void) {
 80009ec:	b480      	push	{r7}
 80009ee:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsie i" ::: "memory");
 80009f0:	b662      	cpsie	i
}
 80009f2:	bf00      	nop
 80009f4:	46bd      	mov	sp, r7
 80009f6:	bc80      	pop	{r7}
 80009f8:	4770      	bx	lr

080009fa <__disable_irq>:

// disable interrupt
void __disable_irq(void) {
 80009fa:	b480      	push	{r7}
 80009fc:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsid i" ::: "memory");
 80009fe:	b672      	cpsid	i
}
 8000a00:	bf00      	nop
 8000a02:	46bd      	mov	sp, r7
 8000a04:	bc80      	pop	{r7}
 8000a06:	4770      	bx	lr

08000a08 <__NOP>:

// no operation
void __NOP(void) {
 8000a08:	b480      	push	{r7}
 8000a0a:	af00      	add	r7, sp, #0
    __ASM volatile ("nop");
 8000a0c:	bf00      	nop
}
 8000a0e:	bf00      	nop
 8000a10:	46bd      	mov	sp, r7
 8000a12:	bc80      	pop	{r7}
 8000a14:	4770      	bx	lr
