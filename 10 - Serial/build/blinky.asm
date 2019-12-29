
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <none-0x150>:
 8000000:	20005000 	.word	0x20005000
 8000004:	08000153 	.word	0x08000153
 8000008:	08000151 	.word	0x08000151
 800000c:	080006c1 	.word	0x080006c1
 8000010:	080006cd 	.word	0x080006cd
 8000014:	080006d9 	.word	0x080006d9
 8000018:	08000151 	.word	0x08000151
 800001c:	08000151 	.word	0x08000151
 8000020:	08000151 	.word	0x08000151
 8000024:	08000151 	.word	0x08000151
 8000028:	08000151 	.word	0x08000151
 800002c:	08000151 	.word	0x08000151
 8000030:	08000151 	.word	0x08000151
 8000034:	08000151 	.word	0x08000151
 8000038:	08000151 	.word	0x08000151
 800003c:	08000531 	.word	0x08000531
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
 80000b4:	080001ed 	.word	0x080001ed
 80000b8:	08000209 	.word	0x08000209
 80000bc:	08000151 	.word	0x08000151
 80000c0:	08000151 	.word	0x08000151
 80000c4:	08000151 	.word	0x08000151
 80000c8:	08000151 	.word	0x08000151
 80000cc:	08000151 	.word	0x08000151
 80000d0:	08000151 	.word	0x08000151
 80000d4:	08000151 	.word	0x08000151
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
 8000108:	08000221 	.word	0x08000221
 800010c:	08000151 	.word	0x08000151
 8000110:	08000151 	.word	0x08000151
 8000114:	08000151 	.word	0x08000151
 8000118:	08000239 	.word	0x08000239
 800011c:	08000251 	.word	0x08000251
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
 8000152:	f000 fac7 	bl	80006e4 <main>
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
 80001bc:	080008c4 	.word	0x080008c4
 80001c0:	080008c8 	.word	0x080008c8
 80001c4:	080008cc 	.word	0x080008cc
 80001c8:	080008d0 	.word	0x080008d0
 80001cc:	080008d4 	.word	0x080008d4
 80001d0:	080008d8 	.word	0x080008d8

080001d4 <tim2_handle>:

