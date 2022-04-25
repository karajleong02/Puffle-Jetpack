	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"obstacles.c"
	.text
	.align	2
	.global	initBalloons
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBalloons, %function
initBalloons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #42
	ldr	r4, .L6
	ldr	r5, .L6+4
	ldr	r8, .L6+8
	ldr	r7, .L6+12
	ldr	r6, .L6+16
.L2:
	str	r9, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	ip, #2
	mov	r10, #0
	mov	r1, #13
	mov	r2, #32
	smull	r3, lr, r8, r0
	asr	r3, r0, #31
	add	lr, lr, r0
	rsb	r3, r3, lr, asr #6
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl ip
	add	r0, r0, #12
	str	ip, [r4, #12]
	str	r1, [r4, #16]
	str	r2, [r4, #20]
	str	r0, [r4]
	str	r10, [r4, #8]
	str	r10, [r4, #24]
	mov	lr, pc
	bx	r5
	mov	r2, #1
	mov	r1, #5
	smull	r3, ip, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr r2
	add	r9, r9, #57
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	cmp	r9, r6
	str	r10, [r4, #36]
	str	r0, [r4, #28]
	str	r1, [r4, #32]
	str	r2, [r4, #40]
	add	r4, r4, #44
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	balloons
	.word	rand
	.word	-2078209981
	.word	1717986919
	.word	441
	.size	initBalloons, .-initBalloons
	.global	__aeabi_idivmod
	.align	2
	.global	updateBalloons
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBalloons, %function
updateBalloons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L25
	ldr	r5, .L25+4
	ldr	r6, .L25+8
	ldr	r9, .L25+12
	ldr	r8, .L25+16
	ldr	fp, .L25+20
	ldr	r10, .L25+24
	sub	sp, sp, #28
	add	r7, r4, #308
	b	.L14
.L9:
	add	r4, r4, #44
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L23
.L14:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L9
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L24
.L10:
	ldr	r3, [r4, #4]
	ldr	r2, [r8]
	sub	r3, r3, r2
	cmp	r3, #0
	movlt	r3, #0
	strlt	r3, [r4, #40]
	ldr	r3, [r4, #24]
	cmp	r3, #49
	movgt	r3, #0
	strgt	r3, [r4, #24]
	bgt	.L9
	mla	r2, fp, r3, r10
	ldr	r1, .L25+28
	cmp	r2, r1
	bhi	.L13
	ldr	r0, [r4, #28]
	str	r3, [sp, #20]
	ldr	r2, .L25+32
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r2
	ldr	r3, [sp, #20]
	str	r1, [r4, #28]
.L13:
	add	r3, r3, #1
	str	r3, [r4, #24]
	add	r4, r4, #44
	cmp	r4, r7
	add	r5, r5, #8
	bne	.L14
.L23:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L24:
	mov	r2, #0
	mov	ip, #1
	ldrh	r3, [r5, #8]
	ldr	r1, .L25+36
	orr	r3, r3, #512
	strh	r3, [r5, #8]	@ movhi
	str	r2, [r4, #40]
	ldr	r3, .L25+40
	ldr	r1, [r1]
	ldr	r0, .L25+44
	str	ip, [r4, #36]
	mov	lr, pc
	bx	r3
	ldr	r2, .L25+48
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	b	.L10
.L26:
	.align	2
.L25:
	.word	balloons
	.word	shadowOAM
	.word	puffle
	.word	collision
	.word	hOff
	.word	-1030792151
	.word	85899345
	.word	171798690
	.word	__aeabi_idivmod
	.word	balloonPop_length
	.word	playSoundB
	.word	balloonPop_data
	.word	lives
	.size	updateBalloons, .-updateBalloons
	.align	2
	.global	drawBalloons
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBalloons, %function
drawBalloons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L35
	ldr	r3, .L35+4
	push	{r4, r5, r6, lr}
	add	ip, r3, #308
	ldrh	r5, [r2]
	ldr	lr, .L35+8
	ldr	r2, .L35+12
	ldr	r4, .L35+16
	b	.L30
.L34:
	ldrh	r1, [r2, #8]
	add	r3, r3, #44
	orr	r1, r1, #512
	cmp	r3, ip
	strh	r1, [r2, #8]	@ movhi
	add	r2, r2, #8
	beq	.L33
.L30:
	ldr	r1, [r3, #40]
	cmp	r1, #0
	beq	.L34
	ldr	r1, [r3, #4]
	ldr	r0, [r3, #28]
	ldrb	r6, [r3]	@ zero_extendqisi2
	sub	r1, r1, r5
	and	r1, r1, r4
	lsl	r0, r0, #7
	add	r3, r3, #44
	orr	r1, r1, lr
	add	r0, r0, #68
	orr	r6, r6, lr
	cmp	r3, ip
	strh	r1, [r2, #10]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	strh	r6, [r2, #8]	@ movhi
	add	r2, r2, #8
	bne	.L30
.L33:
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	hOff
	.word	balloons
	.word	-32768
	.word	shadowOAM
	.word	511
	.size	drawBalloons, .-drawBalloons
	.align	2
	.global	initFuel
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFuel, %function
initFuel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #97
	mov	r9, #0
	ldr	r4, .L41
	ldr	r7, .L41+4
	ldr	r6, .L41+8
	ldr	r5, .L41+12
.L38:
	str	r8, [r4, #4]
	mov	lr, pc
	bx	r7
	mov	ip, #10
	mov	r1, #15
	mov	r2, #1
	smull	r3, lr, r6, r0
	asr	r3, r0, #31
	add	lr, lr, r0
	rsb	r3, r3, lr, asr #6
	rsb	r3, r3, r3, lsl #5
	add	r8, r8, #140
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #12
	cmp	r8, r5
	str	r9, [r4, #8]
	str	r9, [r4, #24]
	str	r0, [r4]
	str	ip, [r4, #12]
	str	r1, [r4, #16]
	str	r2, [r4, #20]
	add	r4, r4, #28
	bne	.L38
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	fuels
	.word	rand
	.word	-2078209981
	.word	517
	.size	initFuel, .-initFuel
	.align	2
	.global	updateFuel
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFuel, %function
updateFuel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L58
	ldr	r5, .L58+4
	ldr	r7, .L58+8
	ldr	r9, .L58+12
	ldr	fp, .L58+16
	ldr	r10, .L58+20
	sub	sp, sp, #20
	add	r8, r4, #84
.L48:
	ldr	r6, [r4, #24]
	cmp	r6, #0
	beq	.L57
.L45:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	ldr	r2, .L58+24
	beq	.L47
	ldr	r2, [r2]
	ldr	r3, [r4, #4]
	sub	r3, r3, r2
	cmp	r3, #0
	movlt	r3, #0
	strlt	r3, [r4, #20]
.L47:
	add	r4, r4, #28
	cmp	r4, r8
	add	r5, r5, #8
	bne	.L48
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L57:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #12]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L45
	mov	r3, #1
	ldrh	ip, [r5, #64]
	orr	ip, ip, #512
	mov	r0, r10
	str	r3, [r4, #24]
	mov	r2, r6
	ldr	r1, [fp]
	str	r6, [r4, #20]
	strh	ip, [r5, #64]	@ movhi
	ldr	r3, .L58+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r0, r3
	ldr	r3, .L58+32
	mov	lr, pc
	bx	r3
	b	.L45
.L59:
	.align	2
.L58:
	.word	fuels
	.word	shadowOAM
	.word	puffle
	.word	collision
	.word	fuelCollect_length
	.word	fuelCollect_data
	.word	hOff
	.word	playSoundB
	.word	setFuelLevel
	.size	updateFuel, .-updateFuel
	.align	2
	.global	drawFuel
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFuel, %function
drawFuel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #66
	ldr	r2, .L66
	ldr	r3, .L66+4
	ldrh	r4, [r2]
	ldr	lr, .L66+8
	ldr	r2, .L66+12
	add	r0, r3, #24
.L63:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	bne	.L61
	ldrh	r1, [r3, #64]
	orr	r1, r1, #512
	strh	r1, [r3, #64]	@ movhi
.L62:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #28
	bne	.L63
	pop	{r4, r5, lr}
	bx	lr
.L61:
	ldr	r1, [r2, #4]
	sub	r1, r1, r4
	ldrb	ip, [r2]	@ zero_extendqisi2
	and	r1, r1, lr
	orr	r1, r1, #16384
	strh	r5, [r3, #68]	@ movhi
	strh	r1, [r3, #66]	@ movhi
	strh	ip, [r3, #64]	@ movhi
	b	.L62
.L67:
	.align	2
.L66:
	.word	hOff
	.word	shadowOAM
	.word	511
	.word	fuels
	.size	drawFuel, .-drawFuel
	.align	2
	.global	initCoin
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCoin, %function
initCoin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #70
	mov	r9, #0
	ldr	r4, .L72
	ldr	r7, .L72+4
	ldr	r6, .L72+8
	ldr	r5, .L72+12
.L69:
	str	r8, [r4, #4]
	mov	lr, pc
	bx	r7
	mov	ip, #6
	mov	r1, #13
	mov	r2, #1
	smull	r3, lr, r6, r0
	asr	r3, r0, #31
	add	lr, lr, r0
	rsb	r3, r3, lr, asr ip
	rsb	r3, r3, r3, lsl #5
	add	r8, r8, #42
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #12
	cmp	r8, r5
	str	r9, [r4, #8]
	str	r9, [r4, #28]
	str	r0, [r4]
	str	ip, [r4, #12]
	str	r1, [r4, #16]
	str	r2, [r4, #20]
	add	r4, r4, #32
	bne	.L69
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	coins
	.word	rand
	.word	-2078209981
	.word	490
	.size	initCoin, .-initCoin
	.align	2
	.global	initObstacles
	.syntax unified
	.arm
	.fpu softvfp
	.type	initObstacles, %function
initObstacles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	initBalloons
	bl	initFuel
	pop	{r4, lr}
	b	initCoin
	.size	initObstacles, .-initObstacles
	.align	2
	.global	updateCoin
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCoin, %function
updateCoin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L91
	ldr	r5, .L91+4
	ldr	r7, .L91+8
	ldr	r9, .L91+12
	ldr	fp, .L91+16
	ldr	r10, .L91+20
	sub	sp, sp, #20
	add	r8, r4, #320
	b	.L81
.L78:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	ldr	r2, .L91+24
	beq	.L80
	ldr	r2, [r2]
	ldr	r3, [r4, #4]
	sub	r3, r3, r2
	cmp	r3, #0
	movlt	r3, #0
	strlt	r3, [r4, #20]
.L80:
	add	r4, r4, #32
	cmp	r4, r8
	add	r5, r5, #8
	beq	.L90
.L81:
	ldr	r6, [r4, #28]
	cmp	r6, #0
	bne	.L78
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #12]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L78
	mov	ip, #1
	ldrh	r3, [r5]
	ldr	r1, .L91+28
	orr	r3, r3, #512
	strh	r3, [r5]	@ movhi
	mov	r2, r6
	ldr	r3, .L91+32
	mov	r0, fp
	str	r6, [r4, #20]
	ldr	r1, [r1]
	str	ip, [r4, #28]
	mov	lr, pc
	bx	r3
	ldr	r3, [r10]
	add	r3, r3, #5
	str	r3, [r10]
	b	.L78
.L90:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	coins
	.word	shadowOAM+88
	.word	puffle
	.word	collision
	.word	coinCollect_data
	.word	score
	.word	hOff
	.word	coinCollect_length
	.word	playSoundB
	.size	updateCoin, .-updateCoin
	.align	2
	.global	updateObstacles
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObstacles, %function
updateObstacles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateBalloons
	bl	updateCoin
	pop	{r4, lr}
	b	updateFuel
	.size	updateObstacles, .-updateObstacles
	.align	2
	.global	drawCoin
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCoin, %function
drawCoin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L103
	ldr	r3, .L103+4
	push	{r4, r5, lr}
	add	r0, r3, #80
	ldrh	r4, [r2]
	mov	r5, #64
	ldr	r2, .L103+8
	ldr	lr, .L103+12
	b	.L98
.L102:
	ldrh	r1, [r3, #88]
	orr	r1, r1, #512
	strh	r1, [r3, #88]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	beq	.L101
.L98:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	beq	.L102
	ldr	r1, [r2, #4]
	sub	r1, r1, r4
	ldrb	ip, [r2]	@ zero_extendqisi2
	and	r1, r1, lr
	orr	r1, r1, #16384
	strh	r5, [r3, #92]	@ movhi
	strh	r1, [r3, #90]	@ movhi
	strh	ip, [r3, #88]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L98
.L101:
	pop	{r4, r5, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	hOff
	.word	shadowOAM
	.word	coins
	.word	511
	.size	drawCoin, .-drawCoin
	.align	2
	.global	drawObstacles
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawObstacles, %function
drawObstacles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawBalloons
	bl	drawCoin
	pop	{r4, lr}
	b	drawFuel
	.size	drawObstacles, .-drawObstacles
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	coins,320,4
	.comm	fuels,84,4
	.comm	balloons,308,4
	.comm	bullets,140,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
