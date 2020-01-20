
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000150 <timer_get-0x14>:
 8000150:	08000b48 	.word	0x08000b48
 8000154:	20000000 	.word	0x20000000
 8000158:	20000050 	.word	0x20000050
 800015c:	20000050 	.word	0x20000050
 8000160:	20000060 	.word	0x20000060

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
 8000508:	f000 faec 	bl	8000ae4 <__NOP>
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
 800054e:	f000 fac9 	bl	8000ae4 <__NOP>
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

void rcc_init(uint32_t tim_en, uint32_t gpio_en, uint32_t adc_en, uint32_t usart_en) {
 8000584:	b480      	push	{r7}
 8000586:	b085      	sub	sp, #20
 8000588:	af00      	add	r7, sp, #0
 800058a:	60f8      	str	r0, [r7, #12]
 800058c:	60b9      	str	r1, [r7, #8]
 800058e:	607a      	str	r2, [r7, #4]
 8000590:	603b      	str	r3, [r7, #0]
    // switch to 72Mhz clock //
    flash->acr |= LATENCY_2;
 8000592:	4b30      	ldr	r3, [pc, #192]	; (8000654 <rcc_init+0xd0>)
 8000594:	681b      	ldr	r3, [r3, #0]
 8000596:	681a      	ldr	r2, [r3, #0]
 8000598:	4b2e      	ldr	r3, [pc, #184]	; (8000654 <rcc_init+0xd0>)
 800059a:	681b      	ldr	r3, [r3, #0]
 800059c:	f042 0202 	orr.w	r2, r2, #2
 80005a0:	601a      	str	r2, [r3, #0]
    rcc->cfgr |= APB1_DIV2;
 80005a2:	4b2d      	ldr	r3, [pc, #180]	; (8000658 <rcc_init+0xd4>)
 80005a4:	681b      	ldr	r3, [r3, #0]
 80005a6:	685a      	ldr	r2, [r3, #4]
 80005a8:	4b2b      	ldr	r3, [pc, #172]	; (8000658 <rcc_init+0xd4>)
 80005aa:	681b      	ldr	r3, [r3, #0]
 80005ac:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80005b0:	605a      	str	r2, [r3, #4]

    rcc->cr |= HSEON;
 80005b2:	4b29      	ldr	r3, [pc, #164]	; (8000658 <rcc_init+0xd4>)
 80005b4:	681b      	ldr	r3, [r3, #0]
 80005b6:	681a      	ldr	r2, [r3, #0]
 80005b8:	4b27      	ldr	r3, [pc, #156]	; (8000658 <rcc_init+0xd4>)
 80005ba:	681b      	ldr	r3, [r3, #0]
 80005bc:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80005c0:	601a      	str	r2, [r3, #0]
    while (!(rcc->cr & HSERDY));
 80005c2:	bf00      	nop
 80005c4:	4b24      	ldr	r3, [pc, #144]	; (8000658 <rcc_init+0xd4>)
 80005c6:	681b      	ldr	r3, [r3, #0]
 80005c8:	681b      	ldr	r3, [r3, #0]
 80005ca:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80005ce:	2b00      	cmp	r3, #0
 80005d0:	d0f8      	beq.n	80005c4 <rcc_init+0x40>

    rcc->cfgr |= (PLLHSE|PLL_9);
 80005d2:	4b21      	ldr	r3, [pc, #132]	; (8000658 <rcc_init+0xd4>)
 80005d4:	681b      	ldr	r3, [r3, #0]
 80005d6:	685a      	ldr	r2, [r3, #4]
 80005d8:	4b1f      	ldr	r3, [pc, #124]	; (8000658 <rcc_init+0xd4>)
 80005da:	681b      	ldr	r3, [r3, #0]
 80005dc:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80005e0:	605a      	str	r2, [r3, #4]
    rcc->cr |= PLLON;
 80005e2:	4b1d      	ldr	r3, [pc, #116]	; (8000658 <rcc_init+0xd4>)
 80005e4:	681b      	ldr	r3, [r3, #0]
 80005e6:	681a      	ldr	r2, [r3, #0]
 80005e8:	4b1b      	ldr	r3, [pc, #108]	; (8000658 <rcc_init+0xd4>)
 80005ea:	681b      	ldr	r3, [r3, #0]
 80005ec:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80005f0:	601a      	str	r2, [r3, #0]
    while (!(rcc->cr & PLLRDY));
 80005f2:	bf00      	nop
 80005f4:	4b18      	ldr	r3, [pc, #96]	; (8000658 <rcc_init+0xd4>)
 80005f6:	681b      	ldr	r3, [r3, #0]
 80005f8:	681b      	ldr	r3, [r3, #0]
 80005fa:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80005fe:	2b00      	cmp	r3, #0
 8000600:	d0f8      	beq.n	80005f4 <rcc_init+0x70>

    rcc->cfgr |= SWPLL;
 8000602:	4b15      	ldr	r3, [pc, #84]	; (8000658 <rcc_init+0xd4>)
 8000604:	681b      	ldr	r3, [r3, #0]
 8000606:	685a      	ldr	r2, [r3, #4]
 8000608:	4b13      	ldr	r3, [pc, #76]	; (8000658 <rcc_init+0xd4>)
 800060a:	681b      	ldr	r3, [r3, #0]
 800060c:	f042 0202 	orr.w	r2, r2, #2
 8000610:	605a      	str	r2, [r3, #4]
    while (!(rcc->cfgr & SWSPLL));
 8000612:	bf00      	nop
 8000614:	4b10      	ldr	r3, [pc, #64]	; (8000658 <rcc_init+0xd4>)
 8000616:	681b      	ldr	r3, [r3, #0]
 8000618:	685b      	ldr	r3, [r3, #4]
 800061a:	f003 0308 	and.w	r3, r3, #8
 800061e:	2b00      	cmp	r3, #0
 8000620:	d0f8      	beq.n	8000614 <rcc_init+0x90>

    rcc->apbe1 |= tim_en; // enable timers
 8000622:	4b0d      	ldr	r3, [pc, #52]	; (8000658 <rcc_init+0xd4>)
 8000624:	681b      	ldr	r3, [r3, #0]
 8000626:	69d9      	ldr	r1, [r3, #28]
 8000628:	4b0b      	ldr	r3, [pc, #44]	; (8000658 <rcc_init+0xd4>)
 800062a:	681b      	ldr	r3, [r3, #0]
 800062c:	68fa      	ldr	r2, [r7, #12]
 800062e:	430a      	orrs	r2, r1
 8000630:	61da      	str	r2, [r3, #28]
    rcc->apbe2 |= (gpio_en|adc_en|usart_en); // enable GPIO pins and USART
 8000632:	4b09      	ldr	r3, [pc, #36]	; (8000658 <rcc_init+0xd4>)
 8000634:	681b      	ldr	r3, [r3, #0]
 8000636:	6999      	ldr	r1, [r3, #24]
 8000638:	68ba      	ldr	r2, [r7, #8]
 800063a:	687b      	ldr	r3, [r7, #4]
 800063c:	431a      	orrs	r2, r3
 800063e:	683b      	ldr	r3, [r7, #0]
 8000640:	431a      	orrs	r2, r3
 8000642:	4b05      	ldr	r3, [pc, #20]	; (8000658 <rcc_init+0xd4>)
 8000644:	681b      	ldr	r3, [r3, #0]
 8000646:	430a      	orrs	r2, r1
 8000648:	619a      	str	r2, [r3, #24]
}
 800064a:	bf00      	nop
 800064c:	3714      	adds	r7, #20
 800064e:	46bd      	mov	sp, r7
 8000650:	bc80      	pop	{r7}
 8000652:	4770      	bx	lr
 8000654:	2000002c 	.word	0x2000002c
 8000658:	20000030 	.word	0x20000030

0800065c <adc_get>:

adc_t *adc1 = (adc_t *)(ADC1_BASE);
adc_t *adc2 = (adc_t *)(ADC2_BASE);
adc_t *adc3 = (adc_t *)(ADC3_BASE);

adc_t *adc_get(uint8_t adc_num) {
 800065c:	b480      	push	{r7}
 800065e:	b083      	sub	sp, #12
 8000660:	af00      	add	r7, sp, #0
 8000662:	4603      	mov	r3, r0
 8000664:	71fb      	strb	r3, [r7, #7]
    switch (adc_num) {
 8000666:	79fb      	ldrb	r3, [r7, #7]
 8000668:	2b01      	cmp	r3, #1
 800066a:	d006      	beq.n	800067a <adc_get+0x1e>
 800066c:	2b02      	cmp	r3, #2
 800066e:	d007      	beq.n	8000680 <adc_get+0x24>
 8000670:	2b00      	cmp	r3, #0
 8000672:	d108      	bne.n	8000686 <adc_get+0x2a>
    case ADC1: return adc1;
 8000674:	4b07      	ldr	r3, [pc, #28]	; (8000694 <adc_get+0x38>)
 8000676:	681b      	ldr	r3, [r3, #0]
 8000678:	e007      	b.n	800068a <adc_get+0x2e>
    case ADC2: return adc2;
 800067a:	4b07      	ldr	r3, [pc, #28]	; (8000698 <adc_get+0x3c>)
 800067c:	681b      	ldr	r3, [r3, #0]
 800067e:	e004      	b.n	800068a <adc_get+0x2e>
    case ADC3: return adc3;
 8000680:	4b06      	ldr	r3, [pc, #24]	; (800069c <adc_get+0x40>)
 8000682:	681b      	ldr	r3, [r3, #0]
 8000684:	e001      	b.n	800068a <adc_get+0x2e>
    default: return adc1;
 8000686:	4b03      	ldr	r3, [pc, #12]	; (8000694 <adc_get+0x38>)
 8000688:	681b      	ldr	r3, [r3, #0]
    }
}
 800068a:	4618      	mov	r0, r3
 800068c:	370c      	adds	r7, #12
 800068e:	46bd      	mov	sp, r7
 8000690:	bc80      	pop	{r7}
 8000692:	4770      	bx	lr
 8000694:	20000034 	.word	0x20000034
 8000698:	20000038 	.word	0x20000038
 800069c:	2000003c 	.word	0x2000003c

080006a0 <adc_init>:

void adc_init(uint8_t adc_num) {
 80006a0:	b580      	push	{r7, lr}
 80006a2:	b084      	sub	sp, #16
 80006a4:	af00      	add	r7, sp, #0
 80006a6:	4603      	mov	r3, r0
 80006a8:	71fb      	strb	r3, [r7, #7]
    adc_t *adc = adc_get(adc_num);
 80006aa:	79fb      	ldrb	r3, [r7, #7]
 80006ac:	4618      	mov	r0, r3
 80006ae:	f7ff ffd5 	bl	800065c <adc_get>
 80006b2:	60f8      	str	r0, [r7, #12]
    adc->cr2 |= ADON;
 80006b4:	68fb      	ldr	r3, [r7, #12]
 80006b6:	689b      	ldr	r3, [r3, #8]
 80006b8:	f043 0201 	orr.w	r2, r3, #1
 80006bc:	68fb      	ldr	r3, [r7, #12]
 80006be:	609a      	str	r2, [r3, #8]
    adc_calibrate(adc_num);
 80006c0:	79fb      	ldrb	r3, [r7, #7]
 80006c2:	4618      	mov	r0, r3
 80006c4:	f000 f804 	bl	80006d0 <adc_calibrate>
}
 80006c8:	bf00      	nop
 80006ca:	3710      	adds	r7, #16
 80006cc:	46bd      	mov	sp, r7
 80006ce:	bd80      	pop	{r7, pc}

080006d0 <adc_calibrate>:

void adc_calibrate(uint8_t adc_num) {
 80006d0:	b580      	push	{r7, lr}
 80006d2:	b084      	sub	sp, #16
 80006d4:	af00      	add	r7, sp, #0
 80006d6:	4603      	mov	r3, r0
 80006d8:	71fb      	strb	r3, [r7, #7]
    adc_t *adc = adc_get(adc_num);
 80006da:	79fb      	ldrb	r3, [r7, #7]
 80006dc:	4618      	mov	r0, r3
 80006de:	f7ff ffbd 	bl	800065c <adc_get>
 80006e2:	60f8      	str	r0, [r7, #12]
    adc->cr2 |= CAL; // enable adc calibration
 80006e4:	68fb      	ldr	r3, [r7, #12]
 80006e6:	689b      	ldr	r3, [r3, #8]
 80006e8:	f043 0204 	orr.w	r2, r3, #4
 80006ec:	68fb      	ldr	r3, [r7, #12]
 80006ee:	609a      	str	r2, [r3, #8]
    while (adc->cr2 & CAL); // check if calibration is complete
 80006f0:	bf00      	nop
 80006f2:	68fb      	ldr	r3, [r7, #12]
 80006f4:	689b      	ldr	r3, [r3, #8]
 80006f6:	f003 0304 	and.w	r3, r3, #4
 80006fa:	2b00      	cmp	r3, #0
 80006fc:	d1f9      	bne.n	80006f2 <adc_calibrate+0x22>
    adc->cr1 |= EOCIE;
 80006fe:	68fb      	ldr	r3, [r7, #12]
 8000700:	685b      	ldr	r3, [r3, #4]
 8000702:	f043 0220 	orr.w	r2, r3, #32
 8000706:	68fb      	ldr	r3, [r7, #12]
 8000708:	605a      	str	r2, [r3, #4]
}
 800070a:	bf00      	nop
 800070c:	3710      	adds	r7, #16
 800070e:	46bd      	mov	sp, r7
 8000710:	bd80      	pop	{r7, pc}

08000712 <adc_read>:

uint32_t adc_read(uint8_t adc_num) {
 8000712:	b580      	push	{r7, lr}
 8000714:	b084      	sub	sp, #16
 8000716:	af00      	add	r7, sp, #0
 8000718:	4603      	mov	r3, r0
 800071a:	71fb      	strb	r3, [r7, #7]
    adc_t *adc = adc_get(adc_num);
 800071c:	79fb      	ldrb	r3, [r7, #7]
 800071e:	4618      	mov	r0, r3
 8000720:	f7ff ff9c 	bl	800065c <adc_get>
 8000724:	60f8      	str	r0, [r7, #12]
    return (adc->sr & EOC) ? adc->dr : 0;
 8000726:	68fb      	ldr	r3, [r7, #12]
 8000728:	681b      	ldr	r3, [r3, #0]
 800072a:	f003 0302 	and.w	r3, r3, #2
 800072e:	2b00      	cmp	r3, #0
 8000730:	d002      	beq.n	8000738 <adc_read+0x26>
 8000732:	68fb      	ldr	r3, [r7, #12]
 8000734:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8000736:	e000      	b.n	800073a <adc_read+0x28>
 8000738:	2300      	movs	r3, #0
}
 800073a:	4618      	mov	r0, r3
 800073c:	3710      	adds	r7, #16
 800073e:	46bd      	mov	sp, r7
 8000740:	bd80      	pop	{r7, pc}
 8000742:	bf00      	nop

08000744 <__DSB>:
#include "scb.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

static void __DSB(void) {
 8000744:	b480      	push	{r7}
 8000746:	af00      	add	r7, sp, #0
    asm("dsb 0xF" ::: "memory");
 8000748:	f3bf 8f4f 	dsb	sy
}
 800074c:	bf00      	nop
 800074e:	46bd      	mov	sp, r7
 8000750:	bc80      	pop	{r7}
 8000752:	4770      	bx	lr

08000754 <reset_system>:

static void reset_system(void) {
 8000754:	b580      	push	{r7, lr}
 8000756:	af00      	add	r7, sp, #0
    scb->aircr = (VECT_KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
 8000758:	4b06      	ldr	r3, [pc, #24]	; (8000774 <reset_system+0x20>)
 800075a:	681b      	ldr	r3, [r3, #0]
 800075c:	68db      	ldr	r3, [r3, #12]
 800075e:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 8000762:	4b04      	ldr	r3, [pc, #16]	; (8000774 <reset_system+0x20>)
 8000764:	681a      	ldr	r2, [r3, #0]
 8000766:	4b04      	ldr	r3, [pc, #16]	; (8000778 <reset_system+0x24>)
 8000768:	430b      	orrs	r3, r1
 800076a:	60d3      	str	r3, [r2, #12]
    __DSB(); // ensures the completion of memory accesses
 800076c:	f7ff ffea 	bl	8000744 <__DSB>
    while(1);
 8000770:	e7fe      	b.n	8000770 <reset_system+0x1c>
 8000772:	bf00      	nop
 8000774:	20000040 	.word	0x20000040
 8000778:	05fa0004 	.word	0x05fa0004

0800077c <ADC1_2_IRQHandler>:
#include "main.h"

uint64_t adc_in;

void ADC1_2_IRQHandler(void) {
 800077c:	b598      	push	{r3, r4, r7, lr}
 800077e:	af00      	add	r7, sp, #0
    adc_in = adc_read(ADC1);
 8000780:	2000      	movs	r0, #0
 8000782:	f7ff ffc6 	bl	8000712 <adc_read>
 8000786:	4603      	mov	r3, r0
 8000788:	f04f 0400 	mov.w	r4, #0
 800078c:	4a02      	ldr	r2, [pc, #8]	; (8000798 <ADC1_2_IRQHandler+0x1c>)
 800078e:	e9c2 3400 	strd	r3, r4, [r2]
}
 8000792:	bf00      	nop
 8000794:	bd98      	pop	{r3, r4, r7, pc}
 8000796:	bf00      	nop
 8000798:	20000058 	.word	0x20000058

0800079c <TIM2_IRQHandler>:

void TIM2_IRQHandler(void) {
 800079c:	b480      	push	{r7}
 800079e:	af00      	add	r7, sp, #0
    tim2->sr = 0U; // reset interrupt
 80007a0:	4b03      	ldr	r3, [pc, #12]	; (80007b0 <TIM2_IRQHandler+0x14>)
 80007a2:	681b      	ldr	r3, [r3, #0]
 80007a4:	2200      	movs	r2, #0
 80007a6:	611a      	str	r2, [r3, #16]
}
 80007a8:	bf00      	nop
 80007aa:	46bd      	mov	sp, r7
 80007ac:	bc80      	pop	{r7}
 80007ae:	4770      	bx	lr
 80007b0:	20000000 	.word	0x20000000

080007b4 <TIM3_IRQHandler>:

void TIM3_IRQHandler(void) {
 80007b4:	b580      	push	{r7, lr}
 80007b6:	af00      	add	r7, sp, #0
    tim3->sr = 0U; // reset interrupt
 80007b8:	4b04      	ldr	r3, [pc, #16]	; (80007cc <TIM3_IRQHandler+0x18>)
 80007ba:	681b      	ldr	r3, [r3, #0]
 80007bc:	2200      	movs	r2, #0
 80007be:	611a      	str	r2, [r3, #16]
    led_toggle(PA7);
 80007c0:	2007      	movs	r0, #7
 80007c2:	f7ff fe01 	bl	80003c8 <led_toggle>
}
 80007c6:	bf00      	nop
 80007c8:	bd80      	pop	{r7, pc}
 80007ca:	bf00      	nop
 80007cc:	20000004 	.word	0x20000004

080007d0 <USART1_IRQHandler>:

void USART1_IRQHandler(void) {
 80007d0:	b580      	push	{r7, lr}
 80007d2:	b082      	sub	sp, #8
 80007d4:	af00      	add	r7, sp, #0
    char in = (char)(usart1->data & DATA_MASK);
 80007d6:	4b06      	ldr	r3, [pc, #24]	; (80007f0 <USART1_IRQHandler+0x20>)
 80007d8:	681b      	ldr	r3, [r3, #0]
 80007da:	685b      	ldr	r3, [r3, #4]
 80007dc:	71fb      	strb	r3, [r7, #7]
    serial_wr_c(USART1, in);
 80007de:	79fb      	ldrb	r3, [r7, #7]
 80007e0:	4619      	mov	r1, r3
 80007e2:	2000      	movs	r0, #0
 80007e4:	f000 f8f6 	bl	80009d4 <serial_wr_c>
}
 80007e8:	bf00      	nop
 80007ea:	3708      	adds	r7, #8
 80007ec:	46bd      	mov	sp, r7
 80007ee:	bd80      	pop	{r7, pc}
 80007f0:	20000044 	.word	0x20000044

080007f4 <SysTick_Handler>:

uint32_t __IO cnt = 0;
void SysTick_Handler(void) {
 80007f4:	b480      	push	{r7}
 80007f6:	af00      	add	r7, sp, #0
    cnt++;
 80007f8:	4b04      	ldr	r3, [pc, #16]	; (800080c <SysTick_Handler+0x18>)
 80007fa:	681b      	ldr	r3, [r3, #0]
 80007fc:	3301      	adds	r3, #1
 80007fe:	4a03      	ldr	r2, [pc, #12]	; (800080c <SysTick_Handler+0x18>)
 8000800:	6013      	str	r3, [r2, #0]
}
 8000802:	bf00      	nop
 8000804:	46bd      	mov	sp, r7
 8000806:	bc80      	pop	{r7}
 8000808:	4770      	bx	lr
 800080a:	bf00      	nop
 800080c:	20000050 	.word	0x20000050

08000810 <main>:

#define STEP 25

int main(void) {
 8000810:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 8000814:	b086      	sub	sp, #24
 8000816:	af00      	add	r7, sp, #0
    rcc_init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, ADC1_EN, USART1_EN);
 8000818:	f44f 4380 	mov.w	r3, #16384	; 0x4000
 800081c:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000820:	211c      	movs	r1, #28
 8000822:	2003      	movs	r0, #3
 8000824:	f7ff feae 	bl	8000584 <rcc_init>

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 8000828:	2103      	movs	r1, #3
 800082a:	202d      	movs	r0, #45	; 0x2d
 800082c:	f7ff fd98 	bl	8000360 <pin_mode>
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1 as output
 8000830:	210b      	movs	r1, #11
 8000832:	2009      	movs	r0, #9
 8000834:	f7ff fd94 	bl	8000360 <pin_mode>
    pin_mode(PA10, INPUT_FLOATING_PT); // enable Rx pin for usart1 as input
 8000838:	2104      	movs	r1, #4
 800083a:	200a      	movs	r0, #10
 800083c:	f7ff fd90 	bl	8000360 <pin_mode>

    pin_mode(PA0, INPUT_ANALOG); // enable analog input at A0
 8000840:	2100      	movs	r1, #0
 8000842:	2000      	movs	r0, #0
 8000844:	f7ff fd8c 	bl	8000360 <pin_mode>
    nvic_irq_enable(ADC1_2_IRQn);
 8000848:	2012      	movs	r0, #18
 800084a:	f7ff fd4d 	bl	80002e8 <nvic_irq_enable>

    timer_init(TIM3, 10000U, 10000U); // tim3 at 1MHz
 800084e:	f242 7210 	movw	r2, #10000	; 0x2710
 8000852:	f242 7110 	movw	r1, #10000	; 0x2710
 8000856:	2002      	movs	r0, #2
 8000858:	f7ff fd22 	bl	80002a0 <timer_init>
    pin_mode(PA7, OUT_GP_PUSH_PULL_50);
 800085c:	2103      	movs	r1, #3
 800085e:	2007      	movs	r0, #7
 8000860:	f7ff fd7e 	bl	8000360 <pin_mode>
    nvic_irq_enable(TIM3_IRQn);
 8000864:	201d      	movs	r0, #29
 8000866:	f7ff fd3f 	bl	80002e8 <nvic_irq_enable>

    timer_init(TIM2, 10000U, 255U);
 800086a:	22ff      	movs	r2, #255	; 0xff
 800086c:	f242 7110 	movw	r1, #10000	; 0x2710
 8000870:	2001      	movs	r0, #1
 8000872:	f7ff fd15 	bl	80002a0 <timer_init>
    pin_mode(PA2, OUT_ALT_PUSH_PULL_50);
 8000876:	210b      	movs	r1, #11
 8000878:	2002      	movs	r0, #2
 800087a:	f7ff fd71 	bl	8000360 <pin_mode>
    nvic_irq_enable(TIM2_IRQn);
 800087e:	201c      	movs	r0, #28
 8000880:	f7ff fd32 	bl	80002e8 <nvic_irq_enable>

    systick_init(1000U); // initialize systick at 1Hz
 8000884:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000888:	f7ff fe0a 	bl	80004a0 <systick_init>
    serial_init(USART1, 115200U); // initializer serial at 115200 baud
 800088c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 8000890:	2000      	movs	r0, #0
 8000892:	f000 f87b 	bl	800098c <serial_init>
    nvic_irq_enable(USART1_IRQn);
 8000896:	2025      	movs	r0, #37	; 0x25
 8000898:	f7ff fd26 	bl	80002e8 <nvic_irq_enable>

    uint8_t pwm = 0U;
 800089c:	2300      	movs	r3, #0
 800089e:	75fb      	strb	r3, [r7, #23]
    uint64_t start_t = millis();
 80008a0:	f7ff fe1c 	bl	80004dc <millis>
 80008a4:	4603      	mov	r3, r0
 80008a6:	f04f 0400 	mov.w	r4, #0
 80008aa:	e9c7 3402 	strd	r3, r4, [r7, #8]
    bool up = true;
 80008ae:	2301      	movs	r3, #1
 80008b0:	71fb      	strb	r3, [r7, #7]

    while(1) {
        if (millis() - start_t > 1000U) {
 80008b2:	f7ff fe13 	bl	80004dc <millis>
 80008b6:	4603      	mov	r3, r0
 80008b8:	4619      	mov	r1, r3
 80008ba:	f04f 0200 	mov.w	r2, #0
 80008be:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 80008c2:	1ac9      	subs	r1, r1, r3
 80008c4:	eb62 0204 	sbc.w	r2, r2, r4
 80008c8:	468b      	mov	fp, r1
 80008ca:	4694      	mov	ip, r2
 80008cc:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 80008d0:	f04f 0200 	mov.w	r2, #0
 80008d4:	4562      	cmp	r2, ip
 80008d6:	bf08      	it	eq
 80008d8:	4559      	cmpeq	r1, fp
 80008da:	d2ea      	bcs.n	80008b2 <main+0xa2>
            serial_wr_s(USART1, "hello world!", true);
 80008dc:	2201      	movs	r2, #1
 80008de:	4919      	ldr	r1, [pc, #100]	; (8000944 <main+0x134>)
 80008e0:	2000      	movs	r0, #0
 80008e2:	f000 f893 	bl	8000a0c <serial_wr_s>
            led_toggle(PC13);
 80008e6:	202d      	movs	r0, #45	; 0x2d
 80008e8:	f7ff fd6e 	bl	80003c8 <led_toggle>
            start_t = millis();
 80008ec:	f7ff fdf6 	bl	80004dc <millis>
 80008f0:	4603      	mov	r3, r0
 80008f2:	f04f 0400 	mov.w	r4, #0
 80008f6:	e9c7 3402 	strd	r3, r4, [r7, #8]
            if (up) {
 80008fa:	79fb      	ldrb	r3, [r7, #7]
 80008fc:	2b00      	cmp	r3, #0
 80008fe:	d003      	beq.n	8000908 <main+0xf8>
                pwm += STEP;
 8000900:	7dfb      	ldrb	r3, [r7, #23]
 8000902:	3319      	adds	r3, #25
 8000904:	75fb      	strb	r3, [r7, #23]
 8000906:	e002      	b.n	800090e <main+0xfe>
            }
            else {
                pwm -= STEP;
 8000908:	7dfb      	ldrb	r3, [r7, #23]
 800090a:	3b19      	subs	r3, #25
 800090c:	75fb      	strb	r3, [r7, #23]
            }

            if (pwm == 250 || pwm == 0) up = !up;
 800090e:	7dfb      	ldrb	r3, [r7, #23]
 8000910:	2bfa      	cmp	r3, #250	; 0xfa
 8000912:	d002      	beq.n	800091a <main+0x10a>
 8000914:	7dfb      	ldrb	r3, [r7, #23]
 8000916:	2b00      	cmp	r3, #0
 8000918:	d10d      	bne.n	8000936 <main+0x126>
 800091a:	79fb      	ldrb	r3, [r7, #7]
 800091c:	2b00      	cmp	r3, #0
 800091e:	bf14      	ite	ne
 8000920:	2301      	movne	r3, #1
 8000922:	2300      	moveq	r3, #0
 8000924:	b2db      	uxtb	r3, r3
 8000926:	f083 0301 	eor.w	r3, r3, #1
 800092a:	b2db      	uxtb	r3, r3
 800092c:	71fb      	strb	r3, [r7, #7]
 800092e:	79fb      	ldrb	r3, [r7, #7]
 8000930:	f003 0301 	and.w	r3, r3, #1
 8000934:	71fb      	strb	r3, [r7, #7]
            enable_chan(TIM2, PWM, CHAN3, pwm);
 8000936:	7dfb      	ldrb	r3, [r7, #23]
 8000938:	2202      	movs	r2, #2
 800093a:	2168      	movs	r1, #104	; 0x68
 800093c:	2001      	movs	r0, #1
 800093e:	f7ff fc5f 	bl	8000200 <enable_chan>
        if (millis() - start_t > 1000U) {
 8000942:	e7b6      	b.n	80008b2 <main+0xa2>
 8000944:	08000b38 	.word	0x08000b38

08000948 <usart_get>:

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

usart_t *usart_get(uint8_t usart) {
 8000948:	b480      	push	{r7}
 800094a:	b083      	sub	sp, #12
 800094c:	af00      	add	r7, sp, #0
 800094e:	4603      	mov	r3, r0
 8000950:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 8000952:	79fb      	ldrb	r3, [r7, #7]
 8000954:	2b01      	cmp	r3, #1
 8000956:	d006      	beq.n	8000966 <usart_get+0x1e>
 8000958:	2b02      	cmp	r3, #2
 800095a:	d007      	beq.n	800096c <usart_get+0x24>
 800095c:	2b00      	cmp	r3, #0
 800095e:	d108      	bne.n	8000972 <usart_get+0x2a>
        case USART1: return usart1;
 8000960:	4b07      	ldr	r3, [pc, #28]	; (8000980 <usart_get+0x38>)
 8000962:	681b      	ldr	r3, [r3, #0]
 8000964:	e007      	b.n	8000976 <usart_get+0x2e>
        case USART2: return usart2;
 8000966:	4b07      	ldr	r3, [pc, #28]	; (8000984 <usart_get+0x3c>)
 8000968:	681b      	ldr	r3, [r3, #0]
 800096a:	e004      	b.n	8000976 <usart_get+0x2e>
        case USART3: return usart3;
 800096c:	4b06      	ldr	r3, [pc, #24]	; (8000988 <usart_get+0x40>)
 800096e:	681b      	ldr	r3, [r3, #0]
 8000970:	e001      	b.n	8000976 <usart_get+0x2e>
        default: return usart1;
 8000972:	4b03      	ldr	r3, [pc, #12]	; (8000980 <usart_get+0x38>)
 8000974:	681b      	ldr	r3, [r3, #0]
    }
}
 8000976:	4618      	mov	r0, r3
 8000978:	370c      	adds	r7, #12
 800097a:	46bd      	mov	sp, r7
 800097c:	bc80      	pop	{r7}
 800097e:	4770      	bx	lr
 8000980:	20000044 	.word	0x20000044
 8000984:	20000048 	.word	0x20000048
 8000988:	2000004c 	.word	0x2000004c

0800098c <serial_init>:

void serial_init(uint8_t usart, uint32_t baud) {
 800098c:	b580      	push	{r7, lr}
 800098e:	b084      	sub	sp, #16
 8000990:	af00      	add	r7, sp, #0
 8000992:	4603      	mov	r3, r0
 8000994:	6039      	str	r1, [r7, #0]
 8000996:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = usart_get(usart);
 8000998:	79fb      	ldrb	r3, [r7, #7]
 800099a:	4618      	mov	r0, r3
 800099c:	f7ff ffd4 	bl	8000948 <usart_get>
 80009a0:	60f8      	str	r0, [r7, #12]
    serial->cr1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
 80009a2:	68fb      	ldr	r3, [r7, #12]
 80009a4:	f242 022c 	movw	r2, #8236	; 0x202c
 80009a8:	60da      	str	r2, [r3, #12]
    serial->cr2 = 0;
 80009aa:	68fb      	ldr	r3, [r7, #12]
 80009ac:	2200      	movs	r2, #0
 80009ae:	611a      	str	r2, [r3, #16]
    serial->cr3 = 0;
 80009b0:	68fb      	ldr	r3, [r7, #12]
 80009b2:	2200      	movs	r2, #0
 80009b4:	615a      	str	r2, [r3, #20]
    serial->gtpr = 0;
 80009b6:	68fb      	ldr	r3, [r7, #12]
 80009b8:	2200      	movs	r2, #0
 80009ba:	619a      	str	r2, [r3, #24]
    serial->baud = PCLK2 / baud;
 80009bc:	4a04      	ldr	r2, [pc, #16]	; (80009d0 <serial_init+0x44>)
 80009be:	683b      	ldr	r3, [r7, #0]
 80009c0:	fbb2 f2f3 	udiv	r2, r2, r3
 80009c4:	68fb      	ldr	r3, [r7, #12]
 80009c6:	609a      	str	r2, [r3, #8]
}
 80009c8:	bf00      	nop
 80009ca:	3710      	adds	r7, #16
 80009cc:	46bd      	mov	sp, r7
 80009ce:	bd80      	pop	{r7, pc}
 80009d0:	044aa200 	.word	0x044aa200

080009d4 <serial_wr_c>:

bool serial_wr_c(uint8_t usart, char c) {
 80009d4:	b580      	push	{r7, lr}
 80009d6:	b084      	sub	sp, #16
 80009d8:	af00      	add	r7, sp, #0
 80009da:	4603      	mov	r3, r0
 80009dc:	460a      	mov	r2, r1
 80009de:	71fb      	strb	r3, [r7, #7]
 80009e0:	4613      	mov	r3, r2
 80009e2:	71bb      	strb	r3, [r7, #6]
    usart_t *serial = usart_get(usart);
 80009e4:	79fb      	ldrb	r3, [r7, #7]
 80009e6:	4618      	mov	r0, r3
 80009e8:	f7ff ffae 	bl	8000948 <usart_get>
 80009ec:	60f8      	str	r0, [r7, #12]
    serial->data = c;
 80009ee:	79ba      	ldrb	r2, [r7, #6]
 80009f0:	68fb      	ldr	r3, [r7, #12]
 80009f2:	605a      	str	r2, [r3, #4]
    while(!(serial->sr & TC));
 80009f4:	bf00      	nop
 80009f6:	68fb      	ldr	r3, [r7, #12]
 80009f8:	681b      	ldr	r3, [r3, #0]
 80009fa:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80009fe:	2b00      	cmp	r3, #0
 8000a00:	d0f9      	beq.n	80009f6 <serial_wr_c+0x22>
    return USART_SUCCESS;
 8000a02:	2301      	movs	r3, #1
}
 8000a04:	4618      	mov	r0, r3
 8000a06:	3710      	adds	r7, #16
 8000a08:	46bd      	mov	sp, r7
 8000a0a:	bd80      	pop	{r7, pc}

08000a0c <serial_wr_s>:

bool serial_wr_s(uint8_t usart, char *s, bool new_line) {
 8000a0c:	b580      	push	{r7, lr}
 8000a0e:	b082      	sub	sp, #8
 8000a10:	af00      	add	r7, sp, #0
 8000a12:	4603      	mov	r3, r0
 8000a14:	6039      	str	r1, [r7, #0]
 8000a16:	71fb      	strb	r3, [r7, #7]
 8000a18:	4613      	mov	r3, r2
 8000a1a:	71bb      	strb	r3, [r7, #6]
    while(*s) serial_wr_c(usart, *s++);
 8000a1c:	e008      	b.n	8000a30 <serial_wr_s+0x24>
 8000a1e:	683b      	ldr	r3, [r7, #0]
 8000a20:	1c5a      	adds	r2, r3, #1
 8000a22:	603a      	str	r2, [r7, #0]
 8000a24:	781a      	ldrb	r2, [r3, #0]
 8000a26:	79fb      	ldrb	r3, [r7, #7]
 8000a28:	4611      	mov	r1, r2
 8000a2a:	4618      	mov	r0, r3
 8000a2c:	f7ff ffd2 	bl	80009d4 <serial_wr_c>
 8000a30:	683b      	ldr	r3, [r7, #0]
 8000a32:	781b      	ldrb	r3, [r3, #0]
 8000a34:	2b00      	cmp	r3, #0
 8000a36:	d1f2      	bne.n	8000a1e <serial_wr_s+0x12>
    if (!new_line) return 1;
 8000a38:	79bb      	ldrb	r3, [r7, #6]
 8000a3a:	f083 0301 	eor.w	r3, r3, #1
 8000a3e:	b2db      	uxtb	r3, r3
 8000a40:	2b00      	cmp	r3, #0
 8000a42:	d001      	beq.n	8000a48 <serial_wr_s+0x3c>
 8000a44:	2301      	movs	r3, #1
 8000a46:	e00a      	b.n	8000a5e <serial_wr_s+0x52>
    serial_wr_c(usart, '\r');
 8000a48:	79fb      	ldrb	r3, [r7, #7]
 8000a4a:	210d      	movs	r1, #13
 8000a4c:	4618      	mov	r0, r3
 8000a4e:	f7ff ffc1 	bl	80009d4 <serial_wr_c>
    serial_wr_c(usart, '\n');
 8000a52:	79fb      	ldrb	r3, [r7, #7]
 8000a54:	210a      	movs	r1, #10
 8000a56:	4618      	mov	r0, r3
 8000a58:	f7ff ffbc 	bl	80009d4 <serial_wr_c>
    return USART_SUCCESS;
 8000a5c:	2301      	movs	r3, #1
}
 8000a5e:	4618      	mov	r0, r3
 8000a60:	3708      	adds	r7, #8
 8000a62:	46bd      	mov	sp, r7
 8000a64:	bd80      	pop	{r7, pc}

08000a66 <serial_r_c>:

char serial_r_c(uint8_t usart) {
 8000a66:	b580      	push	{r7, lr}
 8000a68:	b084      	sub	sp, #16
 8000a6a:	af00      	add	r7, sp, #0
 8000a6c:	4603      	mov	r3, r0
 8000a6e:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = usart_get(usart);
 8000a70:	79fb      	ldrb	r3, [r7, #7]
 8000a72:	4618      	mov	r0, r3
 8000a74:	f7ff ff68 	bl	8000948 <usart_get>
 8000a78:	60f8      	str	r0, [r7, #12]
    while(!(serial->sr & RXNE));
 8000a7a:	bf00      	nop
 8000a7c:	68fb      	ldr	r3, [r7, #12]
 8000a7e:	681b      	ldr	r3, [r3, #0]
 8000a80:	f003 0320 	and.w	r3, r3, #32
 8000a84:	2b00      	cmp	r3, #0
 8000a86:	d0f9      	beq.n	8000a7c <serial_r_c+0x16>
    return (char)(serial->data & DATA_MASK);
 8000a88:	68fb      	ldr	r3, [r7, #12]
 8000a8a:	685b      	ldr	r3, [r3, #4]
 8000a8c:	b2db      	uxtb	r3, r3
}
 8000a8e:	4618      	mov	r0, r3
 8000a90:	3710      	adds	r7, #16
 8000a92:	46bd      	mov	sp, r7
 8000a94:	bd80      	pop	{r7, pc}

08000a96 <serial_r_s>:

char *serial_r_s(uint8_t usart, char *buffer) {
 8000a96:	b590      	push	{r4, r7, lr}
 8000a98:	b083      	sub	sp, #12
 8000a9a:	af00      	add	r7, sp, #0
 8000a9c:	4603      	mov	r3, r0
 8000a9e:	6039      	str	r1, [r7, #0]
 8000aa0:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 8000aa2:	e008      	b.n	8000ab6 <serial_r_s+0x20>
        *buffer++ = serial_r_c(usart);
 8000aa4:	683c      	ldr	r4, [r7, #0]
 8000aa6:	1c63      	adds	r3, r4, #1
 8000aa8:	603b      	str	r3, [r7, #0]
 8000aaa:	79fb      	ldrb	r3, [r7, #7]
 8000aac:	4618      	mov	r0, r3
 8000aae:	f7ff ffda 	bl	8000a66 <serial_r_c>
 8000ab2:	4603      	mov	r3, r0
 8000ab4:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 8000ab6:	683b      	ldr	r3, [r7, #0]
 8000ab8:	781b      	ldrb	r3, [r3, #0]
 8000aba:	2b00      	cmp	r3, #0
 8000abc:	d1f2      	bne.n	8000aa4 <serial_r_s+0xe>
    }
    return buffer;
 8000abe:	683b      	ldr	r3, [r7, #0]
}
 8000ac0:	4618      	mov	r0, r3
 8000ac2:	370c      	adds	r7, #12
 8000ac4:	46bd      	mov	sp, r7
 8000ac6:	bd90      	pop	{r4, r7, pc}

08000ac8 <__enable_irq>:
#include "intrinsic.h"

// enable interrupt
void __enable_irq(void) {
 8000ac8:	b480      	push	{r7}
 8000aca:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsie i" ::: "memory");
 8000acc:	b662      	cpsie	i
}
 8000ace:	bf00      	nop
 8000ad0:	46bd      	mov	sp, r7
 8000ad2:	bc80      	pop	{r7}
 8000ad4:	4770      	bx	lr

08000ad6 <__disable_irq>:

// disable interrupt
void __disable_irq(void) {
 8000ad6:	b480      	push	{r7}
 8000ad8:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsid i" ::: "memory");
 8000ada:	b672      	cpsid	i
}
 8000adc:	bf00      	nop
 8000ade:	46bd      	mov	sp, r7
 8000ae0:	bc80      	pop	{r7}
 8000ae2:	4770      	bx	lr

08000ae4 <__NOP>:

// no operation
void __NOP(void) {
 8000ae4:	b480      	push	{r7}
 8000ae6:	af00      	add	r7, sp, #0
    __ASM volatile ("nop");
 8000ae8:	bf00      	nop
}
 8000aea:	bf00      	nop
 8000aec:	46bd      	mov	sp, r7
 8000aee:	bc80      	pop	{r7}
 8000af0:	4770      	bx	lr
	...

08000af4 <Reset_Handler>:
 8000af4:	2100      	movs	r1, #0
 8000af6:	e003      	b.n	8000b00 <LoopCopyDataInit>

08000af8 <CopyDataInit>:
 8000af8:	4b09      	ldr	r3, [pc, #36]	; (8000b20 <LoopFillZerobss+0xc>)
 8000afa:	585b      	ldr	r3, [r3, r1]
 8000afc:	5043      	str	r3, [r0, r1]
 8000afe:	3104      	adds	r1, #4

08000b00 <LoopCopyDataInit>:
 8000b00:	4808      	ldr	r0, [pc, #32]	; (8000b24 <LoopFillZerobss+0x10>)
 8000b02:	4b09      	ldr	r3, [pc, #36]	; (8000b28 <LoopFillZerobss+0x14>)
 8000b04:	1842      	adds	r2, r0, r1
 8000b06:	429a      	cmp	r2, r3
 8000b08:	d3f6      	bcc.n	8000af8 <CopyDataInit>
 8000b0a:	4a08      	ldr	r2, [pc, #32]	; (8000b2c <LoopFillZerobss+0x18>)
 8000b0c:	e002      	b.n	8000b14 <LoopFillZerobss>

08000b0e <FillZerobss>:
 8000b0e:	2300      	movs	r3, #0
 8000b10:	f842 3b04 	str.w	r3, [r2], #4

08000b14 <LoopFillZerobss>:
 8000b14:	4b06      	ldr	r3, [pc, #24]	; (8000b30 <LoopFillZerobss+0x1c>)
 8000b16:	429a      	cmp	r2, r3
 8000b18:	d3f9      	bcc.n	8000b0e <FillZerobss>
 8000b1a:	f7ff fe79 	bl	8000810 <main>
 8000b1e:	4770      	bx	lr
 8000b20:	08000b48 	.word	0x08000b48
 8000b24:	20000000 	.word	0x20000000
 8000b28:	20000050 	.word	0x20000050
 8000b2c:	20000050 	.word	0x20000050
 8000b30:	20000060 	.word	0x20000060

08000b34 <BusFault_Handler>:
 8000b34:	e7fe      	b.n	8000b34 <BusFault_Handler>
	...