void tim2_handle(void) {
 80001d4:	b480      	push	{r7}
 80001d6:	af00      	add	r7, sp, #0
    tim2->sr = 0U; // reset interrupt
 80001d8:	4b03      	ldr	r3, [pc, #12]	; (80001e8 <tim2_handle+0x14>)
 80001da:	681b      	ldr	r3, [r3, #0]
 80001dc:	2200      	movs	r2, #0
 80001de:	611a      	str	r2, [r3, #16]
}
 80001e0:	bf00      	nop
 80001e2:	46bd      	mov	sp, r7
 80001e4:	bc80      	pop	{r7}
 80001e6:	4770      	bx	lr
 80001e8:	080008c4 	.word	0x080008c4

080001ec <tim3_handle>:

void tim3_handle(void) {
 80001ec:	b580      	push	{r7, lr}
 80001ee:	af00      	add	r7, sp, #0
    tim3->sr = 0U; // reset interrupt
 80001f0:	4b04      	ldr	r3, [pc, #16]	; (8000204 <tim3_handle+0x18>)
 80001f2:	681b      	ldr	r3, [r3, #0]
 80001f4:	2200      	movs	r2, #0
 80001f6:	611a      	str	r2, [r3, #16]
    led_toggle(PA7);
 80001f8:	2007      	movs	r0, #7
 80001fa:	f000 f92d 	bl	8000458 <led_toggle>
}
 80001fe:	bf00      	nop
 8000200:	bd80      	pop	{r7, pc}
 8000202:	bf00      	nop
 8000204:	080008c8 	.word	0x080008c8

08000208 <tim4_handle>:

void tim4_handle(void) {
 8000208:	b480      	push	{r7}
 800020a:	af00      	add	r7, sp, #0
    tim4->sr = 0U; // reset interrupt
 800020c:	4b03      	ldr	r3, [pc, #12]	; (800021c <tim4_handle+0x14>)
 800020e:	681b      	ldr	r3, [r3, #0]
 8000210:	2200      	movs	r2, #0
 8000212:	611a      	str	r2, [r3, #16]
}
 8000214:	bf00      	nop
 8000216:	46bd      	mov	sp, r7
 8000218:	bc80      	pop	{r7}
 800021a:	4770      	bx	lr
 800021c:	080008cc 	.word	0x080008cc

08000220 <tim5_handle>:

void tim5_handle(void) {
 8000220:	b480      	push	{r7}
 8000222:	af00      	add	r7, sp, #0
    tim5->sr = 0U; // reset interrupt
 8000224:	4b03      	ldr	r3, [pc, #12]	; (8000234 <tim5_handle+0x14>)
 8000226:	681b      	ldr	r3, [r3, #0]
 8000228:	2200      	movs	r2, #0
 800022a:	611a      	str	r2, [r3, #16]
}
 800022c:	bf00      	nop
 800022e:	46bd      	mov	sp, r7
 8000230:	bc80      	pop	{r7}
 8000232:	4770      	bx	lr
 8000234:	080008d0 	.word	0x080008d0

08000238 <tim6_handle>:

void tim6_handle(void) {
 8000238:	b480      	push	{r7}
 800023a:	af00      	add	r7, sp, #0
    tim6->sr = 0U; // reset interrupt
 800023c:	4b03      	ldr	r3, [pc, #12]	; (800024c <tim6_handle+0x14>)
 800023e:	681b      	ldr	r3, [r3, #0]
 8000240:	2200      	movs	r2, #0
 8000242:	611a      	str	r2, [r3, #16]
}
 8000244:	bf00      	nop
 8000246:	46bd      	mov	sp, r7
 8000248:	bc80      	pop	{r7}
 800024a:	4770      	bx	lr
 800024c:	080008d4 	.word	0x080008d4

08000250 <tim7_handle>:

void tim7_handle(void) {
 8000250:	b480      	push	{r7}
 8000252:	af00      	add	r7, sp, #0
    tim7->sr = 0U; // reset interrupt
 8000254:	4b03      	ldr	r3, [pc, #12]	; (8000264 <tim7_handle+0x14>)
 8000256:	681b      	ldr	r3, [r3, #0]
 8000258:	2200      	movs	r2, #0
 800025a:	611a      	str	r2, [r3, #16]
}
 800025c:	bf00      	nop
 800025e:	46bd      	mov	sp, r7
 8000260:	bc80      	pop	{r7}
 8000262:	4770      	bx	lr
 8000264:	080008d8 	.word	0x080008d8

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
    tim->psc = HSI_MHZ / prescaler; // a prescaler value of psc will increment cnt every psc+1 clock cycles.
 8000340:	4a0c      	ldr	r2, [pc, #48]	; (8000374 <timer_init+0x4c>)
 8000342:	68bb      	ldr	r3, [r7, #8]
 8000344:	fbb2 f2f3 	udiv	r2, r2, r3
 8000348:	697b      	ldr	r3, [r7, #20]
 800034a:	629a      	str	r2, [r3, #40]	; 0x28
    tim->arr = period - 1U; // "period" of timer - updates every time cnt reaches arr
 800034c:	687b      	ldr	r3, [r7, #4]
 800034e:	1e5a      	subs	r2, r3, #1
 8000350:	697b      	ldr	r3, [r7, #20]
 8000352:	62da      	str	r2, [r3, #44]	; 0x2c

    tim->dier = 1U;
 8000354:	697b      	ldr	r3, [r7, #20]
 8000356:	2201      	movs	r2, #1
 8000358:	60da      	str	r2, [r3, #12]

    nvic_enable(TIM_IRQ_START_POS + (timer-2));
 800035a:	7bfb      	ldrb	r3, [r7, #15]
 800035c:	331a      	adds	r3, #26
 800035e:	b2db      	uxtb	r3, r3
 8000360:	4618      	mov	r0, r3
 8000362:	f000 f809 	bl	8000378 <nvic_enable>

    // enable counter //
    tim->cr[0] = 1U;
 8000366:	697b      	ldr	r3, [r7, #20]
 8000368:	2201      	movs	r2, #1
 800036a:	601a      	str	r2, [r3, #0]
}
 800036c:	bf00      	nop
 800036e:	3718      	adds	r7, #24
 8000370:	46bd      	mov	sp, r7
 8000372:	bd80      	pop	{r7, pc}
 8000374:	007a1200 	.word	0x007a1200

08000378 <nvic_enable>:
#include "nvic.h"

nvic_t *nvic = (nvic_t *)(NVIC_BASE);

void nvic_enable(uint8_t irq_pos) {
 8000378:	b480      	push	{r7}
 800037a:	b085      	sub	sp, #20
 800037c:	af00      	add	r7, sp, #0
 800037e:	4603      	mov	r3, r0
 8000380:	71fb      	strb	r3, [r7, #7]
	uint8_t idx = irq_pos / 32;
 8000382:	79fb      	ldrb	r3, [r7, #7]
 8000384:	095b      	lsrs	r3, r3, #5
 8000386:	73fb      	strb	r3, [r7, #15]
	uint8_t shift_by = irq_pos % 32;
 8000388:	79fb      	ldrb	r3, [r7, #7]
 800038a:	f003 031f 	and.w	r3, r3, #31
 800038e:	73bb      	strb	r3, [r7, #14]
	nvic->iser[idx] = (1 << shift_by);
 8000390:	7bbb      	ldrb	r3, [r7, #14]
 8000392:	2201      	movs	r2, #1
 8000394:	fa02 f103 	lsl.w	r1, r2, r3
 8000398:	4b04      	ldr	r3, [pc, #16]	; (80003ac <nvic_enable+0x34>)
 800039a:	681b      	ldr	r3, [r3, #0]
 800039c:	7bfa      	ldrb	r2, [r7, #15]
 800039e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 80003a2:	bf00      	nop
 80003a4:	3714      	adds	r7, #20
 80003a6:	46bd      	mov	sp, r7
 80003a8:	bc80      	pop	{r7}
 80003aa:	4770      	bx	lr
 80003ac:	080008dc 	.word	0x080008dc

080003b0 <get_gpio>:

gpio_t *gpio_a = (gpio_t *)(GPIOA_BASE);
gpio_t *gpio_b = (gpio_t *)(GPIOB_BASE);
gpio_t *gpio_c = (gpio_t *)(GPIOC_BASE);

gpio_t *get_gpio(uint8_t pin) {
 80003b0:	b480      	push	{r7}
 80003b2:	b083      	sub	sp, #12
 80003b4:	af00      	add	r7, sp, #0
 80003b6:	4603      	mov	r3, r0
 80003b8:	71fb      	strb	r3, [r7, #7]
    switch(pin >> 4) {
 80003ba:	79fb      	ldrb	r3, [r7, #7]
 80003bc:	091b      	lsrs	r3, r3, #4
 80003be:	b2db      	uxtb	r3, r3
 80003c0:	2b00      	cmp	r3, #0
 80003c2:	d002      	beq.n	80003ca <get_gpio+0x1a>
 80003c4:	2b01      	cmp	r3, #1
 80003c6:	d003      	beq.n	80003d0 <get_gpio+0x20>
 80003c8:	e005      	b.n	80003d6 <get_gpio+0x26>
        case 0: return gpio_a;
 80003ca:	4b06      	ldr	r3, [pc, #24]	; (80003e4 <get_gpio+0x34>)
 80003cc:	681b      	ldr	r3, [r3, #0]
 80003ce:	e004      	b.n	80003da <get_gpio+0x2a>
        case 1: return gpio_b;
 80003d0:	4b05      	ldr	r3, [pc, #20]	; (80003e8 <get_gpio+0x38>)
 80003d2:	681b      	ldr	r3, [r3, #0]
 80003d4:	e001      	b.n	80003da <get_gpio+0x2a>
        // case 2: return gpio_c;
        default: return gpio_c;
 80003d6:	4b05      	ldr	r3, [pc, #20]	; (80003ec <get_gpio+0x3c>)
 80003d8:	681b      	ldr	r3, [r3, #0]
    }
}
 80003da:	4618      	mov	r0, r3
 80003dc:	370c      	adds	r7, #12
 80003de:	46bd      	mov	sp, r7
 80003e0:	bc80      	pop	{r7}
 80003e2:	4770      	bx	lr
 80003e4:	080008e0 	.word	0x080008e0
 80003e8:	080008e4 	.word	0x080008e4
 80003ec:	080008e8 	.word	0x080008e8

080003f0 <pin_mode>:

void pin_mode(uint8_t pin, uint8_t mode) {
 80003f0:	b580      	push	{r7, lr}
 80003f2:	b086      	sub	sp, #24
 80003f4:	af00      	add	r7, sp, #0
 80003f6:	4603      	mov	r3, r0
 80003f8:	460a      	mov	r2, r1
 80003fa:	71fb      	strb	r3, [r7, #7]
 80003fc:	4613      	mov	r3, r2
 80003fe:	71bb      	strb	r3, [r7, #6]
    gpio_t *gpio = get_gpio(pin);
 8000400:	79fb      	ldrb	r3, [r7, #7]
 8000402:	4618      	mov	r0, r3
 8000404:	f7ff ffd4 	bl	80003b0 <get_gpio>
 8000408:	6178      	str	r0, [r7, #20]
    uint8_t bit = pin & PIN_MASK; // mask the input to get the pin number
 800040a:	79fb      	ldrb	r3, [r7, #7]
 800040c:	f003 030f 	and.w	r3, r3, #15
 8000410:	74fb      	strb	r3, [r7, #19]
    uint8_t shift_by = (bit % 8) * 4;
 8000412:	7cfb      	ldrb	r3, [r7, #19]
 8000414:	f003 0307 	and.w	r3, r3, #7
 8000418:	b2db      	uxtb	r3, r3
 800041a:	009b      	lsls	r3, r3, #2
 800041c:	74bb      	strb	r3, [r7, #18]
    uint8_t reg_idx = bit / 8; // get lo/hi control register index
 800041e:	7cfb      	ldrb	r3, [r7, #19]
 8000420:	08db      	lsrs	r3, r3, #3
 8000422:	747b      	strb	r3, [r7, #17]
    uint32_t config = gpio->cr[reg_idx] & ~(0xf << shift_by);
 8000424:	7c7a      	ldrb	r2, [r7, #17]
 8000426:	697b      	ldr	r3, [r7, #20]
 8000428:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800042c:	7cba      	ldrb	r2, [r7, #18]
 800042e:	210f      	movs	r1, #15
 8000430:	fa01 f202 	lsl.w	r2, r1, r2
 8000434:	43d2      	mvns	r2, r2
 8000436:	4013      	ands	r3, r2
 8000438:	60fb      	str	r3, [r7, #12]
    gpio->cr[reg_idx] = (config | (mode << shift_by));
 800043a:	79ba      	ldrb	r2, [r7, #6]
 800043c:	7cbb      	ldrb	r3, [r7, #18]
 800043e:	fa02 f303 	lsl.w	r3, r2, r3
 8000442:	4619      	mov	r1, r3
 8000444:	7c7a      	ldrb	r2, [r7, #17]
 8000446:	68fb      	ldr	r3, [r7, #12]
 8000448:	4319      	orrs	r1, r3
 800044a:	697b      	ldr	r3, [r7, #20]
 800044c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
 8000450:	bf00      	nop
 8000452:	3718      	adds	r7, #24
 8000454:	46bd      	mov	sp, r7
 8000456:	bd80      	pop	{r7, pc}

08000458 <led_toggle>:

void led_toggle(uint8_t pin) {
 8000458:	b580      	push	{r7, lr}
 800045a:	b084      	sub	sp, #16
 800045c:	af00      	add	r7, sp, #0
 800045e:	4603      	mov	r3, r0
 8000460:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 8000462:	79fb      	ldrb	r3, [r7, #7]
 8000464:	4618      	mov	r0, r3
 8000466:	f7ff ffa3 	bl	80003b0 <get_gpio>
 800046a:	60f8      	str	r0, [r7, #12]
    gpio->odr ^= LED_MASK(pin & PIN_MASK);
 800046c:	68fb      	ldr	r3, [r7, #12]
 800046e:	68db      	ldr	r3, [r3, #12]
 8000470:	79fa      	ldrb	r2, [r7, #7]
 8000472:	f002 020f 	and.w	r2, r2, #15
 8000476:	2101      	movs	r1, #1
 8000478:	fa01 f202 	lsl.w	r2, r1, r2
 800047c:	405a      	eors	r2, r3
 800047e:	68fb      	ldr	r3, [r7, #12]
 8000480:	60da      	str	r2, [r3, #12]
}
 8000482:	bf00      	nop
 8000484:	3710      	adds	r7, #16
 8000486:	46bd      	mov	sp, r7
 8000488:	bd80      	pop	{r7, pc}

0800048a <led_on>:

void led_on(uint8_t pin) {
 800048a:	b580      	push	{r7, lr}
 800048c:	b084      	sub	sp, #16
 800048e:	af00      	add	r7, sp, #0
 8000490:	4603      	mov	r3, r0
 8000492:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 8000494:	79fb      	ldrb	r3, [r7, #7]
 8000496:	4618      	mov	r0, r3
 8000498:	f7ff ff8a 	bl	80003b0 <get_gpio>
 800049c:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 800049e:	79fb      	ldrb	r3, [r7, #7]
 80004a0:	2b2d      	cmp	r3, #45	; 0x2d
 80004a2:	d10c      	bne.n	80004be <led_on+0x34>
 80004a4:	68fb      	ldr	r3, [r7, #12]
 80004a6:	68db      	ldr	r3, [r3, #12]
 80004a8:	79fa      	ldrb	r2, [r7, #7]
 80004aa:	f002 020f 	and.w	r2, r2, #15
 80004ae:	2101      	movs	r1, #1
 80004b0:	fa01 f202 	lsl.w	r2, r1, r2
 80004b4:	43d2      	mvns	r2, r2
 80004b6:	401a      	ands	r2, r3
 80004b8:	68fb      	ldr	r3, [r7, #12]
 80004ba:	60da      	str	r2, [r3, #12]
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
}
 80004bc:	e00a      	b.n	80004d4 <led_on+0x4a>
    else gpio->odr |= LED_MASK(pin & PIN_MASK);
 80004be:	68fb      	ldr	r3, [r7, #12]
 80004c0:	68db      	ldr	r3, [r3, #12]
 80004c2:	79fa      	ldrb	r2, [r7, #7]
 80004c4:	f002 020f 	and.w	r2, r2, #15
 80004c8:	2101      	movs	r1, #1
 80004ca:	fa01 f202 	lsl.w	r2, r1, r2
 80004ce:	431a      	orrs	r2, r3
 80004d0:	68fb      	ldr	r3, [r7, #12]
 80004d2:	60da      	str	r2, [r3, #12]
}
 80004d4:	bf00      	nop
 80004d6:	3710      	adds	r7, #16
 80004d8:	46bd      	mov	sp, r7
 80004da:	bd80      	pop	{r7, pc}

080004dc <led_off>:

void led_off(uint8_t pin) {
 80004dc:	b580      	push	{r7, lr}
 80004de:	b084      	sub	sp, #16
 80004e0:	af00      	add	r7, sp, #0
 80004e2:	4603      	mov	r3, r0
 80004e4:	71fb      	strb	r3, [r7, #7]
    gpio_t *gpio = get_gpio(pin);
 80004e6:	79fb      	ldrb	r3, [r7, #7]
 80004e8:	4618      	mov	r0, r3
 80004ea:	f7ff ff61 	bl	80003b0 <get_gpio>
 80004ee:	60f8      	str	r0, [r7, #12]
    if (pin == PC13) gpio->odr |= LED_MASK(pin & PIN_MASK);
 80004f0:	79fb      	ldrb	r3, [r7, #7]
 80004f2:	2b2d      	cmp	r3, #45	; 0x2d
 80004f4:	d10b      	bne.n	800050e <led_off+0x32>
 80004f6:	68fb      	ldr	r3, [r7, #12]
 80004f8:	68db      	ldr	r3, [r3, #12]
 80004fa:	79fa      	ldrb	r2, [r7, #7]
 80004fc:	f002 020f 	and.w	r2, r2, #15
 8000500:	2101      	movs	r1, #1
 8000502:	fa01 f202 	lsl.w	r2, r1, r2
 8000506:	431a      	orrs	r2, r3
 8000508:	68fb      	ldr	r3, [r7, #12]
 800050a:	60da      	str	r2, [r3, #12]
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
}
 800050c:	e00b      	b.n	8000526 <led_off+0x4a>
    else gpio->odr &= ~LED_MASK(pin & PIN_MASK);
 800050e:	68fb      	ldr	r3, [r7, #12]
 8000510:	68db      	ldr	r3, [r3, #12]
 8000512:	79fa      	ldrb	r2, [r7, #7]
 8000514:	f002 020f 	and.w	r2, r2, #15
 8000518:	2101      	movs	r1, #1
 800051a:	fa01 f202 	lsl.w	r2, r1, r2
 800051e:	43d2      	mvns	r2, r2
 8000520:	401a      	ands	r2, r3
 8000522:	68fb      	ldr	r3, [r7, #12]
 8000524:	60da      	str	r2, [r3, #12]
}
 8000526:	bf00      	nop
 8000528:	3710      	adds	r7, #16
 800052a:	46bd      	mov	sp, r7
 800052c:	bd80      	pop	{r7, pc}
 800052e:	bf00      	nop

08000530 <systick_handle>:
#include "systick.h"

systick_t *systick = (systick_t *)(SYSTICK_BASE);

uint32_t __IO cnt = 0;
void systick_handle(void) {
 8000530:	b480      	push	{r7}
 8000532:	af00      	add	r7, sp, #0
    cnt++;
 8000534:	4b04      	ldr	r3, [pc, #16]	; (8000548 <systick_handle+0x18>)
 8000536:	681b      	ldr	r3, [r3, #0]
 8000538:	3301      	adds	r3, #1
 800053a:	4a03      	ldr	r2, [pc, #12]	; (8000548 <systick_handle+0x18>)
 800053c:	6013      	str	r3, [r2, #0]
}
 800053e:	bf00      	nop
 8000540:	46bd      	mov	sp, r7
 8000542:	bc80      	pop	{r7}
 8000544:	4770      	bx	lr
 8000546:	bf00      	nop
 8000548:	20000000 	.word	0x20000000

0800054c <systick_init>:

void systick_init(uint32_t reload_val) {
 800054c:	b480      	push	{r7}
 800054e:	b083      	sub	sp, #12
 8000550:	af00      	add	r7, sp, #0
 8000552:	6078      	str	r0, [r7, #4]
    systick->reload = reload_val - 1U;
 8000554:	4b0a      	ldr	r3, [pc, #40]	; (8000580 <systick_init+0x34>)
 8000556:	681b      	ldr	r3, [r3, #0]
 8000558:	687a      	ldr	r2, [r7, #4]
 800055a:	3a01      	subs	r2, #1
 800055c:	605a      	str	r2, [r3, #4]
    systick->val = 0U;
 800055e:	4b08      	ldr	r3, [pc, #32]	; (8000580 <systick_init+0x34>)
 8000560:	681b      	ldr	r3, [r3, #0]
 8000562:	2200      	movs	r2, #0
 8000564:	609a      	str	r2, [r3, #8]
    cnt = 0;
 8000566:	4b07      	ldr	r3, [pc, #28]	; (8000584 <systick_init+0x38>)
 8000568:	2200      	movs	r2, #0
 800056a:	601a      	str	r2, [r3, #0]
    systick->ctrl = (TICKINT_EN | TICK_EN);
 800056c:	4b04      	ldr	r3, [pc, #16]	; (8000580 <systick_init+0x34>)
 800056e:	681b      	ldr	r3, [r3, #0]
 8000570:	2203      	movs	r2, #3
 8000572:	601a      	str	r2, [r3, #0]
}
 8000574:	bf00      	nop
 8000576:	370c      	adds	r7, #12
 8000578:	46bd      	mov	sp, r7
 800057a:	bc80      	pop	{r7}
 800057c:	4770      	bx	lr
 800057e:	bf00      	nop
 8000580:	080008ec 	.word	0x080008ec
 8000584:	20000000 	.word	0x20000000

08000588 <millis>:

uint32_t millis(void) {
 8000588:	b480      	push	{r7}
 800058a:	af00      	add	r7, sp, #0
    return cnt;
 800058c:	4b02      	ldr	r3, [pc, #8]	; (8000598 <millis+0x10>)
 800058e:	681b      	ldr	r3, [r3, #0]
}
 8000590:	4618      	mov	r0, r3
 8000592:	46bd      	mov	sp, r7
 8000594:	bc80      	pop	{r7}
 8000596:	4770      	bx	lr
 8000598:	20000000 	.word	0x20000000

0800059c <delay>:
#include "delay.h"
#include "systick.h"

void delay(uint64_t __IO t) {
 800059c:	b490      	push	{r4, r7}
 800059e:	b084      	sub	sp, #16
 80005a0:	af00      	add	r7, sp, #0
 80005a2:	e9c7 0100 	strd	r0, r1, [r7]
    for (uint64_t __IO i = 0; i < t; i++);
 80005a6:	f04f 0300 	mov.w	r3, #0
 80005aa:	f04f 0400 	mov.w	r4, #0
 80005ae:	e9c7 3402 	strd	r3, r4, [r7, #8]
 80005b2:	e006      	b.n	80005c2 <delay+0x26>
 80005b4:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 80005b8:	1c4b      	adds	r3, r1, #1
 80005ba:	f142 0400 	adc.w	r4, r2, #0
 80005be:	e9c7 3402 	strd	r3, r4, [r7, #8]
 80005c2:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
 80005c6:	e9d7 3400 	ldrd	r3, r4, [r7]
 80005ca:	42a2      	cmp	r2, r4
 80005cc:	bf08      	it	eq
 80005ce:	4299      	cmpeq	r1, r3
 80005d0:	d3f0      	bcc.n	80005b4 <delay+0x18>
}
 80005d2:	bf00      	nop
 80005d4:	3710      	adds	r7, #16
 80005d6:	46bd      	mov	sp, r7
 80005d8:	bc90      	pop	{r4, r7}
 80005da:	4770      	bx	lr

080005dc <systick_delay>:

void systick_delay(uint64_t __IO t) {
 80005dc:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 80005e0:	b084      	sub	sp, #16
 80005e2:	af00      	add	r7, sp, #0
 80005e4:	e9c7 0100 	strd	r0, r1, [r7]
    uint64_t start_t = millis();
 80005e8:	f7ff ffce 	bl	8000588 <millis>
 80005ec:	4603      	mov	r3, r0
 80005ee:	f04f 0400 	mov.w	r4, #0
 80005f2:	e9c7 3402 	strd	r3, r4, [r7, #8]
    while(millis() - start_t < t);
 80005f6:	bf00      	nop
 80005f8:	f7ff ffc6 	bl	8000588 <millis>
 80005fc:	4603      	mov	r3, r0
 80005fe:	469b      	mov	fp, r3
 8000600:	f04f 0c00 	mov.w	ip, #0
 8000604:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
 8000608:	4659      	mov	r1, fp
 800060a:	4662      	mov	r2, ip
 800060c:	1ac9      	subs	r1, r1, r3
 800060e:	eb62 0204 	sbc.w	r2, r2, r4
 8000612:	e9d7 3400 	ldrd	r3, r4, [r7]
 8000616:	42a2      	cmp	r2, r4
 8000618:	bf08      	it	eq
 800061a:	4299      	cmpeq	r1, r3
 800061c:	d3ec      	bcc.n	80005f8 <systick_delay+0x1c>
}
 800061e:	bf00      	nop
 8000620:	3710      	adds	r7, #16
 8000622:	46bd      	mov	sp, r7
 8000624:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}

08000628 <rcc_init>:
#include "rcc.h"

rcc_t *rcc = (rcc_t *)(RCC_BASE);

void rcc_init(void) {
 8000628:	b480      	push	{r7}
 800062a:	af00      	add	r7, sp, #0
    rcc->apbe1 |= (TIM2_EN); // enable timers
 800062c:	4b0d      	ldr	r3, [pc, #52]	; (8000664 <rcc_init+0x3c>)
 800062e:	681b      	ldr	r3, [r3, #0]
 8000630:	69da      	ldr	r2, [r3, #28]
 8000632:	4b0c      	ldr	r3, [pc, #48]	; (8000664 <rcc_init+0x3c>)
 8000634:	681b      	ldr	r3, [r3, #0]
 8000636:	f042 0201 	orr.w	r2, r2, #1
 800063a:	61da      	str	r2, [r3, #28]
    rcc->apbe2 |= (GPIOA_EN|GPIOB_EN|GPIOC_EN); // enable all GPIO pins
 800063c:	4b09      	ldr	r3, [pc, #36]	; (8000664 <rcc_init+0x3c>)
 800063e:	681b      	ldr	r3, [r3, #0]
 8000640:	699a      	ldr	r2, [r3, #24]
 8000642:	4b08      	ldr	r3, [pc, #32]	; (8000664 <rcc_init+0x3c>)
 8000644:	681b      	ldr	r3, [r3, #0]
 8000646:	f042 021c 	orr.w	r2, r2, #28
 800064a:	619a      	str	r2, [r3, #24]
    rcc->apbe2 |= USART1_EN;
 800064c:	4b05      	ldr	r3, [pc, #20]	; (8000664 <rcc_init+0x3c>)
 800064e:	681b      	ldr	r3, [r3, #0]
 8000650:	699a      	ldr	r2, [r3, #24]
 8000652:	4b04      	ldr	r3, [pc, #16]	; (8000664 <rcc_init+0x3c>)
 8000654:	681b      	ldr	r3, [r3, #0]
 8000656:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 800065a:	619a      	str	r2, [r3, #24]
}
 800065c:	bf00      	nop
 800065e:	46bd      	mov	sp, r7
 8000660:	bc80      	pop	{r7}
 8000662:	4770      	bx	lr
 8000664:	080008f0 	.word	0x080008f0

08000668 <reset_system>:
#include "gpio.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

void reset_system(void) {
 8000668:	b580      	push	{r7, lr}
 800066a:	b082      	sub	sp, #8
 800066c:	af00      	add	r7, sp, #0
    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 800066e:	2103      	movs	r1, #3
 8000670:	202d      	movs	r0, #45	; 0x2d
 8000672:	f7ff febd 	bl	80003f0 <pin_mode>
    for (uint8_t i = 0; i <= 5; i++) {
 8000676:	2300      	movs	r3, #0
 8000678:	71fb      	strb	r3, [r7, #7]
 800067a:	e00b      	b.n	8000694 <reset_system+0x2c>
        led_toggle(PC13);
 800067c:	202d      	movs	r0, #45	; 0x2d
 800067e:	f7ff feeb 	bl	8000458 <led_toggle>
        systick_delay(100);
 8000682:	f04f 0064 	mov.w	r0, #100	; 0x64
 8000686:	f04f 0100 	mov.w	r1, #0
 800068a:	f7ff ffa7 	bl	80005dc <systick_delay>
    for (uint8_t i = 0; i <= 5; i++) {
 800068e:	79fb      	ldrb	r3, [r7, #7]
 8000690:	3301      	adds	r3, #1
 8000692:	71fb      	strb	r3, [r7, #7]
 8000694:	79fb      	ldrb	r3, [r7, #7]
 8000696:	2b05      	cmp	r3, #5
 8000698:	d9f0      	bls.n	800067c <reset_system+0x14>
    }
    scb->aircr = (KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
 800069a:	4b07      	ldr	r3, [pc, #28]	; (80006b8 <reset_system+0x50>)
 800069c:	681b      	ldr	r3, [r3, #0]
 800069e:	68db      	ldr	r3, [r3, #12]
 80006a0:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 80006a4:	4b04      	ldr	r3, [pc, #16]	; (80006b8 <reset_system+0x50>)
 80006a6:	681a      	ldr	r2, [r3, #0]
 80006a8:	4b04      	ldr	r3, [pc, #16]	; (80006bc <reset_system+0x54>)
 80006aa:	430b      	orrs	r3, r1
 80006ac:	60d3      	str	r3, [r2, #12]
}
 80006ae:	bf00      	nop
 80006b0:	3708      	adds	r7, #8
 80006b2:	46bd      	mov	sp, r7
 80006b4:	bd80      	pop	{r7, pc}
 80006b6:	bf00      	nop
 80006b8:	080008f4 	.word	0x080008f4
 80006bc:	05fa0004 	.word	0x05fa0004

080006c0 <hard_fault_handle>:

void hard_fault_handle(void) {
 80006c0:	b580      	push	{r7, lr}
 80006c2:	af00      	add	r7, sp, #0
    reset_system();
 80006c4:	f7ff ffd0 	bl	8000668 <reset_system>
}
 80006c8:	bf00      	nop
 80006ca:	bd80      	pop	{r7, pc}

080006cc <mem_manage_handle>:

void mem_manage_handle(void) {
 80006cc:	b580      	push	{r7, lr}
 80006ce:	af00      	add	r7, sp, #0
    reset_system();
 80006d0:	f7ff ffca 	bl	8000668 <reset_system>
}
 80006d4:	bf00      	nop
 80006d6:	bd80      	pop	{r7, pc}

080006d8 <bus_fault_handle>:

void bus_fault_handle(void) {
 80006d8:	b580      	push	{r7, lr}
 80006da:	af00      	add	r7, sp, #0
    reset_system();
 80006dc:	f7ff ffc4 	bl	8000668 <reset_system>
}
 80006e0:	bf00      	nop
 80006e2:	bd80      	pop	{r7, pc}

080006e4 <main>:
#include "rcc.h"
#include "timer.h"
#include "systick.h"
#include "usart.h"

int main(void) {
 80006e4:	b580      	push	{r7, lr}
 80006e6:	af00      	add	r7, sp, #0
    rcc_init();
 80006e8:	f7ff ff9e 	bl	8000628 <rcc_init>

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 80006ec:	2103      	movs	r1, #3
 80006ee:	202d      	movs	r0, #45	; 0x2d
 80006f0:	f7ff fe7e 	bl	80003f0 <pin_mode>
    pin_mode(PA9, OUT_ALT_PUSH_PULL_50); // enable Tx pin for usart1
 80006f4:	210b      	movs	r1, #11
 80006f6:	2009      	movs	r0, #9
 80006f8:	f7ff fe7a 	bl	80003f0 <pin_mode>
    pin_mode(PA10, OUT_ALT_PUSH_PULL_50); // enable Rx pin for usart1
 80006fc:	210b      	movs	r1, #11
 80006fe:	200a      	movs	r0, #10
 8000700:	f7ff fe76 	bl	80003f0 <pin_mode>

    systick_init(1000U); // initialize systick at 1Hz
 8000704:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000708:	f7ff ff20 	bl	800054c <systick_init>
    init_serial(USART1, 115200U);
 800070c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 8000710:	2001      	movs	r0, #1
 8000712:	f000 f833 	bl	800077c <init_serial>

    while(1) {
        // char a = serial_r_c(USART1);
        serial_wr_s(USART1, "hello world", 1);
 8000716:	2201      	movs	r2, #1
 8000718:	4906      	ldr	r1, [pc, #24]	; (8000734 <main+0x50>)
 800071a:	2001      	movs	r0, #1
 800071c:	f000 f86e 	bl	80007fc <serial_wr_s>
        // systick_delay(1000);
        // serial_wr_c(USART1, a);
        led_toggle(PC13);
 8000720:	202d      	movs	r0, #45	; 0x2d
 8000722:	f7ff fe99 	bl	8000458 <led_toggle>
        systick_delay(1000);
 8000726:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800072a:	f04f 0100 	mov.w	r1, #0
 800072e:	f7ff ff55 	bl	80005dc <systick_delay>
        serial_wr_s(USART1, "hello world", 1);
 8000732:	e7f0      	b.n	8000716 <main+0x32>
 8000734:	080008b8 	.word	0x080008b8

08000738 <get_usart>:

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

usart_t *get_usart(uint8_t usart) {
 8000738:	b480      	push	{r7}
 800073a:	b083      	sub	sp, #12
 800073c:	af00      	add	r7, sp, #0
 800073e:	4603      	mov	r3, r0
 8000740:	71fb      	strb	r3, [r7, #7]
    switch(usart) {
 8000742:	79fb      	ldrb	r3, [r7, #7]
 8000744:	2b02      	cmp	r3, #2
 8000746:	d006      	beq.n	8000756 <get_usart+0x1e>
 8000748:	2b03      	cmp	r3, #3
 800074a:	d007      	beq.n	800075c <get_usart+0x24>
 800074c:	2b01      	cmp	r3, #1
 800074e:	d108      	bne.n	8000762 <get_usart+0x2a>
        case USART1: return usart1;
 8000750:	4b07      	ldr	r3, [pc, #28]	; (8000770 <get_usart+0x38>)
 8000752:	681b      	ldr	r3, [r3, #0]
 8000754:	e007      	b.n	8000766 <get_usart+0x2e>
        case USART2: return usart2;
 8000756:	4b07      	ldr	r3, [pc, #28]	; (8000774 <get_usart+0x3c>)
 8000758:	681b      	ldr	r3, [r3, #0]
 800075a:	e004      	b.n	8000766 <get_usart+0x2e>
        case USART3: return usart3;
 800075c:	4b06      	ldr	r3, [pc, #24]	; (8000778 <get_usart+0x40>)
 800075e:	681b      	ldr	r3, [r3, #0]
 8000760:	e001      	b.n	8000766 <get_usart+0x2e>
        default: return usart1;
 8000762:	4b03      	ldr	r3, [pc, #12]	; (8000770 <get_usart+0x38>)
 8000764:	681b      	ldr	r3, [r3, #0]
    }
}
 8000766:	4618      	mov	r0, r3
 8000768:	370c      	adds	r7, #12
 800076a:	46bd      	mov	sp, r7
 800076c:	bc80      	pop	{r7}
 800076e:	4770      	bx	lr
 8000770:	080008f8 	.word	0x080008f8
 8000774:	080008fc 	.word	0x080008fc
 8000778:	08000900 	.word	0x08000900

0800077c <init_serial>:

void init_serial(uint8_t usart, uint32_t baud) {
 800077c:	b580      	push	{r7, lr}
 800077e:	b084      	sub	sp, #16
 8000780:	af00      	add	r7, sp, #0
 8000782:	4603      	mov	r3, r0
 8000784:	6039      	str	r1, [r7, #0]
 8000786:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 8000788:	79fb      	ldrb	r3, [r7, #7]
 800078a:	4618      	mov	r0, r3
 800078c:	f7ff ffd4 	bl	8000738 <get_usart>
 8000790:	60f8      	str	r0, [r7, #12]
    serial->cr1 = (RE|TE|W_LEN_9|UE); // enable Tx/Rx, word length 9, usart
 8000792:	68fb      	ldr	r3, [r7, #12]
 8000794:	f243 020c 	movw	r2, #12300	; 0x300c
 8000798:	60da      	str	r2, [r3, #12]
    serial->cr2 = 0;
 800079a:	68fb      	ldr	r3, [r7, #12]
 800079c:	2200      	movs	r2, #0
 800079e:	611a      	str	r2, [r3, #16]
    serial->cr3 = 0;
 80007a0:	68fb      	ldr	r3, [r7, #12]
 80007a2:	2200      	movs	r2, #0
 80007a4:	615a      	str	r2, [r3, #20]
    serial->gtpr = 0;
 80007a6:	68fb      	ldr	r3, [r7, #12]
 80007a8:	2200      	movs	r2, #0
 80007aa:	619a      	str	r2, [r3, #24]
    serial->baud = HSI_MHZ / baud;
 80007ac:	4a04      	ldr	r2, [pc, #16]	; (80007c0 <init_serial+0x44>)
 80007ae:	683b      	ldr	r3, [r7, #0]
 80007b0:	fbb2 f2f3 	udiv	r2, r2, r3
 80007b4:	68fb      	ldr	r3, [r7, #12]
 80007b6:	609a      	str	r2, [r3, #8]
}
 80007b8:	bf00      	nop
 80007ba:	3710      	adds	r7, #16
 80007bc:	46bd      	mov	sp, r7
 80007be:	bd80      	pop	{r7, pc}
 80007c0:	007a1200 	.word	0x007a1200

080007c4 <serial_wr_c>:

bool serial_wr_c(uint8_t usart, char c) {
 80007c4:	b580      	push	{r7, lr}
 80007c6:	b084      	sub	sp, #16
 80007c8:	af00      	add	r7, sp, #0
 80007ca:	4603      	mov	r3, r0
 80007cc:	460a      	mov	r2, r1
 80007ce:	71fb      	strb	r3, [r7, #7]
 80007d0:	4613      	mov	r3, r2
 80007d2:	71bb      	strb	r3, [r7, #6]
    usart_t *serial = get_usart(usart);
 80007d4:	79fb      	ldrb	r3, [r7, #7]
 80007d6:	4618      	mov	r0, r3
 80007d8:	f7ff ffae 	bl	8000738 <get_usart>
 80007dc:	60f8      	str	r0, [r7, #12]
    serial->data = c;
 80007de:	79ba      	ldrb	r2, [r7, #6]
 80007e0:	68fb      	ldr	r3, [r7, #12]
 80007e2:	605a      	str	r2, [r3, #4]
    while(!(serial->sr & TC));
 80007e4:	bf00      	nop
 80007e6:	68fb      	ldr	r3, [r7, #12]
 80007e8:	681b      	ldr	r3, [r3, #0]
 80007ea:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80007ee:	2b00      	cmp	r3, #0
 80007f0:	d0f9      	beq.n	80007e6 <serial_wr_c+0x22>
    return 1;
 80007f2:	2301      	movs	r3, #1
}
 80007f4:	4618      	mov	r0, r3
 80007f6:	3710      	adds	r7, #16
 80007f8:	46bd      	mov	sp, r7
 80007fa:	bd80      	pop	{r7, pc}

080007fc <serial_wr_s>:

bool serial_wr_s(uint8_t usart, char *s, bool new_line) {
 80007fc:	b580      	push	{r7, lr}
 80007fe:	b082      	sub	sp, #8
 8000800:	af00      	add	r7, sp, #0
 8000802:	4603      	mov	r3, r0
 8000804:	6039      	str	r1, [r7, #0]
 8000806:	71fb      	strb	r3, [r7, #7]
 8000808:	4613      	mov	r3, r2
 800080a:	71bb      	strb	r3, [r7, #6]
    while(*s) serial_wr_c(usart, *s++);
 800080c:	e008      	b.n	8000820 <serial_wr_s+0x24>
 800080e:	683b      	ldr	r3, [r7, #0]
 8000810:	1c5a      	adds	r2, r3, #1
 8000812:	603a      	str	r2, [r7, #0]
 8000814:	781a      	ldrb	r2, [r3, #0]
 8000816:	79fb      	ldrb	r3, [r7, #7]
 8000818:	4611      	mov	r1, r2
 800081a:	4618      	mov	r0, r3
 800081c:	f7ff ffd2 	bl	80007c4 <serial_wr_c>
 8000820:	683b      	ldr	r3, [r7, #0]
 8000822:	781b      	ldrb	r3, [r3, #0]
 8000824:	2b00      	cmp	r3, #0
 8000826:	d1f2      	bne.n	800080e <serial_wr_s+0x12>
    if (!new_line) return 1;
 8000828:	79bb      	ldrb	r3, [r7, #6]
 800082a:	f083 0301 	eor.w	r3, r3, #1
 800082e:	b2db      	uxtb	r3, r3
 8000830:	2b00      	cmp	r3, #0
 8000832:	d001      	beq.n	8000838 <serial_wr_s+0x3c>
 8000834:	2301      	movs	r3, #1
 8000836:	e00a      	b.n	800084e <serial_wr_s+0x52>
    serial_wr_c(usart, '\r');
 8000838:	79fb      	ldrb	r3, [r7, #7]
 800083a:	210d      	movs	r1, #13
 800083c:	4618      	mov	r0, r3
 800083e:	f7ff ffc1 	bl	80007c4 <serial_wr_c>
    serial_wr_c(usart, '\n');
 8000842:	79fb      	ldrb	r3, [r7, #7]
 8000844:	210a      	movs	r1, #10
 8000846:	4618      	mov	r0, r3
 8000848:	f7ff ffbc 	bl	80007c4 <serial_wr_c>
    return 1;
 800084c:	2301      	movs	r3, #1
}
 800084e:	4618      	mov	r0, r3
 8000850:	3708      	adds	r7, #8
 8000852:	46bd      	mov	sp, r7
 8000854:	bd80      	pop	{r7, pc}

08000856 <serial_r_c>:

char serial_r_c(uint8_t usart) {
 8000856:	b580      	push	{r7, lr}
 8000858:	b084      	sub	sp, #16
 800085a:	af00      	add	r7, sp, #0
 800085c:	4603      	mov	r3, r0
 800085e:	71fb      	strb	r3, [r7, #7]
    usart_t *serial = get_usart(usart);
 8000860:	79fb      	ldrb	r3, [r7, #7]
 8000862:	4618      	mov	r0, r3
 8000864:	f7ff ff68 	bl	8000738 <get_usart>
 8000868:	60f8      	str	r0, [r7, #12]
    while(!(serial->sr & RXNE));
 800086a:	bf00      	nop
 800086c:	68fb      	ldr	r3, [r7, #12]
 800086e:	681b      	ldr	r3, [r3, #0]
 8000870:	f003 0320 	and.w	r3, r3, #32
 8000874:	2b00      	cmp	r3, #0
 8000876:	d0f9      	beq.n	800086c <serial_r_c+0x16>
    return (char)(serial->data & DATA_MASK);
 8000878:	68fb      	ldr	r3, [r7, #12]
 800087a:	685b      	ldr	r3, [r3, #4]
 800087c:	b2db      	uxtb	r3, r3
}
 800087e:	4618      	mov	r0, r3
 8000880:	3710      	adds	r7, #16
 8000882:	46bd      	mov	sp, r7
 8000884:	bd80      	pop	{r7, pc}

08000886 <serial_r_s>:

char *serial_r_s(uint8_t usart, char *buffer) {
 8000886:	b590      	push	{r4, r7, lr}
 8000888:	b083      	sub	sp, #12
 800088a:	af00      	add	r7, sp, #0
 800088c:	4603      	mov	r3, r0
 800088e:	6039      	str	r1, [r7, #0]
 8000890:	71fb      	strb	r3, [r7, #7]
    while(*buffer) {
 8000892:	e008      	b.n	80008a6 <serial_r_s+0x20>
        *buffer++ = serial_r_c(usart);
 8000894:	683c      	ldr	r4, [r7, #0]
 8000896:	1c63      	adds	r3, r4, #1
 8000898:	603b      	str	r3, [r7, #0]
 800089a:	79fb      	ldrb	r3, [r7, #7]
 800089c:	4618      	mov	r0, r3
 800089e:	f7ff ffda 	bl	8000856 <serial_r_c>
 80008a2:	4603      	mov	r3, r0
 80008a4:	7023      	strb	r3, [r4, #0]
    while(*buffer) {
 80008a6:	683b      	ldr	r3, [r7, #0]
 80008a8:	781b      	ldrb	r3, [r3, #0]
 80008aa:	2b00      	cmp	r3, #0
 80008ac:	d1f2      	bne.n	8000894 <serial_r_s+0xe>
    }
    return buffer;
 80008ae:	683b      	ldr	r3, [r7, #0]
}
 80008b0:	4618      	mov	r0, r3
 80008b2:	370c      	adds	r7, #12
 80008b4:	46bd      	mov	sp, r7
 80008b6:	bd90      	pop	{r4, r7, pc}
