
build/blinky.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <none-0x150>:
 8000000:	20005000 	.word	0x20005000
 8000004:	08000153 	.word	0x08000153
 8000008:	08000151 	.word	0x08000151
 800000c:	080006a1 	.word	0x080006a1
 8000010:	080006ad 	.word	0x080006ad
 8000014:	080006b9 	.word	0x080006b9
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
 8000152:	f000 fab7 	bl	80006c4 <main>
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
    case TIM2:
        return tim2;
 8000188:	4b0c      	ldr	r3, [pc, #48]	; (80001bc <get_timer+0x64>)
 800018a:	681b      	ldr	r3, [r3, #0]
 800018c:	e010      	b.n	80001b0 <get_timer+0x58>
    case TIM3:
        return tim3;
 800018e:	4b0c      	ldr	r3, [pc, #48]	; (80001c0 <get_timer+0x68>)
 8000190:	681b      	ldr	r3, [r3, #0]
 8000192:	e00d      	b.n	80001b0 <get_timer+0x58>
    case TIM4:
        return tim4;
 8000194:	4b0b      	ldr	r3, [pc, #44]	; (80001c4 <get_timer+0x6c>)
 8000196:	681b      	ldr	r3, [r3, #0]
 8000198:	e00a      	b.n	80001b0 <get_timer+0x58>
    case TIM5:
        return tim5;
 800019a:	4b0b      	ldr	r3, [pc, #44]	; (80001c8 <get_timer+0x70>)
 800019c:	681b      	ldr	r3, [r3, #0]
 800019e:	e007      	b.n	80001b0 <get_timer+0x58>
    case TIM6:
        return tim6;
 80001a0:	4b0a      	ldr	r3, [pc, #40]	; (80001cc <get_timer+0x74>)
 80001a2:	681b      	ldr	r3, [r3, #0]
 80001a4:	e004      	b.n	80001b0 <get_timer+0x58>
    case TIM7:
        return tim7;
 80001a6:	4b0a      	ldr	r3, [pc, #40]	; (80001d0 <get_timer+0x78>)
 80001a8:	681b      	ldr	r3, [r3, #0]
 80001aa:	e001      	b.n	80001b0 <get_timer+0x58>
    default:
        return tim2;
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
 80001bc:	08000768 	.word	0x08000768
 80001c0:	0800076c 	.word	0x0800076c
 80001c4:	08000770 	.word	0x08000770
 80001c8:	08000774 	.word	0x08000774
 80001cc:	08000778 	.word	0x08000778
 80001d0:	0800077c 	.word	0x0800077c

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
 80001e8:	08000768 	.word	0x08000768

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
 8000204:	0800076c 	.word	0x0800076c

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
 800021c:	08000770 	.word	0x08000770

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
 8000234:	08000774 	.word	0x08000774

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
 800024c:	08000778 	.word	0x08000778

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
 8000264:	0800077c 	.word	0x0800077c

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
 80003ac:	08000780 	.word	0x08000780

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
 80003e4:	08000784 	.word	0x08000784
 80003e8:	08000788 	.word	0x08000788
 80003ec:	0800078c 	.word	0x0800078c

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
 8000580:	08000790 	.word	0x08000790
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
    rcc->apbe1 = (TIM2_EN|TIM3_EN|TIM4_EN); // enable timers
 800062c:	4b05      	ldr	r3, [pc, #20]	; (8000644 <rcc_init+0x1c>)
 800062e:	681b      	ldr	r3, [r3, #0]
 8000630:	2207      	movs	r2, #7
 8000632:	61da      	str	r2, [r3, #28]
    rcc->apbe2 = (GPIOA_EN|GPIOB_EN|GPIOC_EN); // enable all GPIO pins
 8000634:	4b03      	ldr	r3, [pc, #12]	; (8000644 <rcc_init+0x1c>)
 8000636:	681b      	ldr	r3, [r3, #0]
 8000638:	221c      	movs	r2, #28
 800063a:	619a      	str	r2, [r3, #24]
}
 800063c:	bf00      	nop
 800063e:	46bd      	mov	sp, r7
 8000640:	bc80      	pop	{r7}
 8000642:	4770      	bx	lr
 8000644:	08000794 	.word	0x08000794

08000648 <reset_system>:
#include "gpio.h"
#include "delay.h"

scb_t *scb = (scb_t *)(SCB_BASE);

void reset_system(void) {
 8000648:	b580      	push	{r7, lr}
 800064a:	b082      	sub	sp, #8
 800064c:	af00      	add	r7, sp, #0
    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 800064e:	2103      	movs	r1, #3
 8000650:	202d      	movs	r0, #45	; 0x2d
 8000652:	f7ff fecd 	bl	80003f0 <pin_mode>
    for (uint8_t i = 0; i <= 5; i++) {
 8000656:	2300      	movs	r3, #0
 8000658:	71fb      	strb	r3, [r7, #7]
 800065a:	e00b      	b.n	8000674 <reset_system+0x2c>
        led_toggle(PC13);
 800065c:	202d      	movs	r0, #45	; 0x2d
 800065e:	f7ff fefb 	bl	8000458 <led_toggle>
        systick_delay(100);
 8000662:	f04f 0064 	mov.w	r0, #100	; 0x64
 8000666:	f04f 0100 	mov.w	r1, #0
 800066a:	f7ff ffb7 	bl	80005dc <systick_delay>
    for (uint8_t i = 0; i <= 5; i++) {
 800066e:	79fb      	ldrb	r3, [r7, #7]
 8000670:	3301      	adds	r3, #1
 8000672:	71fb      	strb	r3, [r7, #7]
 8000674:	79fb      	ldrb	r3, [r7, #7]
 8000676:	2b05      	cmp	r3, #5
 8000678:	d9f0      	bls.n	800065c <reset_system+0x14>
    }
    scb->aircr = (KEY|(scb->aircr&PRIORITY)|SYSRESETREQ);
 800067a:	4b07      	ldr	r3, [pc, #28]	; (8000698 <reset_system+0x50>)
 800067c:	681b      	ldr	r3, [r3, #0]
 800067e:	68db      	ldr	r3, [r3, #12]
 8000680:	f403 61e0 	and.w	r1, r3, #1792	; 0x700
 8000684:	4b04      	ldr	r3, [pc, #16]	; (8000698 <reset_system+0x50>)
 8000686:	681a      	ldr	r2, [r3, #0]
 8000688:	4b04      	ldr	r3, [pc, #16]	; (800069c <reset_system+0x54>)
 800068a:	430b      	orrs	r3, r1
 800068c:	60d3      	str	r3, [r2, #12]
}
 800068e:	bf00      	nop
 8000690:	3708      	adds	r7, #8
 8000692:	46bd      	mov	sp, r7
 8000694:	bd80      	pop	{r7, pc}
 8000696:	bf00      	nop
 8000698:	08000798 	.word	0x08000798
 800069c:	05fa0004 	.word	0x05fa0004

080006a0 <hard_fault_handle>:

void hard_fault_handle(void) {
 80006a0:	b580      	push	{r7, lr}
 80006a2:	af00      	add	r7, sp, #0
    reset_system();
 80006a4:	f7ff ffd0 	bl	8000648 <reset_system>
}
 80006a8:	bf00      	nop
 80006aa:	bd80      	pop	{r7, pc}

080006ac <mem_manage_handle>:

void mem_manage_handle(void) {
 80006ac:	b580      	push	{r7, lr}
 80006ae:	af00      	add	r7, sp, #0
    reset_system();
 80006b0:	f7ff ffca 	bl	8000648 <reset_system>
}
 80006b4:	bf00      	nop
 80006b6:	bd80      	pop	{r7, pc}

080006b8 <bus_fault_handle>:

void bus_fault_handle(void) {
 80006b8:	b580      	push	{r7, lr}
 80006ba:	af00      	add	r7, sp, #0
    reset_system();
 80006bc:	f7ff ffc4 	bl	8000648 <reset_system>
}
 80006c0:	bf00      	nop
 80006c2:	bd80      	pop	{r7, pc}

080006c4 <main>:
#include "rcc.h"
#include "timer.h"
#include "systick.h"
#include "usart.h"

int main(void) {
 80006c4:	b580      	push	{r7, lr}
 80006c6:	af00      	add	r7, sp, #0
    rcc_init();
 80006c8:	f7ff ffae 	bl	8000628 <rcc_init>

    pin_mode(PC13, OUT_GP_PUSH_PULL_50);
 80006cc:	2103      	movs	r1, #3
 80006ce:	202d      	movs	r0, #45	; 0x2d
 80006d0:	f7ff fe8e 	bl	80003f0 <pin_mode>

    systick_init(1000U); // initialize systick at 1Hz
 80006d4:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80006d8:	f7ff ff38 	bl	800054c <systick_init>
    init_usart();
 80006dc:	f000 f80e 	bl	80006fc <init_usart>

    while(1) {
        led_toggle(PC13);
 80006e0:	202d      	movs	r0, #45	; 0x2d
 80006e2:	f7ff feb9 	bl	8000458 <led_toggle>
        send('a');
 80006e6:	2061      	movs	r0, #97	; 0x61
 80006e8:	f000 f826 	bl	8000738 <send>
        systick_delay(1000);
 80006ec:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80006f0:	f04f 0100 	mov.w	r1, #0
 80006f4:	f7ff ff72 	bl	80005dc <systick_delay>
        led_toggle(PC13);
 80006f8:	e7f2      	b.n	80006e0 <main+0x1c>
	...

080006fc <init_usart>:

usart_t *usart1 = (usart_t *)(UART1_BASE);
usart_t *usart2 = (usart_t *)(UART2_BASE);
usart_t *usart3 = (usart_t *)(UART3_BASE);

void init_usart(void) {
 80006fc:	b480      	push	{r7}
 80006fe:	af00      	add	r7, sp, #0
    usart1->cr1 = (RE|TE|PCE|W_LEN_9|UE);
 8000700:	4b0c      	ldr	r3, [pc, #48]	; (8000734 <init_usart+0x38>)
 8000702:	681b      	ldr	r3, [r3, #0]
 8000704:	f243 420c 	movw	r2, #13324	; 0x340c
 8000708:	60da      	str	r2, [r3, #12]
    usart1->cr2 = 0;
 800070a:	4b0a      	ldr	r3, [pc, #40]	; (8000734 <init_usart+0x38>)
 800070c:	681b      	ldr	r3, [r3, #0]
 800070e:	2200      	movs	r2, #0
 8000710:	611a      	str	r2, [r3, #16]
    usart1->cr3 = 0;
 8000712:	4b08      	ldr	r3, [pc, #32]	; (8000734 <init_usart+0x38>)
 8000714:	681b      	ldr	r3, [r3, #0]
 8000716:	2200      	movs	r2, #0
 8000718:	615a      	str	r2, [r3, #20]
    usart1->gtpr = 0;
 800071a:	4b06      	ldr	r3, [pc, #24]	; (8000734 <init_usart+0x38>)
 800071c:	681b      	ldr	r3, [r3, #0]
 800071e:	2200      	movs	r2, #0
 8000720:	619a      	str	r2, [r3, #24]
    usart1->baud = HSI_MHZ / 115200;
 8000722:	4b04      	ldr	r3, [pc, #16]	; (8000734 <init_usart+0x38>)
 8000724:	681b      	ldr	r3, [r3, #0]
 8000726:	2245      	movs	r2, #69	; 0x45
 8000728:	609a      	str	r2, [r3, #8]
}
 800072a:	bf00      	nop
 800072c:	46bd      	mov	sp, r7
 800072e:	bc80      	pop	{r7}
 8000730:	4770      	bx	lr
 8000732:	bf00      	nop
 8000734:	0800079c 	.word	0x0800079c

08000738 <send>:

void send(char c) {
 8000738:	b480      	push	{r7}
 800073a:	b083      	sub	sp, #12
 800073c:	af00      	add	r7, sp, #0
 800073e:	4603      	mov	r3, r0
 8000740:	71fb      	strb	r3, [r7, #7]
    while(!(usart1->sr&TXE));
 8000742:	bf00      	nop
 8000744:	4b07      	ldr	r3, [pc, #28]	; (8000764 <send+0x2c>)
 8000746:	681b      	ldr	r3, [r3, #0]
 8000748:	681b      	ldr	r3, [r3, #0]
 800074a:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800074e:	2b00      	cmp	r3, #0
 8000750:	d0f8      	beq.n	8000744 <send+0xc>
    usart1->data = c;
 8000752:	4b04      	ldr	r3, [pc, #16]	; (8000764 <send+0x2c>)
 8000754:	681b      	ldr	r3, [r3, #0]
 8000756:	79fa      	ldrb	r2, [r7, #7]
 8000758:	605a      	str	r2, [r3, #4]
}
 800075a:	bf00      	nop
 800075c:	370c      	adds	r7, #12
 800075e:	46bd      	mov	sp, r7
 8000760:	bc80      	pop	{r7}
 8000762:	4770      	bx	lr
 8000764:	0800079c 	.word	0x0800079c
