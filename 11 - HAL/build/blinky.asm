
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000150 <get_timer-0x14>:
 8000150:	08000a28 	.word	0x08000a28
 8000154:	20000000 	.word	0x20000000
 8000158:	20000044 	.word	0x20000044
 800015c:	20000044 	.word	0x20000044
 8000160:	20000048 	.word	0x20000048

08000164 <get_timer>:
timer_t *tim4 = (timer_t *)(TIM4_BASE);
timer_t *tim5 = (timer_t *)(TIM5_BASE);
timer_t *tim6 = (timer_t *)(TIM6_BASE);
timer_t *tim7 = (timer_t *)(TIM7_BASE);

timer_t *get_timer(uint8_t timer) {
 8000164:	b480      	push	{r7}
 8000166:	b083      	sub	sp, #12
 8000168:	af00      	add	r7, sp, #0
 800016a:	4603      	mov	r3, r0
 800016c:	71fb      	strb	r3, [r7, #7]
    switch (timer) {
 800016e:	79fb      	ldrb	r3, [r7, #7]
 8000170:	3b01      	subs	r3, #1
 8000172:	2b05      	cmp	r3, #5
 8000174:	d820      	bhi.n	80001b8 <get_timer+0x54>
 8000176:	a201      	add	r2, pc, #4	; (adr r2, 800017c <get_timer+0x18>)
 8000178:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800017c:	08000195 	.word	0x08000195
 8000180:	0800019b 	.word	0x0800019b
 8000184:	080001a1 	.word	0x080001a1
 8000188:	080001a7 	.word	0x080001a7
 800018c:	080001ad 	.word	0x080001ad
 8000190:	080001b3 	.word	0x080001b3
    case TIM2: return tim2;
 8000194:	4b0c      	ldr	r3, [pc, #48]	; (80001c8 <get_timer+0x64>)
 8000196:	681b      	ldr	r3, [r3, #0]
 8000198:	e010      	b.n	80001bc <get_timer+0x58>
    case TIM3: return tim3;
 800019a:	4b0c      	ldr	r3, [pc, #48]	; (80001cc <get_timer+0x68>)
 800019c:	681b      	ldr	r3, [r3, #0]
 800019e:	e00d      	b.n	80001bc <get_timer+0x58>
    case TIM4: return tim4;
 80001a0:	4b0b      	ldr	r3, [pc, #44]	; (80001d0 <get_timer+0x6c>)
 80001a2:	681b      	ldr	r3, [r3, #0]
 80001a4:	e00a      	b.n	80001bc <get_timer+0x58>
    case TIM5: return tim5;
 80001a6:	4b0b      	ldr	r3, [pc, #44]	; (80001d4 <get_timer+0x70>)
 80001a8:	681b      	ldr	r3, [r3, #0]
 80001aa:	e007      	b.n	80001bc <get_timer+0x58>
    case TIM6: return tim6;
 80001ac:	4b0a      	ldr	r3, [pc, #40]	; (80001d8 <get_timer+0x74>)
 80001ae:	681b      	ldr	r3, [r3, #0]
 80001b0:	e004      	b.n	80001bc <get_timer+0x58>
    case TIM7: return tim7;
 80001b2:	4b0a      	ldr	r3, [pc, #40]	; (80001dc <get_timer+0x78>)
 80001b4:	681b      	ldr	r3, [r3, #0]
 80001b6:	e001      	b.n	80001bc <get_timer+0x58>
    default: return tim2;
 80001b8:	4b03      	ldr	r3, [pc, #12]	; (80001c8 <get_timer+0x64>)
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

080001e0 <get_timer_cnt>:

uint32_t get_timer_cnt(uint8_t timer) {
 80001e0:	b580      	push	{r7, lr}
 80001e2:	b084      	sub	sp, #16
 80001e4:	af00      	add	r7, sp, #0
 80001e6:	4603      	mov	r3, r0
 80001e8:	71fb      	strb	r3, [r7, #7]
    timer_t *tim = get_timer(timer);
 80001ea:	79fb      	ldrb	r3, [r7, #7]
 80001ec:	4618      	mov	r0, r3
 80001ee:	f7ff ffb9 	bl	8000164 <get_timer>
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
    timer_t *tim = get_timer(timer);
 8000214:	79fb      	ldrb	r3, [r7, #7]
 8000216:	4618      	mov	r0, r3
 8000218:	f7ff ffa4 	bl	8000164 <get_timer>
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
    timer_t *tim = get_timer(timer);
 80002ae:	7bfb      	ldrb	r3, [r7, #15]
 80002b0:	4618      	mov	r0, r3
 80002b2:	f7ff ff57 	bl	8000164 <get_timer>
 80002b6:	6178      	str	r0, [r7, #20]

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->psc = PCLK2 / prescaler - 1U; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
 80002b8:	4a0d      	ldr	r2, [pc, #52]	; (80002f0 <timer_init+0x50>)
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

    nvic_enable(TIM2_IRQ_START_POS+(timer-1));
 80002d4:	7bfb      	ldrb	r3, [r7, #15]
 80002d6:	331b      	adds	r3, #27
 80002d8:	b2db      	uxtb	r3, r3
 80002da:	4618      	mov	r0, r3
 80002dc:	f000 f80a 	bl	80002f4 <nvic_enable>

    // enable counter //
    tim->cr[0] = 1U;
 80002e0:	697b      	ldr	r3, [r7, #20]
 80002e2:	2201      	movs	r2, #1
 80002e4:	601a      	str	r2, [r3, #0]
}
 80002e6:	bf00      	nop
 80002e8:	3718      	adds	r7, #24
 80002ea:	46bd      	mov	sp, r7
 80002ec:	bd80      	pop	{r7, pc}
 80002ee:	bf00      	nop
 80002f0:	044aa200 	.word	0x044aa200

080002f4 <nvic_enable>:
#include "nvic.h"

nvic_t *nvic = (nvic_t *)(NVIC_BASE);

void nvic_enable(uint8_t irq_pos) {
 80002f4:	b480      	push	{r7}
 80002f6:	b085      	sub	sp, #20
 80002f8:	af00      	add	r7, sp, #0
 80002fa:	4603      	mov	r3, r0
 80002fc:	71fb      	strb	r3, [r7, #7]
	uint8_t idx = irq_pos / 32;
 80002fe:	79fb      	ldrb	r3, [r7, #7]
 8000300:	095b      	lsrs	r3, r3, #5
 8000302:	73fb      	strb	r3, [r7, #15]
	uint8_t shift_by = irq_pos % 32;
 8000304:	79fb      	ldrb	r3, [r7, #7]
 8000306:	f003 031f 	and.w	r3, r3, #31
 800030a:	73bb      	strb	r3, [r7, #14]
	nvic->iser[idx] = (1 << shift_by);
 800030c:	7bbb      	ldrb	r3, [r7, #14]
 800030e:	2201      	movs	r2, #1
 8000310:	fa02 f103 	lsl.w	r1, r2, r3
 8000314:	4b04      	ldr	r3, [pc, #16]	; (8000328 <nvic_enable+0x34>)
 8000316:	681b      	ldr	r3, [r3, #0]
 8000318:	7bfa      	ldrb	r2, [r7, #15]
 800031a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 800031e:	bf00      	nop
 8000320:	3714      	adds	r7, #20
 8000322:	46bd      	mov	sp, r7
 8000324:	bc80      	pop	{r7}
 8000326:	4770      	bx	lr
 8000328:	20000018 	.word	0x20000018

0800032c <get_gpio>:

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

gpio_t *get_gpio(uint8_t pin) {
 800032c:	b480      	push	{r7}
 800032e:	b083      	sub	sp, #12
 8000330:	af00      	add	r7, sp, #0
 8000332:	4603      	mov	r3, r0
 8000334:	71fb      	strb	r3, [r7, #7]
    switch(pin >> 4) {
 8000336:	79fb      	ldrb	r3, [r7, #7]
 8000338:	091b      	lsrs	r3, r3, #4
 800033a:	b2db      	uxtb	r3, r3
 800033c:	2b00      	cmp	r3, #0
 800033e:	d002      	beq.n	8000346 <get_gpio+0x1a>
 8000340:	2b01      	cmp	r3, #1
 8000342:	d003      	beq.n	800034c <get_gpio+0x20>
 8000344:	e005      	b.n	8000352 <get_gpio+0x26>
        case 0: return gpio_a;
 8000346:	4b06      	ldr	r3, [pc, #24]	; (8000360 <get_gpio+0x34>)
 8000348:	681b      	ldr	r3, [r3, #0]
 800034a:	e004      	b.n	8000356 <get_gpio+0x2a>
        case 1: return gpio_b;
 800034c:	4b05      	ldr	r3, [pc, #20]	; (8000364 <get_gpio+0x38>)
 800034e:	681b      	ldr	r3, [r3, #0]
 8000350:	e001      	b.n	8000356 <get_gpio+0x2a>
        // case 2: return gpio_c;
        default: return gpio_c;
 8000352:	4b05      	ldr	r3, [pc, #20]	; (8000368 <get_gpio+0x3c>)
 8000354:	681b      	ldr	r3, [r3, #0]
    }
}
 8000356:	4618      	mov	r0, r3
 8000358:	370c      	adds	r7, #12
 800035a:	46bd      	mov	sp, r7
 800035c:	bc80      	pop	{r7}
 800035e:	4770      	bx	lr
 8000360:	2000001c 	.word	0x2000001c
 8000364:	20000020 	.word	0x20000020
 8000368:	20000024 	.word	0x20000024

0800036c <pin_mode>:

void pin_mode(uint8_t pin, uint8_t mode) {
 800036c:	b580      	push	{r7, lr}
 800036e:	b086      	sub	sp, #24
 8000370:	af00      	add	r7, sp, #0
 8000372:	4603      	mov	r3, r0
 8000374:	460a      	mov	r2, r1
 8000376:	71fb      	strb	r3, [r7, #7]
 8000378:	4613      	mov	r3, r2
 800037a:	71bb      	strb	r3, [r7, #6]
    gpio_t *gpio = get_gpio(pin);
 800037c:	79fb      	ldrb	r3, [r7, #7]
 800037e:	4618      	mov	r0, r3
 8000380:	f7ff ffd4 	bl	800032c <get_gpio>
 8000384:	6178      	str	r0, [r7, #20]
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
 8000386:	79fb      	ldrb	r3, [r7, #7]
 8000388:	f003 030f 	and.w	r3, r3, #15
 800038c:	74fb      	strb	r3, [r7, #19]
    uint8_t shift_by = (bit % 8) * 4;
 800038e:	7cfb      	ldrb	r3, [r7, #19]
 8000390:	f003 0307 	and.w	r3, r3, #7
 8000394:	b2db      	uxtb	r3, r3
 8000396:	009b      	lsls	r3, r3, #2
 8000398:	74bb      	strb	r3, [r7, #18]
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
 800039a:	7cfb      	ldrb	r3, [r7, #19]
 800039c:	08db      	lsrs	r3, r3, #3
 800039e:	747b      	strb	r3, [r7, #17]
    uint32_t config = gpio->cr[reg_idx] & ~(0xf << shift_by);
 80003a0:	7c7a      	ldrb	r2, [r7, #17]
 80003a2:	697b      	ldr	r3, [r7, #20]
 80003a4:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80003a8:	7cba      	ldrb	r2, [r7, #18]
 80003aa:	210f      	movs	r1, #15
 80003ac:	fa01 f202 	lsl.w	r2, r1, r2
 80003b0:	43d2      	mvns	r2, r2
 80003b2:	4013      	ands	r3, r2
 80003b4:	60fb      	str	r3, [r7, #12]
    gpio->cr[reg_idx] = (config | (mode << shift_by));
 80003b6:	79ba      	ldrb	r2, [r7, #6]
 80003b8:	7cbb      	ldrb	r3, [r7, #18]
 80003ba:	fa02 f303 	lsl.w	r3, r2, r3
 80003be:	4619      	mov	r1, r3
 80003c0:	7c7a      	ldrb	r2, [r7, #17]
 80003c2:	68fb      	ldr	r3, [r7, #12]
 80003c4:	4319      	orrs	r1, r3
 80003c6:	697b      	ldr	r3, [r7, #20]
 80003c8:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 80003cc:	bf00      	nop
 80003ce:	3718      	adds	r7, #24
 80003d0:	46bd      	mov	sp, r7
 80003d2:	bd80      	pop	{r7, pc}

080003d4 <led_toggle>:

void led_toggle(uint8_t pin) {
 80003d4:	b580      	push	{r7, lr}
 80003d6:	b084      	sub	sp, #16
 80003d8:	af00      	add	r7, sp, #0
 80003da:	4603      	mov	r3, r0
 80003dc:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 80003de:	79fb      	ldrb	r3, [r7, #7]
 80003e0:	4618      	mov	r0, r3
 80003e2:	f7ff ffa3 	bl	800032c <get_gpio>
 80003e6:	60f8      	str	r0, [r7, #12]
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
 80003e8:	68fb      	ldr	r3, [r7, #12]
 80003ea:	68db      	ldr	r3, [r3, #12]
 80003ec:	79fa      	ldrb	r2, [r7, #7]
 80003ee:	f002 020f 	and.w	r2, r2, #15
 80003f2:	2101      	movs	r1, #1
 80003f4:	fa01 f202 	lsl.w	r2, r1, r2
 80003f8:	405a      	eors	r2, r3
 80003fa:	68fb      	ldr	r3, [r7, #12]
 80003fc:	60da      	str	r2, [r3, #12]
}
 80003fe:	bf00      	nop
 8000400:	3710      	adds	r7, #16
 8000402:	46bd      	mov	sp, r7
 8000404:	bd80      	pop	{r7, pc}

08000406 <led_on>:

void led_on(uint8_t pin) {
 8000406:	b580      	push	{r7, lr}
 8000408:	b084      	sub	sp, #16
 800040a:	af00      	add	r7, sp, #0
 800040c:	4603      	mov	r3, r0
 800040e:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 8000410:	79fb      	ldrb	r3, [r7, #7]
 8000412:	4618      	mov	r0, r3
 8000414:	f7ff ff8a 	bl	800032c <get_gpio>
 8000418:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 800041a:	79fb      	ldrb	r3, [r7, #7]
 800041c:	2b2d      	cmp	r3, #45	; 0x2d
 800041e:	d10c      	bne.n	800043a <led_on+0x34>
 8000420:	68fb      	ldr	r3, [r7, #12]
 8000422:	68db      	ldr	r3, [r3, #12]
 8000424:	79fa      	ldrb	r2, [r7, #7]
 8000426:	f002 020f 	and.w	r2, r2, #15
 800042a:	2101      	movs	r1, #1
 800042c:	fa01 f202 	lsl.w	r2, r1, r2
 8000430:	43d2      	mvns	r2, r2
 8000432:	401a      	ands	r2, r3
 8000434:	68fb      	ldr	r3, [r7, #12]
 8000436:	60da      	str	r2, [r3, #12]
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}
 8000438:	e00a      	b.n	8000450 <led_on+0x4a>
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
 800043a:	68fb      	ldr	r3, [r7, #12]
 800043c:	68db      	ldr	r3, [r3, #12]
 800043e:	79fa      	ldrb	r2, [r7, #7]
 8000440:	f002 020f 	and.w	r2, r2, #15
 8000444:	2101      	movs	r1, #1
 8000446:	fa01 f202 	lsl.w	r2, r1, r2
 800044a:	431a      	orrs	r2, r3
 800044c:	68fb      	ldr	r3, [r7, #12]
 800044e:	60da      	str	r2, [r3, #12]
}
 8000450:	bf00      	nop
 8000452:	3710      	adds	r7, #16
 8000454:	46bd      	mov	sp, r7
 8000456:	bd80      	pop	{r7, pc}

08000458 <led_off>:

void led_off(uint8_t pin) {
 8000458:	b580      	push	{r7, lr}
 800045a:	b084      	sub	sp, #16
 800045c:	af00      	add	r7, sp, #0
 800045e:	4603      	mov	r3, r0
 8000460:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 8000462:	79fb      	ldrb	r3, [r7, #7]
 8000464:	4618      	mov	r0, r3
 8000466:	f7ff ff61 	bl	800032c <get_gpio>
 800046a:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
 800046c:	79fb      	ldrb	r3, [r7, #7]
 800046e:	2b2d      	cmp	r3, #45	; 0x2d
 8000470:	d10b      	bne.n	800048a <led_off+0x32>
 8000472:	68fb      	ldr	r3, [r7, #12]
 8000474:	68db      	ldr	r3, [r3, #12]
 8000476:	79fa      	ldrb	r2, [r7, #7]
 8000478:	f002 020f 	and.w	r2, r2, #15
 800047c:	2101      	movs	r1, #1
 800047e:	fa01 f202 	lsl.w	r2, r1, r2
 8000482:	431a      	orrs	r2, r3
 8000484:	68fb      	ldr	r3, [r7, #12]
 8000486:	60da      	str	r2, [r3, #12]
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
 8000488:	e00b      	b.n	80004a2 <led_off+0x4a>
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 800048a:	68fb      	ldr	r3, [r7, #12]
 800048c:	68db      	ldr	r3, [r3, #12]
 800048e:	79fa      	ldrb	r2, [r7, #7]
 8000490:	f002 020f 	and.w	r2, r2, #15
 8000494:	2101      	movs	r1, #1
 8000496:	fa01 f202 	lsl.w	r2, r1, r2
 800049a:	43d2      	mvns	r2, r2
 800049c:	401a      	ands	r2, r3
 800049e:	68fb      	ldr	r3, [r7, #12]
 80004a0:	60da      	str	r2, [r3, #12]
}
 80004a2:	bf00      	nop
 80004a4:	3710      	adds	r7, #16
 80004a6:	46bd      	mov	sp, r7
 80004a8:	bd80      	pop	{r7, pc}
 80004aa:	bf00      	nop

080004ac <systick_init>:
#include "systick.h"

systick_t *systick = (systick_t *)(SYSTICK_BASE);

void systick_init(uint32_t reload_val) {
 80004ac:	b480      	push	{r7}
 80004ae:	b083      	sub	sp, #12
 80004b0:	af00      	add	r7, sp, #0
 80004b2:	6078      	str	r0, [r7, #4]
    systick->reload = PCLK2 / reload_val - 1U;
 80004b4:	4a0a      	ldr	r2, [pc, #40]	; (80004e0 <systick_init+0x34>)
 80004b6:	687b      	ldr	r3, [r7, #4]
 80004b8:	fbb2 f2f3 	udiv	r2, r2, r3
 80004bc:	4b09      	ldr	r3, [pc, #36]	; (80004e4 <systick_init+0x38>)
 80004be:	681b      	ldr	r3, [r3, #0]
 80004c0:	3a01      	subs	r2, #1
 80004c2:	605a      	str	r2, [r3, #4]
    systick->val = 0U;
 80004c4:	4b07      	ldr	r3, [pc, #28]	; (80004e4 <systick_init+0x38>)
 80004c6:	681b      	ldr	r3, [r3, #0]
 80004c8:	2200      	movs	r2, #0
 80004ca:	609a      	str	r2, [r3, #8]
    systick->ctrl = (AHB_EN|TICKINT_EN|TICK_EN);
 80004cc:	4b05      	ldr	r3, [pc, #20]	; (80004e4 <systick_init+0x38>)
 80004ce:	681b      	ldr	r3, [r3, #0]
 80004d0:	2207      	movs	r2, #7
 80004d2:	601a      	str	r2, [r3, #0]
}
 80004d4:	bf00      	nop
 80004d6:	370c      	adds	r7, #12
 80004d8:	46bd      	mov	sp, r7
 80004da:	bc80      	pop	{r7}
 80004dc:	4770      	bx	lr
 80004de:	bf00      	nop
 80004e0:	044aa200 	.word	0x044aa200
 80004e4:	20000028 	.word	0x20000028

080004e8 <millis>:

uint32_t millis(void) {
 80004e8:	b480      	push	{r7}
 80004ea:	af00      	add	r7, sp, #0
    return cnt;
 80004ec:	4b02      	ldr	r3, [pc, #8]	; (80004f8 <millis+0x10>)
 80004ee:	681b      	ldr	r3, [r3, #0]
}
 80004f0:	4618      	mov	r0, r3
 80004f2:	46bd      	mov	sp, r7
 80004f4:	bc80      	pop	{r7}
 80004f6:	4770      	bx	lr
 80004f8:	20000044 	.word	0x20000044

080004fc <delay>:
#include "delay.h"
#include "systick.h"

void delay(uint64_t __IO t) {
 80004fc:	b490      	push	{r4, r7}
 80004fe:	b084      	sub	sp, #16
 8000500:	af00      	add	r7, sp, #0
 8000502:	e9c7 0100 	strd	r0, r1, [r7]
    for (uint64_t __IO i = 0; i < t; i++);
 8000506:	f04f 0300 	mov.w	r3, #0
 800050a:	f04f 0400 	mov.w	r4, #0
 800050e:	e9c7 3402 	strd	r3, r4, [r7, #8]
 8000512:	e006      	b.n	8000522 <delay+0x26>
 8000514:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 8000518:	1c4b      	adds	r3, r1, #1
 800051a:	f142 0400 	adc.w	r4, r2, #0
 800051e:	e9c7 3402 	strd	r3, r4, [r7, #8]
 8000522:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 8000526:	e9d7 3400 	ldrd	r3, r4, [r7]
 800052a:	42a2      	cmp	r2, r4
 800052c:	bf08      	it	eq
 800052e:	4299      	cmpeq	r1, r3
 8000530:	d3f0      	bcc.n	8000514 <delay+0x18>
}
 8000532:	bf00      	nop
 8000534:	3710      	adds	r7, #16
 8000536:	46bd      	mov	sp, r7
 8000538:	bc90      	pop	{r4, r7}
 800053a:	4770      	bx	lr

0800053c <systick_delay>:

void systick_delay(uint64_t __IO t) {
 800053c:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 8000540:	b084      	sub	sp, #16
 8000542:	af00      	add	r7, sp, #0
 8000544:	e9c7 0100 	strd	r0, r1, [r7]
    uint64_t start_t = millis();
 8000548:	f7ff ffce 	bl	80004e8 <millis>
 800054c:	4603      	mov	r3, r0
 800054e:	f04f 0400 	mov.w	r4, #0
 8000552:	e9c7 3402 	strd	r3, r4, [r7, #8]
    while(millis() - start_t < t);
 8000556:	bf00      	nop
 8000558:	f7ff ffc6 	bl	80004e8 <millis>
 800055c:	4603      	mov	r3, r0
 800055e:	469b      	mov	fp, r3
 8000560:	f04f 0c00 	mov.w	ip, #0
 8000564:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000568:	4659      	mov	r1, fp
 800056a:	4662      	mov	r2, ip
 800056c:	1ac9      	subs	r1, r1, r3
 800056e:	eb62 0204 	sbc.w	r2, r2, r4
 8000572:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000576:	42a2      	cmp	r2, r4
 8000578:	bf08      	it	eq
 800057a:	4299      	cmpeq	r1, r3
 800057c:	d3ec      	bcc.n	8000558 <systick_delay+0x1c>
}
 800057e:	bf00      	nop
 8000580:	3710      	adds	r7, #16
 8000582:	46bd      	mov	sp, r7
 8000584:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}

08000588 <rcc_init>:
#include "rcc.h"
#include "flash_acr.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(uint32_t tim_en, uint32_t gpio_en, uint32_t usart_en) {
 8000588:	b480      	push	{r7}
 800058a:	b085      	sub	sp, #20
 800058c:	af00      	add	r7, sp, #0
 800058e:	60f8      	str	r0, [r7, #12]
 8000590:	60b9      	str	r1, [r7, #8]
 8000592:	607a      	str	r2, [r7, #4]
    // switch to 72Mhz clock //
    flash->acr |= LATENCY_2;
 8000594:	4b2f      	ldr	r3, [pc, #188]	; (8000654 <rcc_init+0xcc>)
 8000596:	681b      	ldr	r3, [r3, #0]
 8000598:	681a      	ldr	r2, [r3, #0]
 800059a:	4b2e      	ldr	r3, [pc, #184]	; (8000654 <rcc_init+0xcc>)
 800059c:	681b      	ldr	r3, [r3, #0]
 800059e:	f042 0202 	orr.w	r2, r2, #2
 80005a2:	601a      	str	r2, [r3, #0]
    rcc->cfgr |= APB1_DIV2;
 80005a4:	4b2c      	ldr	r3, [pc, #176]	; (8000658 <rcc_init+0xd0>)
 80005a6:	681b      	ldr	r3, [r3, #0]
 80005a8:	685a      	ldr	r2, [r3, #4]
 80005aa:	4b2b      	ldr	r3, [pc, #172]	; (8000658 <rcc_init+0xd0>)
 80005ac:	681b      	ldr	r3, [r3, #0]
 80005ae:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80005b2:	605a      	str	r2, [r3, #4]

    rcc->cr |= HSEON;
 80005b4:	4b28      	ldr	r3, [pc, #160]	; (8000658 <rcc_init+0xd0>)
 80005b6:	681b      	ldr	r3, [r3, #0]
 80005b8:	681a      	ldr	r2, [r3, #0]
 80005ba:	4b27      	ldr	r3, [pc, #156]	; (8000658 <rcc_init+0xd0>)
 80005bc:	681b      	ldr	r3, [r3, #0]
 80005be:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80005c2:	601a      	str	r2, [r3, #0]
    while(!(rcc->cr & HSERDY));
 80005c4:	bf00      	nop
 80005c6:	4b24      	ldr	r3, [pc, #144]	; (8000658 <rcc_init+0xd0>)
 80005c8:	681b      	ldr	r3, [r3, #0]
 80005ca:	681b      	ldr	r3, [r3, #0]
 80005cc:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80005d0:	2b00      	cmp	r3, #0
 80005d2:	d0f8      	beq.n	80005c6 <rcc_init+0x3e>

    rcc->cfgr |= (PLLHSE|PLL_9);
 80005d4:	4b20      	ldr	r3, [pc, #128]	; (8000658 <rcc_init+0xd0>)
 80005d6:	681b      	ldr	r3, [r3, #0]
 80005d8:	685a      	ldr	r2, [r3, #4]
 80005da:	4b1f      	ldr	r3, [pc, #124]	; (8000658 <rcc_init+0xd0>)
 80005dc:	681b      	ldr	r3, [r3, #0]
 80005de:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80005e2:	605a      	str	r2, [r3, #4]
    rcc->cr |= PLLON;
 80005e4:	4b1c      	ldr	r3, [pc, #112]	; (8000658 <rcc_init+0xd0>)
 80005e6:	681b      	ldr	r3, [r3, #0]
 80005e8:	681a      	ldr	r2, [r3, #0]
 80005ea:	4b1b      	ldr	r3, [pc, #108]	; (8000658 <rcc_init+0xd0>)
 80005ec:	681b      	ldr	r3, [r3, #0]
 80005ee:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80005f2:	601a      	str	r2, [r3, #0]
    while(!(rcc->cr & PLLRDY));
 80005f4:	bf00      	nop
 80005f6:	4b18      	ldr	r3, [pc, #96]	; (8000658 <rcc_init+0xd0>)
 80005f8:	681b      	ldr	r3, [r3, #0]
 80005fa:	681b      	ldr	r3, [r3, #0]
 80005fc:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000600:	2b00      	cmp	r3, #0
 8000602:	d0f8      	beq.n	80005f6 <rcc_init+0x6e>

    rcc->cfgr |= SWPLL;
 8000604:	4b14      	ldr	r3, [pc, #80]	; (8000658 <rcc_init+0xd0>)
 8000606:	681b      	ldr	r3, [r3, #0]
 8000608:	685a      	ldr	r2, [r3, #4]
 800060a:	4b13      	ldr	r3, [pc, #76]	; (8000658 <rcc_init+0xd0>)
 800060c:	681b      	ldr	r3, [r3, #0]
 800060e:	f042 0202 	orr.w	r2, r2, #2
 8000612:	605a      	str	r2, [r3, #4]
    while(!(rcc->cfgr & SWSPLL));
 8000614:	bf00      	nop
 8000616:	4b10      	ldr	r3, [pc, #64]	; (8000658 <rcc_init+0xd0>)
 8000618:	681b      	ldr	r3, [r3, #0]
 800061a:	685b      	ldr	r3, [r3, #4]
 800061c:	f003 0308 	and.w	r3, r3, #8
 8000620:	2b00      	cmp	r3, #0
 8000622:	d0f8      	beq.n	8000616 <rcc_init+0x8e>

    rcc->apbe1 |= tim_en; // enable timers
 8000624:	4b0c      	ldr	r3, [pc, #48]	; (8000658 <rcc_init+0xd0>)
 8000626:	681b      	ldr	r3, [r3, #0]
 8000628:	69d9      	ldr	r1, [r3, #28]
 800062a:	4b0b      	ldr	r3, [pc, #44]	; (8000658 <rcc_init+0xd0>)
 800062c:	681b      	ldr	r3, [r3, #0]
 800062e:	68fa      	ldr	r2, [r7, #12]
 8000630:	430a      	orrs	r2, r1
 8000632:	61da      	str	r2, [r3, #28]
    rcc->apbe2 |= gpio_en | usart_en; // enable GPIO pins and USART
 8000634:	4b08      	ldr	r3, [pc, #32]	; (8000658 <rcc_init+0xd0>)
 8000636:	681b      	ldr	r3, [r3, #0]
 8000638:	6999      	ldr	r1, [r3, #24]
 800063a:	68ba      	ldr	r2, [r7, #8]
 800063c:	687b      	ldr	r3, [r7, #4]
 800063e:	431a      	orrs	r2, r3
 8000640:	4b05      	ldr	r3, [pc, #20]	; (8000658 <rcc_init+0xd0>)
 8000642:	681b      	ldr	r3, [r3, #0]
 8000644:	430a      	orrs	r2, r1
 8000646:	619a      	str	r2, [r3, #24]
}
 8000648:	bf00      	nop
 800064a:	3714      	adds	r7, #20
 800064c:	46bd      	mov	sp, r7
 800064e:	bc80      	pop	{r7}
 8000650:	4770      	bx	lr
 8000652:	bf00      	nop
 8000654:	2000002c 	.word	0x2000002c
 8000658:	20000030 	.word	0x20000030

0800065c <__DSB>:
#include "scb.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

static void __DSB(void) {
 800065c:	b480      	push	{r7}
 800065e:	af00      	add	r7, sp, #0
    asm("dsb 0xF" ::: "memory");
 8000660:	f3bf 8f4f 	dsb	sy
}
 8000664:	bf00      	nop
 8000666:	46bd      	mov	sp, r7
 8000668:	bc80      	pop	{r7}
 800066a:	4770      	bx	lr

0800066c <reset_system>:

static void reset_system(void) {
 800066c:	b580      	push	{r7, lr}
 800066e:	af00      	add	r7, sp, #0
    scb->aircr = (VECT_KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
 8000670:	4b06      	ldr	r3, [pc, #24]	; (800068c <reset_system+0x20>)
 8000672:	681b      	ldr	r3, [r3, #0]
 8000674:	68db      	ldr	r3, [r3, #12]
 8000676:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 800067a:	4b04      	ldr	r3, [pc, #16]	; (800068c <reset_system+0x20>)
 800067c:	681a      	ldr	r2, [r3, #0]
 800067e:	4b04      	ldr	r3, [pc, #16]	; (8000690 <reset_system+0x24>)
 8000680:	430b      	orrs	r3, r1
 8000682:	60d3      	str	r3, [r2, #12]
    __DSB(); // ensures the completion of memory accesses
 8000684:	f7ff ffea 	bl	800065c <__DSB>
    while(1);
 8000688:	e7fe      	b.n	8000688 <reset_system+0x1c>
 800068a:	bf00      	nop
 800068c:	20000034 	.word	0x20000034
 8000690:	05fa0004 	.word	0x05fa0004

08000694 <TIM2_IRQHandler>:
#include "main.h"

void TIM2_IRQHandler(void) {
 8000694:	b480      	push	{r7}
 8000696:	af00      	add	r7, sp, #0
    tim2->sr = 0U; // reset interrupt
 8000698:	4b03      	ldr	r3, [pc, #12]	; (80006a8 <TIM2_IRQHandler+0x14>)
 800069a:	681b      	ldr	r3, [r3, #0]
 800069c:	2200      	movs	r2, #0
 800069e:	611a      	str	r2, [r3, #16]
}
 80006a0:	bf00      	nop
 80006a2:	46bd      	mov	sp, r7
 80006a4:	bc80      	pop	{r7}
 80006a6:	4770      	bx	lr
 80006a8:	20000000 	.word	0x20000000

080006ac <TIM3_IRQHandler>:

void TIM3_IRQHandler(void) {
 80006ac:	b580      	push	{r7, lr}
 80006ae:	af00      	add	r7, sp, #0
    tim3->sr = 0U; // reset interrupt
 80006b0:	4b04      	ldr	r3, [pc, #16]	; (80006c4 <TIM3_IRQHandler+0x18>)
 80006b2:	681b      	ldr	r3, [r3, #0]
 80006b4:	2200      	movs	r2, #0
 80006b6:	611a      	str	r2, [r3, #16]
    led_toggle(PA7);
 80006b8:	2007      	movs	r0, #7
 80006ba:	f7ff fe8b 	bl	80003d4 <led_toggle>
}
 80006be:	bf00      	nop
 80006c0:	bd80      	pop	{r7, pc}
 80006c2:	bf00      	nop
 80006c4:	20000004 	.word	0x20000004

080006c8 <USART1_IRQHandler>:

void USART1_IRQHandler(void) {
 80006c8:	b580      	push	{r7, lr}
 80006ca:	b082      	sub	sp, #8
 80006cc:	af00      	add	r7, sp, #0
    char in = (char)(usart1->data & DATA_MASK);
 80006ce:	4b06      	ldr	r3, [pc, #24]	; (80006e8 <USART1_IRQHandler+0x20>)
 80006d0:	681b      	ldr	r3, [r3, #0]
 80006d2:	685b      	ldr	r3, [r3, #4]
 80006d4:	71fb      	strb	r3, [r7, #7]
    serial_wr_c(USART1, in);
 80006d6:	79fb      	ldrb	r3, [r7, #7]
 80006d8:	4619      	mov	r1, r3
 80006da:	2000      	movs	r0, #0
 80006dc:	f000 f8ea 	bl	80008b4 <serial_wr_c>
}
 80006e0:	bf00      	nop
 80006e2:	3708      	adds	r7, #8
 80006e4:	46bd      	mov	sp, r7
 80006e6:	bd80      	pop	{r7, pc}
 80006e8:	20000038 	.word	0x20000038

080006ec <SysTick_Handler>:

uint32_t __IO cnt = 0;
void SysTick_Handler(void) {
 80006ec:	b480      	push	{r7}
 80006ee:	af00      	add	r7, sp, #0
    cnt++;
 80006f0:	4b04      	ldr	r3, [pc, #16]	; (8000704 <SysTick_Handler+0x18>)
 80006f2:	681b      	ldr	r3, [r3, #0]
 80006f4:	3301      	adds	r3, #1
 80006f6:	4a03      	ldr	r2, [pc, #12]	; (8000704 <SysTick_Handler+0x18>)
 80006f8:	6013      	str	r3, [r2, #0]
}
 80006fa:	bf00      	nop
 80006fc:	46bd      	mov	sp, r7
 80006fe:	bc80      	pop	{r7}
 8000700:	4770      	bx	lr
 8000702:	bf00      	nop
 8000704:	20000044 	.word	0x20000044

08000708 <main>:

#define STEP 25

int main(void) {
 8000708:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 800070c:	b086      	sub	sp, #24
 800070e:	af00      	add	r7, sp, #0
    rcc_init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, USART1_EN);
 8000710:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 8000714:	211c      	movs	r1, #28
 8000716:	2003      	movs	r0, #3
 8000718:	f7ff ff36 	bl	8000588 <rcc_init>

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 800071c:	2103      	movs	r1, #3
 800071e:	202d      	movs	r0, #45	; 0x2d
 8000720:	f7ff fe24 	bl	800036c <pin_mode>
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1
 8000724:	210b      	movs	r1, #11
 8000726:	2009      	movs	r0, #9
 8000728:	f7ff fe20 	bl	800036c <pin_mode>
    pin_mode(PA10, OUT_ALT_PUSH_PULL_50); // enable Rx pin for usart1
 800072c:	210b      	movs	r1, #11
 800072e:	200a      	movs	r0, #10
 8000730:	f7ff fe1c 	bl	800036c <pin_mode>

    timer_init(TIM3, 10000U, 10000U); // tim3 at 1MHz
 8000734:	f242 7210 	movw	r2, #10000	; 0x2710
 8000738:	f242 7110 	movw	r1, #10000	; 0x2710
 800073c:	2002      	movs	r0, #2
 800073e:	f7ff fdaf 	bl	80002a0 <timer_init>
    pin_mode(PA7, OUT_GP_PUSH_PULL_50);
 8000742:	2103      	movs	r1, #3
 8000744:	2007      	movs	r0, #7
 8000746:	f7ff fe11 	bl	800036c <pin_mode>

    timer_init(TIM2, 10000U, 255U);
 800074a:	22ff      	movs	r2, #255	; 0xff
 800074c:	f242 7110 	movw	r1, #10000	; 0x2710
 8000750:	2001      	movs	r0, #1
 8000752:	f7ff fda5 	bl	80002a0 <timer_init>
    pin_mode(PA2, OUT_ALT_PUSH_PULL_50);
 8000756:	210b      	movs	r1, #11
 8000758:	2002      	movs	r0, #2
 800075a:	f7ff fe07 	bl	800036c <pin_mode>

    systick_init(1000U); // initialize systick at 1Hz
 800075e:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000762:	f7ff fea3 	bl	80004ac <systick_init>
    serial_init(USART1, 115200U); // initializer serial at 115200 baud
 8000766:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 800076a:	2000      	movs	r0, #0
 800076c:	f000 f878 	bl	8000860 <serial_init>

    uint8_t pwm = 0U;
 8000770:	2300      	movs	r3, #0
 8000772:	75fb      	strb	r3, [r7, #23]
    uint64_t start_t = millis();
 8000774:	f7ff feb8 	bl	80004e8 <millis>
 8000778:	4603      	mov	r3, r0
 800077a:	f04f 0400 	mov.w	r4, #0
 800077e:	e9c7 3402 	strd	r3, r4, [r7, #8]
    bool up = true;
 8000782:	2301      	movs	r3, #1
 8000784:	71fb      	strb	r3, [r7, #7]

    while(1) {
        if (millis() - start_t > 1000U) {
 8000786:	f7ff feaf 	bl	80004e8 <millis>
 800078a:	4603      	mov	r3, r0
 800078c:	4619      	mov	r1, r3
 800078e:	f04f 0200 	mov.w	r2, #0
 8000792:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000796:	1ac9      	subs	r1, r1, r3
 8000798:	eb62 0204 	sbc.w	r2, r2, r4
 800079c:	468b      	mov	fp, r1
 800079e:	4694      	mov	ip, r2
 80007a0:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 80007a4:	f04f 0200 	mov.w	r2, #0
 80007a8:	4562      	cmp	r2, ip
 80007aa:	bf08      	it	eq
 80007ac:	4559      	cmpeq	r1, fp
 80007ae:	d2ea      	bcs.n	8000786 <main+0x7e>
            serial_wr_s(USART1, "hello world!", true);
 80007b0:	2201      	movs	r2, #1
 80007b2:	4919      	ldr	r1, [pc, #100]	; (8000818 <main+0x110>)
 80007b4:	2000      	movs	r0, #0
 80007b6:	f000 f899 	bl	80008ec <serial_wr_s>
            led_toggle(PC13);
 80007ba:	202d      	movs	r0, #45	; 0x2d
 80007bc:	f7ff fe0a 	bl	80003d4 <led_toggle>
            start_t = millis();
 80007c0:	f7ff fe92 	bl	80004e8 <millis>
 80007c4:	4603      	mov	r3, r0
 80007c6:	f04f 0400 	mov.w	r4, #0
 80007ca:	e9c7 3402 	strd	r3, r4, [r7, #8]
            if (up) {
 80007ce:	79fb      	ldrb	r3, [r7, #7]
 80007d0:	2b00      	cmp	r3, #0
 80007d2:	d003      	beq.n	80007dc <main+0xd4>
                pwm += STEP;
 80007d4:	7dfb      	ldrb	r3, [r7, #23]
 80007d6:	3319      	adds	r3, #25
 80007d8:	75fb      	strb	r3, [r7, #23]
 80007da:	e002      	b.n	80007e2 <main+0xda>
            }
            else {
                pwm -= STEP;
 80007dc:	7dfb      	ldrb	r3, [r7, #23]
 80007de:	3b19      	subs	r3, #25
 80007e0:	75fb      	strb	r3, [r7, #23]
            }

            if (pwm == 250 || pwm == 0) up = !up;
 80007e2:	7dfb      	ldrb	r3, [r7, #23]
 80007e4:	2bfa      	cmp	r3, #250	; 0xfa
 80007e6:	d002      	beq.n	80007ee <main+0xe6>
 80007e8:	7dfb      	ldrb	r3, [r7, #23]
 80007ea:	2b00      	cmp	r3, #0
 80007ec:	d10d      	bne.n	800080a <main+0x102>
 80007ee:	79fb      	ldrb	r3, [r7, #7]
 80007f0:	2b00      	cmp	r3, #0
 80007f2:	bf14      	ite	ne
 80007f4:	2301      	movne	r3, #1
 80007f6:	2300      	moveq	r3, #0
 80007f8:	b2db      	uxtb	r3, r3
 80007fa:	f083 0301 	eor.w	r3, r3, #1
 80007fe:	b2db      	uxtb	r3, r3
 8000800:	71fb      	strb	r3, [r7, #7]
 8000802:	79fb      	ldrb	r3, [r7, #7]
 8000804:	f003 0301 	and.w	r3, r3, #1
 8000808:	71fb      	strb	r3, [r7, #7]
            enable_chan(TIM2, PWM, CHAN3, pwm);
 800080a:	7dfb      	ldrb	r3, [r7, #23]
 800080c:	2202      	movs	r2, #2
 800080e:	2168      	movs	r1, #104	; 0x68
 8000810:	2001      	movs	r0, #1
 8000812:	f7ff fcf5 	bl	8000200 <enable_chan>
        if (millis() - start_t > 1000U) {
 8000816:	e7b6      	b.n	8000786 <main+0x7e>
 8000818:	08000a18 	.word	0x08000a18

0800081c <get_usart>:

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

usart_t *get_usart(uint8_t usart) {
 800081c:	b480      	push	{r7}
 800081e:	b083      	sub	sp, #12
 8000820:	af00      	add	r7, sp, #0
 8000822:	4603      	mov	r3, r0
 8000824:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 8000826:	79fb      	ldrb	r3, [r7, #7]
 8000828:	2b01      	cmp	r3, #1
 800082a:	d006      	beq.n	800083a <get_usart+0x1e>
 800082c:	2b02      	cmp	r3, #2
 800082e:	d007      	beq.n	8000840 <get_usart+0x24>
 8000830:	2b00      	cmp	r3, #0
 8000832:	d108      	bne.n	8000846 <get_usart+0x2a>
        case USART1: return usart1;
 8000834:	4b07      	ldr	r3, [pc, #28]	; (8000854 <get_usart+0x38>)
 8000836:	681b      	ldr	r3, [r3, #0]
 8000838:	e007      	b.n	800084a <get_usart+0x2e>
        case USART2: return usart2;
 800083a:	4b07      	ldr	r3, [pc, #28]	; (8000858 <get_usart+0x3c>)
 800083c:	681b      	ldr	r3, [r3, #0]
 800083e:	e004      	b.n	800084a <get_usart+0x2e>
        case USART3: return usart3;
 8000840:	4b06      	ldr	r3, [pc, #24]	; (800085c <get_usart+0x40>)
 8000842:	681b      	ldr	r3, [r3, #0]
 8000844:	e001      	b.n	800084a <get_usart+0x2e>
        default: return usart1;
 8000846:	4b03      	ldr	r3, [pc, #12]	; (8000854 <get_usart+0x38>)
 8000848:	681b      	ldr	r3, [r3, #0]
    }
}
 800084a:	4618      	mov	r0, r3
 800084c:	370c      	adds	r7, #12
 800084e:	46bd      	mov	sp, r7
 8000850:	bc80      	pop	{r7}
 8000852:	4770      	bx	lr
 8000854:	20000038 	.word	0x20000038
 8000858:	2000003c 	.word	0x2000003c
 800085c:	20000040 	.word	0x20000040

08000860 <serial_init>:

void serial_init(uint8_t usart, uint32_t baud) {
 8000860:	b580      	push	{r7, lr}
 8000862:	b084      	sub	sp, #16
 8000864:	af00      	add	r7, sp, #0
 8000866:	4603      	mov	r3, r0
 8000868:	6039      	str	r1, [r7, #0]
 800086a:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 800086c:	79fb      	ldrb	r3, [r7, #7]
 800086e:	4618      	mov	r0, r3
 8000870:	f7ff ffd4 	bl	800081c <get_usart>
 8000874:	60f8      	str	r0, [r7, #12]
    serial->cr1 = (RE|TE|W_LEN_9|UE); // enable Tx/Rx, word length 9, usart
 8000876:	68fb      	ldr	r3, [r7, #12]
 8000878:	f243 020c 	movw	r2, #12300	; 0x300c
 800087c:	60da      	str	r2, [r3, #12]
    serial->cr2 = 0;
 800087e:	68fb      	ldr	r3, [r7, #12]
 8000880:	2200      	movs	r2, #0
 8000882:	611a      	str	r2, [r3, #16]
    serial->cr3 = 0;
 8000884:	68fb      	ldr	r3, [r7, #12]
 8000886:	2200      	movs	r2, #0
 8000888:	615a      	str	r2, [r3, #20]
    serial->gtpr = 0;
 800088a:	68fb      	ldr	r3, [r7, #12]
 800088c:	2200      	movs	r2, #0
 800088e:	619a      	str	r2, [r3, #24]
    serial->baud = PCLK2 / baud;
 8000890:	4a07      	ldr	r2, [pc, #28]	; (80008b0 <serial_init+0x50>)
 8000892:	683b      	ldr	r3, [r7, #0]
 8000894:	fbb2 f2f3 	udiv	r2, r2, r3
 8000898:	68fb      	ldr	r3, [r7, #12]
 800089a:	609a      	str	r2, [r3, #8]
    nvic_enable(USART1_IRQ_START_POS+(usart-1));
 800089c:	79fb      	ldrb	r3, [r7, #7]
 800089e:	3324      	adds	r3, #36	; 0x24
 80008a0:	b2db      	uxtb	r3, r3
 80008a2:	4618      	mov	r0, r3
 80008a4:	f7ff fd26 	bl	80002f4 <nvic_enable>
}
 80008a8:	bf00      	nop
 80008aa:	3710      	adds	r7, #16
 80008ac:	46bd      	mov	sp, r7
 80008ae:	bd80      	pop	{r7, pc}
 80008b0:	044aa200 	.word	0x044aa200

080008b4 <serial_wr_c>:

bool serial_wr_c(uint8_t usart, char c) {
 80008b4:	b580      	push	{r7, lr}
 80008b6:	b084      	sub	sp, #16
 80008b8:	af00      	add	r7, sp, #0
 80008ba:	4603      	mov	r3, r0
 80008bc:	460a      	mov	r2, r1
 80008be:	71fb      	strb	r3, [r7, #7]
 80008c0:	4613      	mov	r3, r2
 80008c2:	71bb      	strb	r3, [r7, #6]
    usart_t *serial = get_usart(usart);
 80008c4:	79fb      	ldrb	r3, [r7, #7]
 80008c6:	4618      	mov	r0, r3
 80008c8:	f7ff ffa8 	bl	800081c <get_usart>
 80008cc:	60f8      	str	r0, [r7, #12]
    serial->data = c;
 80008ce:	79ba      	ldrb	r2, [r7, #6]
 80008d0:	68fb      	ldr	r3, [r7, #12]
 80008d2:	605a      	str	r2, [r3, #4]
    while(!(serial->sr & TC));
 80008d4:	bf00      	nop
 80008d6:	68fb      	ldr	r3, [r7, #12]
 80008d8:	681b      	ldr	r3, [r3, #0]
 80008da:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80008de:	2b00      	cmp	r3, #0
 80008e0:	d0f9      	beq.n	80008d6 <serial_wr_c+0x22>
    return USART_SUCCESS;
 80008e2:	2301      	movs	r3, #1
}
 80008e4:	4618      	mov	r0, r3
 80008e6:	3710      	adds	r7, #16
 80008e8:	46bd      	mov	sp, r7
 80008ea:	bd80      	pop	{r7, pc}

080008ec <serial_wr_s>:

bool serial_wr_s(uint8_t usart, char *s, bool new_line) {
 80008ec:	b580      	push	{r7, lr}
 80008ee:	b082      	sub	sp, #8
 80008f0:	af00      	add	r7, sp, #0
 80008f2:	4603      	mov	r3, r0
 80008f4:	6039      	str	r1, [r7, #0]
 80008f6:	71fb      	strb	r3, [r7, #7]
 80008f8:	4613      	mov	r3, r2
 80008fa:	71bb      	strb	r3, [r7, #6]
    while(*s) serial_wr_c(usart, *s++);
 80008fc:	e008      	b.n	8000910 <serial_wr_s+0x24>
 80008fe:	683b      	ldr	r3, [r7, #0]
 8000900:	1c5a      	adds	r2, r3, #1
 8000902:	603a      	str	r2, [r7, #0]
 8000904:	781a      	ldrb	r2, [r3, #0]
 8000906:	79fb      	ldrb	r3, [r7, #7]
 8000908:	4611      	mov	r1, r2
 800090a:	4618      	mov	r0, r3
 800090c:	f7ff ffd2 	bl	80008b4 <serial_wr_c>
 8000910:	683b      	ldr	r3, [r7, #0]
 8000912:	781b      	ldrb	r3, [r3, #0]
 8000914:	2b00      	cmp	r3, #0
 8000916:	d1f2      	bne.n	80008fe <serial_wr_s+0x12>
    if (!new_line) return 1;
 8000918:	79bb      	ldrb	r3, [r7, #6]
 800091a:	f083 0301 	eor.w	r3, r3, #1
 800091e:	b2db      	uxtb	r3, r3
 8000920:	2b00      	cmp	r3, #0
 8000922:	d001      	beq.n	8000928 <serial_wr_s+0x3c>
 8000924:	2301      	movs	r3, #1
 8000926:	e00a      	b.n	800093e <serial_wr_s+0x52>
    serial_wr_c(usart, '\r');
 8000928:	79fb      	ldrb	r3, [r7, #7]
 800092a:	210d      	movs	r1, #13
 800092c:	4618      	mov	r0, r3
 800092e:	f7ff ffc1 	bl	80008b4 <serial_wr_c>
    serial_wr_c(usart, '\n');
 8000932:	79fb      	ldrb	r3, [r7, #7]
 8000934:	210a      	movs	r1, #10
 8000936:	4618      	mov	r0, r3
 8000938:	f7ff ffbc 	bl	80008b4 <serial_wr_c>
    return USART_SUCCESS;
 800093c:	2301      	movs	r3, #1
}
 800093e:	4618      	mov	r0, r3
 8000940:	3708      	adds	r7, #8
 8000942:	46bd      	mov	sp, r7
 8000944:	bd80      	pop	{r7, pc}

08000946 <serial_r_c>:

char serial_r_c(uint8_t usart) {
 8000946:	b580      	push	{r7, lr}
 8000948:	b084      	sub	sp, #16
 800094a:	af00      	add	r7, sp, #0
 800094c:	4603      	mov	r3, r0
 800094e:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 8000950:	79fb      	ldrb	r3, [r7, #7]
 8000952:	4618      	mov	r0, r3
 8000954:	f7ff ff62 	bl	800081c <get_usart>
 8000958:	60f8      	str	r0, [r7, #12]
    while(!(serial->sr & RXNE));
 800095a:	bf00      	nop
 800095c:	68fb      	ldr	r3, [r7, #12]
 800095e:	681b      	ldr	r3, [r3, #0]
 8000960:	f003 0320 	and.w	r3, r3, #32
 8000964:	2b00      	cmp	r3, #0
 8000966:	d0f9      	beq.n	800095c <serial_r_c+0x16>
    return (char)(serial->data & DATA_MASK);
 8000968:	68fb      	ldr	r3, [r7, #12]
 800096a:	685b      	ldr	r3, [r3, #4]
 800096c:	b2db      	uxtb	r3, r3
}
 800096e:	4618      	mov	r0, r3
 8000970:	3710      	adds	r7, #16
 8000972:	46bd      	mov	sp, r7
 8000974:	bd80      	pop	{r7, pc}

08000976 <serial_r_s>:

char *serial_r_s(uint8_t usart, char *buffer) {
 8000976:	b590      	push	{r4, r7, lr}
 8000978:	b083      	sub	sp, #12
 800097a:	af00      	add	r7, sp, #0
 800097c:	4603      	mov	r3, r0
 800097e:	6039      	str	r1, [r7, #0]
 8000980:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 8000982:	e008      	b.n	8000996 <serial_r_s+0x20>
        *buffer++ = serial_r_c(usart);
 8000984:	683c      	ldr	r4, [r7, #0]
 8000986:	1c63      	adds	r3, r4, #1
 8000988:	603b      	str	r3, [r7, #0]
 800098a:	79fb      	ldrb	r3, [r7, #7]
 800098c:	4618      	mov	r0, r3
 800098e:	f7ff ffda 	bl	8000946 <serial_r_c>
 8000992:	4603      	mov	r3, r0
 8000994:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 8000996:	683b      	ldr	r3, [r7, #0]
 8000998:	781b      	ldrb	r3, [r3, #0]
 800099a:	2b00      	cmp	r3, #0
 800099c:	d1f2      	bne.n	8000984 <serial_r_s+0xe>
    }
    return buffer;
 800099e:	683b      	ldr	r3, [r7, #0]
}
 80009a0:	4618      	mov	r0, r3
 80009a2:	370c      	adds	r7, #12
 80009a4:	46bd      	mov	sp, r7
 80009a6:	bd90      	pop	{r4, r7, pc}

080009a8 <__enable_irq>:
#include "intrinsic.h"

// enable interrupt
void __enable_irq(void) {
 80009a8:	b480      	push	{r7}
 80009aa:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsie i" ::: "memory");
 80009ac:	b662      	cpsie	i
}
 80009ae:	bf00      	nop
 80009b0:	46bd      	mov	sp, r7
 80009b2:	bc80      	pop	{r7}
 80009b4:	4770      	bx	lr

080009b6 <__disable_irq>:

// disable interrupt
void __disable_irq(void) {
 80009b6:	b480      	push	{r7}
 80009b8:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsid i" ::: "memory");
 80009ba:	b672      	cpsid	i
}
 80009bc:	bf00      	nop
 80009be:	46bd      	mov	sp, r7
 80009c0:	bc80      	pop	{r7}
 80009c2:	4770      	bx	lr

080009c4 <__NOP>:

// no operation
void __NOP(void) {
 80009c4:	b480      	push	{r7}
 80009c6:	af00      	add	r7, sp, #0
    __ASM volatile ("nop");
 80009c8:	bf00      	nop
}
 80009ca:	bf00      	nop
 80009cc:	46bd      	mov	sp, r7
 80009ce:	bc80      	pop	{r7}
 80009d0:	4770      	bx	lr
	...

080009d4 <Reset_Handler>:
 80009d4:	2100      	movs	r1, #0
 80009d6:	e003      	b.n	80009e0 <LoopCopyDataInit>

080009d8 <CopyDataInit>:
 80009d8:	4b09      	ldr	r3, [pc, #36]	; (8000a00 <LoopFillZerobss+0xc>)
 80009da:	585b      	ldr	r3, [r3, r1]
 80009dc:	5043      	str	r3, [r0, r1]
 80009de:	3104      	adds	r1, #4

080009e0 <LoopCopyDataInit>:
 80009e0:	4808      	ldr	r0, [pc, #32]	; (8000a04 <LoopFillZerobss+0x10>)
 80009e2:	4b09      	ldr	r3, [pc, #36]	; (8000a08 <LoopFillZerobss+0x14>)
 80009e4:	1842      	adds	r2, r0, r1
 80009e6:	429a      	cmp	r2, r3
 80009e8:	d3f6      	bcc.n	80009d8 <CopyDataInit>
 80009ea:	4a08      	ldr	r2, [pc, #32]	; (8000a0c <LoopFillZerobss+0x18>)
 80009ec:	e002      	b.n	80009f4 <LoopFillZerobss>

080009ee <FillZerobss>:
 80009ee:	2300      	movs	r3, #0
 80009f0:	f842 3b04 	str.w	r3, [r2], #4

080009f4 <LoopFillZerobss>:
 80009f4:	4b06      	ldr	r3, [pc, #24]	; (8000a10 <LoopFillZerobss+0x1c>)
 80009f6:	429a      	cmp	r2, r3
 80009f8:	d3f9      	bcc.n	80009ee <FillZerobss>
 80009fa:	f7ff fe85 	bl	8000708 <main>
 80009fe:	4770      	bx	lr
 8000a00:	08000a28 	.word	0x08000a28
 8000a04:	20000000 	.word	0x20000000
 8000a08:	20000044 	.word	0x20000044
 8000a0c:	20000044 	.word	0x20000044
 8000a10:	20000048 	.word	0x20000048

08000a14 <ADC1_2_IRQHandler>:
 8000a14:	e7fe      	b.n	8000a14 <ADC1_2_IRQHandler>
	...
