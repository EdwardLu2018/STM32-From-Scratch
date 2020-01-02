
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <none-0x150>:
 8000000:	20005000 	.word	0x20005000
 8000004:	08000153 	.word	0x08000153
 8000008:	08000151 	.word	0x08000151
 800000c:	08000765 	.word	0x08000765
 8000010:	08000771 	.word	0x08000771
 8000014:	0800077d 	.word	0x0800077d
 8000018:	08000151 	.word	0x08000151
 800001c:	08000151 	.word	0x08000151
 8000020:	08000151 	.word	0x08000151
 8000024:	08000151 	.word	0x08000151
 8000028:	08000151 	.word	0x08000151
 800002c:	08000151 	.word	0x08000151
 8000030:	08000151 	.word	0x08000151
 8000034:	08000151 	.word	0x08000151
 8000038:	08000151 	.word	0x08000151
 800003c:	08000539 	.word	0x08000539
 8000040:	08000151 	.word	0x08000151
 8000044:	08000151 	.word	0x08000151
 8000048:	08000151 	.word	0x08000151
 800004c:	08000151 	.word	0x08000151
 8000050:	08000151 	.word	0x08000151
 8000054:	08000151 	.word	0x08000151
 8000058:	08000151 	.word	0x08000151
 800005c:	08000151 	.word	0x08000151
 8000060:	08000151 	.word	0x08000151
 8000064:	08000151 	.word	0x08000151
 8000068:	08000151 	.word	0x08000151
 800006c:	08000151 	.word	0x08000151
 8000070:	08000151 	.word	0x08000151
 8000074:	08000151 	.word	0x08000151
 8000078:	08000151 	.word	0x08000151
 800007c:	08000151 	.word	0x08000151
 8000080:	08000151 	.word	0x08000151
 8000084:	08000151 	.word	0x08000151
 8000088:	08000151 	.word	0x08000151
 800008c:	08000151 	.word	0x08000151
 8000090:	08000151 	.word	0x08000151
 8000094:	08000151 	.word	0x08000151
 8000098:	08000151 	.word	0x08000151
 800009c:	08000151 	.word	0x08000151
 80000a0:	08000151 	.word	0x08000151
 80000a4:	08000151 	.word	0x08000151
 80000a8:	08000151 	.word	0x08000151
 80000ac:	08000151 	.word	0x08000151
 80000b0:	080001d5 	.word	0x080001d5
 80000b4:	080001f1 	.word	0x080001f1
 80000b8:	0800020d 	.word	0x0800020d
 80000bc:	08000151 	.word	0x08000151
 80000c0:	08000151 	.word	0x08000151
 80000c4:	08000151 	.word	0x08000151
 80000c8:	08000151 	.word	0x08000151
 80000cc:	08000151 	.word	0x08000151
 80000d0:	08000151 	.word	0x08000151
 80000d4:	08000815 	.word	0x08000815
 80000d8:	08000151 	.word	0x08000151
 80000dc:	08000151 	.word	0x08000151
 80000e0:	08000151 	.word	0x08000151
 80000e4:	08000151 	.word	0x08000151
 80000e8:	08000151 	.word	0x08000151
 80000ec:	08000151 	.word	0x08000151
 80000f0:	08000151 	.word	0x08000151
 80000f4:	08000151 	.word	0x08000151
 80000f8:	08000151 	.word	0x08000151
 80000fc:	08000151 	.word	0x08000151
 8000100:	08000151 	.word	0x08000151
 8000104:	08000151 	.word	0x08000151
 8000108:	08000225 	.word	0x08000225
 800010c:	08000151 	.word	0x08000151
 8000110:	08000151 	.word	0x08000151
 8000114:	08000151 	.word	0x08000151
 8000118:	0800023d 	.word	0x0800023d
 800011c:	08000255 	.word	0x08000255
 8000120:	08000151 	.word	0x08000151
 8000124:	08000151 	.word	0x08000151
 8000128:	08000151 	.word	0x08000151
 800012c:	08000151 	.word	0x08000151
 8000130:	08000151 	.word	0x08000151
 8000134:	08000151 	.word	0x08000151
 8000138:	08000151 	.word	0x08000151
 800013c:	08000151 	.word	0x08000151
 8000140:	08000151 	.word	0x08000151
 8000144:	08000151 	.word	0x08000151
 8000148:	08000151 	.word	0x08000151
 800014c:	08000151 	.word	0x08000151

08000150 <none>:
 8000150:	e7fe      	b.n	8000150 <none>

08000152 <_reset>:
 8000152:	f000 fb19 	bl	8000788 <main>
 8000156:	e7fe      	b.n	8000156 <_reset+0x4>

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
 80001bc:	08000980 	.word	0x08000980
 80001c0:	08000984 	.word	0x08000984
 80001c4:	08000988 	.word	0x08000988
 80001c8:	0800098c 	.word	0x0800098c
 80001cc:	08000990 	.word	0x08000990
 80001d0:	08000994 	.word	0x08000994

080001d4 <tim2_handle>:

