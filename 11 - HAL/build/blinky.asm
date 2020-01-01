
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000150 <get_timer>:
timer_t *tim4 = (timer_t *)(TIM4_BASE);
timer_t *tim5 = (timer_t *)(TIM5_BASE);
timer_t *tim6 = (timer_t *)(TIM6_BASE);
timer_t *tim7 = (timer_t *)(TIM7_BASE);

timer_t *get_timer(uint8_t timer) {
 8000150:	b480      	push	{r7}
 8000152:	b083      	sub	sp, #12
 8000154:	af00      	add	r7, sp, #0
 8000156:	4603      	mov	r3, r0
 8000158:	71fb      	strb	r3, [r7, #7]
    switch (timer) {
 800015a:	79fb      	ldrb	r3, [r7, #7]
 800015c:	3b01      	subs	r3, #1
 800015e:	2b05      	cmp	r3, #5
 8000160:	d820      	bhi.n	80001a4 <get_timer+0x54>
 8000162:	a201      	add	r2, pc, #4	; (adr r2, 8000168 <get_timer+0x18>)
 8000164:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000168:	08000181 	.word	0x08000181
 800016c:	08000187 	.word	0x08000187
 8000170:	0800018d 	.word	0x0800018d
 8000174:	08000193 	.word	0x08000193
 8000178:	08000199 	.word	0x08000199
 800017c:	0800019f 	.word	0x0800019f
    case TIM2: return tim2;
 8000180:	4b0c      	ldr	r3, [pc, #48]	; (80001b4 <get_timer+0x64>)
 8000182:	681b      	ldr	r3, [r3, #0]
 8000184:	e010      	b.n	80001a8 <get_timer+0x58>
    case TIM3: return tim3;
 8000186:	4b0c      	ldr	r3, [pc, #48]	; (80001b8 <get_timer+0x68>)
 8000188:	681b      	ldr	r3, [r3, #0]
 800018a:	e00d      	b.n	80001a8 <get_timer+0x58>
    case TIM4: return tim4;
 800018c:	4b0b      	ldr	r3, [pc, #44]	; (80001bc <get_timer+0x6c>)
 800018e:	681b      	ldr	r3, [r3, #0]
 8000190:	e00a      	b.n	80001a8 <get_timer+0x58>
    case TIM5: return tim5;
 8000192:	4b0b      	ldr	r3, [pc, #44]	; (80001c0 <get_timer+0x70>)
 8000194:	681b      	ldr	r3, [r3, #0]
 8000196:	e007      	b.n	80001a8 <get_timer+0x58>
    case TIM6: return tim6;
 8000198:	4b0a      	ldr	r3, [pc, #40]	; (80001c4 <get_timer+0x74>)
 800019a:	681b      	ldr	r3, [r3, #0]
 800019c:	e004      	b.n	80001a8 <get_timer+0x58>
    case TIM7: return tim7;
 800019e:	4b0a      	ldr	r3, [pc, #40]	; (80001c8 <get_timer+0x78>)
 80001a0:	681b      	ldr	r3, [r3, #0]
 80001a2:	e001      	b.n	80001a8 <get_timer+0x58>
    default: return tim2;
 80001a4:	4b03      	ldr	r3, [pc, #12]	; (80001b4 <get_timer+0x64>)
 80001a6:	681b      	ldr	r3, [r3, #0]
    }
}
 80001a8:	4618      	mov	r0, r3
 80001aa:	370c      	adds	r7, #12
 80001ac:	46bd      	mov	sp, r7
 80001ae:	bc80      	pop	{r7}
 80001b0:	4770      	bx	lr
 80001b2:	bf00      	nop
 80001b4:	20000000 	.word	0x20000000
 80001b8:	20000004 	.word	0x20000004
 80001bc:	20000008 	.word	0x20000008
 80001c0:	2000000c 	.word	0x2000000c
 80001c4:	20000010 	.word	0x20000010
 80001c8:	20000014 	.word	0x20000014

080001cc <get_timer_cnt>:

uint32_t get_timer_cnt(uint8_t timer) {
 80001cc:	b580      	push	{r7, lr}
 80001ce:	b084      	sub	sp, #16
 80001d0:	af00      	add	r7, sp, #0
 80001d2:	4603      	mov	r3, r0
 80001d4:	71fb      	strb	r3, [r7, #7]
    timer_t *tim = get_timer(timer);
 80001d6:	79fb      	ldrb	r3, [r7, #7]
 80001d8:	4618      	mov	r0, r3
 80001da:	f7ff ffb9 	bl	8000150 <get_timer>
 80001de:	60f8      	str	r0, [r7, #12]
    return tim->cnt;
 80001e0:	68fb      	ldr	r3, [r7, #12]
 80001e2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
}
 80001e4:	4618      	mov	r0, r3
 80001e6:	3710      	adds	r7, #16
 80001e8:	46bd      	mov	sp, r7
 80001ea:	bd80      	pop	{r7, pc}

080001ec <enable_chan>:

void enable_chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load) {
 80001ec:	b580      	push	{r7, lr}
 80001ee:	b086      	sub	sp, #24
 80001f0:	af00      	add	r7, sp, #0
 80001f2:	603b      	str	r3, [r7, #0]
 80001f4:	4603      	mov	r3, r0
 80001f6:	71fb      	strb	r3, [r7, #7]
 80001f8:	460b      	mov	r3, r1
 80001fa:	71bb      	strb	r3, [r7, #6]
 80001fc:	4613      	mov	r3, r2
 80001fe:	717b      	strb	r3, [r7, #5]
    timer_t *tim = get_timer(timer);
 8000200:	79fb      	ldrb	r3, [r7, #7]
 8000202:	4618      	mov	r0, r3
 8000204:	f7ff ffa4 	bl	8000150 <get_timer>
 8000208:	6178      	str	r0, [r7, #20]
    tim->ccr[channel] = load;
 800020a:	797b      	ldrb	r3, [r7, #5]
 800020c:	697a      	ldr	r2, [r7, #20]
 800020e:	330c      	adds	r3, #12
 8000210:	009b      	lsls	r3, r3, #2
 8000212:	4413      	add	r3, r2
 8000214:	683a      	ldr	r2, [r7, #0]
 8000216:	605a      	str	r2, [r3, #4]

    uint8_t shift_by;
    uint32_t config;

    shift_by = channel * 4;
 8000218:	797b      	ldrb	r3, [r7, #5]
 800021a:	009b      	lsls	r3, r3, #2
 800021c:	74fb      	strb	r3, [r7, #19]
    config = tim->ccer & ~(0xf << shift_by);
 800021e:	697b      	ldr	r3, [r7, #20]
 8000220:	6a1b      	ldr	r3, [r3, #32]
 8000222:	7cfa      	ldrb	r2, [r7, #19]
 8000224:	210f      	movs	r1, #15
 8000226:	fa01 f202 	lsl.w	r2, r1, r2
 800022a:	43d2      	mvns	r2, r2
 800022c:	4013      	ands	r3, r2
 800022e:	60fb      	str	r3, [r7, #12]
    tim->ccer = (config | (1 << shift_by)); // enable output
 8000230:	7cfb      	ldrb	r3, [r7, #19]
 8000232:	2201      	movs	r2, #1
 8000234:	fa02 f303 	lsl.w	r3, r2, r3
 8000238:	461a      	mov	r2, r3
 800023a:	68fb      	ldr	r3, [r7, #12]
 800023c:	431a      	orrs	r2, r3
 800023e:	697b      	ldr	r3, [r7, #20]
 8000240:	621a      	str	r2, [r3, #32]

    // output compare mode //
    shift_by = (channel % 2) * 8;
 8000242:	797b      	ldrb	r3, [r7, #5]
 8000244:	f003 0301 	and.w	r3, r3, #1
 8000248:	b2db      	uxtb	r3, r3
 800024a:	00db      	lsls	r3, r3, #3
 800024c:	74fb      	strb	r3, [r7, #19]
    uint8_t mr_idx = channel / 2;
 800024e:	797b      	ldrb	r3, [r7, #5]
 8000250:	085b      	lsrs	r3, r3, #1
 8000252:	72fb      	strb	r3, [r7, #11]
    config = tim->ccmr[mr_idx] & ~(0xff << shift_by);
 8000254:	7afa      	ldrb	r2, [r7, #11]
 8000256:	697b      	ldr	r3, [r7, #20]
 8000258:	3206      	adds	r2, #6
 800025a:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800025e:	7cfa      	ldrb	r2, [r7, #19]
 8000260:	21ff      	movs	r1, #255	; 0xff
 8000262:	fa01 f202 	lsl.w	r2, r1, r2
 8000266:	43d2      	mvns	r2, r2
 8000268:	4013      	ands	r3, r2
 800026a:	60fb      	str	r3, [r7, #12]
    tim->ccmr[mr_idx] = (config | (mode << shift_by));
 800026c:	79ba      	ldrb	r2, [r7, #6]
 800026e:	7cfb      	ldrb	r3, [r7, #19]
 8000270:	fa02 f303 	lsl.w	r3, r2, r3
 8000274:	4619      	mov	r1, r3
 8000276:	7afa      	ldrb	r2, [r7, #11]
 8000278:	68fb      	ldr	r3, [r7, #12]
 800027a:	4319      	orrs	r1, r3
 800027c:	697b      	ldr	r3, [r7, #20]
 800027e:	3206      	adds	r2, #6
 8000280:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 8000284:	bf00      	nop
 8000286:	3718      	adds	r7, #24
 8000288:	46bd      	mov	sp, r7
 800028a:	bd80      	pop	{r7, pc}

0800028c <timer_init>:

void timer_init(uint8_t timer, uint32_t prescaler, uint32_t period) {
 800028c:	b580      	push	{r7, lr}
 800028e:	b086      	sub	sp, #24
 8000290:	af00      	add	r7, sp, #0
 8000292:	4603      	mov	r3, r0
 8000294:	60b9      	str	r1, [r7, #8]
 8000296:	607a      	str	r2, [r7, #4]
 8000298:	73fb      	strb	r3, [r7, #15]
    timer_t *tim = get_timer(timer);
 800029a:	7bfb      	ldrb	r3, [r7, #15]
 800029c:	4618      	mov	r0, r3
 800029e:	f7ff ff57 	bl	8000150 <get_timer>
 80002a2:	6178      	str	r0, [r7, #20]

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->psc = PCLK2 / prescaler - 1U; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
 80002a4:	4a0d      	ldr	r2, [pc, #52]	; (80002dc <timer_init+0x50>)
 80002a6:	68bb      	ldr	r3, [r7, #8]
 80002a8:	fbb2 f3f3 	udiv	r3, r2, r3
 80002ac:	1e5a      	subs	r2, r3, #1
 80002ae:	697b      	ldr	r3, [r7, #20]
 80002b0:	629a      	str	r2, [r3, #40]	; 0x28
    tim->arr = period - 1U; // "period" of timer - updates every time cnt reaches arr
 80002b2:	687b      	ldr	r3, [r7, #4]
 80002b4:	1e5a      	subs	r2, r3, #1
 80002b6:	697b      	ldr	r3, [r7, #20]
 80002b8:	62da      	str	r2, [r3, #44]	; 0x2c

    tim->dier = 1U;
 80002ba:	697b      	ldr	r3, [r7, #20]
 80002bc:	2201      	movs	r2, #1
 80002be:	60da      	str	r2, [r3, #12]

    nvic_enable(TIM2_IRQ_START_POS+(timer-1));
 80002c0:	7bfb      	ldrb	r3, [r7, #15]
 80002c2:	331b      	adds	r3, #27
 80002c4:	b2db      	uxtb	r3, r3
 80002c6:	4618      	mov	r0, r3
 80002c8:	f000 f80a 	bl	80002e0 <nvic_enable>

    // enable counter //
    tim->cr[0] = 1U;
 80002cc:	697b      	ldr	r3, [r7, #20]
 80002ce:	2201      	movs	r2, #1
 80002d0:	601a      	str	r2, [r3, #0]
}
 80002d2:	bf00      	nop
 80002d4:	3718      	adds	r7, #24
 80002d6:	46bd      	mov	sp, r7
 80002d8:	bd80      	pop	{r7, pc}
 80002da:	bf00      	nop
 80002dc:	044aa200 	.word	0x044aa200

080002e0 <nvic_enable>:
#include "nvic.h"

nvic_t *nvic = (nvic_t *)(NVIC_BASE);

void nvic_enable(uint8_t irq_pos) {
 80002e0:	b480      	push	{r7}
 80002e2:	b085      	sub	sp, #20
 80002e4:	af00      	add	r7, sp, #0
 80002e6:	4603      	mov	r3, r0
 80002e8:	71fb      	strb	r3, [r7, #7]
	uint8_t idx = irq_pos / 32;
 80002ea:	79fb      	ldrb	r3, [r7, #7]
 80002ec:	095b      	lsrs	r3, r3, #5
 80002ee:	73fb      	strb	r3, [r7, #15]
	uint8_t shift_by = irq_pos % 32;
 80002f0:	79fb      	ldrb	r3, [r7, #7]
 80002f2:	f003 031f 	and.w	r3, r3, #31
 80002f6:	73bb      	strb	r3, [r7, #14]
	nvic->iser[idx] = (1 << shift_by);
 80002f8:	7bbb      	ldrb	r3, [r7, #14]
 80002fa:	2201      	movs	r2, #1
 80002fc:	fa02 f103 	lsl.w	r1, r2, r3
 8000300:	4b04      	ldr	r3, [pc, #16]	; (8000314 <nvic_enable+0x34>)
 8000302:	681b      	ldr	r3, [r3, #0]
 8000304:	7bfa      	ldrb	r2, [r7, #15]
 8000306:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 800030a:	bf00      	nop
 800030c:	3714      	adds	r7, #20
 800030e:	46bd      	mov	sp, r7
 8000310:	bc80      	pop	{r7}
 8000312:	4770      	bx	lr
 8000314:	20000018 	.word	0x20000018

08000318 <get_gpio>:

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

gpio_t *get_gpio(uint8_t pin) {
 8000318:	b480      	push	{r7}
 800031a:	b083      	sub	sp, #12
 800031c:	af00      	add	r7, sp, #0
 800031e:	4603      	mov	r3, r0
 8000320:	71fb      	strb	r3, [r7, #7]
    switch(pin >> 4) {
 8000322:	79fb      	ldrb	r3, [r7, #7]
 8000324:	091b      	lsrs	r3, r3, #4
 8000326:	b2db      	uxtb	r3, r3
 8000328:	2b00      	cmp	r3, #0
 800032a:	d002      	beq.n	8000332 <get_gpio+0x1a>
 800032c:	2b01      	cmp	r3, #1
 800032e:	d003      	beq.n	8000338 <get_gpio+0x20>
 8000330:	e005      	b.n	800033e <get_gpio+0x26>
        case 0: return gpio_a;
 8000332:	4b06      	ldr	r3, [pc, #24]	; (800034c <get_gpio+0x34>)
 8000334:	681b      	ldr	r3, [r3, #0]
 8000336:	e004      	b.n	8000342 <get_gpio+0x2a>
        case 1: return gpio_b;
 8000338:	4b05      	ldr	r3, [pc, #20]	; (8000350 <get_gpio+0x38>)
 800033a:	681b      	ldr	r3, [r3, #0]
 800033c:	e001      	b.n	8000342 <get_gpio+0x2a>
        // case 2: return gpio_c;
        default: return gpio_c;
 800033e:	4b05      	ldr	r3, [pc, #20]	; (8000354 <get_gpio+0x3c>)
 8000340:	681b      	ldr	r3, [r3, #0]
    }
}
 8000342:	4618      	mov	r0, r3
 8000344:	370c      	adds	r7, #12
 8000346:	46bd      	mov	sp, r7
 8000348:	bc80      	pop	{r7}
 800034a:	4770      	bx	lr
 800034c:	2000001c 	.word	0x2000001c
 8000350:	20000020 	.word	0x20000020
 8000354:	20000024 	.word	0x20000024

08000358 <pin_mode>:

void pin_mode(uint8_t pin, uint8_t mode) {
 8000358:	b580      	push	{r7, lr}
 800035a:	b086      	sub	sp, #24
 800035c:	af00      	add	r7, sp, #0
 800035e:	4603      	mov	r3, r0
 8000360:	460a      	mov	r2, r1
 8000362:	71fb      	strb	r3, [r7, #7]
 8000364:	4613      	mov	r3, r2
 8000366:	71bb      	strb	r3, [r7, #6]
    gpio_t *gpio = get_gpio(pin);
 8000368:	79fb      	ldrb	r3, [r7, #7]
 800036a:	4618      	mov	r0, r3
 800036c:	f7ff ffd4 	bl	8000318 <get_gpio>
 8000370:	6178      	str	r0, [r7, #20]
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
 8000372:	79fb      	ldrb	r3, [r7, #7]
 8000374:	f003 030f 	and.w	r3, r3, #15
 8000378:	74fb      	strb	r3, [r7, #19]
    uint8_t shift_by = (bit % 8) * 4;
 800037a:	7cfb      	ldrb	r3, [r7, #19]
 800037c:	f003 0307 	and.w	r3, r3, #7
 8000380:	b2db      	uxtb	r3, r3
 8000382:	009b      	lsls	r3, r3, #2
 8000384:	74bb      	strb	r3, [r7, #18]
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
 8000386:	7cfb      	ldrb	r3, [r7, #19]
 8000388:	08db      	lsrs	r3, r3, #3
 800038a:	747b      	strb	r3, [r7, #17]
    uint32_t config = gpio->cr[reg_idx] & ~(0xf << shift_by);
 800038c:	7c7a      	ldrb	r2, [r7, #17]
 800038e:	697b      	ldr	r3, [r7, #20]
 8000390:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000394:	7cba      	ldrb	r2, [r7, #18]
 8000396:	210f      	movs	r1, #15
 8000398:	fa01 f202 	lsl.w	r2, r1, r2
 800039c:	43d2      	mvns	r2, r2
 800039e:	4013      	ands	r3, r2
 80003a0:	60fb      	str	r3, [r7, #12]
    gpio->cr[reg_idx] = (config | (mode << shift_by));
 80003a2:	79ba      	ldrb	r2, [r7, #6]
 80003a4:	7cbb      	ldrb	r3, [r7, #18]
 80003a6:	fa02 f303 	lsl.w	r3, r2, r3
 80003aa:	4619      	mov	r1, r3
 80003ac:	7c7a      	ldrb	r2, [r7, #17]
 80003ae:	68fb      	ldr	r3, [r7, #12]
 80003b0:	4319      	orrs	r1, r3
 80003b2:	697b      	ldr	r3, [r7, #20]
 80003b4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 80003b8:	bf00      	nop
 80003ba:	3718      	adds	r7, #24
 80003bc:	46bd      	mov	sp, r7
 80003be:	bd80      	pop	{r7, pc}

080003c0 <led_toggle>:

void led_toggle(uint8_t pin) {
 80003c0:	b580      	push	{r7, lr}
 80003c2:	b084      	sub	sp, #16
 80003c4:	af00      	add	r7, sp, #0
 80003c6:	4603      	mov	r3, r0
 80003c8:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 80003ca:	79fb      	ldrb	r3, [r7, #7]
 80003cc:	4618      	mov	r0, r3
 80003ce:	f7ff ffa3 	bl	8000318 <get_gpio>
 80003d2:	60f8      	str	r0, [r7, #12]
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
 80003d4:	68fb      	ldr	r3, [r7, #12]
 80003d6:	68db      	ldr	r3, [r3, #12]
 80003d8:	79fa      	ldrb	r2, [r7, #7]
 80003da:	f002 020f 	and.w	r2, r2, #15
 80003de:	2101      	movs	r1, #1
 80003e0:	fa01 f202 	lsl.w	r2, r1, r2
 80003e4:	405a      	eors	r2, r3
 80003e6:	68fb      	ldr	r3, [r7, #12]
 80003e8:	60da      	str	r2, [r3, #12]
}
 80003ea:	bf00      	nop
 80003ec:	3710      	adds	r7, #16
 80003ee:	46bd      	mov	sp, r7
 80003f0:	bd80      	pop	{r7, pc}

080003f2 <led_on>:

void led_on(uint8_t pin) {
 80003f2:	b580      	push	{r7, lr}
 80003f4:	b084      	sub	sp, #16
 80003f6:	af00      	add	r7, sp, #0
 80003f8:	4603      	mov	r3, r0
 80003fa:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 80003fc:	79fb      	ldrb	r3, [r7, #7]
 80003fe:	4618      	mov	r0, r3
 8000400:	f7ff ff8a 	bl	8000318 <get_gpio>
 8000404:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 8000406:	79fb      	ldrb	r3, [r7, #7]
 8000408:	2b2d      	cmp	r3, #45	; 0x2d
 800040a:	d10c      	bne.n	8000426 <led_on+0x34>
 800040c:	68fb      	ldr	r3, [r7, #12]
 800040e:	68db      	ldr	r3, [r3, #12]
 8000410:	79fa      	ldrb	r2, [r7, #7]
 8000412:	f002 020f 	and.w	r2, r2, #15
 8000416:	2101      	movs	r1, #1
 8000418:	fa01 f202 	lsl.w	r2, r1, r2
 800041c:	43d2      	mvns	r2, r2
 800041e:	401a      	ands	r2, r3
 8000420:	68fb      	ldr	r3, [r7, #12]
 8000422:	60da      	str	r2, [r3, #12]
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}
 8000424:	e00a      	b.n	800043c <led_on+0x4a>
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
 8000426:	68fb      	ldr	r3, [r7, #12]
 8000428:	68db      	ldr	r3, [r3, #12]
 800042a:	79fa      	ldrb	r2, [r7, #7]
 800042c:	f002 020f 	and.w	r2, r2, #15
 8000430:	2101      	movs	r1, #1
 8000432:	fa01 f202 	lsl.w	r2, r1, r2
 8000436:	431a      	orrs	r2, r3
 8000438:	68fb      	ldr	r3, [r7, #12]
 800043a:	60da      	str	r2, [r3, #12]
}
 800043c:	bf00      	nop
 800043e:	3710      	adds	r7, #16
 8000440:	46bd      	mov	sp, r7
 8000442:	bd80      	pop	{r7, pc}

08000444 <led_off>:

void led_off(uint8_t pin) {
 8000444:	b580      	push	{r7, lr}
 8000446:	b084      	sub	sp, #16
 8000448:	af00      	add	r7, sp, #0
 800044a:	4603      	mov	r3, r0
 800044c:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 800044e:	79fb      	ldrb	r3, [r7, #7]
 8000450:	4618      	mov	r0, r3
 8000452:	f7ff ff61 	bl	8000318 <get_gpio>
 8000456:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
 8000458:	79fb      	ldrb	r3, [r7, #7]
 800045a:	2b2d      	cmp	r3, #45	; 0x2d
 800045c:	d10b      	bne.n	8000476 <led_off+0x32>
 800045e:	68fb      	ldr	r3, [r7, #12]
 8000460:	68db      	ldr	r3, [r3, #12]
 8000462:	79fa      	ldrb	r2, [r7, #7]
 8000464:	f002 020f 	and.w	r2, r2, #15
 8000468:	2101      	movs	r1, #1
 800046a:	fa01 f202 	lsl.w	r2, r1, r2
 800046e:	431a      	orrs	r2, r3
 8000470:	68fb      	ldr	r3, [r7, #12]
 8000472:	60da      	str	r2, [r3, #12]
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
 8000474:	e00b      	b.n	800048e <led_off+0x4a>
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 8000476:	68fb      	ldr	r3, [r7, #12]
 8000478:	68db      	ldr	r3, [r3, #12]
 800047a:	79fa      	ldrb	r2, [r7, #7]
 800047c:	f002 020f 	and.w	r2, r2, #15
 8000480:	2101      	movs	r1, #1
 8000482:	fa01 f202 	lsl.w	r2, r1, r2
 8000486:	43d2      	mvns	r2, r2
 8000488:	401a      	ands	r2, r3
 800048a:	68fb      	ldr	r3, [r7, #12]
 800048c:	60da      	str	r2, [r3, #12]
}
 800048e:	bf00      	nop
 8000490:	3710      	adds	r7, #16
 8000492:	46bd      	mov	sp, r7
 8000494:	bd80      	pop	{r7, pc}
 8000496:	bf00      	nop

08000498 <systick_init>:
#include "systick.h"

systick_t *systick = (systick_t *)(SYSTICK_BASE);

void systick_init(uint32_t reload_val) {
 8000498:	b480      	push	{r7}
 800049a:	b083      	sub	sp, #12
 800049c:	af00      	add	r7, sp, #0
 800049e:	6078      	str	r0, [r7, #4]
    systick->reload = PCLK2 / reload_val - 1U;
 80004a0:	4a0a      	ldr	r2, [pc, #40]	; (80004cc <systick_init+0x34>)
 80004a2:	687b      	ldr	r3, [r7, #4]
 80004a4:	fbb2 f2f3 	udiv	r2, r2, r3
 80004a8:	4b09      	ldr	r3, [pc, #36]	; (80004d0 <systick_init+0x38>)
 80004aa:	681b      	ldr	r3, [r3, #0]
 80004ac:	3a01      	subs	r2, #1
 80004ae:	605a      	str	r2, [r3, #4]
    systick->val = 0U;
 80004b0:	4b07      	ldr	r3, [pc, #28]	; (80004d0 <systick_init+0x38>)
 80004b2:	681b      	ldr	r3, [r3, #0]
 80004b4:	2200      	movs	r2, #0
 80004b6:	609a      	str	r2, [r3, #8]
    systick->ctrl = (AHB_EN|TICKINT_EN|TICK_EN);
 80004b8:	4b05      	ldr	r3, [pc, #20]	; (80004d0 <systick_init+0x38>)
 80004ba:	681b      	ldr	r3, [r3, #0]
 80004bc:	2207      	movs	r2, #7
 80004be:	601a      	str	r2, [r3, #0]
}
 80004c0:	bf00      	nop
 80004c2:	370c      	adds	r7, #12
 80004c4:	46bd      	mov	sp, r7
 80004c6:	bc80      	pop	{r7}
 80004c8:	4770      	bx	lr
 80004ca:	bf00      	nop
 80004cc:	044aa200 	.word	0x044aa200
 80004d0:	20000028 	.word	0x20000028

080004d4 <millis>:

uint32_t millis(void) {
 80004d4:	b480      	push	{r7}
 80004d6:	af00      	add	r7, sp, #0
    return cnt;
 80004d8:	4b02      	ldr	r3, [pc, #8]	; (80004e4 <millis+0x10>)
 80004da:	681b      	ldr	r3, [r3, #0]
}
 80004dc:	4618      	mov	r0, r3
 80004de:	46bd      	mov	sp, r7
 80004e0:	bc80      	pop	{r7}
 80004e2:	4770      	bx	lr
 80004e4:	20000044 	.word	0x20000044

080004e8 <delay>:
#include "delay.h"
#include "systick.h"

void delay(uint64_t __IO t) {
 80004e8:	b490      	push	{r4, r7}
 80004ea:	b084      	sub	sp, #16
 80004ec:	af00      	add	r7, sp, #0
 80004ee:	e9c7 0100 	strd	r0, r1, [r7]
    for (uint64_t __IO i = 0; i < t; i++);
 80004f2:	f04f 0300 	mov.w	r3, #0
 80004f6:	f04f 0400 	mov.w	r4, #0
 80004fa:	e9c7 3402 	strd	r3, r4, [r7, #8]
 80004fe:	e006      	b.n	800050e <delay+0x26>
 8000500:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 8000504:	1c4b      	adds	r3, r1, #1
 8000506:	f142 0400 	adc.w	r4, r2, #0
 800050a:	e9c7 3402 	strd	r3, r4, [r7, #8]
 800050e:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 8000512:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000516:	42a2      	cmp	r2, r4
 8000518:	bf08      	it	eq
 800051a:	4299      	cmpeq	r1, r3
 800051c:	d3f0      	bcc.n	8000500 <delay+0x18>
}
 800051e:	bf00      	nop
 8000520:	3710      	adds	r7, #16
 8000522:	46bd      	mov	sp, r7
 8000524:	bc90      	pop	{r4, r7}
 8000526:	4770      	bx	lr

08000528 <systick_delay>:

void systick_delay(uint64_t __IO t) {
 8000528:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 800052c:	b084      	sub	sp, #16
 800052e:	af00      	add	r7, sp, #0
 8000530:	e9c7 0100 	strd	r0, r1, [r7]
    uint64_t start_t = millis();
 8000534:	f7ff ffce 	bl	80004d4 <millis>
 8000538:	4603      	mov	r3, r0
 800053a:	f04f 0400 	mov.w	r4, #0
 800053e:	e9c7 3402 	strd	r3, r4, [r7, #8]
    while(millis() - start_t < t);
 8000542:	bf00      	nop
 8000544:	f7ff ffc6 	bl	80004d4 <millis>
 8000548:	4603      	mov	r3, r0
 800054a:	469b      	mov	fp, r3
 800054c:	f04f 0c00 	mov.w	ip, #0
 8000550:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000554:	4659      	mov	r1, fp
 8000556:	4662      	mov	r2, ip
 8000558:	1ac9      	subs	r1, r1, r3
 800055a:	eb62 0204 	sbc.w	r2, r2, r4
 800055e:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000562:	42a2      	cmp	r2, r4
 8000564:	bf08      	it	eq
 8000566:	4299      	cmpeq	r1, r3
 8000568:	d3ec      	bcc.n	8000544 <systick_delay+0x1c>
}
 800056a:	bf00      	nop
 800056c:	3710      	adds	r7, #16
 800056e:	46bd      	mov	sp, r7
 8000570:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}

08000574 <rcc_init>:
#include "rcc.h"
#include "flash_acr.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(uint32_t tim_en, uint32_t gpio_en, uint32_t usart_en) {
 8000574:	b480      	push	{r7}
 8000576:	b085      	sub	sp, #20
 8000578:	af00      	add	r7, sp, #0
 800057a:	60f8      	str	r0, [r7, #12]
 800057c:	60b9      	str	r1, [r7, #8]
 800057e:	607a      	str	r2, [r7, #4]
    // switch to 72Mhz clock //
    flash->acr |= LATENCY_2;
 8000580:	4b2f      	ldr	r3, [pc, #188]	; (8000640 <rcc_init+0xcc>)
 8000582:	681b      	ldr	r3, [r3, #0]
 8000584:	681a      	ldr	r2, [r3, #0]
 8000586:	4b2e      	ldr	r3, [pc, #184]	; (8000640 <rcc_init+0xcc>)
 8000588:	681b      	ldr	r3, [r3, #0]
 800058a:	f042 0202 	orr.w	r2, r2, #2
 800058e:	601a      	str	r2, [r3, #0]
    rcc->cfgr |= APB1_DIV2;
 8000590:	4b2c      	ldr	r3, [pc, #176]	; (8000644 <rcc_init+0xd0>)
 8000592:	681b      	ldr	r3, [r3, #0]
 8000594:	685a      	ldr	r2, [r3, #4]
 8000596:	4b2b      	ldr	r3, [pc, #172]	; (8000644 <rcc_init+0xd0>)
 8000598:	681b      	ldr	r3, [r3, #0]
 800059a:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800059e:	605a      	str	r2, [r3, #4]

    rcc->cr |= HSEON;
 80005a0:	4b28      	ldr	r3, [pc, #160]	; (8000644 <rcc_init+0xd0>)
 80005a2:	681b      	ldr	r3, [r3, #0]
 80005a4:	681a      	ldr	r2, [r3, #0]
 80005a6:	4b27      	ldr	r3, [pc, #156]	; (8000644 <rcc_init+0xd0>)
 80005a8:	681b      	ldr	r3, [r3, #0]
 80005aa:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80005ae:	601a      	str	r2, [r3, #0]
    while(!(rcc->cr & HSERDY));
 80005b0:	bf00      	nop
 80005b2:	4b24      	ldr	r3, [pc, #144]	; (8000644 <rcc_init+0xd0>)
 80005b4:	681b      	ldr	r3, [r3, #0]
 80005b6:	681b      	ldr	r3, [r3, #0]
 80005b8:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80005bc:	2b00      	cmp	r3, #0
 80005be:	d0f8      	beq.n	80005b2 <rcc_init+0x3e>

    rcc->cfgr |= (PLLHSE|PLL_9);
 80005c0:	4b20      	ldr	r3, [pc, #128]	; (8000644 <rcc_init+0xd0>)
 80005c2:	681b      	ldr	r3, [r3, #0]
 80005c4:	685a      	ldr	r2, [r3, #4]
 80005c6:	4b1f      	ldr	r3, [pc, #124]	; (8000644 <rcc_init+0xd0>)
 80005c8:	681b      	ldr	r3, [r3, #0]
 80005ca:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80005ce:	605a      	str	r2, [r3, #4]
    rcc->cr |= PLLON;
 80005d0:	4b1c      	ldr	r3, [pc, #112]	; (8000644 <rcc_init+0xd0>)
 80005d2:	681b      	ldr	r3, [r3, #0]
 80005d4:	681a      	ldr	r2, [r3, #0]
 80005d6:	4b1b      	ldr	r3, [pc, #108]	; (8000644 <rcc_init+0xd0>)
 80005d8:	681b      	ldr	r3, [r3, #0]
 80005da:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80005de:	601a      	str	r2, [r3, #0]
    while(!(rcc->cr & PLLRDY));
 80005e0:	bf00      	nop
 80005e2:	4b18      	ldr	r3, [pc, #96]	; (8000644 <rcc_init+0xd0>)
 80005e4:	681b      	ldr	r3, [r3, #0]
 80005e6:	681b      	ldr	r3, [r3, #0]
 80005e8:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80005ec:	2b00      	cmp	r3, #0
 80005ee:	d0f8      	beq.n	80005e2 <rcc_init+0x6e>

    rcc->cfgr |= SWPLL;
 80005f0:	4b14      	ldr	r3, [pc, #80]	; (8000644 <rcc_init+0xd0>)
 80005f2:	681b      	ldr	r3, [r3, #0]
 80005f4:	685a      	ldr	r2, [r3, #4]
 80005f6:	4b13      	ldr	r3, [pc, #76]	; (8000644 <rcc_init+0xd0>)
 80005f8:	681b      	ldr	r3, [r3, #0]
 80005fa:	f042 0202 	orr.w	r2, r2, #2
 80005fe:	605a      	str	r2, [r3, #4]
    while(!(rcc->cfgr & SWSPLL));
 8000600:	bf00      	nop
 8000602:	4b10      	ldr	r3, [pc, #64]	; (8000644 <rcc_init+0xd0>)
 8000604:	681b      	ldr	r3, [r3, #0]
 8000606:	685b      	ldr	r3, [r3, #4]
 8000608:	f003 0308 	and.w	r3, r3, #8
 800060c:	2b00      	cmp	r3, #0
 800060e:	d0f8      	beq.n	8000602 <rcc_init+0x8e>

    rcc->apbe1 |= tim_en; // enable timers
 8000610:	4b0c      	ldr	r3, [pc, #48]	; (8000644 <rcc_init+0xd0>)
 8000612:	681b      	ldr	r3, [r3, #0]
 8000614:	69d9      	ldr	r1, [r3, #28]
 8000616:	4b0b      	ldr	r3, [pc, #44]	; (8000644 <rcc_init+0xd0>)
 8000618:	681b      	ldr	r3, [r3, #0]
 800061a:	68fa      	ldr	r2, [r7, #12]
 800061c:	430a      	orrs	r2, r1
 800061e:	61da      	str	r2, [r3, #28]
    rcc->apbe2 |= gpio_en | usart_en; // enable GPIO pins and USART
 8000620:	4b08      	ldr	r3, [pc, #32]	; (8000644 <rcc_init+0xd0>)
 8000622:	681b      	ldr	r3, [r3, #0]
 8000624:	6999      	ldr	r1, [r3, #24]
 8000626:	68ba      	ldr	r2, [r7, #8]
 8000628:	687b      	ldr	r3, [r7, #4]
 800062a:	431a      	orrs	r2, r3
 800062c:	4b05      	ldr	r3, [pc, #20]	; (8000644 <rcc_init+0xd0>)
 800062e:	681b      	ldr	r3, [r3, #0]
 8000630:	430a      	orrs	r2, r1
 8000632:	619a      	str	r2, [r3, #24]
}
 8000634:	bf00      	nop
 8000636:	3714      	adds	r7, #20
 8000638:	46bd      	mov	sp, r7
 800063a:	bc80      	pop	{r7}
 800063c:	4770      	bx	lr
 800063e:	bf00      	nop
 8000640:	2000002c 	.word	0x2000002c
 8000644:	20000030 	.word	0x20000030

08000648 <__DSB>:
#include "scb.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

static void __DSB(void) {
 8000648:	b480      	push	{r7}
 800064a:	af00      	add	r7, sp, #0
    asm("dsb 0xF" ::: "memory");
 800064c:	f3bf 8f4f 	dsb	sy
}
 8000650:	bf00      	nop
 8000652:	46bd      	mov	sp, r7
 8000654:	bc80      	pop	{r7}
 8000656:	4770      	bx	lr

08000658 <reset_system>:

static void reset_system(void) {
 8000658:	b580      	push	{r7, lr}
 800065a:	af00      	add	r7, sp, #0
    scb->aircr = (VECT_KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
 800065c:	4b06      	ldr	r3, [pc, #24]	; (8000678 <reset_system+0x20>)
 800065e:	681b      	ldr	r3, [r3, #0]
 8000660:	68db      	ldr	r3, [r3, #12]
 8000662:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 8000666:	4b04      	ldr	r3, [pc, #16]	; (8000678 <reset_system+0x20>)
 8000668:	681a      	ldr	r2, [r3, #0]
 800066a:	4b04      	ldr	r3, [pc, #16]	; (800067c <reset_system+0x24>)
 800066c:	430b      	orrs	r3, r1
 800066e:	60d3      	str	r3, [r2, #12]
    __DSB(); // ensures the completion of memory accesses
 8000670:	f7ff ffea 	bl	8000648 <__DSB>
    while(1);
 8000674:	e7fe      	b.n	8000674 <reset_system+0x1c>
 8000676:	bf00      	nop
 8000678:	20000034 	.word	0x20000034
 800067c:	05fa0004 	.word	0x05fa0004

08000680 <TIM2_IRQHandler>:
#include "main.h"

void TIM2_IRQHandler(void) {
 8000680:	b480      	push	{r7}
 8000682:	af00      	add	r7, sp, #0
    tim2->sr = 0U; // reset interrupt
 8000684:	4b03      	ldr	r3, [pc, #12]	; (8000694 <TIM2_IRQHandler+0x14>)
 8000686:	681b      	ldr	r3, [r3, #0]
 8000688:	2200      	movs	r2, #0
 800068a:	611a      	str	r2, [r3, #16]
}
 800068c:	bf00      	nop
 800068e:	46bd      	mov	sp, r7
 8000690:	bc80      	pop	{r7}
 8000692:	4770      	bx	lr
 8000694:	20000000 	.word	0x20000000

08000698 <TIM3_IRQHandler>:

void TIM3_IRQHandler(void) {
 8000698:	b580      	push	{r7, lr}
 800069a:	af00      	add	r7, sp, #0
    tim3->sr = 0U; // reset interrupt
 800069c:	4b04      	ldr	r3, [pc, #16]	; (80006b0 <TIM3_IRQHandler+0x18>)
 800069e:	681b      	ldr	r3, [r3, #0]
 80006a0:	2200      	movs	r2, #0
 80006a2:	611a      	str	r2, [r3, #16]
    led_toggle(PA7);
 80006a4:	2007      	movs	r0, #7
 80006a6:	f7ff fe8b 	bl	80003c0 <led_toggle>
}
 80006aa:	bf00      	nop
 80006ac:	bd80      	pop	{r7, pc}
 80006ae:	bf00      	nop
 80006b0:	20000004 	.word	0x20000004

080006b4 <USART1_IRQHandler>:

void USART1_IRQHandler(void) {
 80006b4:	b580      	push	{r7, lr}
 80006b6:	b082      	sub	sp, #8
 80006b8:	af00      	add	r7, sp, #0
    char in = (char)(usart1->data & DATA_MASK);
 80006ba:	4b06      	ldr	r3, [pc, #24]	; (80006d4 <USART1_IRQHandler+0x20>)
 80006bc:	681b      	ldr	r3, [r3, #0]
 80006be:	685b      	ldr	r3, [r3, #4]
 80006c0:	71fb      	strb	r3, [r7, #7]
    serial_wr_c(USART1, in);
 80006c2:	79fb      	ldrb	r3, [r7, #7]
 80006c4:	4619      	mov	r1, r3
 80006c6:	2000      	movs	r0, #0
 80006c8:	f000 f8ea 	bl	80008a0 <serial_wr_c>
}
 80006cc:	bf00      	nop
 80006ce:	3708      	adds	r7, #8
 80006d0:	46bd      	mov	sp, r7
 80006d2:	bd80      	pop	{r7, pc}
 80006d4:	20000038 	.word	0x20000038

080006d8 <SysTick_Handler>:

uint32_t __IO cnt = 0;
void SysTick_Handler(void) {
 80006d8:	b480      	push	{r7}
 80006da:	af00      	add	r7, sp, #0
    cnt++;
 80006dc:	4b04      	ldr	r3, [pc, #16]	; (80006f0 <SysTick_Handler+0x18>)
 80006de:	681b      	ldr	r3, [r3, #0]
 80006e0:	3301      	adds	r3, #1
 80006e2:	4a03      	ldr	r2, [pc, #12]	; (80006f0 <SysTick_Handler+0x18>)
 80006e4:	6013      	str	r3, [r2, #0]
}
 80006e6:	bf00      	nop
 80006e8:	46bd      	mov	sp, r7
 80006ea:	bc80      	pop	{r7}
 80006ec:	4770      	bx	lr
 80006ee:	bf00      	nop
 80006f0:	20000044 	.word	0x20000044

080006f4 <main>:

#define STEP 25

int main(void) {
 80006f4:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 80006f8:	b086      	sub	sp, #24
 80006fa:	af00      	add	r7, sp, #0
    rcc_init(TIM2_EN|TIM3_EN, GPIOA_EN|GPIOB_EN|GPIOC_EN, USART1_EN);
 80006fc:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 8000700:	211c      	movs	r1, #28
 8000702:	2003      	movs	r0, #3
 8000704:	f7ff ff36 	bl	8000574 <rcc_init>

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 8000708:	2103      	movs	r1, #3
 800070a:	202d      	movs	r0, #45	; 0x2d
 800070c:	f7ff fe24 	bl	8000358 <pin_mode>
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1
 8000710:	210b      	movs	r1, #11
 8000712:	2009      	movs	r0, #9
 8000714:	f7ff fe20 	bl	8000358 <pin_mode>
    pin_mode(PA10, OUT_ALT_PUSH_PULL_50); // enable Rx pin for usart1
 8000718:	210b      	movs	r1, #11
 800071a:	200a      	movs	r0, #10
 800071c:	f7ff fe1c 	bl	8000358 <pin_mode>

    timer_init(TIM3, 10000U, 10000U); // tim3 at 1MHz
 8000720:	f242 7210 	movw	r2, #10000	; 0x2710
 8000724:	f242 7110 	movw	r1, #10000	; 0x2710
 8000728:	2002      	movs	r0, #2
 800072a:	f7ff fdaf 	bl	800028c <timer_init>
    pin_mode(PA7, OUT_GP_PUSH_PULL_50);
 800072e:	2103      	movs	r1, #3
 8000730:	2007      	movs	r0, #7
 8000732:	f7ff fe11 	bl	8000358 <pin_mode>

    timer_init(TIM2, 10000U, 255U);
 8000736:	22ff      	movs	r2, #255	; 0xff
 8000738:	f242 7110 	movw	r1, #10000	; 0x2710
 800073c:	2001      	movs	r0, #1
 800073e:	f7ff fda5 	bl	800028c <timer_init>
    pin_mode(PA2, OUT_ALT_PUSH_PULL_50);
 8000742:	210b      	movs	r1, #11
 8000744:	2002      	movs	r0, #2
 8000746:	f7ff fe07 	bl	8000358 <pin_mode>

    systick_init(1000U); // initialize systick at 1Hz
 800074a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800074e:	f7ff fea3 	bl	8000498 <systick_init>
    serial_init(USART1, 115200U); // initializer serial at 115200 baud
 8000752:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 8000756:	2000      	movs	r0, #0
 8000758:	f000 f878 	bl	800084c <serial_init>

    uint8_t pwm = 0U;
 800075c:	2300      	movs	r3, #0
 800075e:	75fb      	strb	r3, [r7, #23]
    uint64_t start_t = millis();
 8000760:	f7ff feb8 	bl	80004d4 <millis>
 8000764:	4603      	mov	r3, r0
 8000766:	f04f 0400 	mov.w	r4, #0
 800076a:	e9c7 3402 	strd	r3, r4, [r7, #8]
    bool up = true;
 800076e:	2301      	movs	r3, #1
 8000770:	71fb      	strb	r3, [r7, #7]

    while(1) {
        if (millis() - start_t > 1000U) {
 8000772:	f7ff feaf 	bl	80004d4 <millis>
 8000776:	4603      	mov	r3, r0
 8000778:	4619      	mov	r1, r3
 800077a:	f04f 0200 	mov.w	r2, #0
 800077e:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000782:	1ac9      	subs	r1, r1, r3
 8000784:	eb62 0204 	sbc.w	r2, r2, r4
 8000788:	468b      	mov	fp, r1
 800078a:	4694      	mov	ip, r2
 800078c:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8000790:	f04f 0200 	mov.w	r2, #0
 8000794:	4562      	cmp	r2, ip
 8000796:	bf08      	it	eq
 8000798:	4559      	cmpeq	r1, fp
 800079a:	d2ea      	bcs.n	8000772 <main+0x7e>
            serial_wr_s(USART1, "hello world!", true);
 800079c:	2201      	movs	r2, #1
 800079e:	4919      	ldr	r1, [pc, #100]	; (8000804 <main+0x110>)
 80007a0:	2000      	movs	r0, #0
 80007a2:	f000 f899 	bl	80008d8 <serial_wr_s>
            led_toggle(PC13);
 80007a6:	202d      	movs	r0, #45	; 0x2d
 80007a8:	f7ff fe0a 	bl	80003c0 <led_toggle>
            start_t = millis();
 80007ac:	f7ff fe92 	bl	80004d4 <millis>
 80007b0:	4603      	mov	r3, r0
 80007b2:	f04f 0400 	mov.w	r4, #0
 80007b6:	e9c7 3402 	strd	r3, r4, [r7, #8]
            if (up) {
 80007ba:	79fb      	ldrb	r3, [r7, #7]
 80007bc:	2b00      	cmp	r3, #0
 80007be:	d003      	beq.n	80007c8 <main+0xd4>
                pwm += STEP;
 80007c0:	7dfb      	ldrb	r3, [r7, #23]
 80007c2:	3319      	adds	r3, #25
 80007c4:	75fb      	strb	r3, [r7, #23]
 80007c6:	e002      	b.n	80007ce <main+0xda>
            }
            else {
                pwm -= STEP;
 80007c8:	7dfb      	ldrb	r3, [r7, #23]
 80007ca:	3b19      	subs	r3, #25
 80007cc:	75fb      	strb	r3, [r7, #23]
            }

            if (pwm == 250 || pwm == 0) up = !up;
 80007ce:	7dfb      	ldrb	r3, [r7, #23]
 80007d0:	2bfa      	cmp	r3, #250	; 0xfa
 80007d2:	d002      	beq.n	80007da <main+0xe6>
 80007d4:	7dfb      	ldrb	r3, [r7, #23]
 80007d6:	2b00      	cmp	r3, #0
 80007d8:	d10d      	bne.n	80007f6 <main+0x102>
 80007da:	79fb      	ldrb	r3, [r7, #7]
 80007dc:	2b00      	cmp	r3, #0
 80007de:	bf14      	ite	ne
 80007e0:	2301      	movne	r3, #1
 80007e2:	2300      	moveq	r3, #0
 80007e4:	b2db      	uxtb	r3, r3
 80007e6:	f083 0301 	eor.w	r3, r3, #1
 80007ea:	b2db      	uxtb	r3, r3
 80007ec:	71fb      	strb	r3, [r7, #7]
 80007ee:	79fb      	ldrb	r3, [r7, #7]
 80007f0:	f003 0301 	and.w	r3, r3, #1
 80007f4:	71fb      	strb	r3, [r7, #7]
            enable_chan(TIM2, PWM, CHAN3, pwm);
 80007f6:	7dfb      	ldrb	r3, [r7, #23]
 80007f8:	2202      	movs	r2, #2
 80007fa:	2168      	movs	r1, #104	; 0x68
 80007fc:	2001      	movs	r0, #1
 80007fe:	f7ff fcf5 	bl	80001ec <enable_chan>
        if (millis() - start_t > 1000U) {
 8000802:	e7b6      	b.n	8000772 <main+0x7e>
 8000804:	08000a04 	.word	0x08000a04

08000808 <get_usart>:

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

usart_t *get_usart(uint8_t usart) {
 8000808:	b480      	push	{r7}
 800080a:	b083      	sub	sp, #12
 800080c:	af00      	add	r7, sp, #0
 800080e:	4603      	mov	r3, r0
 8000810:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 8000812:	79fb      	ldrb	r3, [r7, #7]
 8000814:	2b01      	cmp	r3, #1
 8000816:	d006      	beq.n	8000826 <get_usart+0x1e>
 8000818:	2b02      	cmp	r3, #2
 800081a:	d007      	beq.n	800082c <get_usart+0x24>
 800081c:	2b00      	cmp	r3, #0
 800081e:	d108      	bne.n	8000832 <get_usart+0x2a>
        case USART1: return usart1;
 8000820:	4b07      	ldr	r3, [pc, #28]	; (8000840 <get_usart+0x38>)
 8000822:	681b      	ldr	r3, [r3, #0]
 8000824:	e007      	b.n	8000836 <get_usart+0x2e>
        case USART2: return usart2;
 8000826:	4b07      	ldr	r3, [pc, #28]	; (8000844 <get_usart+0x3c>)
 8000828:	681b      	ldr	r3, [r3, #0]
 800082a:	e004      	b.n	8000836 <get_usart+0x2e>
        case USART3: return usart3;
 800082c:	4b06      	ldr	r3, [pc, #24]	; (8000848 <get_usart+0x40>)
 800082e:	681b      	ldr	r3, [r3, #0]
 8000830:	e001      	b.n	8000836 <get_usart+0x2e>
        default: return usart1;
 8000832:	4b03      	ldr	r3, [pc, #12]	; (8000840 <get_usart+0x38>)
 8000834:	681b      	ldr	r3, [r3, #0]
    }
}
 8000836:	4618      	mov	r0, r3
 8000838:	370c      	adds	r7, #12
 800083a:	46bd      	mov	sp, r7
 800083c:	bc80      	pop	{r7}
 800083e:	4770      	bx	lr
 8000840:	20000038 	.word	0x20000038
 8000844:	2000003c 	.word	0x2000003c
 8000848:	20000040 	.word	0x20000040

0800084c <serial_init>:

void serial_init(uint8_t usart, uint32_t baud) {
 800084c:	b580      	push	{r7, lr}
 800084e:	b084      	sub	sp, #16
 8000850:	af00      	add	r7, sp, #0
 8000852:	4603      	mov	r3, r0
 8000854:	6039      	str	r1, [r7, #0]
 8000856:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 8000858:	79fb      	ldrb	r3, [r7, #7]
 800085a:	4618      	mov	r0, r3
 800085c:	f7ff ffd4 	bl	8000808 <get_usart>
 8000860:	60f8      	str	r0, [r7, #12]
    serial->cr1 = (RE|TE|W_LEN_9|UE); // enable Tx/Rx, word length 9, usart
 8000862:	68fb      	ldr	r3, [r7, #12]
 8000864:	f243 020c 	movw	r2, #12300	; 0x300c
 8000868:	60da      	str	r2, [r3, #12]
    serial->cr2 = 0;
 800086a:	68fb      	ldr	r3, [r7, #12]
 800086c:	2200      	movs	r2, #0
 800086e:	611a      	str	r2, [r3, #16]
    serial->cr3 = 0;
 8000870:	68fb      	ldr	r3, [r7, #12]
 8000872:	2200      	movs	r2, #0
 8000874:	615a      	str	r2, [r3, #20]
    serial->gtpr = 0;
 8000876:	68fb      	ldr	r3, [r7, #12]
 8000878:	2200      	movs	r2, #0
 800087a:	619a      	str	r2, [r3, #24]
    serial->baud = PCLK2 / baud;
 800087c:	4a07      	ldr	r2, [pc, #28]	; (800089c <serial_init+0x50>)
 800087e:	683b      	ldr	r3, [r7, #0]
 8000880:	fbb2 f2f3 	udiv	r2, r2, r3
 8000884:	68fb      	ldr	r3, [r7, #12]
 8000886:	609a      	str	r2, [r3, #8]
    nvic_enable(USART1_IRQ_START_POS+(usart-1));
 8000888:	79fb      	ldrb	r3, [r7, #7]
 800088a:	3324      	adds	r3, #36	; 0x24
 800088c:	b2db      	uxtb	r3, r3
 800088e:	4618      	mov	r0, r3
 8000890:	f7ff fd26 	bl	80002e0 <nvic_enable>
}
 8000894:	bf00      	nop
 8000896:	3710      	adds	r7, #16
 8000898:	46bd      	mov	sp, r7
 800089a:	bd80      	pop	{r7, pc}
 800089c:	044aa200 	.word	0x044aa200

080008a0 <serial_wr_c>:

bool serial_wr_c(uint8_t usart, char c) {
 80008a0:	b580      	push	{r7, lr}
 80008a2:	b084      	sub	sp, #16
 80008a4:	af00      	add	r7, sp, #0
 80008a6:	4603      	mov	r3, r0
 80008a8:	460a      	mov	r2, r1
 80008aa:	71fb      	strb	r3, [r7, #7]
 80008ac:	4613      	mov	r3, r2
 80008ae:	71bb      	strb	r3, [r7, #6]
    usart_t *serial = get_usart(usart);
 80008b0:	79fb      	ldrb	r3, [r7, #7]
 80008b2:	4618      	mov	r0, r3
 80008b4:	f7ff ffa8 	bl	8000808 <get_usart>
 80008b8:	60f8      	str	r0, [r7, #12]
    serial->data = c;
 80008ba:	79ba      	ldrb	r2, [r7, #6]
 80008bc:	68fb      	ldr	r3, [r7, #12]
 80008be:	605a      	str	r2, [r3, #4]
    while(!(serial->sr & TC));
 80008c0:	bf00      	nop
 80008c2:	68fb      	ldr	r3, [r7, #12]
 80008c4:	681b      	ldr	r3, [r3, #0]
 80008c6:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80008ca:	2b00      	cmp	r3, #0
 80008cc:	d0f9      	beq.n	80008c2 <serial_wr_c+0x22>
    return USART_SUCCESS;
 80008ce:	2301      	movs	r3, #1
}
 80008d0:	4618      	mov	r0, r3
 80008d2:	3710      	adds	r7, #16
 80008d4:	46bd      	mov	sp, r7
 80008d6:	bd80      	pop	{r7, pc}

080008d8 <serial_wr_s>:

bool serial_wr_s(uint8_t usart, char *s, bool new_line) {
 80008d8:	b580      	push	{r7, lr}
 80008da:	b082      	sub	sp, #8
 80008dc:	af00      	add	r7, sp, #0
 80008de:	4603      	mov	r3, r0
 80008e0:	6039      	str	r1, [r7, #0]
 80008e2:	71fb      	strb	r3, [r7, #7]
 80008e4:	4613      	mov	r3, r2
 80008e6:	71bb      	strb	r3, [r7, #6]
    while(*s) serial_wr_c(usart, *s++);
 80008e8:	e008      	b.n	80008fc <serial_wr_s+0x24>
 80008ea:	683b      	ldr	r3, [r7, #0]
 80008ec:	1c5a      	adds	r2, r3, #1
 80008ee:	603a      	str	r2, [r7, #0]
 80008f0:	781a      	ldrb	r2, [r3, #0]
 80008f2:	79fb      	ldrb	r3, [r7, #7]
 80008f4:	4611      	mov	r1, r2
 80008f6:	4618      	mov	r0, r3
 80008f8:	f7ff ffd2 	bl	80008a0 <serial_wr_c>
 80008fc:	683b      	ldr	r3, [r7, #0]
 80008fe:	781b      	ldrb	r3, [r3, #0]
 8000900:	2b00      	cmp	r3, #0
 8000902:	d1f2      	bne.n	80008ea <serial_wr_s+0x12>
    if (!new_line) return 1;
 8000904:	79bb      	ldrb	r3, [r7, #6]
 8000906:	f083 0301 	eor.w	r3, r3, #1
 800090a:	b2db      	uxtb	r3, r3
 800090c:	2b00      	cmp	r3, #0
 800090e:	d001      	beq.n	8000914 <serial_wr_s+0x3c>
 8000910:	2301      	movs	r3, #1
 8000912:	e00a      	b.n	800092a <serial_wr_s+0x52>
    serial_wr_c(usart, '\r');
 8000914:	79fb      	ldrb	r3, [r7, #7]
 8000916:	210d      	movs	r1, #13
 8000918:	4618      	mov	r0, r3
 800091a:	f7ff ffc1 	bl	80008a0 <serial_wr_c>
    serial_wr_c(usart, '\n');
 800091e:	79fb      	ldrb	r3, [r7, #7]
 8000920:	210a      	movs	r1, #10
 8000922:	4618      	mov	r0, r3
 8000924:	f7ff ffbc 	bl	80008a0 <serial_wr_c>
    return USART_SUCCESS;
 8000928:	2301      	movs	r3, #1
}
 800092a:	4618      	mov	r0, r3
 800092c:	3708      	adds	r7, #8
 800092e:	46bd      	mov	sp, r7
 8000930:	bd80      	pop	{r7, pc}

08000932 <serial_r_c>:

char serial_r_c(uint8_t usart) {
 8000932:	b580      	push	{r7, lr}
 8000934:	b084      	sub	sp, #16
 8000936:	af00      	add	r7, sp, #0
 8000938:	4603      	mov	r3, r0
 800093a:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 800093c:	79fb      	ldrb	r3, [r7, #7]
 800093e:	4618      	mov	r0, r3
 8000940:	f7ff ff62 	bl	8000808 <get_usart>
 8000944:	60f8      	str	r0, [r7, #12]
    while(!(serial->sr & RXNE));
 8000946:	bf00      	nop
 8000948:	68fb      	ldr	r3, [r7, #12]
 800094a:	681b      	ldr	r3, [r3, #0]
 800094c:	f003 0320 	and.w	r3, r3, #32
 8000950:	2b00      	cmp	r3, #0
 8000952:	d0f9      	beq.n	8000948 <serial_r_c+0x16>
    return (char)(serial->data & DATA_MASK);
 8000954:	68fb      	ldr	r3, [r7, #12]
 8000956:	685b      	ldr	r3, [r3, #4]
 8000958:	b2db      	uxtb	r3, r3
}
 800095a:	4618      	mov	r0, r3
 800095c:	3710      	adds	r7, #16
 800095e:	46bd      	mov	sp, r7
 8000960:	bd80      	pop	{r7, pc}

08000962 <serial_r_s>:

char *serial_r_s(uint8_t usart, char *buffer) {
 8000962:	b590      	push	{r4, r7, lr}
 8000964:	b083      	sub	sp, #12
 8000966:	af00      	add	r7, sp, #0
 8000968:	4603      	mov	r3, r0
 800096a:	6039      	str	r1, [r7, #0]
 800096c:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 800096e:	e008      	b.n	8000982 <serial_r_s+0x20>
        *buffer++ = serial_r_c(usart);
 8000970:	683c      	ldr	r4, [r7, #0]
 8000972:	1c63      	adds	r3, r4, #1
 8000974:	603b      	str	r3, [r7, #0]
 8000976:	79fb      	ldrb	r3, [r7, #7]
 8000978:	4618      	mov	r0, r3
 800097a:	f7ff ffda 	bl	8000932 <serial_r_c>
 800097e:	4603      	mov	r3, r0
 8000980:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 8000982:	683b      	ldr	r3, [r7, #0]
 8000984:	781b      	ldrb	r3, [r3, #0]
 8000986:	2b00      	cmp	r3, #0
 8000988:	d1f2      	bne.n	8000970 <serial_r_s+0xe>
    }
    return buffer;
 800098a:	683b      	ldr	r3, [r7, #0]
}
 800098c:	4618      	mov	r0, r3
 800098e:	370c      	adds	r7, #12
 8000990:	46bd      	mov	sp, r7
 8000992:	bd90      	pop	{r4, r7, pc}

08000994 <__enable_irq>:
#include "intrinsic.h"

// enable interrupt
void __enable_irq(void) {
 8000994:	b480      	push	{r7}
 8000996:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsie i" ::: "memory");
 8000998:	b662      	cpsie	i
}
 800099a:	bf00      	nop
 800099c:	46bd      	mov	sp, r7
 800099e:	bc80      	pop	{r7}
 80009a0:	4770      	bx	lr

080009a2 <__disable_irq>:

// disable interrupt
void __disable_irq(void) {
 80009a2:	b480      	push	{r7}
 80009a4:	af00      	add	r7, sp, #0
    __ASM volatile ("cpsid i" ::: "memory");
 80009a6:	b672      	cpsid	i
}
 80009a8:	bf00      	nop
 80009aa:	46bd      	mov	sp, r7
 80009ac:	bc80      	pop	{r7}
 80009ae:	4770      	bx	lr

080009b0 <__NOP>:

// no operation
void __NOP(void) {
 80009b0:	b480      	push	{r7}
 80009b2:	af00      	add	r7, sp, #0
    __ASM volatile ("nop");
 80009b4:	bf00      	nop
}
 80009b6:	bf00      	nop
 80009b8:	46bd      	mov	sp, r7
 80009ba:	bc80      	pop	{r7}
 80009bc:	4770      	bx	lr
	...

080009c0 <Reset_Handler>:
 80009c0:	2100      	movs	r1, #0
 80009c2:	e003      	b.n	80009cc <LoopCopyDataInit>

080009c4 <CopyDataInit>:
 80009c4:	4b09      	ldr	r3, [pc, #36]	; (80009ec <LoopFillZerobss+0xc>)
 80009c6:	585b      	ldr	r3, [r3, r1]
 80009c8:	5043      	str	r3, [r0, r1]
 80009ca:	3104      	adds	r1, #4

080009cc <LoopCopyDataInit>:
 80009cc:	4808      	ldr	r0, [pc, #32]	; (80009f0 <LoopFillZerobss+0x10>)
 80009ce:	4b09      	ldr	r3, [pc, #36]	; (80009f4 <LoopFillZerobss+0x14>)
 80009d0:	1842      	adds	r2, r0, r1
 80009d2:	429a      	cmp	r2, r3
 80009d4:	d3f6      	bcc.n	80009c4 <CopyDataInit>
 80009d6:	4a08      	ldr	r2, [pc, #32]	; (80009f8 <LoopFillZerobss+0x18>)
 80009d8:	e002      	b.n	80009e0 <LoopFillZerobss>

080009da <FillZerobss>:
 80009da:	2300      	movs	r3, #0
 80009dc:	f842 3b04 	str.w	r3, [r2], #4

080009e0 <LoopFillZerobss>:
 80009e0:	4b06      	ldr	r3, [pc, #24]	; (80009fc <LoopFillZerobss+0x1c>)
 80009e2:	429a      	cmp	r2, r3
 80009e4:	d3f9      	bcc.n	80009da <FillZerobss>
 80009e6:	f7ff fe85 	bl	80006f4 <main>
 80009ea:	4770      	bx	lr
 80009ec:	08000a14 	.word	0x08000a14
 80009f0:	20000000 	.word	0x20000000
 80009f4:	20000044 	.word	0x20000044
 80009f8:	20000044 	.word	0x20000044
 80009fc:	20000048 	.word	0x20000048

08000a00 <ADC1_2_IRQHandler>:
 8000a00:	e7fe      	b.n	8000a00 <ADC1_2_IRQHandler>
	...
