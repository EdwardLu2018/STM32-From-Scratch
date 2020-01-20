
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000150 <timer_get-0x14>:
 8000150:	08000ae4 	.word	0x08000ae4
 8000154:	20000000 	.word	0x20000000
 8000158:	20000050 	.word	0x20000050
 800015c:	20000050 	.word	0x20000050
 8000160:	20000054 	.word	0x20000054

08000164 <timer_get>:
timer_t *tim4 = (timer_t *)(TIM4_BASE);
timer_t *tim5 = (timer_t *)(TIM5_BASE);
timer_t *tim6 = (timer_t *)(TIM6_BASE);
timer_t *tim7 = (timer_t *)(TIM7_BASE);

timer_t *timer_get(uint8_t timer) {
 8000164:	b480      	push	{r7}
 8000166:	b083      	sub	sp, #12
 8000168:	af00      	add	r7, sp, #0
 800016a:	4603      	mov	r3, r0
 800016c:	71fb      	strb	r3, [r7, #7]
    switch (timer) {
 800016e:	79fb      	ldrb	r3, [r7, #7]
 8000170:	3b01      	subs	r3, #1
 8000172:	2b05      	cmp	r3, #5
 8000174:	d820      	bhi.n	80001b8 <timer_get+0x54>
 8000176:	a201      	add	r2, pc, #4	; (adr r2, 800017c <timer_get+0x18>)
 8000178:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800017c:	08000195 	.word	0x08000195
 8000180:	0800019b 	.word	0x0800019b
 8000184:	080001a1 	.word	0x080001a1
 8000188:	080001a7 	.word	0x080001a7
 800018c:	080001ad 	.word	0x080001ad
 8000190:	080001b3 	.word	0x080001b3
    case TIM2: return tim2;
 8000194:	4b0c      	ldr	r3, [pc, #48]	; (80001c8 <timer_get+0x64>)
 8000196:	681b      	ldr	r3, [r3, #0]
 8000198:	e010      	b.n	80001bc <timer_get+0x58>
    case TIM3: return tim3;
 800019a:	4b0c      	ldr	r3, [pc, #48]	; (80001cc <timer_get+0x68>)
 800019c:	681b      	ldr	r3, [r3, #0]
 800019e:	e00d      	b.n	80001bc <timer_get+0x58>
    case TIM4: return tim4;
 80001a0:	4b0b      	ldr	r3, [pc, #44]	; (80001d0 <timer_get+0x6c>)
 80001a2:	681b      	ldr	r3, [r3, #0]
 80001a4:	e00a      	b.n	80001bc <timer_get+0x58>
    case TIM5: return tim5;
 80001a6:	4b0b      	ldr	r3, [pc, #44]	; (80001d4 <timer_get+0x70>)
 80001a8:	681b      	ldr	r3, [r3, #0]
 80001aa:	e007      	b.n	80001bc <timer_get+0x58>
    case TIM6: return tim6;
 80001ac:	4b0a      	ldr	r3, [pc, #40]	; (80001d8 <timer_get+0x74>)
 80001ae:	681b      	ldr	r3, [r3, #0]
 80001b0:	e004      	b.n	80001bc <timer_get+0x58>
    case TIM7: return tim7;
 80001b2:	4b0a      	ldr	r3, [pc, #40]	; (80001dc <timer_get+0x78>)
 80001b4:	681b      	ldr	r3, [r3, #0]
 80001b6:	e001      	b.n	80001bc <timer_get+0x58>
    default: return tim2;
 80001b8:	4b03      	ldr	r3, [pc, #12]	; (80001c8 <timer_get+0x64>)
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

080001e0 <timer_get_cnt>:

uint32_t timer_get_cnt(uint8_t timer) {
 80001e0:	b580      	push	{r7, lr}
 80001e2:	b084      	sub	sp, #16
 80001e4:	af00      	add	r7, sp, #0
 80001e6:	4603      	mov	r3, r0
 80001e8:	71fb      	strb	r3, [r7, #7]
    timer_t *tim = timer_get(timer);
 80001ea:	79fb      	ldrb	r3, [r7, #7]
 80001ec:	4618      	mov	r0, r3
 80001ee:	f7ff ffb9 	bl	8000164 <timer_get>
 80001f2:	60f8      	str	r0, [r7, #12]
    return tim->cnt;
 80001f4:	68fb      	ldr	r3, [r7, #12]
 80001f6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
}
 80001f8:	4618      	mov	r0, r3
 80001fa:	3710      	adds	r7, #16
 80001fc:	46bd      	mov	sp, r7
 80001fe:	bd80      	pop	{r7, pc}

08000200 <enable_chan>:

void enable_chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load) {
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
    timer_t *tim = timer_get(timer);
 8000214:	79fb      	ldrb	r3, [r7, #7]
 8000216:	4618      	mov	r0, r3
 8000218:	f7ff ffa4 	bl	8000164 <timer_get>
 800021c:	6178      	str	r0, [r7, #20]
    tim->ccr[channel] = load;
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
    config = tim->ccer & ~(0xf << shift_by);
 8000232:	697b      	ldr	r3, [r7, #20]
 8000234:	6a1b      	ldr	r3, [r3, #32]
 8000236:	7cfa      	ldrb	r2, [r7, #19]
 8000238:	210f      	movs	r1, #15
 800023a:	fa01 f202 	lsl.w	r2, r1, r2
 800023e:	43d2      	mvns	r2, r2
 8000240:	4013      	ands	r3, r2
 8000242:	60fb      	str	r3, [r7, #12]
    tim->ccer = (config | (1 << shift_by)); // enable output
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
    config = tim->ccmr[mr_idx] & ~(0xff << shift_by);
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
    tim->ccmr[mr_idx] = (config | (mode << shift_by));
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

080002a0 <timer_init>:

void timer_init(uint8_t timer, uint32_t prescaler, uint32_t period) {
 80002a0:	b580      	push	{r7, lr}
 80002a2:	b086      	sub	sp, #24
 80002a4:	af00      	add	r7, sp, #0
 80002a6:	4603      	mov	r3, r0
 80002a8:	60b9      	str	r1, [r7, #8]
 80002aa:	607a      	str	r2, [r7, #4]
 80002ac:	73fb      	strb	r3, [r7, #15]
    timer_t *tim = timer_get(timer);
 80002ae:	7bfb      	ldrb	r3, [r7, #15]
 80002b0:	4618      	mov	r0, r3
 80002b2:	f7ff ff57 	bl	8000164 <timer_get>
 80002b6:	6178      	str	r0, [r7, #20]

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->psc = PCLK2 / prescaler - 1U; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
 80002b8:	4a0a      	ldr	r2, [pc, #40]	; (80002e4 <timer_init+0x44>)
 80002ba:	68bb      	ldr	r3, [r7, #8]
 80002bc:	fbb2 f3f3 	udiv	r3, r2, r3
 80002c0:	1e5a      	subs	r2, r3, #1
 80002c2:	697b      	ldr	r3, [r7, #20]
 80002c4:	629a      	str	r2, [r3, #40]	; 0x28
    tim->arr = period - 1U; // "period" of timer - updates every time cnt reaches arr
 80002c6:	687b      	ldr	r3, [r7, #4]
 80002c8:	1e5a      	subs	r2, r3, #1
 80002ca:	697b      	ldr	r3, [r7, #20]
 80002cc:	62da      	str	r2, [r3, #44]	; 0x2c

    tim->dier = 1U;
 80002ce:	697b      	ldr	r3, [r7, #20]
 80002d0:	2201      	movs	r2, #1
 80002d2:	60da      	str	r2, [r3, #12]

    // enable counter //
    tim->cr[0] = 1U;
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

080002e8 <nvic_irq_enable>:
#include "nvic.h"

nvic_t *nvic = (nvic_t *)(NVIC_BASE);

void nvic_irq_enable(uint8_t irq_pos) {
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
	nvic->iser[idx] = (1 << shift_by);
 8000300:	7bbb      	ldrb	r3, [r7, #14]
 8000302:	2201      	movs	r2, #1
 8000304:	fa02 f103 	lsl.w	r1, r2, r3
 8000308:	4b04      	ldr	r3, [pc, #16]	; (800031c <nvic_irq_enable+0x34>)
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

08000320 <gpio_get>:

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

gpio_t *gpio_get(uint8_t pin) {
 8000320:	b480      	push	{r7}
 8000322:	b083      	sub	sp, #12
 8000324:	af00      	add	r7, sp, #0
 8000326:	4603      	mov	r3, r0
 8000328:	71fb      	strb	r3, [r7, #7]
    switch(pin >> 4) {
 800032a:	79fb      	ldrb	r3, [r7, #7]
 800032c:	091b      	lsrs	r3, r3, #4
 800032e:	b2db      	uxtb	r3, r3
 8000330:	2b00      	cmp	r3, #0
 8000332:	d002      	beq.n	800033a <gpio_get+0x1a>
 8000334:	2b01      	cmp	r3, #1
 8000336:	d003      	beq.n	8000340 <gpio_get+0x20>
 8000338:	e005      	b.n	8000346 <gpio_get+0x26>
        case 0: return gpio_a;
 800033a:	4b06      	ldr	r3, [pc, #24]	; (8000354 <gpio_get+0x34>)
 800033c:	681b      	ldr	r3, [r3, #0]
 800033e:	e004      	b.n	800034a <gpio_get+0x2a>
        case 1: return gpio_b;
 8000340:	4b05      	ldr	r3, [pc, #20]	; (8000358 <gpio_get+0x38>)
 8000342:	681b      	ldr	r3, [r3, #0]
 8000344:	e001      	b.n	800034a <gpio_get+0x2a>
        // case 2: return gpio_c;
        default: return gpio_c;
 8000346:	4b05      	ldr	r3, [pc, #20]	; (800035c <gpio_get+0x3c>)
 8000348:	681b      	ldr	r3, [r3, #0]
    }
}
 800034a:	4618      	mov	r0, r3
 800034c:	370c      	adds	r7, #12
 800034e:	46bd      	mov	sp, r7
 8000350:	bc80      	pop	{r7}
 8000352:	4770      	bx	lr
 8000354:	2000001c 	.word	0x2000001c
 8000358:	20000020 	.word	0x20000020
 800035c:	20000024 	.word	0x20000024

08000360 <pin_mode>:

void pin_mode(uint8_t pin, uint8_t mode) {
 8000360:	b580      	push	{r7, lr}
 8000362:	b086      	sub	sp, #24
 8000364:	af00      	add	r7, sp, #0
 8000366:	4603      	mov	r3, r0
 8000368:	460a      	mov	r2, r1
 800036a:	71fb      	strb	r3, [r7, #7]
 800036c:	4613      	mov	r3, r2
 800036e:	71bb      	strb	r3, [r7, #6]
    gpio_t *gpio = gpio_get(pin);
 8000370:	79fb      	ldrb	r3, [r7, #7]
 8000372:	4618      	mov	r0, r3
 8000374:	f7ff ffd4 	bl	8000320 <gpio_get>
 8000378:	6178      	str	r0, [r7, #20]
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
 800037a:	79fb      	ldrb	r3, [r7, #7]
 800037c:	f003 030f 	and.w	r3, r3, #15
 8000380:	74fb      	strb	r3, [r7, #19]
    uint8_t shift_by = (bit % 8) * 4;
 8000382:	7cfb      	ldrb	r3, [r7, #19]
 8000384:	f003 0307 	and.w	r3, r3, #7
 8000388:	b2db      	uxtb	r3, r3
 800038a:	009b      	lsls	r3, r3, #2
 800038c:	74bb      	strb	r3, [r7, #18]
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
 800038e:	7cfb      	ldrb	r3, [r7, #19]
 8000390:	08db      	lsrs	r3, r3, #3
 8000392:	747b      	strb	r3, [r7, #17]
    uint32_t config = gpio->cr[reg_idx] & ~(0xf << shift_by);
 8000394:	7c7a      	ldrb	r2, [r7, #17]
 8000396:	697b      	ldr	r3, [r7, #20]
 8000398:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800039c:	7cba      	ldrb	r2, [r7, #18]
 800039e:	210f      	movs	r1, #15
 80003a0:	fa01 f202 	lsl.w	r2, r1, r2
 80003a4:	43d2      	mvns	r2, r2
 80003a6:	4013      	ands	r3, r2
 80003a8:	60fb      	str	r3, [r7, #12]
    gpio->cr[reg_idx] = (config | (mode << shift_by));
 80003aa:	79ba      	ldrb	r2, [r7, #6]
 80003ac:	7cbb      	ldrb	r3, [r7, #18]
 80003ae:	fa02 f303 	lsl.w	r3, r2, r3
 80003b2:	4619      	mov	r1, r3
 80003b4:	7c7a      	ldrb	r2, [r7, #17]
 80003b6:	68fb      	ldr	r3, [r7, #12]
 80003b8:	4319      	orrs	r1, r3
 80003ba:	697b      	ldr	r3, [r7, #20]
 80003bc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 80003c0:	bf00      	nop
 80003c2:	3718      	adds	r7, #24
 80003c4:	46bd      	mov	sp, r7
 80003c6:	bd80      	pop	{r7, pc}

080003c8 <led_toggle>:

void led_toggle(uint8_t pin) {
 80003c8:	b580      	push	{r7, lr}
 80003ca:	b084      	sub	sp, #16
 80003cc:	af00      	add	r7, sp, #0
 80003ce:	4603      	mov	r3, r0
 80003d0:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = gpio_get(pin);
 80003d2:	79fb      	ldrb	r3, [r7, #7]
 80003d4:	4618      	mov	r0, r3
 80003d6:	f7ff ffa3 	bl	8000320 <gpio_get>
 80003da:	60f8      	str	r0, [r7, #12]
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
 80003dc:	68fb      	ldr	r3, [r7, #12]
 80003de:	68db      	ldr	r3, [r3, #12]
 80003e0:	79fa      	ldrb	r2, [r7, #7]
 80003e2:	f002 020f 	and.w	r2, r2, #15
 80003e6:	2101      	movs	r1, #1
 80003e8:	fa01 f202 	lsl.w	r2, r1, r2
 80003ec:	405a      	eors	r2, r3
 80003ee:	68fb      	ldr	r3, [r7, #12]
 80003f0:	60da      	str	r2, [r3, #12]
}
 80003f2:	bf00      	nop
 80003f4:	3710      	adds	r7, #16
 80003f6:	46bd      	mov	sp, r7
 80003f8:	bd80      	pop	{r7, pc}

080003fa <led_on>:

void led_on(uint8_t pin) {
 80003fa:	b580      	push	{r7, lr}
 80003fc:	b084      	sub	sp, #16
 80003fe:	af00      	add	r7, sp, #0
 8000400:	4603      	mov	r3, r0
 8000402:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = gpio_get(pin);
 8000404:	79fb      	ldrb	r3, [r7, #7]
 8000406:	4618      	mov	r0, r3
 8000408:	f7ff ff8a 	bl	8000320 <gpio_get>
 800040c:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 800040e:	79fb      	ldrb	r3, [r7, #7]
 8000410:	2b2d      	cmp	r3, #45	; 0x2d
 8000412:	d10c      	bne.n	800042e <led_on+0x34>
 8000414:	68fb      	ldr	r3, [r7, #12]
 8000416:	68db      	ldr	r3, [r3, #12]
 8000418:	79fa      	ldrb	r2, [r7, #7]
 800041a:	f002 020f 	and.w	r2, r2, #15
 800041e:	2101      	movs	r1, #1
 8000420:	fa01 f202 	lsl.w	r2, r1, r2
 8000424:	43d2      	mvns	r2, r2
 8000426:	401a      	ands	r2, r3
 8000428:	68fb      	ldr	r3, [r7, #12]
 800042a:	60da      	str	r2, [r3, #12]
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}
 800042c:	e00a      	b.n	8000444 <led_on+0x4a>
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
 800042e:	68fb      	ldr	r3, [r7, #12]
 8000430:	68db      	ldr	r3, [r3, #12]
 8000432:	79fa      	ldrb	r2, [r7, #7]
 8000434:	f002 020f 	and.w	r2, r2, #15
 8000438:	2101      	movs	r1, #1
 800043a:	fa01 f202 	lsl.w	r2, r1, r2
 800043e:	431a      	orrs	r2, r3
 8000440:	68fb      	ldr	r3, [r7, #12]
 8000442:	60da      	str	r2, [r3, #12]
}
 8000444:	bf00      	nop
 8000446:	3710      	adds	r7, #16
 8000448:	46bd      	mov	sp, r7
 800044a:	bd80      	pop	{r7, pc}

0800044c <led_off>:

void led_off(uint8_t pin) {
 800044c:	b580      	push	{r7, lr}
 800044e:	b084      	sub	sp, #16
 8000450:	af00      	add	r7, sp, #0
 8000452:	4603      	mov	r3, r0
 8000454:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = gpio_get(pin);
 8000456:	79fb      	ldrb	r3, [r7, #7]
 8000458:	4618      	mov	r0, r3
 800045a:	f7ff ff61 	bl	8000320 <gpio_get>
 800045e:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
 8000460:	79fb      	ldrb	r3, [r7, #7]
 8000462:	2b2d      	cmp	r3, #45	; 0x2d
 8000464:	d10b      	bne.n	800047e <led_off+0x32>
 8000466:	68fb      	ldr	r3, [r7, #12]
 8000468:	68db      	ldr	r3, [r3, #12]
 800046a:	79fa      	ldrb	r2, [r7, #7]
 800046c:	f002 020f 	and.w	r2, r2, #15
 8000470:	2101      	movs	r1, #1
 8000472:	fa01 f202 	lsl.w	r2, r1, r2
 8000476:	431a      	orrs	r2, r3
 8000478:	68fb      	ldr	r3, [r7, #12]
 800047a:	60da      	str	r2, [r3, #12]
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
 800047c:	e00b      	b.n	8000496 <led_off+0x4a>
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 800047e:	68fb      	ldr	r3, [r7, #12]
 8000480:	68db      	ldr	r3, [r3, #12]
 8000482:	79fa      	ldrb	r2, [r7, #7]
 8000484:	f002 020f 	and.w	r2, r2, #15
 8000488:	2101      	movs	r1, #1
 800048a:	fa01 f202 	lsl.w	r2, r1, r2
 800048e:	43d2      	mvns	r2, r2
 8000490:	401a      	ands	r2, r3
 8000492:	68fb      	ldr	r3, [r7, #12]
 8000494:	60da      	str	r2, [r3, #12]
}
 8000496:	bf00      	nop
 8000498:	3710      	adds	r7, #16
 800049a:	46bd      	mov	sp, r7
 800049c:	bd80      	pop	{r7, pc}
 800049e:	bf00      	nop

080004a0 <systick_init>:
#include "systick.h"

systick_t *systick = (systick_t *)(SYSTICK_BASE);

void systick_init(uint32_t reload_val) {
 80004a0:	b480      	push	{r7}
 80004a2:	b083      	sub	sp, #12
 80004a4:	af00      	add	r7, sp, #0
 80004a6:	6078      	str	r0, [r7, #4]
    systick->reload = PCLK2 / reload_val - 1U;
 80004a8:	4a0a      	ldr	r2, [pc, #40]	; (80004d4 <systick_init+0x34>)
 80004aa:	687b      	ldr	r3, [r7, #4]
 80004ac:	fbb2 f2f3 	udiv	r2, r2, r3
 80004b0:	4b09      	ldr	r3, [pc, #36]	; (80004d8 <systick_init+0x38>)
 80004b2:	681b      	ldr	r3, [r3, #0]
 80004b4:	3a01      	subs	r2, #1
 80004b6:	605a      	str	r2, [r3, #4]
    systick->val = 0U;
 80004b8:	4b07      	ldr	r3, [pc, #28]	; (80004d8 <systick_init+0x38>)
 80004ba:	681b      	ldr	r3, [r3, #0]
 80004bc:	2200      	movs	r2, #0
 80004be:	609a      	str	r2, [r3, #8]
    systick->ctrl = (AHB_EN|TICKINT_EN|TICK_EN);
 80004c0:	4b05      	ldr	r3, [pc, #20]	; (80004d8 <systick_init+0x38>)
 80004c2:	681b      	ldr	r3, [r3, #0]
 80004c4:	2207      	movs	r2, #7
 80004c6:	601a      	str	r2, [r3, #0]
}
 80004c8:	bf00      	nop
 80004ca:	370c      	adds	r7, #12
 80004cc:	46bd      	mov	sp, r7
 80004ce:	bc80      	pop	{r7}
 80004d0:	4770      	bx	lr
 80004d2:	bf00      	nop
 80004d4:	044aa200 	.word	0x044aa200
 80004d8:	20000028 	.word	0x20000028

080004dc <millis>:

uint32_t millis(void) {
 80004dc:	b480      	push	{r7}
 80004de:	af00      	add	r7, sp, #0
    return cnt;
 80004e0:	4b02      	ldr	r3, [pc, #8]	; (80004ec <millis+0x10>)
 80004e2:	681b      	ldr	r3, [r3, #0]
}
 80004e4:	4618      	mov	r0, r3
 80004e6:	46bd      	mov	sp, r7
 80004e8:	bc80      	pop	{r7}
 80004ea:	4770      	bx	lr
 80004ec:	20000050 	.word	0x20000050

080004f0 <delay>:
#include "delay.h"
#include "systick.h"
#include "intrinsic.h"

void delay(uint64_t volatile t) {
 80004f0:	b590      	push	{r4, r7, lr}
 80004f2:	b085      	sub	sp, #20
 80004f4:	af00      	add	r7, sp, #0
 80004f6:	e9c7 0100 	strd	r0, r1, [r7]
    for (uint64_t volatile i = 0; i < t; i++)
 80004fa:	f04f 0300 	mov.w	r3, #0
 80004fe:	f04f 0400 	mov.w	r4, #0
 8000502:	e9c7 3402 	strd	r3, r4, [r7, #8]
 8000506:	e008      	b.n	800051a <delay+0x2a>
        __NOP();
 8000508:	f000 faba 	bl	8000a80 <__NOP>
    for (uint64_t volatile i = 0; i < t; i++)
 800050c:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 8000510:	1c4b      	adds	r3, r1, #1
 8000512:	f142 0400 	adc.w	r4, r2, #0
 8000516:	e9c7 3402 	strd	r3, r4, [r7, #8]
 800051a:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 800051e:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000522:	42a2      	cmp	r2, r4
 8000524:	bf08      	it	eq
 8000526:	4299      	cmpeq	r1, r3
 8000528:	d3ee      	bcc.n	8000508 <delay+0x18>
}
 800052a:	bf00      	nop
 800052c:	3714      	adds	r7, #20
 800052e:	46bd      	mov	sp, r7
 8000530:	bd90      	pop	{r4, r7, pc}

08000532 <systick_delay>:

void systick_delay(uint64_t __IO t) {
 8000532:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 8000536:	b084      	sub	sp, #16
 8000538:	af00      	add	r7, sp, #0
 800053a:	e9c7 0100 	strd	r0, r1, [r7]
    uint64_t start_t = millis();
 800053e:	f7ff ffcd 	bl	80004dc <millis>
 8000542:	4603      	mov	r3, r0
 8000544:	f04f 0400 	mov.w	r4, #0
 8000548:	e9c7 3402 	strd	r3, r4, [r7, #8]
    while(millis() - start_t < t)
 800054c:	e001      	b.n	8000552 <systick_delay+0x20>
        __NOP();
 800054e:	f000 fa97 	bl	8000a80 <__NOP>
    while(millis() - start_t < t)
 8000552:	f7ff ffc3 	bl	80004dc <millis>
 8000556:	4603      	mov	r3, r0
 8000558:	469b      	mov	fp, r3
 800055a:	f04f 0c00 	mov.w	ip, #0
 800055e:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000562:	4659      	mov	r1, fp
 8000564:	4662      	mov	r2, ip
 8000566:	1ac9      	subs	r1, r1, r3
 8000568:	eb62 0204 	sbc.w	r2, r2, r4
 800056c:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000570:	42a2      	cmp	r2, r4
 8000572:	bf08      	it	eq
 8000574:	4299      	cmpeq	r1, r3
 8000576:	d3ea      	bcc.n	800054e <systick_delay+0x1c>
}
 8000578:	bf00      	nop
 800057a:	3710      	adds	r7, #16
 800057c:	46bd      	mov	sp, r7
 800057e:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}
	...

08000584 <rcc_init>:
#include "rcc.h"
#include "flash_acr.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(uint32_t tim_en, uint32_t gpio_en, uint32_t usart_en) {
 8000584:	b480      	push	{r7}
 8000586:	b085      	sub	sp, #20
 8000588:	af00      	add	r7, sp, #0
 800058a:	60f8      	str	r0, [r7, #12]
 800058c:	60b9      	str	r1, [r7, #8]
 800058e:	607a      	str	r2, [r7, #4]
    // switch to 72Mhz clock //
    flash->acr |= LATENCY_2;
 8000590:	4b2f      	ldr	r3, [pc, #188]	; (8000650 <rcc_init+0xcc>)
 8000592:	681b      	ldr	r3, [r3, #0]
 8000594:	681a      	ldr	r2, [r3, #0]
 8000596:	4b2e      	ldr	r3, [pc, #184]	; (8000650 <rcc_init+0xcc>)
 8000598:	681b      	ldr	r3, [r3, #0]
 800059a:	f042 0202 	orr.w	r2, r2, #2
 800059e:	601a      	str	r2, [r3, #0]
    rcc->cfgr |= APB1_DIV2;
 80005a0:	4b2c      	ldr	r3, [pc, #176]	; (8000654 <rcc_init+0xd0>)
 80005a2:	681b      	ldr	r3, [r3, #0]
 80005a4:	685a      	ldr	r2, [r3, #4]
 80005a6:	4b2b      	ldr	r3, [pc, #172]	; (8000654 <rcc_init+0xd0>)
 80005a8:	681b      	ldr	r3, [r3, #0]
 80005aa:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80005ae:	605a      	str	r2, [r3, #4]

    rcc->cr |= HSEON;
 80005b0:	4b28      	ldr	r3, [pc, #160]	; (8000654 <rcc_init+0xd0>)
 80005b2:	681b      	ldr	r3, [r3, #0]
 80005b4:	681a      	ldr	r2, [r3, #0]
 80005b6:	4b27      	ldr	r3, [pc, #156]	; (8000654 <rcc_init+0xd0>)
 80005b8:	681b      	ldr	r3, [r3, #0]
 80005ba:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80005be:	601a      	str	r2, [r3, #0]
    while (!(rcc->cr & HSERDY));
 80005c0:	bf00      	nop
 80005c2:	4b24      	ldr	r3, [pc, #144]	; (8000654 <rcc_init+0xd0>)
 80005c4:	681b      	ldr	r3, [r3, #0]
 80005c6:	681b      	ldr	r3, [r3, #0]
 80005c8:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80005cc:	2b00      	cmp	r3, #0
 80005ce:	d0f8      	beq.n	80005c2 <rcc_init+0x3e>

    rcc->cfgr |= (PLLHSE|PLL_9);
 80005d0:	4b20      	ldr	r3, [pc, #128]	; (8000654 <rcc_init+0xd0>)
 80005d2:	681b      	ldr	r3, [r3, #0]
 80005d4:	685a      	ldr	r2, [r3, #4]
 80005d6:	4b1f      	ldr	r3, [pc, #124]	; (8000654 <rcc_init+0xd0>)
 80005d8:	681b      	ldr	r3, [r3, #0]
 80005da:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80005de:	605a      	str	r2, [r3, #4]
    rcc->cr |= PLLON;
 80005e0:	4b1c      	ldr	r3, [pc, #112]	; (8000654 <rcc_init+0xd0>)
 80005e2:	681b      	ldr	r3, [r3, #0]
 80005e4:	681a      	ldr	r2, [r3, #0]
 80005e6:	4b1b      	ldr	r3, [pc, #108]	; (8000654 <rcc_init+0xd0>)
 80005e8:	681b      	ldr	r3, [r3, #0]
 80005ea:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80005ee:	601a      	str	r2, [r3, #0]
    while (!(rcc->cr & PLLRDY));
 80005f0:	bf00      	nop
 80005f2:	4b18      	ldr	r3, [pc, #96]	; (8000654 <rcc_init+0xd0>)
 80005f4:	681b      	ldr	r3, [r3, #0]
 80005f6:	681b      	ldr	r3, [r3, #0]
 80005f8:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80005fc:	2b00      	cmp	r3, #0
 80005fe:	d0f8      	beq.n	80005f2 <rcc_init+0x6e>

    rcc->cfgr |= SWPLL;
 8000600:	4b14      	ldr	r3, [pc, #80]	; (8000654 <rcc_init+0xd0>)
 8000602:	681b      	ldr	r3, [r3, #0]
 8000604:	685a      	ldr	r2, [r3, #4]
 8000606:	4b13      	ldr	r3, [pc, #76]	; (8000654 <rcc_init+0xd0>)
 8000608:	681b      	ldr	r3, [r3, #0]
 800060a:	f042 0202 	orr.w	r2, r2, #2
 800060e:	605a      	str	r2, [r3, #4]
    while (!(rcc->cfgr & SWSPLL));
 8000610:	bf00      	nop
 8000612:	4b10      	ldr	r3, [pc, #64]	; (8000654 <rcc_init+0xd0>)
 8000614:	681b      	ldr	r3, [r3, #0]
 8000616:	685b      	ldr	r3, [r3, #4]
 8000618:	f003 0308 	and.w	r3, r3, #8
 800061c:	2b00      	cmp	r3, #0
 800061e:	d0f8      	beq.n	8000612 <rcc_init+0x8e>

    rcc->apbe1 |= tim_en; // enable timers
 8000620:	4b0c      	ldr	r3, [pc, #48]	; (8000654 <rcc_init+0xd0>)
 8000622:	681b      	ldr	r3, [r3, #0]
 8000624:	69d9      	ldr	r1, [r3, #28]
 8000626:	4b0b      	ldr	r3, [pc, #44]	; (8000654 <rcc_init+0xd0>)
 8000628:	681b      	ldr	r3, [r3, #0]
 800062a:	68fa      	ldr	r2, [r7, #12]
 800062c:	430a      	orrs	r2, r1
 800062e:	61da      	str	r2, [r3, #28]
    rcc->apbe2 |= (gpio_en|usart_en); // enable GPIO pins and USART
 8000630:	4b08      	ldr	r3, [pc, #32]	; (8000654 <rcc_init+0xd0>)
 8000632:	681b      	ldr	r3, [r3, #0]
 8000634:	6999      	ldr	r1, [r3, #24]
 8000636:	68ba      	ldr	r2, [r7, #8]
 8000638:	687b      	ldr	r3, [r7, #4]
 800063a:	431a      	orrs	r2, r3
 800063c:	4b05      	ldr	r3, [pc, #20]	; (8000654 <rcc_init+0xd0>)
 800063e:	681b      	ldr	r3, [r3, #0]
 8000640:	430a      	orrs	r2, r1
 8000642:	619a      	str	r2, [r3, #24]
}
 8000644:	bf00      	nop
 8000646:	3714      	adds	r7, #20
 8000648:	46bd      	mov	sp, r7
 800064a:	bc80      	pop	{r7}
 800064c:	4770      	bx	lr
 800064e:	bf00      	nop
 8000650:	2000002c 	.word	0x2000002c
 8000654:	20000030 	.word	0x20000030

08000658 <adc_get>:

adc_t *adc1 = (adc_t *)(ADC1_BASE);
adc_t *adc2 = (adc_t *)(ADC2_BASE);
adc_t *adc3 = (adc_t *)(ADC3_BASE);

adc_t *adc_get(uint8_t adc_num) {
 8000658:	b480      	push	{r7}
 800065a:	b083      	sub	sp, #12
 800065c:	af00      	add	r7, sp, #0
 800065e:	4603      	mov	r3, r0
 8000660:	71fb      	strb	r3, [r7, #7]
    switch (adc_num) {
 8000662:	79fb      	ldrb	r3, [r7, #7]
 8000664:	2b01      	cmp	r3, #1
 8000666:	d006      	beq.n	8000676 <adc_get+0x1e>
 8000668:	2b02      	cmp	r3, #2
 800066a:	d007      	beq.n	800067c <adc_get+0x24>
 800066c:	2b00      	cmp	r3, #0
 800066e:	d108      	bne.n	8000682 <adc_get+0x2a>
    case ADC1: return adc1;
 8000670:	4b07      	ldr	r3, [pc, #28]	; (8000690 <adc_get+0x38>)
 8000672:	681b      	ldr	r3, [r3, #0]
 8000674:	e007      	b.n	8000686 <adc_get+0x2e>
    case ADC2: return adc2;
 8000676:	4b07      	ldr	r3, [pc, #28]	; (8000694 <adc_get+0x3c>)
 8000678:	681b      	ldr	r3, [r3, #0]
 800067a:	e004      	b.n	8000686 <adc_get+0x2e>
    case ADC3: return adc3;
 800067c:	4b06      	ldr	r3, [pc, #24]	; (8000698 <adc_get+0x40>)
 800067e:	681b      	ldr	r3, [r3, #0]
 8000680:	e001      	b.n	8000686 <adc_get+0x2e>
    default: return adc1;
 8000682:	4b03      	ldr	r3, [pc, #12]	; (8000690 <adc_get+0x38>)
 8000684:	681b      	ldr	r3, [r3, #0]
    }
}
 8000686:	4618      	mov	r0, r3
 8000688:	370c      	adds	r7, #12
 800068a:	46bd      	mov	sp, r7
 800068c:	bc80      	pop	{r7}
 800068e:	4770      	bx	lr
 8000690:	20000034 	.word	0x20000034
 8000694:	20000038 	.word	0x20000038
 8000698:	2000003c 	.word	0x2000003c

0800069c <adc_init>:

void adc_init(uint8_t adc_num) {
 800069c:	b580      	push	{r7, lr}
 800069e:	b084      	sub	sp, #16
 80006a0:	af00      	add	r7, sp, #0
 80006a2:	4603      	mov	r3, r0
 80006a4:	71fb      	strb	r3, [r7, #7]
    adc_t *adc = adc_get(adc_num);
 80006a6:	79fb      	ldrb	r3, [r7, #7]
 80006a8:	4618      	mov	r0, r3
 80006aa:	f7ff ffd5 	bl	8000658 <adc_get>
 80006ae:	60f8      	str	r0, [r7, #12]
    adc->cr2 |= ADON;
 80006b0:	68fb      	ldr	r3, [r7, #12]
 80006b2:	689b      	ldr	r3, [r3, #8]
 80006b4:	f043 0201 	orr.w	r2, r3, #1
 80006b8:	68fb      	ldr	r3, [r7, #12]
 80006ba:	609a      	str	r2, [r3, #8]
    adc_calibrate(adc_num);
 80006bc:	79fb      	ldrb	r3, [r7, #7]
 80006be:	4618      	mov	r0, r3
 80006c0:	f000 f804 	bl	80006cc <adc_calibrate>
}
 80006c4:	bf00      	nop
 80006c6:	3710      	adds	r7, #16
 80006c8:	46bd      	mov	sp, r7
 80006ca:	bd80      	pop	{r7, pc}

080006cc <adc_calibrate>:

void adc_calibrate(uint8_t adc_num) {
 80006cc:	b580      	push	{r7, lr}
 80006ce:	b084      	sub	sp, #16
 80006d0:	af00      	add	r7, sp, #0
 80006d2:	4603      	mov	r3, r0
 80006d4:	71fb      	strb	r3, [r7, #7]
    adc_t *adc = adc_get(adc_num);
 80006d6:	79fb      	ldrb	r3, [r7, #7]
 80006d8:	4618      	mov	r0, r3
 80006da:	f7ff ffbd 	bl	8000658 <adc_get>
 80006de:	60f8      	str	r0, [r7, #12]
    adc->cr2 |= CAL; // enable adc calibration
 80006e0:	68fb      	ldr	r3, [r7, #12]
 80006e2:	689b      	ldr	r3, [r3, #8]
 80006e4:	f043 0204 	orr.w	r2, r3, #4
 80006e8:	68fb      	ldr	r3, [r7, #12]
 80006ea:	609a      	str	r2, [r3, #8]
    while (adc->cr2 & CAL); // check if calibration is complete
 80006ec:	bf00      	nop
 80006ee:	68fb      	ldr	r3, [r7, #12]
 80006f0:	689b      	ldr	r3, [r3, #8]
 80006f2:	f003 0304 	and.w	r3, r3, #4
 80006f6:	2b00      	cmp	r3, #0
 80006f8:	d1f9      	bne.n	80006ee <adc_calibrate+0x22>
    adc->cr1 |= EOCIE;
 80006fa:	68fb      	ldr	r3, [r7, #12]
 80006fc:	685b      	ldr	r3, [r3, #4]
 80006fe:	f043 0220 	orr.w	r2, r3, #32
 8000702:	68fb      	ldr	r3, [r7, #12]
 8000704:	605a      	str	r2, [r3, #4]
}
 8000706:	bf00      	nop
 8000708:	3710      	adds	r7, #16
 800070a:	46bd      	mov	sp, r7
 800070c:	bd80      	pop	{r7, pc}
 800070e:	bf00      	nop

08000710 <__DSB>:
#include "scb.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

static void __DSB(void) {
 8000710:	b480      	push	{r7}
 8000712:	af00      	add	r7, sp, #0
    asm("dsb 0xF" ::: "memory");
 8000714:	f3bf 8f4f 	dsb	sy
}
 8000718:	bf00      	nop
 800071a:	46bd      	mov	sp, r7
 800071c:	bc80      	pop	{r7}
 800071e:	4770      	bx	lr

08000720 <reset_system>:

static void reset_system(void) {
 8000720:	b580      	push	{r7, lr}
 8000722:	af00      	add	r7, sp, #0
    scb->aircr = (VECT_KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
 8000724:	4b06      	ldr	r3, [pc, #24]	; (8000740 <reset_system+0x20>)
 8000726:	681b      	ldr	r3, [r3, #0]
 8000728:	68db      	ldr	r3, [r3, #12]
 800072a:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 800072e:	4b04      	ldr	r3, [pc, #16]	; (8000740 <reset_system+0x20>)
 8000730:	681a      	ldr	r2, [r3, #0]
 8000732:	4b04      	ldr	r3, [pc, #16]	; (8000744 <reset_system+0x24>)
 8000734:	430b      	orrs	r3, r1
 8000736:	60d3      	str	r3, [r2, #12]
    __DSB(); // ensures the completion of memory accesses
 8000738:	f7ff ffea 	bl	8000710 <__DSB>
    while(1);
 800073c:	e7fe      	b.n	800073c <reset_system+0x1c>
 800073e:	bf00      	nop
 8000740:	20000040 	.word	0x20000040
 8000744:	05fa0004 	.word	0x05fa0004

08000748 <TIM2_IRQHandler>:
#include "main.h"

void TIM2_IRQHandler(void) {
 8000748:	b480      	push	{r7}
 800074a:	af00      	add	r7, sp, #0
    tim2->sr = 0U; // reset interrupt
 800074c:	4b03      	ldr	r3, [pc, #12]	; (800075c <TIM2_IRQHandler+0x14>)
 800074e:	681b      	ldr	r3, [r3, #0]
 8000750:	2200      	movs	r2, #0
 8000752:	611a      	str	r2, [r3, #16]
}
 8000754:	bf00      	nop
 8000756:	46bd      	mov	sp, r7
 8000758:	bc80      	pop	{r7}
 800075a:	4770      	bx	lr
 800075c:	20000000 	.word	0x20000000

08000760 <TIM3_IRQHandler>:

void TIM3_IRQHandler(void) {
 8000760:	b580      	push	{r7, lr}
 8000762:	af00      	add	r7, sp, #0
    tim3->sr = 0U; // reset interrupt
 8000764:	4b04      	ldr	r3, [pc, #16]	; (8000778 <TIM3_IRQHandler+0x18>)
 8000766:	681b      	ldr	r3, [r3, #0]
 8000768:	2200      	movs	r2, #0
 800076a:	611a      	str	r2, [r3, #16]
    led_toggle(PA7);
 800076c:	2007      	movs	r0, #7
 800076e:	f7ff fe2b 	bl	80003c8 <led_toggle>
}
 8000772:	bf00      	nop
 8000774:	bd80      	pop	{r7, pc}
 8000776:	bf00      	nop
 8000778:	20000004 	.word	0x20000004

0800077c <USART1_IRQHandler>:

void USART1_IRQHandler(void) {
 800077c:	b580      	push	{r7, lr}
 800077e:	b082      	sub	sp, #8
 8000780:	af00      	add	r7, sp, #0
    char in = (char)(usart1->data & DATA_MASK);
 8000782:	4b06      	ldr	r3, [pc, #24]	; (800079c <USART1_IRQHandler+0x20>)
 8000784:	681b      	ldr	r3, [r3, #0]
 8000786:	685b      	ldr	r3, [r3, #4]
 8000788:	71fb      	strb	r3, [r7, #7]
    serial_wr_c(USART1, in);
 800078a:	79fb      	ldrb	r3, [r7, #7]
 800078c:	4619      	mov	r1, r3
 800078e:	2000      	movs	r0, #0
 8000790:	f000 f8ee 	bl	8000970 <serial_wr_c>
}
 8000794:	bf00      	nop
 8000796:	3708      	adds	r7, #8
 8000798:	46bd      	mov	sp, r7
 800079a:	bd80      	pop	{r7, pc}
 800079c:	20000044 	.word	0x20000044

080007a0 <SysTick_Handler>:

uint32_t __IO cnt = 0;
void SysTick_Handler(void) {
 80007a0:	b480      	push	{r7}
 80007a2:	af00      	add	r7, sp, #0
    cnt++;
 80007a4:	4b04      	ldr	r3, [pc, #16]	; (80007b8 <SysTick_Handler+0x18>)
 80007a6:	681b      	ldr	r3, [r3, #0]
 80007a8:	3301      	adds	r3, #1
 80007aa:	4a03      	ldr	r2, [pc, #12]	; (80007b8 <SysTick_Handler+0x18>)
 80007ac:	6013      	str	r3, [r2, #0]
}
 80007ae:	bf00      	nop
 80007b0:	46bd      	mov	sp, r7
 80007b2:	bc80      	pop	{r7}
 80007b4:	4770      	bx	lr
 80007b6:	bf00      	nop
 80007b8:	20000050 	.word	0x20000050

080007bc <main>:

#define STEP 25

int main(void) {
 80007bc:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 80007c0:	b086      	sub	sp, #24
 80007c2:	af00      	add	r7, sp, #0
    rcc_init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, USART1_EN);
 80007c4:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 80007c8:	211c      	movs	r1, #28
 80007ca:	2003      	movs	r0, #3
 80007cc:	f7ff feda 	bl	8000584 <rcc_init>

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 80007d0:	2103      	movs	r1, #3
 80007d2:	202d      	movs	r0, #45	; 0x2d
 80007d4:	f7ff fdc4 	bl	8000360 <pin_mode>
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1 as output
 80007d8:	210b      	movs	r1, #11
 80007da:	2009      	movs	r0, #9
 80007dc:	f7ff fdc0 	bl	8000360 <pin_mode>
    pin_mode(PA10, INPUT_FLOATING_PT); // enable Rx pin for usart1 as input
 80007e0:	2104      	movs	r1, #4
 80007e2:	200a      	movs	r0, #10
 80007e4:	f7ff fdbc 	bl	8000360 <pin_mode>

    timer_init(TIM3, 10000U, 10000U); // tim3 at 1MHz
 80007e8:	f242 7210 	movw	r2, #10000	; 0x2710
 80007ec:	f242 7110 	movw	r1, #10000	; 0x2710
 80007f0:	2002      	movs	r0, #2
 80007f2:	f7ff fd55 	bl	80002a0 <timer_init>
    pin_mode(PA7, OUT_GP_PUSH_PULL_50);
 80007f6:	2103      	movs	r1, #3
 80007f8:	2007      	movs	r0, #7
 80007fa:	f7ff fdb1 	bl	8000360 <pin_mode>
    nvic_irq_enable(TIM3_IRQn);
 80007fe:	201d      	movs	r0, #29
 8000800:	f7ff fd72 	bl	80002e8 <nvic_irq_enable>

    timer_init(TIM2, 10000U, 255U);
 8000804:	22ff      	movs	r2, #255	; 0xff
 8000806:	f242 7110 	movw	r1, #10000	; 0x2710
 800080a:	2001      	movs	r0, #1
 800080c:	f7ff fd48 	bl	80002a0 <timer_init>
    pin_mode(PA2, OUT_ALT_PUSH_PULL_50);
 8000810:	210b      	movs	r1, #11
 8000812:	2002      	movs	r0, #2
 8000814:	f7ff fda4 	bl	8000360 <pin_mode>
    nvic_irq_enable(TIM2_IRQn);
 8000818:	201c      	movs	r0, #28
 800081a:	f7ff fd65 	bl	80002e8 <nvic_irq_enable>

    systick_init(1000U); // initialize systick at 1Hz
 800081e:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000822:	f7ff fe3d 	bl	80004a0 <systick_init>
    serial_init(USART1, 115200U); // initializer serial at 115200 baud
 8000826:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 800082a:	2000      	movs	r0, #0
 800082c:	f000 f87c 	bl	8000928 <serial_init>
    nvic_irq_enable(USART1_IRQn);
 8000830:	2025      	movs	r0, #37	; 0x25
 8000832:	f7ff fd59 	bl	80002e8 <nvic_irq_enable>

    uint8_t pwm = 0U;
 8000836:	2300      	movs	r3, #0
 8000838:	75fb      	strb	r3, [r7, #23]
    uint64_t start_t = millis();
 800083a:	f7ff fe4f 	bl	80004dc <millis>
 800083e:	4603      	mov	r3, r0
 8000840:	f04f 0400 	mov.w	r4, #0
 8000844:	e9c7 3402 	strd	r3, r4, [r7, #8]
    bool up = true;
 8000848:	2301      	movs	r3, #1
 800084a:	71fb      	strb	r3, [r7, #7]

    while(1) {
        if (millis() - start_t > 1000U) {
 800084c:	f7ff fe46 	bl	80004dc <millis>
 8000850:	4603      	mov	r3, r0
 8000852:	4619      	mov	r1, r3
 8000854:	f04f 0200 	mov.w	r2, #0
 8000858:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 800085c:	1ac9      	subs	r1, r1, r3
 800085e:	eb62 0204 	sbc.w	r2, r2, r4
 8000862:	468b      	mov	fp, r1
 8000864:	4694      	mov	ip, r2
 8000866:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 800086a:	f04f 0200 	mov.w	r2, #0
 800086e:	4562      	cmp	r2, ip
 8000870:	bf08      	it	eq
 8000872:	4559      	cmpeq	r1, fp
 8000874:	d2ea      	bcs.n	800084c <main+0x90>
            serial_wr_s(USART1, "hello world!", true);
 8000876:	2201      	movs	r2, #1
 8000878:	4919      	ldr	r1, [pc, #100]	; (80008e0 <main+0x124>)
 800087a:	2000      	movs	r0, #0
 800087c:	f000 f894 	bl	80009a8 <serial_wr_s>
            led_toggle(PC13);
 8000880:	202d      	movs	r0, #45	; 0x2d
 8000882:	f7ff fda1 	bl	80003c8 <led_toggle>
            start_t = millis();
 8000886:	f7ff fe29 	bl	80004dc <millis>
 800088a:	4603      	mov	r3, r0
 800088c:	f04f 0400 	mov.w	r4, #0
 8000890:	e9c7 3402 	strd	r3, r4, [r7, #8]
            if (up) {
 8000894:	79fb      	ldrb	r3, [r7, #7]
 8000896:	2b00      	cmp	r3, #0
 8000898:	d003      	beq.n	80008a2 <main+0xe6>
                pwm += STEP;
 800089a:	7dfb      	ldrb	r3, [r7, #23]
 800089c:	3319      	adds	r3, #25
 800089e:	75fb      	strb	r3, [r7, #23]
 80008a0:	e002      	b.n	80008a8 <main+0xec>
            }
            else {
                pwm -= STEP;
 80008a2:	7dfb      	ldrb	r3, [r7, #23]
 80008a4:	3b19      	subs	r3, #25
 80008a6:	75fb      	strb	r3, [r7, #23]
            }

            if (pwm == 250 || pwm == 0) up = !up;
 80008a8:	7dfb      	ldrb	r3, [r7, #23]
 80008aa:	2bfa      	cmp	r3, #250	; 0xfa
 80008ac:	d002      	beq.n	80008b4 <main+0xf8>
 80008ae:	7dfb      	ldrb	r3, [r7, #23]
 80008b0:	2b00      	cmp	r3, #0
 80008b2:	d10d      	bne.n	80008d0 <main+0x114>
 80008b4:	79fb      	ldrb	r3, [r7, #7]
 80008b6:	2b00      	cmp	r3, #0
 80008b8:	bf14      	ite	ne
 80008ba:	2301      	movne	r3, #1
 80008bc:	2300      	moveq	r3, #0
 80008be:	b2db      	uxtb	r3, r3
 80008c0:	f083 0301 	eor.w	r3, r3, #1
 80008c4:	b2db      	uxtb	r3, r3
 80008c6:	71fb      	strb	r3, [r7, #7]
 80008c8:	79fb      	ldrb	r3, [r7, #7]
 80008ca:	f003 0301 	and.w	r3, r3, #1
 80008ce:	71fb      	strb	r3, [r7, #7]
            enable_chan(TIM2, PWM, CHAN3, pwm);
 80008d0:	7dfb      	ldrb	r3, [r7, #23]
 80008d2:	2202      	movs	r2, #2
 80008d4:	2168      	movs	r1, #104	; 0x68
 80008d6:	2001      	movs	r0, #1
 80008d8:	f7ff fc92 	bl	8000200 <enable_chan>
        if (millis() - start_t > 1000U) {
 80008dc:	e7b6      	b.n	800084c <main+0x90>
 80008de:	bf00      	nop
 80008e0:	08000ad4 	.word	0x08000ad4

080008e4 <usart_get>:

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

usart_t *usart_get(uint8_t usart) {
 80008e4:	b480      	push	{r7}
 80008e6:	b083      	sub	sp, #12
 80008e8:	af00      	add	r7, sp, #0
 80008ea:	4603      	mov	r3, r0
 80008ec:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 80008ee:	79fb      	ldrb	r3, [r7, #7]
 80008f0:	2b01      	cmp	r3, #1
 80008f2:	d006      	beq.n	8000902 <usart_get+0x1e>
 80008f4:	2b02      	cmp	r3, #2
 80008f6:	d007      	beq.n	8000908 <usart_get+0x24>
 80008f8:	2b00      	cmp	r3, #0
 80008fa:	d108      	bne.n	800090e <usart_get+0x2a>
        case USART1: return usart1;
 80008fc:	4b07      	ldr	r3, [pc, #28]	; (800091c <usart_get+0x38>)
 80008fe:	681b      	ldr	r3, [r3, #0]
 8000900:	e007      	b.n	8000912 <usart_get+0x2e>
        case USART2: return usart2;
 8000902:	4b07      	ldr	r3, [pc, #28]	; (8000920 <usart_get+0x3c>)
 8000904:	681b      	ldr	r3, [r3, #0]
 8000906:	e004      	b.n	8000912 <usart_get+0x2e>
        case USART3: return usart3;
 8000908:	4b06      	ldr	r3, [pc, #24]	; (8000924 <usart_get+0x40>)
 800090a:	681b      	ldr	r3, [r3, #0]
 800090c:	e001      	b.n	8000912 <usart_get+0x2e>
        default: return usart1;
 800090e:	4b03      	ldr	r3, [pc, #12]	; (800091c <usart_get+0x38>)
 8000910:	681b      	ldr	r3, [r3, #0]
    }
}
 8000912:	4618      	mov	r0, r3
 8000914:	370c      	adds	r7, #12
 8000916:	46bd      	mov	sp, r7
 8000918:	bc80      	pop	{r7}
 800091a:	4770      	bx	lr
 800091c:	20000044 	.word	0x20000044
 8000920:	20000048 	.word	0x20000048
 8000924:	2000004c 	.word	0x2000004c

08000928 <serial_init>:

void serial_init(uint8_t usart, uint32_t baud) {
 8000928:	b580      	push	{r7, lr}
 800092a:	b084      	sub	sp, #16
 800092c:	af00      	add	r7, sp, #0
 800092e:	4603      	mov	r3, r0
 8000930:	6039      	str	r1, [r7, #0]
 8000932:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = usart_get(usart);
 8000934:	79fb      	ldrb	r3, [r7, #7]
 8000936:	4618      	mov	r0, r3
 8000938:	f7ff ffd4 	bl	80008e4 <usart_get>
 800093c:	60f8      	str	r0, [r7, #12]
    serial->cr1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
 800093e:	68fb      	ldr	r3, [r7, #12]
 8000940:	f242 022c 	movw	r2, #8236	; 0x202c
 8000944:	60da      	str	r2, [r3, #12]
    serial->cr2 = 0;
 8000946:	68fb      	ldr	r3, [r7, #12]
 8000948:	2200      	movs	r2, #0
 800094a:	611a      	str	r2, [r3, #16]
    serial->cr3 = 0;
 800094c:	68fb      	ldr	r3, [r7, #12]
 800094e:	2200      	movs	r2, #0
 8000950:	615a      	str	r2, [r3, #20]
    serial->gtpr = 0;
 8000952:	68fb      	ldr	r3, [r7, #12]
 8000954:	2200      	movs	r2, #0
 8000956:	619a      	str	r2, [r3, #24]
    serial->baud = PCLK2 / baud;
 8000958:	4a04      	ldr	r2, [pc, #16]	; (800096c <serial_init+0x44>)
 800095a:	683b      	ldr	r3, [r7, #0]
 800095c:	fbb2 f2f3 	udiv	r2, r2, r3
 8000960:	68fb      	ldr	r3, [r7, #12]
 8000962:	609a      	str	r2, [r3, #8]
}
 8000964:	bf00      	nop
 8000966:	3710      	adds	r7, #16
 8000968:	46bd      	mov	sp, r7
 800096a:	bd80      	pop	{r7, pc}
 800096c:	044aa200 	.word	0x044aa200

08000970 <serial_wr_c>:

bool serial_wr_c(uint8_t usart, char c) {
 8000970:	b580      	push	{r7, lr}
 8000972:	b084      	sub	sp, #16
 8000974:	af00      	add	r7, sp, #0
 8000976:	4603      	mov	r3, r0
 8000978:	460a      	mov	r2, r1
 800097a:	71fb      	strb	r3, [r7, #7]
 800097c:	4613      	mov	r3, r2
 800097e:	71bb      	strb	r3, [r7, #6]
    usart_t *serial = usart_get(usart);
 8000980:	79fb      	ldrb	r3, [r7, #7]
 8000982:	4618      	mov	r0, r3
 8000984:	f7ff ffae 	bl	80008e4 <usart_get>
 8000988:	60f8      	str	r0, [r7, #12]
    serial->data = c;
 800098a:	79ba      	ldrb	r2, [r7, #6]
 800098c:	68fb      	ldr	r3, [r7, #12]
 800098e:	605a      	str	r2, [r3, #4]
    while(!(serial->sr & TC));
 8000990:	bf00      	nop
 8000992:	68fb      	ldr	r3, [r7, #12]
 8000994:	681b      	ldr	r3, [r3, #0]
 8000996:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800099a:	2b00      	cmp	r3, #0
 800099c:	d0f9      	beq.n	8000992 <serial_wr_c+0x22>
    return USART_SUCCESS;
 800099e:	2301      	movs	r3, #1
}
 80009a0:	4618      	mov	r0, r3
 80009a2:	3710      	adds	r7, #16
 80009a4:	46bd      	mov	sp, r7
 80009a6:	bd80      	pop	{r7, pc}

080009a8 <serial_wr_s>:

bool serial_wr_s(uint8_t usart, char *s, bool new_line) {
 80009a8:	b580      	push	{r7, lr}
 80009aa:	b082      	sub	sp, #8
 80009ac:	af00      	add	r7, sp, #0
 80009ae:	4603      	mov	r3, r0
 80009b0:	6039      	str	r1, [r7, #0]
 80009b2:	71fb      	strb	r3, [r7, #7]
 80009b4:	4613      	mov	r3, r2
 80009b6:	71bb      	strb	r3, [r7, #6]
    while(*s) serial_wr_c(usart, *s++);
 80009b8:	e008      	b.n	80009cc <serial_wr_s+0x24>
 80009ba:	683b      	ldr	r3, [r7, #0]
 80009bc:	1c5a      	adds	r2, r3, #1
 80009be:	603a      	str	r2, [r7, #0]
 80009c0:	781a      	ldrb	r2, [r3, #0]
 80009c2:	79fb      	ldrb	r3, [r7, #7]
 80009c4:	4611      	mov	r1, r2
 80009c6:	4618      	mov	r0, r3
 80009c8:	f7ff ffd2 	bl	8000970 <serial_wr_c>
 80009cc:	683b      	ldr	r3, [r7, #0]
 80009ce:	781b      	ldrb	r3, [r3, #0]
 80009d0:	2b00      	cmp	r3, #0
 80009d2:	d1f2      	bne.n	80009ba <serial_wr_s+0x12>
    if (!new_line) return 1;
 80009d4:	79bb      	ldrb	r3, [r7, #6]
 80009d6:	f083 0301 	eor.w	r3, r3, #1
 80009da:	b2db      	uxtb	r3, r3
 80009dc:	2b00      	cmp	r3, #0
 80009de:	d001      	beq.n	80009e4 <serial_wr_s+0x3c>
 80009e0:	2301      	movs	r3, #1
 80009e2:	e00a      	b.n	80009fa <serial_wr_s+0x52>
    serial_wr_c(usart, '\r');
 80009e4:	79fb      	ldrb	r3, [r7, #7]
 80009e6:	210d      	movs	r1, #13
 80009e8:	4618      	mov	r0, r3
 80009ea:	f7ff ffc1 	bl	8000970 <serial_wr_c>
    serial_wr_c(usart, '\n');
 80009ee:	79fb      	ldrb	r3, [r7, #7]
 80009f0:	210a      	movs	r1, #10
 80009f2:	4618      	mov	r0, r3
 80009f4:	f7ff ffbc 	bl	8000970 <serial_wr_c>
    return USART_SUCCESS;
 80009f8:	2301      	movs	r3, #1
}
 80009fa:	4618      	mov	r0, r3
 80009fc:	3708      	adds	r7, #8
 80009fe:	46bd      	mov	sp, r7
 8000a00:	bd80      	pop	{r7, pc}

08000a02 <serial_r_c>:

char serial_r_c(uint8_t usart) {
 8000a02:	b580      	push	{r7, lr}
 8000a04:	b084      	sub	sp, #16
 8000a06:	af00      	add	r7, sp, #0
 8000a08:	4603      	mov	r3, r0
 8000a0a:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = usart_get(usart);
 8000a0c:	79fb      	ldrb	r3, [r7, #7]
 8000a0e:	4618      	mov	r0, r3
 8000a10:	f7ff ff68 	bl	80008e4 <usart_get>
 8000a14:	60f8      	str	r0, [r7, #12]
    while(!(serial->sr & RXNE));
 8000a16:	bf00      	nop
 8000a18:	68fb      	ldr	r3, [r7, #12]
 8000a1a:	681b      	ldr	r3, [r3, #0]
 8000a1c:	f003 0320 	and.w	r3, r3, #32
 8000a20:	2b00      	cmp	r3, #0
 8000a22:	d0f9      	beq.n	8000a18 <serial_r_c+0x16>
    return (char)(serial->data & DATA_MASK);
 8000a24:	68fb      	ldr	r3, [r7, #12]
 8000a26:	685b      	ldr	r3, [r3, #4]
 8000a28:	b2db      	uxtb	r3, r3
}
 8000a2a:	4618      	mov	r0, r3
 8000a2c:	3710      	adds	r7, #16
 8000a2e:	46bd      	mov	sp, r7
 8000a30:	bd80      	pop	{r7, pc}

08000a32 <serial_r_s>:

char *serial_r_s(uint8_t usart, char *buffer) {
 8000a32:	b590      	push	{r4, r7, lr}
 8000a34:	b083      	sub	sp, #12
 8000a36:	af00      	add	r7, sp, #0
 8000a38:	4603      	mov	r3, r0
 8000a3a:	6039      	str	r1, [r7, #0]
 8000a3c:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 8000a3e:	e008      	b.n	8000a52 <serial_r_s+0x20>
        *buffer++ = serial_r_c(usart);
 8000a40:	683c      	ldr	r4, [r7, #0]
 8000a42:	1c63      	adds	r3, r4, #1
 8000a44:	603b      	str	r3, [r7, #0]
 8000a46:	79fb      	ldrb	r3, [r7, #7]
 8000a48:	4618      	mov	r0, r3
 8000a4a:	f7ff ffda 	bl	8000a02 <serial_r_c>
 8000a4e:	4603      	mov	r3, r0
 8000a50:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 8000a52:	683b      	ldr	r3, [r7, #0]
 8000a54:	781b      	ldrb	r3, [r3, #0]
 8000a56:	2b00      	cmp	r3, #0
 8000a58:	d1f2      	bne.n	8000a40 <serial_r_s+0xe>
    }
    return buffer;
 8000a5a:	683b      	ldr	r3, [r7, #0]
}
 8000a5c:	4618      	mov	r0, r3
 8000a5e:	370c      	adds	r7, #12
 8000a60:	46bd      	mov	sp, r7
 8000a62:	bd90      	pop	{r4, r7, pc}

08000a64 <__enable_irq>:
#include "intrinsic.h"

// enable interrupt
void __enable_irq(void) {
 8000a64:	b480      	push	{r7}
 8000a66:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsie i" ::: "memory");
 8000a68:	b662      	cpsie	i
}
 8000a6a:	bf00      	nop
 8000a6c:	46bd      	mov	sp, r7
 8000a6e:	bc80      	pop	{r7}
 8000a70:	4770      	bx	lr

08000a72 <__disable_irq>:

// disable interrupt
void __disable_irq(void) {
 8000a72:	b480      	push	{r7}
 8000a74:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsid i" ::: "memory");
 8000a76:	b672      	cpsid	i
}
 8000a78:	bf00      	nop
 8000a7a:	46bd      	mov	sp, r7
 8000a7c:	bc80      	pop	{r7}
 8000a7e:	4770      	bx	lr

08000a80 <__NOP>:

// no operation
void __NOP(void) {
 8000a80:	b480      	push	{r7}
 8000a82:	af00      	add	r7, sp, #0
    __ASM volatile ("nop");
 8000a84:	bf00      	nop
}
 8000a86:	bf00      	nop
 8000a88:	46bd      	mov	sp, r7
 8000a8a:	bc80      	pop	{r7}
 8000a8c:	4770      	bx	lr
	...

08000a90 <Reset_Handler>:
 8000a90:	2100      	movs	r1, #0
 8000a92:	e003      	b.n	8000a9c <LoopCopyDataInit>

08000a94 <CopyDataInit>:
 8000a94:	4b09      	ldr	r3, [pc, #36]	; (8000abc <LoopFillZerobss+0xc>)
 8000a96:	585b      	ldr	r3, [r3, r1]
 8000a98:	5043      	str	r3, [r0, r1]
 8000a9a:	3104      	adds	r1, #4

08000a9c <LoopCopyDataInit>:
 8000a9c:	4808      	ldr	r0, [pc, #32]	; (8000ac0 <LoopFillZerobss+0x10>)
 8000a9e:	4b09      	ldr	r3, [pc, #36]	; (8000ac4 <LoopFillZerobss+0x14>)
 8000aa0:	1842      	adds	r2, r0, r1
 8000aa2:	429a      	cmp	r2, r3
 8000aa4:	d3f6      	bcc.n	8000a94 <CopyDataInit>
 8000aa6:	4a08      	ldr	r2, [pc, #32]	; (8000ac8 <LoopFillZerobss+0x18>)
 8000aa8:	e002      	b.n	8000ab0 <LoopFillZerobss>

08000aaa <FillZerobss>:
 8000aaa:	2300      	movs	r3, #0
 8000aac:	f842 3b04 	str.w	r3, [r2], #4

08000ab0 <LoopFillZerobss>:
 8000ab0:	4b06      	ldr	r3, [pc, #24]	; (8000acc <LoopFillZerobss+0x1c>)
 8000ab2:	429a      	cmp	r2, r3
 8000ab4:	d3f9      	bcc.n	8000aaa <FillZerobss>
 8000ab6:	f7ff fe81 	bl	80007bc <main>
 8000aba:	4770      	bx	lr
 8000abc:	08000ae4 	.word	0x08000ae4
 8000ac0:	20000000 	.word	0x20000000
 8000ac4:	20000050 	.word	0x20000050
 8000ac8:	20000050 	.word	0x20000050
 8000acc:	20000054 	.word	0x20000054

08000ad0 <ADC1_2_IRQHandler>:
 8000ad0:	e7fe      	b.n	8000ad0 <ADC1_2_IRQHandler>
	...