void tim2_handle(void) {
 80001d4:	b580      	push	{r7, lr}
 80001d6:	af00      	add	r7, sp, #0
    tim2->sr = 0U; // reset interrupt
 80001d8:	4b04      	ldr	r3, [pc, #16]	; (80001ec <tim2_handle+0x18>)
 80001da:	681b      	ldr	r3, [r3, #0]
 80001dc:	2200      	movs	r2, #0
 80001de:	611a      	str	r2, [r3, #16]
    led_toggle(PA7);
 80001e0:	2007      	movs	r0, #7
 80001e2:	f000 f93d 	bl	8000460 <led_toggle>
}
 80001e6:	bf00      	nop
 80001e8:	bd80      	pop	{r7, pc}
 80001ea:	bf00      	nop
 80001ec:	08000980 	.word	0x08000980

080001f0 <tim3_handle>:

void tim3_handle(void) {
 80001f0:	b580      	push	{r7, lr}
 80001f2:	af00      	add	r7, sp, #0
    tim3->sr = 0U; // reset interrupt
 80001f4:	4b04      	ldr	r3, [pc, #16]	; (8000208 <tim3_handle+0x18>)
 80001f6:	681b      	ldr	r3, [r3, #0]
 80001f8:	2200      	movs	r2, #0
 80001fa:	611a      	str	r2, [r3, #16]
    led_toggle(PA7);
 80001fc:	2007      	movs	r0, #7
 80001fe:	f000 f92f 	bl	8000460 <led_toggle>
}
 8000202:	bf00      	nop
 8000204:	bd80      	pop	{r7, pc}
 8000206:	bf00      	nop
 8000208:	08000984 	.word	0x08000984

0800020c <tim4_handle>:

void tim4_handle(void) {
 800020c:	b480      	push	{r7}
 800020e:	af00      	add	r7, sp, #0
    tim4->sr = 0U; // reset interrupt
 8000210:	4b03      	ldr	r3, [pc, #12]	; (8000220 <tim4_handle+0x14>)
 8000212:	681b      	ldr	r3, [r3, #0]
 8000214:	2200      	movs	r2, #0
 8000216:	611a      	str	r2, [r3, #16]
}
 8000218:	bf00      	nop
 800021a:	46bd      	mov	sp, r7
 800021c:	bc80      	pop	{r7}
 800021e:	4770      	bx	lr
 8000220:	08000988 	.word	0x08000988

08000224 <tim5_handle>:

void tim5_handle(void) {
 8000224:	b480      	push	{r7}
 8000226:	af00      	add	r7, sp, #0
    tim5->sr = 0U; // reset interrupt
 8000228:	4b03      	ldr	r3, [pc, #12]	; (8000238 <tim5_handle+0x14>)
 800022a:	681b      	ldr	r3, [r3, #0]
 800022c:	2200      	movs	r2, #0
 800022e:	611a      	str	r2, [r3, #16]
}
 8000230:	bf00      	nop
 8000232:	46bd      	mov	sp, r7
 8000234:	bc80      	pop	{r7}
 8000236:	4770      	bx	lr
 8000238:	0800098c 	.word	0x0800098c

0800023c <tim6_handle>:

void tim6_handle(void) {
 800023c:	b480      	push	{r7}
 800023e:	af00      	add	r7, sp, #0
    tim6->sr = 0U; // reset interrupt
 8000240:	4b03      	ldr	r3, [pc, #12]	; (8000250 <tim6_handle+0x14>)
 8000242:	681b      	ldr	r3, [r3, #0]
 8000244:	2200      	movs	r2, #0
 8000246:	611a      	str	r2, [r3, #16]
}
 8000248:	bf00      	nop
 800024a:	46bd      	mov	sp, r7
 800024c:	bc80      	pop	{r7}
 800024e:	4770      	bx	lr
 8000250:	08000990 	.word	0x08000990

08000254 <tim7_handle>:

void tim7_handle(void) {
 8000254:	b480      	push	{r7}
 8000256:	af00      	add	r7, sp, #0
    tim7->sr = 0U; // reset interrupt
 8000258:	4b03      	ldr	r3, [pc, #12]	; (8000268 <tim7_handle+0x14>)
 800025a:	681b      	ldr	r3, [r3, #0]
 800025c:	2200      	movs	r2, #0
 800025e:	611a      	str	r2, [r3, #16]
}
 8000260:	bf00      	nop
 8000262:	46bd      	mov	sp, r7
 8000264:	bc80      	pop	{r7}
 8000266:	4770      	bx	lr
 8000268:	08000994 	.word	0x08000994

0800026c <get_timer_cnt>:

uint32_t get_timer_cnt(uint8_t timer) {
 800026c:	b580      	push	{r7, lr}
 800026e:	b084      	sub	sp, #16
 8000270:	af00      	add	r7, sp, #0
 8000272:	4603      	mov	r3, r0
 8000274:	71fb      	strb	r3, [r7, #7]
    timer_t *tim = get_timer(timer);
 8000276:	79fb      	ldrb	r3, [r7, #7]
 8000278:	4618      	mov	r0, r3
 800027a:	f7ff ff6d 	bl	8000158 <get_timer>
 800027e:	60f8      	str	r0, [r7, #12]
    return tim->cnt;
 8000280:	68fb      	ldr	r3, [r7, #12]
 8000282:	6a5b      	ldr	r3, [r3, #36]	; 0x24
}
 8000284:	4618      	mov	r0, r3
 8000286:	3710      	adds	r7, #16
 8000288:	46bd      	mov	sp, r7
 800028a:	bd80      	pop	{r7, pc}

0800028c <enable_chan>:

void enable_chan(uint8_t timer, uint8_t mode, uint8_t channel, uint32_t load) {
 800028c:	b580      	push	{r7, lr}
 800028e:	b086      	sub	sp, #24
 8000290:	af00      	add	r7, sp, #0
 8000292:	603b      	str	r3, [r7, #0]
 8000294:	4603      	mov	r3, r0
 8000296:	71fb      	strb	r3, [r7, #7]
 8000298:	460b      	mov	r3, r1
 800029a:	71bb      	strb	r3, [r7, #6]
 800029c:	4613      	mov	r3, r2
 800029e:	717b      	strb	r3, [r7, #5]
    timer_t *tim = get_timer(timer);
 80002a0:	79fb      	ldrb	r3, [r7, #7]
 80002a2:	4618      	mov	r0, r3
 80002a4:	f7ff ff58 	bl	8000158 <get_timer>
 80002a8:	6178      	str	r0, [r7, #20]
    tim->ccr[channel] = load;
 80002aa:	797b      	ldrb	r3, [r7, #5]
 80002ac:	697a      	ldr	r2, [r7, #20]
 80002ae:	330c      	adds	r3, #12
 80002b0:	009b      	lsls	r3, r3, #2
 80002b2:	4413      	add	r3, r2
 80002b4:	683a      	ldr	r2, [r7, #0]
 80002b6:	605a      	str	r2, [r3, #4]

    uint8_t shift_by;
    uint32_t config;

    shift_by = channel * 4;
 80002b8:	797b      	ldrb	r3, [r7, #5]
 80002ba:	009b      	lsls	r3, r3, #2
 80002bc:	74fb      	strb	r3, [r7, #19]
    config = tim->ccer & ~(0xf << shift_by);
 80002be:	697b      	ldr	r3, [r7, #20]
 80002c0:	6a1b      	ldr	r3, [r3, #32]
 80002c2:	7cfa      	ldrb	r2, [r7, #19]
 80002c4:	210f      	movs	r1, #15
 80002c6:	fa01 f202 	lsl.w	r2, r1, r2
 80002ca:	43d2      	mvns	r2, r2
 80002cc:	4013      	ands	r3, r2
 80002ce:	60fb      	str	r3, [r7, #12]
    tim->ccer = (config | (1 << shift_by)); // enable output
 80002d0:	7cfb      	ldrb	r3, [r7, #19]
 80002d2:	2201      	movs	r2, #1
 80002d4:	fa02 f303 	lsl.w	r3, r2, r3
 80002d8:	461a      	mov	r2, r3
 80002da:	68fb      	ldr	r3, [r7, #12]
 80002dc:	431a      	orrs	r2, r3
 80002de:	697b      	ldr	r3, [r7, #20]
 80002e0:	621a      	str	r2, [r3, #32]

    // output compare mode //
    shift_by = (channel % 2) * 8;
 80002e2:	797b      	ldrb	r3, [r7, #5]
 80002e4:	f003 0301 	and.w	r3, r3, #1
 80002e8:	b2db      	uxtb	r3, r3
 80002ea:	00db      	lsls	r3, r3, #3
 80002ec:	74fb      	strb	r3, [r7, #19]
    uint8_t mr_idx = channel / 2;
 80002ee:	797b      	ldrb	r3, [r7, #5]
 80002f0:	085b      	lsrs	r3, r3, #1
 80002f2:	72fb      	strb	r3, [r7, #11]
    config = tim->ccmr[mr_idx] & ~(0xff << shift_by);
 80002f4:	7afa      	ldrb	r2, [r7, #11]
 80002f6:	697b      	ldr	r3, [r7, #20]
 80002f8:	3206      	adds	r2, #6
 80002fa:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80002fe:	7cfa      	ldrb	r2, [r7, #19]
 8000300:	21ff      	movs	r1, #255	; 0xff
 8000302:	fa01 f202 	lsl.w	r2, r1, r2
 8000306:	43d2      	mvns	r2, r2
 8000308:	4013      	ands	r3, r2
 800030a:	60fb      	str	r3, [r7, #12]
    tim->ccmr[mr_idx] = (config | (mode << shift_by));
 800030c:	79ba      	ldrb	r2, [r7, #6]
 800030e:	7cfb      	ldrb	r3, [r7, #19]
 8000310:	fa02 f303 	lsl.w	r3, r2, r3
 8000314:	4619      	mov	r1, r3
 8000316:	7afa      	ldrb	r2, [r7, #11]
 8000318:	68fb      	ldr	r3, [r7, #12]
 800031a:	4319      	orrs	r1, r3
 800031c:	697b      	ldr	r3, [r7, #20]
 800031e:	3206      	adds	r2, #6
 8000320:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 8000324:	bf00      	nop
 8000326:	3718      	adds	r7, #24
 8000328:	46bd      	mov	sp, r7
 800032a:	bd80      	pop	{r7, pc}

0800032c <timer_init>:

void timer_init(uint8_t timer, uint32_t prescaler, uint32_t period) {
 800032c:	b580      	push	{r7, lr}
 800032e:	b086      	sub	sp, #24
 8000330:	af00      	add	r7, sp, #0
 8000332:	4603      	mov	r3, r0
 8000334:	60b9      	str	r1, [r7, #8]
 8000336:	607a      	str	r2, [r7, #4]
 8000338:	73fb      	strb	r3, [r7, #15]
    timer_t *tim = get_timer(timer);
 800033a:	7bfb      	ldrb	r3, [r7, #15]
 800033c:	4618      	mov	r0, r3
 800033e:	f7ff ff0b 	bl	8000158 <get_timer>
 8000342:	6178      	str	r0, [r7, #20]

    // set prescalar (ms) //
    // PWM Frequency = fCK_PSC / (PSC*ARR)
    // PWM Duty = CCMRx / ARR
    tim->psc = PCLK2 / prescaler - 1U; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
 8000344:	4a0d      	ldr	r2, [pc, #52]	; (800037c <timer_init+0x50>)
 8000346:	68bb      	ldr	r3, [r7, #8]
 8000348:	fbb2 f3f3 	udiv	r3, r2, r3
 800034c:	1e5a      	subs	r2, r3, #1
 800034e:	697b      	ldr	r3, [r7, #20]
 8000350:	629a      	str	r2, [r3, #40]	; 0x28
    tim->arr = period - 1U; // "period" of timer - updates every time cnt reaches arr
 8000352:	687b      	ldr	r3, [r7, #4]
 8000354:	1e5a      	subs	r2, r3, #1
 8000356:	697b      	ldr	r3, [r7, #20]
 8000358:	62da      	str	r2, [r3, #44]	; 0x2c

    tim->dier = 1U;
 800035a:	697b      	ldr	r3, [r7, #20]
 800035c:	2201      	movs	r2, #1
 800035e:	60da      	str	r2, [r3, #12]

    nvic_enable(TIM_IRQ_START_POS+timer);
 8000360:	7bfb      	ldrb	r3, [r7, #15]
 8000362:	331c      	adds	r3, #28
 8000364:	b2db      	uxtb	r3, r3
 8000366:	4618      	mov	r0, r3
 8000368:	f000 f80a 	bl	8000380 <nvic_enable>

    // enable counter //
    tim->cr1 = 1U;
 800036c:	697b      	ldr	r3, [r7, #20]
 800036e:	2201      	movs	r2, #1
 8000370:	601a      	str	r2, [r3, #0]
}
 8000372:	bf00      	nop
 8000374:	3718      	adds	r7, #24
 8000376:	46bd      	mov	sp, r7
 8000378:	bd80      	pop	{r7, pc}
 800037a:	bf00      	nop
 800037c:	044aa200 	.word	0x044aa200

08000380 <nvic_enable>:
#include "nvic.h"

nvic_t *nvic = (nvic_t *)(NVIC_BASE);

void nvic_enable(uint8_t irq_pos) {
 8000380:	b480      	push	{r7}
 8000382:	b085      	sub	sp, #20
 8000384:	af00      	add	r7, sp, #0
 8000386:	4603      	mov	r3, r0
 8000388:	71fb      	strb	r3, [r7, #7]
	uint8_t idx = irq_pos / 32;
 800038a:	79fb      	ldrb	r3, [r7, #7]
 800038c:	095b      	lsrs	r3, r3, #5
 800038e:	73fb      	strb	r3, [r7, #15]
	uint8_t shift_by = irq_pos % 32;
 8000390:	79fb      	ldrb	r3, [r7, #7]
 8000392:	f003 031f 	and.w	r3, r3, #31
 8000396:	73bb      	strb	r3, [r7, #14]
	nvic->iser[idx] = (1 << shift_by);
 8000398:	7bbb      	ldrb	r3, [r7, #14]
 800039a:	2201      	movs	r2, #1
 800039c:	fa02 f103 	lsl.w	r1, r2, r3
 80003a0:	4b04      	ldr	r3, [pc, #16]	; (80003b4 <nvic_enable+0x34>)
 80003a2:	681b      	ldr	r3, [r3, #0]
 80003a4:	7bfa      	ldrb	r2, [r7, #15]
 80003a6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 80003aa:	bf00      	nop
 80003ac:	3714      	adds	r7, #20
 80003ae:	46bd      	mov	sp, r7
 80003b0:	bc80      	pop	{r7}
 80003b2:	4770      	bx	lr
 80003b4:	08000998 	.word	0x08000998

080003b8 <get_gpio>:

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

gpio_t *get_gpio(uint8_t pin) {
 80003b8:	b480      	push	{r7}
 80003ba:	b083      	sub	sp, #12
 80003bc:	af00      	add	r7, sp, #0
 80003be:	4603      	mov	r3, r0
 80003c0:	71fb      	strb	r3, [r7, #7]
    switch(pin >> 4) {
 80003c2:	79fb      	ldrb	r3, [r7, #7]
 80003c4:	091b      	lsrs	r3, r3, #4
 80003c6:	b2db      	uxtb	r3, r3
 80003c8:	2b00      	cmp	r3, #0
 80003ca:	d002      	beq.n	80003d2 <get_gpio+0x1a>
 80003cc:	2b01      	cmp	r3, #1
 80003ce:	d003      	beq.n	80003d8 <get_gpio+0x20>
 80003d0:	e005      	b.n	80003de <get_gpio+0x26>
        case 0: return gpio_a;
 80003d2:	4b06      	ldr	r3, [pc, #24]	; (80003ec <get_gpio+0x34>)
 80003d4:	681b      	ldr	r3, [r3, #0]
 80003d6:	e004      	b.n	80003e2 <get_gpio+0x2a>
        case 1: return gpio_b;
 80003d8:	4b05      	ldr	r3, [pc, #20]	; (80003f0 <get_gpio+0x38>)
 80003da:	681b      	ldr	r3, [r3, #0]
 80003dc:	e001      	b.n	80003e2 <get_gpio+0x2a>
        // case 2: return gpio_c;
        default: return gpio_c;
 80003de:	4b05      	ldr	r3, [pc, #20]	; (80003f4 <get_gpio+0x3c>)
 80003e0:	681b      	ldr	r3, [r3, #0]
    }
}
 80003e2:	4618      	mov	r0, r3
 80003e4:	370c      	adds	r7, #12
 80003e6:	46bd      	mov	sp, r7
 80003e8:	bc80      	pop	{r7}
 80003ea:	4770      	bx	lr
 80003ec:	0800099c 	.word	0x0800099c
 80003f0:	080009a0 	.word	0x080009a0
 80003f4:	080009a4 	.word	0x080009a4

080003f8 <pin_mode>:

void pin_mode(uint8_t pin, uint8_t mode) {
 80003f8:	b580      	push	{r7, lr}
 80003fa:	b086      	sub	sp, #24
 80003fc:	af00      	add	r7, sp, #0
 80003fe:	4603      	mov	r3, r0
 8000400:	460a      	mov	r2, r1
 8000402:	71fb      	strb	r3, [r7, #7]
 8000404:	4613      	mov	r3, r2
 8000406:	71bb      	strb	r3, [r7, #6]
    gpio_t *gpio = get_gpio(pin);
 8000408:	79fb      	ldrb	r3, [r7, #7]
 800040a:	4618      	mov	r0, r3
 800040c:	f7ff ffd4 	bl	80003b8 <get_gpio>
 8000410:	6178      	str	r0, [r7, #20]
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
 8000412:	79fb      	ldrb	r3, [r7, #7]
 8000414:	f003 030f 	and.w	r3, r3, #15
 8000418:	74fb      	strb	r3, [r7, #19]
    uint8_t shift_by = (bit % 8) * 4;
 800041a:	7cfb      	ldrb	r3, [r7, #19]
 800041c:	f003 0307 	and.w	r3, r3, #7
 8000420:	b2db      	uxtb	r3, r3
 8000422:	009b      	lsls	r3, r3, #2
 8000424:	74bb      	strb	r3, [r7, #18]
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
 8000426:	7cfb      	ldrb	r3, [r7, #19]
 8000428:	08db      	lsrs	r3, r3, #3
 800042a:	747b      	strb	r3, [r7, #17]
    uint32_t config = gpio->cr[reg_idx] & ~(0xf << shift_by);
 800042c:	7c7a      	ldrb	r2, [r7, #17]
 800042e:	697b      	ldr	r3, [r7, #20]
 8000430:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000434:	7cba      	ldrb	r2, [r7, #18]
 8000436:	210f      	movs	r1, #15
 8000438:	fa01 f202 	lsl.w	r2, r1, r2
 800043c:	43d2      	mvns	r2, r2
 800043e:	4013      	ands	r3, r2
 8000440:	60fb      	str	r3, [r7, #12]
    gpio->cr[reg_idx] = (config | (mode << shift_by));
 8000442:	79ba      	ldrb	r2, [r7, #6]
 8000444:	7cbb      	ldrb	r3, [r7, #18]
 8000446:	fa02 f303 	lsl.w	r3, r2, r3
 800044a:	4619      	mov	r1, r3
 800044c:	7c7a      	ldrb	r2, [r7, #17]
 800044e:	68fb      	ldr	r3, [r7, #12]
 8000450:	4319      	orrs	r1, r3
 8000452:	697b      	ldr	r3, [r7, #20]
 8000454:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 8000458:	bf00      	nop
 800045a:	3718      	adds	r7, #24
 800045c:	46bd      	mov	sp, r7
 800045e:	bd80      	pop	{r7, pc}

08000460 <led_toggle>:

void led_toggle(uint8_t pin) {
 8000460:	b580      	push	{r7, lr}
 8000462:	b084      	sub	sp, #16
 8000464:	af00      	add	r7, sp, #0
 8000466:	4603      	mov	r3, r0
 8000468:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 800046a:	79fb      	ldrb	r3, [r7, #7]
 800046c:	4618      	mov	r0, r3
 800046e:	f7ff ffa3 	bl	80003b8 <get_gpio>
 8000472:	60f8      	str	r0, [r7, #12]
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
 8000474:	68fb      	ldr	r3, [r7, #12]
 8000476:	68db      	ldr	r3, [r3, #12]
 8000478:	79fa      	ldrb	r2, [r7, #7]
 800047a:	f002 020f 	and.w	r2, r2, #15
 800047e:	2101      	movs	r1, #1
 8000480:	fa01 f202 	lsl.w	r2, r1, r2
 8000484:	405a      	eors	r2, r3
 8000486:	68fb      	ldr	r3, [r7, #12]
 8000488:	60da      	str	r2, [r3, #12]
}
 800048a:	bf00      	nop
 800048c:	3710      	adds	r7, #16
 800048e:	46bd      	mov	sp, r7
 8000490:	bd80      	pop	{r7, pc}

08000492 <led_on>:

void led_on(uint8_t pin) {
 8000492:	b580      	push	{r7, lr}
 8000494:	b084      	sub	sp, #16
 8000496:	af00      	add	r7, sp, #0
 8000498:	4603      	mov	r3, r0
 800049a:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 800049c:	79fb      	ldrb	r3, [r7, #7]
 800049e:	4618      	mov	r0, r3
 80004a0:	f7ff ff8a 	bl	80003b8 <get_gpio>
 80004a4:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 80004a6:	79fb      	ldrb	r3, [r7, #7]
 80004a8:	2b2d      	cmp	r3, #45	; 0x2d
 80004aa:	d10c      	bne.n	80004c6 <led_on+0x34>
 80004ac:	68fb      	ldr	r3, [r7, #12]
 80004ae:	68db      	ldr	r3, [r3, #12]
 80004b0:	79fa      	ldrb	r2, [r7, #7]
 80004b2:	f002 020f 	and.w	r2, r2, #15
 80004b6:	2101      	movs	r1, #1
 80004b8:	fa01 f202 	lsl.w	r2, r1, r2
 80004bc:	43d2      	mvns	r2, r2
 80004be:	401a      	ands	r2, r3
 80004c0:	68fb      	ldr	r3, [r7, #12]
 80004c2:	60da      	str	r2, [r3, #12]
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}
 80004c4:	e00a      	b.n	80004dc <led_on+0x4a>
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
 80004c6:	68fb      	ldr	r3, [r7, #12]
 80004c8:	68db      	ldr	r3, [r3, #12]
 80004ca:	79fa      	ldrb	r2, [r7, #7]
 80004cc:	f002 020f 	and.w	r2, r2, #15
 80004d0:	2101      	movs	r1, #1
 80004d2:	fa01 f202 	lsl.w	r2, r1, r2
 80004d6:	431a      	orrs	r2, r3
 80004d8:	68fb      	ldr	r3, [r7, #12]
 80004da:	60da      	str	r2, [r3, #12]
}
 80004dc:	bf00      	nop
 80004de:	3710      	adds	r7, #16
 80004e0:	46bd      	mov	sp, r7
 80004e2:	bd80      	pop	{r7, pc}

080004e4 <led_off>:

void led_off(uint8_t pin) {
 80004e4:	b580      	push	{r7, lr}
 80004e6:	b084      	sub	sp, #16
 80004e8:	af00      	add	r7, sp, #0
 80004ea:	4603      	mov	r3, r0
 80004ec:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 80004ee:	79fb      	ldrb	r3, [r7, #7]
 80004f0:	4618      	mov	r0, r3
 80004f2:	f7ff ff61 	bl	80003b8 <get_gpio>
 80004f6:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
 80004f8:	79fb      	ldrb	r3, [r7, #7]
 80004fa:	2b2d      	cmp	r3, #45	; 0x2d
 80004fc:	d10b      	bne.n	8000516 <led_off+0x32>
 80004fe:	68fb      	ldr	r3, [r7, #12]
 8000500:	68db      	ldr	r3, [r3, #12]
 8000502:	79fa      	ldrb	r2, [r7, #7]
 8000504:	f002 020f 	and.w	r2, r2, #15
 8000508:	2101      	movs	r1, #1
 800050a:	fa01 f202 	lsl.w	r2, r1, r2
 800050e:	431a      	orrs	r2, r3
 8000510:	68fb      	ldr	r3, [r7, #12]
 8000512:	60da      	str	r2, [r3, #12]
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
 8000514:	e00b      	b.n	800052e <led_off+0x4a>
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 8000516:	68fb      	ldr	r3, [r7, #12]
 8000518:	68db      	ldr	r3, [r3, #12]
 800051a:	79fa      	ldrb	r2, [r7, #7]
 800051c:	f002 020f 	and.w	r2, r2, #15
 8000520:	2101      	movs	r1, #1
 8000522:	fa01 f202 	lsl.w	r2, r1, r2
 8000526:	43d2      	mvns	r2, r2
 8000528:	401a      	ands	r2, r3
 800052a:	68fb      	ldr	r3, [r7, #12]
 800052c:	60da      	str	r2, [r3, #12]
}
 800052e:	bf00      	nop
 8000530:	3710      	adds	r7, #16
 8000532:	46bd      	mov	sp, r7
 8000534:	bd80      	pop	{r7, pc}
 8000536:	bf00      	nop

08000538 <systick_handle>:

systick_t *systick = (systick_t *)(SYSTICK_BASE);

uint32_t __IO cnt = 0;

void systick_handle(void) {
 8000538:	b480      	push	{r7}
 800053a:	af00      	add	r7, sp, #0
    cnt++;
 800053c:	4b04      	ldr	r3, [pc, #16]	; (8000550 <systick_handle+0x18>)
 800053e:	681b      	ldr	r3, [r3, #0]
 8000540:	3301      	adds	r3, #1
 8000542:	4a03      	ldr	r2, [pc, #12]	; (8000550 <systick_handle+0x18>)
 8000544:	6013      	str	r3, [r2, #0]
}
 8000546:	bf00      	nop
 8000548:	46bd      	mov	sp, r7
 800054a:	bc80      	pop	{r7}
 800054c:	4770      	bx	lr
 800054e:	bf00      	nop
 8000550:	20000000 	.word	0x20000000

08000554 <systick_init>:

void systick_init(uint32_t reload_val) {
 8000554:	b480      	push	{r7}
 8000556:	b083      	sub	sp, #12
 8000558:	af00      	add	r7, sp, #0
 800055a:	6078      	str	r0, [r7, #4]
    systick->reload = PCLK2 / reload_val - 1U;
 800055c:	4a0b      	ldr	r2, [pc, #44]	; (800058c <systick_init+0x38>)
 800055e:	687b      	ldr	r3, [r7, #4]
 8000560:	fbb2 f2f3 	udiv	r2, r2, r3
 8000564:	4b0a      	ldr	r3, [pc, #40]	; (8000590 <systick_init+0x3c>)
 8000566:	681b      	ldr	r3, [r3, #0]
 8000568:	3a01      	subs	r2, #1
 800056a:	605a      	str	r2, [r3, #4]
    systick->val = 0U;
 800056c:	4b08      	ldr	r3, [pc, #32]	; (8000590 <systick_init+0x3c>)
 800056e:	681b      	ldr	r3, [r3, #0]
 8000570:	2200      	movs	r2, #0
 8000572:	609a      	str	r2, [r3, #8]
    cnt = 0;
 8000574:	4b07      	ldr	r3, [pc, #28]	; (8000594 <systick_init+0x40>)
 8000576:	2200      	movs	r2, #0
 8000578:	601a      	str	r2, [r3, #0]
    systick->ctrl = (AHB_EN|TICKINT_EN|TICK_EN);
 800057a:	4b05      	ldr	r3, [pc, #20]	; (8000590 <systick_init+0x3c>)
 800057c:	681b      	ldr	r3, [r3, #0]
 800057e:	2207      	movs	r2, #7
 8000580:	601a      	str	r2, [r3, #0]
}
 8000582:	bf00      	nop
 8000584:	370c      	adds	r7, #12
 8000586:	46bd      	mov	sp, r7
 8000588:	bc80      	pop	{r7}
 800058a:	4770      	bx	lr
 800058c:	044aa200 	.word	0x044aa200
 8000590:	080009a8 	.word	0x080009a8
 8000594:	20000000 	.word	0x20000000

08000598 <millis>:

uint32_t millis(void) {
 8000598:	b480      	push	{r7}
 800059a:	af00      	add	r7, sp, #0
    return cnt;
 800059c:	4b02      	ldr	r3, [pc, #8]	; (80005a8 <millis+0x10>)
 800059e:	681b      	ldr	r3, [r3, #0]
}
 80005a0:	4618      	mov	r0, r3
 80005a2:	46bd      	mov	sp, r7
 80005a4:	bc80      	pop	{r7}
 80005a6:	4770      	bx	lr
 80005a8:	20000000 	.word	0x20000000

080005ac <delay>:
#include "delay.h"
#include "systick.h"

void delay(uint64_t __IO t) {
 80005ac:	b490      	push	{r4, r7}
 80005ae:	b084      	sub	sp, #16
 80005b0:	af00      	add	r7, sp, #0
 80005b2:	e9c7 0100 	strd	r0, r1, [r7]
    for (uint64_t __IO i = 0; i < t; i++);
 80005b6:	f04f 0300 	mov.w	r3, #0
 80005ba:	f04f 0400 	mov.w	r4, #0
 80005be:	e9c7 3402 	strd	r3, r4, [r7, #8]
 80005c2:	e006      	b.n	80005d2 <delay+0x26>
 80005c4:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 80005c8:	1c4b      	adds	r3, r1, #1
 80005ca:	f142 0400 	adc.w	r4, r2, #0
 80005ce:	e9c7 3402 	strd	r3, r4, [r7, #8]
 80005d2:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 80005d6:	e9d7 3400 	ldrd	r3, r4, [r7]
 80005da:	42a2      	cmp	r2, r4
 80005dc:	bf08      	it	eq
 80005de:	4299      	cmpeq	r1, r3
 80005e0:	d3f0      	bcc.n	80005c4 <delay+0x18>
}
 80005e2:	bf00      	nop
 80005e4:	3710      	adds	r7, #16
 80005e6:	46bd      	mov	sp, r7
 80005e8:	bc90      	pop	{r4, r7}
 80005ea:	4770      	bx	lr

080005ec <systick_delay>:

void systick_delay(uint64_t __IO t) {
 80005ec:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 80005f0:	b084      	sub	sp, #16
 80005f2:	af00      	add	r7, sp, #0
 80005f4:	e9c7 0100 	strd	r0, r1, [r7]
    uint64_t start_t = millis();
 80005f8:	f7ff ffce 	bl	8000598 <millis>
 80005fc:	4603      	mov	r3, r0
 80005fe:	f04f 0400 	mov.w	r4, #0
 8000602:	e9c7 3402 	strd	r3, r4, [r7, #8]
    while(millis() - start_t < t);
 8000606:	bf00      	nop
 8000608:	f7ff ffc6 	bl	8000598 <millis>
 800060c:	4603      	mov	r3, r0
 800060e:	469b      	mov	fp, r3
 8000610:	f04f 0c00 	mov.w	ip, #0
 8000614:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000618:	4659      	mov	r1, fp
 800061a:	4662      	mov	r2, ip
 800061c:	1ac9      	subs	r1, r1, r3
 800061e:	eb62 0204 	sbc.w	r2, r2, r4
 8000622:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000626:	42a2      	cmp	r2, r4
 8000628:	bf08      	it	eq
 800062a:	4299      	cmpeq	r1, r3
 800062c:	d3ec      	bcc.n	8000608 <systick_delay+0x1c>
}
 800062e:	bf00      	nop
 8000630:	3710      	adds	r7, #16
 8000632:	46bd      	mov	sp, r7
 8000634:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}

08000638 <rcc_init>:
#include "rcc.h"
#include "flash_acr.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(void) {
 8000638:	b480      	push	{r7}
 800063a:	af00      	add	r7, sp, #0
    // switch to 72Mhz clock //
    flash->acr |= LATENCY_2;
 800063c:	4b31      	ldr	r3, [pc, #196]	; (8000704 <rcc_init+0xcc>)
 800063e:	681b      	ldr	r3, [r3, #0]
 8000640:	681a      	ldr	r2, [r3, #0]
 8000642:	4b30      	ldr	r3, [pc, #192]	; (8000704 <rcc_init+0xcc>)
 8000644:	681b      	ldr	r3, [r3, #0]
 8000646:	f042 0202 	orr.w	r2, r2, #2
 800064a:	601a      	str	r2, [r3, #0]
    rcc->cfgr |= APB1_DIV2;
 800064c:	4b2e      	ldr	r3, [pc, #184]	; (8000708 <rcc_init+0xd0>)
 800064e:	681b      	ldr	r3, [r3, #0]
 8000650:	685a      	ldr	r2, [r3, #4]
 8000652:	4b2d      	ldr	r3, [pc, #180]	; (8000708 <rcc_init+0xd0>)
 8000654:	681b      	ldr	r3, [r3, #0]
 8000656:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800065a:	605a      	str	r2, [r3, #4]

    rcc->cr |= HSEON;
 800065c:	4b2a      	ldr	r3, [pc, #168]	; (8000708 <rcc_init+0xd0>)
 800065e:	681b      	ldr	r3, [r3, #0]
 8000660:	681a      	ldr	r2, [r3, #0]
 8000662:	4b29      	ldr	r3, [pc, #164]	; (8000708 <rcc_init+0xd0>)
 8000664:	681b      	ldr	r3, [r3, #0]
 8000666:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800066a:	601a      	str	r2, [r3, #0]
    while(!(rcc->cr & HSERDY));
 800066c:	bf00      	nop
 800066e:	4b26      	ldr	r3, [pc, #152]	; (8000708 <rcc_init+0xd0>)
 8000670:	681b      	ldr	r3, [r3, #0]
 8000672:	681b      	ldr	r3, [r3, #0]
 8000674:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000678:	2b00      	cmp	r3, #0
 800067a:	d0f8      	beq.n	800066e <rcc_init+0x36>

    rcc->cfgr |= (PLLHSE|PLL_9);
 800067c:	4b22      	ldr	r3, [pc, #136]	; (8000708 <rcc_init+0xd0>)
 800067e:	681b      	ldr	r3, [r3, #0]
 8000680:	685a      	ldr	r2, [r3, #4]
 8000682:	4b21      	ldr	r3, [pc, #132]	; (8000708 <rcc_init+0xd0>)
 8000684:	681b      	ldr	r3, [r3, #0]
 8000686:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800068a:	605a      	str	r2, [r3, #4]
    rcc->cr |= PLLON;
 800068c:	4b1e      	ldr	r3, [pc, #120]	; (8000708 <rcc_init+0xd0>)
 800068e:	681b      	ldr	r3, [r3, #0]
 8000690:	681a      	ldr	r2, [r3, #0]
 8000692:	4b1d      	ldr	r3, [pc, #116]	; (8000708 <rcc_init+0xd0>)
 8000694:	681b      	ldr	r3, [r3, #0]
 8000696:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800069a:	601a      	str	r2, [r3, #0]
    while(!(rcc->cr & PLLRDY));
 800069c:	bf00      	nop
 800069e:	4b1a      	ldr	r3, [pc, #104]	; (8000708 <rcc_init+0xd0>)
 80006a0:	681b      	ldr	r3, [r3, #0]
 80006a2:	681b      	ldr	r3, [r3, #0]
 80006a4:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80006a8:	2b00      	cmp	r3, #0
 80006aa:	d0f8      	beq.n	800069e <rcc_init+0x66>

    rcc->cfgr |= SWPLL;
 80006ac:	4b16      	ldr	r3, [pc, #88]	; (8000708 <rcc_init+0xd0>)
 80006ae:	681b      	ldr	r3, [r3, #0]
 80006b0:	685a      	ldr	r2, [r3, #4]
 80006b2:	4b15      	ldr	r3, [pc, #84]	; (8000708 <rcc_init+0xd0>)
 80006b4:	681b      	ldr	r3, [r3, #0]
 80006b6:	f042 0202 	orr.w	r2, r2, #2
 80006ba:	605a      	str	r2, [r3, #4]
    while(!(rcc->cfgr & SWSPLL));
 80006bc:	bf00      	nop
 80006be:	4b12      	ldr	r3, [pc, #72]	; (8000708 <rcc_init+0xd0>)
 80006c0:	681b      	ldr	r3, [r3, #0]
 80006c2:	685b      	ldr	r3, [r3, #4]
 80006c4:	f003 0308 	and.w	r3, r3, #8
 80006c8:	2b00      	cmp	r3, #0
 80006ca:	d0f8      	beq.n	80006be <rcc_init+0x86>

    rcc->apbe1 |= (TIM2_EN); // enable timers
 80006cc:	4b0e      	ldr	r3, [pc, #56]	; (8000708 <rcc_init+0xd0>)
 80006ce:	681b      	ldr	r3, [r3, #0]
 80006d0:	69da      	ldr	r2, [r3, #28]
 80006d2:	4b0d      	ldr	r3, [pc, #52]	; (8000708 <rcc_init+0xd0>)
 80006d4:	681b      	ldr	r3, [r3, #0]
 80006d6:	f042 0201 	orr.w	r2, r2, #1
 80006da:	61da      	str	r2, [r3, #28]
    rcc->apbe2 |= (GPIOA_EN|GPIOB_EN|GPIOC_EN); // enable all GPIO pins
 80006dc:	4b0a      	ldr	r3, [pc, #40]	; (8000708 <rcc_init+0xd0>)
 80006de:	681b      	ldr	r3, [r3, #0]
 80006e0:	699a      	ldr	r2, [r3, #24]
 80006e2:	4b09      	ldr	r3, [pc, #36]	; (8000708 <rcc_init+0xd0>)
 80006e4:	681b      	ldr	r3, [r3, #0]
 80006e6:	f042 021c 	orr.w	r2, r2, #28
 80006ea:	619a      	str	r2, [r3, #24]
    rcc->apbe2 |= USART1_EN;
 80006ec:	4b06      	ldr	r3, [pc, #24]	; (8000708 <rcc_init+0xd0>)
 80006ee:	681b      	ldr	r3, [r3, #0]
 80006f0:	699a      	ldr	r2, [r3, #24]
 80006f2:	4b05      	ldr	r3, [pc, #20]	; (8000708 <rcc_init+0xd0>)
 80006f4:	681b      	ldr	r3, [r3, #0]
 80006f6:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 80006fa:	619a      	str	r2, [r3, #24]
}
 80006fc:	bf00      	nop
 80006fe:	46bd      	mov	sp, r7
 8000700:	bc80      	pop	{r7}
 8000702:	4770      	bx	lr
 8000704:	080009ac 	.word	0x080009ac
 8000708:	080009b0 	.word	0x080009b0

0800070c <reset_system>:
#include "gpio.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

void reset_system(void) {
 800070c:	b580      	push	{r7, lr}
 800070e:	b082      	sub	sp, #8
 8000710:	af00      	add	r7, sp, #0
    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 8000712:	2103      	movs	r1, #3
 8000714:	202d      	movs	r0, #45	; 0x2d
 8000716:	f7ff fe6f 	bl	80003f8 <pin_mode>
    for (uint8_t i = 0; i <= 5; i++) {
 800071a:	2300      	movs	r3, #0
 800071c:	71fb      	strb	r3, [r7, #7]
 800071e:	e00b      	b.n	8000738 <reset_system+0x2c>
        led_toggle(PC13);
 8000720:	202d      	movs	r0, #45	; 0x2d
 8000722:	f7ff fe9d 	bl	8000460 <led_toggle>
        systick_delay(100);
 8000726:	f04f 0064 	mov.w	r0, #100	; 0x64
 800072a:	f04f 0100 	mov.w	r1, #0
 800072e:	f7ff ff5d 	bl	80005ec <systick_delay>
    for (uint8_t i = 0; i <= 5; i++) {
 8000732:	79fb      	ldrb	r3, [r7, #7]
 8000734:	3301      	adds	r3, #1
 8000736:	71fb      	strb	r3, [r7, #7]
 8000738:	79fb      	ldrb	r3, [r7, #7]
 800073a:	2b05      	cmp	r3, #5
 800073c:	d9f0      	bls.n	8000720 <reset_system+0x14>
    }
    scb->aircr = (KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
 800073e:	4b07      	ldr	r3, [pc, #28]	; (800075c <reset_system+0x50>)
 8000740:	681b      	ldr	r3, [r3, #0]
 8000742:	68db      	ldr	r3, [r3, #12]
 8000744:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 8000748:	4b04      	ldr	r3, [pc, #16]	; (800075c <reset_system+0x50>)
 800074a:	681a      	ldr	r2, [r3, #0]
 800074c:	4b04      	ldr	r3, [pc, #16]	; (8000760 <reset_system+0x54>)
 800074e:	430b      	orrs	r3, r1
 8000750:	60d3      	str	r3, [r2, #12]
}
 8000752:	bf00      	nop
 8000754:	3708      	adds	r7, #8
 8000756:	46bd      	mov	sp, r7
 8000758:	bd80      	pop	{r7, pc}
 800075a:	bf00      	nop
 800075c:	080009b4 	.word	0x080009b4
 8000760:	05fa0004 	.word	0x05fa0004

08000764 <hard_fault_handle>:

void hard_fault_handle(void) {
 8000764:	b580      	push	{r7, lr}
 8000766:	af00      	add	r7, sp, #0
    reset_system();
 8000768:	f7ff ffd0 	bl	800070c <reset_system>
}
 800076c:	bf00      	nop
 800076e:	bd80      	pop	{r7, pc}

08000770 <mem_manage_handle>:

void mem_manage_handle(void) {
 8000770:	b580      	push	{r7, lr}
 8000772:	af00      	add	r7, sp, #0
    reset_system();
 8000774:	f7ff ffca 	bl	800070c <reset_system>
}
 8000778:	bf00      	nop
 800077a:	bd80      	pop	{r7, pc}

0800077c <bus_fault_handle>:

void bus_fault_handle(void) {
 800077c:	b580      	push	{r7, lr}
 800077e:	af00      	add	r7, sp, #0
    reset_system();
 8000780:	f7ff ffc4 	bl	800070c <reset_system>
}
 8000784:	bf00      	nop
 8000786:	bd80      	pop	{r7, pc}

08000788 <main>:
#include "rcc.h"
#include "timer.h"
#include "systick.h"
#include "usart.h"

int main(void) {
 8000788:	b580      	push	{r7, lr}
 800078a:	af00      	add	r7, sp, #0
    rcc_init();
 800078c:	f7ff ff54 	bl	8000638 <rcc_init>

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 8000790:	2103      	movs	r1, #3
 8000792:	202d      	movs	r0, #45	; 0x2d
 8000794:	f7ff fe30 	bl	80003f8 <pin_mode>
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1
 8000798:	210b      	movs	r1, #11
 800079a:	2009      	movs	r0, #9
 800079c:	f7ff fe2c 	bl	80003f8 <pin_mode>
    pin_mode(PA10, INPUT_FLOATING_PT); // enable Rx pin for usart1
 80007a0:	2104      	movs	r1, #4
 80007a2:	200a      	movs	r0, #10
 80007a4:	f7ff fe28 	bl	80003f8 <pin_mode>

    systick_init(1000U); // initialize systick at 1Hz
 80007a8:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80007ac:	f7ff fed2 	bl	8000554 <systick_init>
    serial_init(USART1, 115200U);
 80007b0:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 80007b4:	2000      	movs	r0, #0
 80007b6:	f000 f83f 	bl	8000838 <serial_init>
    while(1) {
        // char a = serial_r_c(USART1);
        // serial_wr_s(USART1, "hello world", 1);
        // systick_delay(1000);
        // serial_wr_c(USART1, a);
        led_toggle(PC13);
 80007ba:	202d      	movs	r0, #45	; 0x2d
 80007bc:	f7ff fe50 	bl	8000460 <led_toggle>
        systick_delay(1000);
 80007c0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80007c4:	f04f 0100 	mov.w	r1, #0
 80007c8:	f7ff ff10 	bl	80005ec <systick_delay>
        led_toggle(PC13);
 80007cc:	e7f5      	b.n	80007ba <main+0x32>
	...

080007d0 <get_usart>:

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

usart_t *get_usart(uint8_t usart) {
 80007d0:	b480      	push	{r7}
 80007d2:	b083      	sub	sp, #12
 80007d4:	af00      	add	r7, sp, #0
 80007d6:	4603      	mov	r3, r0
 80007d8:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 80007da:	79fb      	ldrb	r3, [r7, #7]
 80007dc:	2b01      	cmp	r3, #1
 80007de:	d006      	beq.n	80007ee <get_usart+0x1e>
 80007e0:	2b02      	cmp	r3, #2
 80007e2:	d007      	beq.n	80007f4 <get_usart+0x24>
 80007e4:	2b00      	cmp	r3, #0
 80007e6:	d108      	bne.n	80007fa <get_usart+0x2a>
        case USART1: return usart1;
 80007e8:	4b07      	ldr	r3, [pc, #28]	; (8000808 <get_usart+0x38>)
 80007ea:	681b      	ldr	r3, [r3, #0]
 80007ec:	e007      	b.n	80007fe <get_usart+0x2e>
        case USART2: return usart2;
 80007ee:	4b07      	ldr	r3, [pc, #28]	; (800080c <get_usart+0x3c>)
 80007f0:	681b      	ldr	r3, [r3, #0]
 80007f2:	e004      	b.n	80007fe <get_usart+0x2e>
        case USART3: return usart3;
 80007f4:	4b06      	ldr	r3, [pc, #24]	; (8000810 <get_usart+0x40>)
 80007f6:	681b      	ldr	r3, [r3, #0]
 80007f8:	e001      	b.n	80007fe <get_usart+0x2e>
        default: return usart1;
 80007fa:	4b03      	ldr	r3, [pc, #12]	; (8000808 <get_usart+0x38>)
 80007fc:	681b      	ldr	r3, [r3, #0]
    }
}
 80007fe:	4618      	mov	r0, r3
 8000800:	370c      	adds	r7, #12
 8000802:	46bd      	mov	sp, r7
 8000804:	bc80      	pop	{r7}
 8000806:	4770      	bx	lr
 8000808:	080009b8 	.word	0x080009b8
 800080c:	080009bc 	.word	0x080009bc
 8000810:	080009c0 	.word	0x080009c0

08000814 <usart1_handle>:

void usart1_handle(void) {
 8000814:	b580      	push	{r7, lr}
 8000816:	b082      	sub	sp, #8
 8000818:	af00      	add	r7, sp, #0
    char in = (char)(usart1->data & DATA_MASK);
 800081a:	4b06      	ldr	r3, [pc, #24]	; (8000834 <usart1_handle+0x20>)
 800081c:	681b      	ldr	r3, [r3, #0]
 800081e:	685b      	ldr	r3, [r3, #4]
 8000820:	71fb      	strb	r3, [r7, #7]
    serial_wr_c(USART1, in);
 8000822:	79fb      	ldrb	r3, [r7, #7]
 8000824:	4619      	mov	r1, r3
 8000826:	2000      	movs	r0, #0
 8000828:	f000 f830 	bl	800088c <serial_wr_c>
}
 800082c:	bf00      	nop
 800082e:	3708      	adds	r7, #8
 8000830:	46bd      	mov	sp, r7
 8000832:	bd80      	pop	{r7, pc}
 8000834:	080009b8 	.word	0x080009b8

08000838 <serial_init>:

void serial_init(uint8_t usart, uint32_t baud) {
 8000838:	b580      	push	{r7, lr}
 800083a:	b084      	sub	sp, #16
 800083c:	af00      	add	r7, sp, #0
 800083e:	4603      	mov	r3, r0
 8000840:	6039      	str	r1, [r7, #0]
 8000842:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 8000844:	79fb      	ldrb	r3, [r7, #7]
 8000846:	4618      	mov	r0, r3
 8000848:	f7ff ffc2 	bl	80007d0 <get_usart>
 800084c:	60f8      	str	r0, [r7, #12]
    serial->cr1 = (RE|TE|RXNEIE|UE); // enable Tx/Rx, RXNE interrupt, usart
 800084e:	68fb      	ldr	r3, [r7, #12]
 8000850:	f242 022c 	movw	r2, #8236	; 0x202c
 8000854:	60da      	str	r2, [r3, #12]
    serial->cr2 = 0;
 8000856:	68fb      	ldr	r3, [r7, #12]
 8000858:	2200      	movs	r2, #0
 800085a:	611a      	str	r2, [r3, #16]
    serial->cr3 = 0;
 800085c:	68fb      	ldr	r3, [r7, #12]
 800085e:	2200      	movs	r2, #0
 8000860:	615a      	str	r2, [r3, #20]
    serial->gtpr = 0;
 8000862:	68fb      	ldr	r3, [r7, #12]
 8000864:	2200      	movs	r2, #0
 8000866:	619a      	str	r2, [r3, #24]
    serial->baud = PCLK2 / baud;
 8000868:	4a07      	ldr	r2, [pc, #28]	; (8000888 <serial_init+0x50>)
 800086a:	683b      	ldr	r3, [r7, #0]
 800086c:	fbb2 f2f3 	udiv	r2, r2, r3
 8000870:	68fb      	ldr	r3, [r7, #12]
 8000872:	609a      	str	r2, [r3, #8]
    nvic_enable(USART1_IRQ_START_POS+usart);
 8000874:	79fb      	ldrb	r3, [r7, #7]
 8000876:	3325      	adds	r3, #37	; 0x25
 8000878:	b2db      	uxtb	r3, r3
 800087a:	4618      	mov	r0, r3
 800087c:	f7ff fd80 	bl	8000380 <nvic_enable>
}
 8000880:	bf00      	nop
 8000882:	3710      	adds	r7, #16
 8000884:	46bd      	mov	sp, r7
 8000886:	bd80      	pop	{r7, pc}
 8000888:	044aa200 	.word	0x044aa200

0800088c <serial_wr_c>:

bool serial_wr_c(uint8_t usart, char c) {
 800088c:	b580      	push	{r7, lr}
 800088e:	b084      	sub	sp, #16
 8000890:	af00      	add	r7, sp, #0
 8000892:	4603      	mov	r3, r0
 8000894:	460a      	mov	r2, r1
 8000896:	71fb      	strb	r3, [r7, #7]
 8000898:	4613      	mov	r3, r2
 800089a:	71bb      	strb	r3, [r7, #6]
    usart_t *serial = get_usart(usart);
 800089c:	79fb      	ldrb	r3, [r7, #7]
 800089e:	4618      	mov	r0, r3
 80008a0:	f7ff ff96 	bl	80007d0 <get_usart>
 80008a4:	60f8      	str	r0, [r7, #12]
    serial->data = c;
 80008a6:	79ba      	ldrb	r2, [r7, #6]
 80008a8:	68fb      	ldr	r3, [r7, #12]
 80008aa:	605a      	str	r2, [r3, #4]
    while(!(serial->sr & TC));
 80008ac:	bf00      	nop
 80008ae:	68fb      	ldr	r3, [r7, #12]
 80008b0:	681b      	ldr	r3, [r3, #0]
 80008b2:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80008b6:	2b00      	cmp	r3, #0
 80008b8:	d0f9      	beq.n	80008ae <serial_wr_c+0x22>
    return 1;
 80008ba:	2301      	movs	r3, #1
}
 80008bc:	4618      	mov	r0, r3
 80008be:	3710      	adds	r7, #16
 80008c0:	46bd      	mov	sp, r7
 80008c2:	bd80      	pop	{r7, pc}

080008c4 <serial_wr_s>:

bool serial_wr_s(uint8_t usart, char *s, bool new_line) {
 80008c4:	b580      	push	{r7, lr}
 80008c6:	b082      	sub	sp, #8
 80008c8:	af00      	add	r7, sp, #0
 80008ca:	4603      	mov	r3, r0
 80008cc:	6039      	str	r1, [r7, #0]
 80008ce:	71fb      	strb	r3, [r7, #7]
 80008d0:	4613      	mov	r3, r2
 80008d2:	71bb      	strb	r3, [r7, #6]
    while(*s) serial_wr_c(usart, *s++);
 80008d4:	e008      	b.n	80008e8 <serial_wr_s+0x24>
 80008d6:	683b      	ldr	r3, [r7, #0]
 80008d8:	1c5a      	adds	r2, r3, #1
 80008da:	603a      	str	r2, [r7, #0]
 80008dc:	781a      	ldrb	r2, [r3, #0]
 80008de:	79fb      	ldrb	r3, [r7, #7]
 80008e0:	4611      	mov	r1, r2
 80008e2:	4618      	mov	r0, r3
 80008e4:	f7ff ffd2 	bl	800088c <serial_wr_c>
 80008e8:	683b      	ldr	r3, [r7, #0]
 80008ea:	781b      	ldrb	r3, [r3, #0]
 80008ec:	2b00      	cmp	r3, #0
 80008ee:	d1f2      	bne.n	80008d6 <serial_wr_s+0x12>
    if (!new_line) return 1;
 80008f0:	79bb      	ldrb	r3, [r7, #6]
 80008f2:	f083 0301 	eor.w	r3, r3, #1
 80008f6:	b2db      	uxtb	r3, r3
 80008f8:	2b00      	cmp	r3, #0
 80008fa:	d001      	beq.n	8000900 <serial_wr_s+0x3c>
 80008fc:	2301      	movs	r3, #1
 80008fe:	e00a      	b.n	8000916 <serial_wr_s+0x52>
    serial_wr_c(usart, '\r');
 8000900:	79fb      	ldrb	r3, [r7, #7]
 8000902:	210d      	movs	r1, #13
 8000904:	4618      	mov	r0, r3
 8000906:	f7ff ffc1 	bl	800088c <serial_wr_c>
    serial_wr_c(usart, '\n');
 800090a:	79fb      	ldrb	r3, [r7, #7]
 800090c:	210a      	movs	r1, #10
 800090e:	4618      	mov	r0, r3
 8000910:	f7ff ffbc 	bl	800088c <serial_wr_c>
    return 1;
 8000914:	2301      	movs	r3, #1
}
 8000916:	4618      	mov	r0, r3
 8000918:	3708      	adds	r7, #8
 800091a:	46bd      	mov	sp, r7
 800091c:	bd80      	pop	{r7, pc}

0800091e <serial_r_c>:

char serial_r_c(uint8_t usart) {
 800091e:	b580      	push	{r7, lr}
 8000920:	b084      	sub	sp, #16
 8000922:	af00      	add	r7, sp, #0
 8000924:	4603      	mov	r3, r0
 8000926:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 8000928:	79fb      	ldrb	r3, [r7, #7]
 800092a:	4618      	mov	r0, r3
 800092c:	f7ff ff50 	bl	80007d0 <get_usart>
 8000930:	60f8      	str	r0, [r7, #12]
    while(!(serial->sr & RXNE));
 8000932:	bf00      	nop
 8000934:	68fb      	ldr	r3, [r7, #12]
 8000936:	681b      	ldr	r3, [r3, #0]
 8000938:	f003 0320 	and.w	r3, r3, #32
 800093c:	2b00      	cmp	r3, #0
 800093e:	d0f9      	beq.n	8000934 <serial_r_c+0x16>
    return (char)(serial->data & DATA_MASK);
 8000940:	68fb      	ldr	r3, [r7, #12]
 8000942:	685b      	ldr	r3, [r3, #4]
 8000944:	b2db      	uxtb	r3, r3
}
 8000946:	4618      	mov	r0, r3
 8000948:	3710      	adds	r7, #16
 800094a:	46bd      	mov	sp, r7
 800094c:	bd80      	pop	{r7, pc}

0800094e <serial_r_s>:

char *serial_r_s(uint8_t usart, char *buffer) {
 800094e:	b590      	push	{r4, r7, lr}
 8000950:	b083      	sub	sp, #12
 8000952:	af00      	add	r7, sp, #0
 8000954:	4603      	mov	r3, r0
 8000956:	6039      	str	r1, [r7, #0]
 8000958:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 800095a:	e008      	b.n	800096e <serial_r_s+0x20>
        *buffer++ = serial_r_c(usart);
 800095c:	683c      	ldr	r4, [r7, #0]
 800095e:	1c63      	adds	r3, r4, #1
 8000960:	603b      	str	r3, [r7, #0]
 8000962:	79fb      	ldrb	r3, [r7, #7]
 8000964:	4618      	mov	r0, r3
 8000966:	f7ff ffda 	bl	800091e <serial_r_c>
 800096a:	4603      	mov	r3, r0
 800096c:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 800096e:	683b      	ldr	r3, [r7, #0]
 8000970:	781b      	ldrb	r3, [r3, #0]
 8000972:	2b00      	cmp	r3, #0
 8000974:	d1f2      	bne.n	800095c <serial_r_s+0xe>
    }
    return buffer;
 8000976:	683b      	ldr	r3, [r7, #0]
}
 8000978:	4618      	mov	r0, r3
 800097a:	370c      	adds	r7, #12
 800097c:	46bd      	mov	sp, r7
 800097e:	bd90      	pop	{r4, r7, pc}
