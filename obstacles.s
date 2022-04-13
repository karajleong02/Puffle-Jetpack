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
	mov	r5, #0
	ldr	r4, .L6
	ldr	r8, .L6+4
	ldr	r7, .L6+8
	ldr	r6, .L6+12
.L2:
	str	r9, [r4, #4]
	mov	lr, pc
	bx	r8
	mov	lr, #2
	mov	ip, #14
	mov	r1, #16
	mov	r2, #1
	smull	r3, r10, r7, r0
	asr	r3, r0, #31
	add	r10, r10, r0
	rsb	r3, r3, r10, asr #6
	rsb	r3, r3, r3, lsl #5
	add	r9, r9, #57
	sub	r0, r0, r3, lsl lr
	add	r0, r0, #12
	cmp	r9, r6
	str	r5, [r4, #8]
	str	r5, [r4, #24]
	str	r5, [r4, #28]
	str	r5, [r4, #32]
	str	r5, [r4, #36]
	str	r5, [r4, #40]
	str	r5, [r4, #44]
	str	r0, [r4]
	str	lr, [r4, #12]
	str	ip, [r4, #16]
	str	r1, [r4, #20]
	str	r2, [r4, #48]
	add	r4, r4, #52
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	balloons
	.word	rand
	.word	-2078209981
	.word	441
	.size	initBalloons, .-initBalloons
	.align	2
	.global	updateBalloons
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBalloons, %function
updateBalloons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L22
	mov	fp, #1
	mov	r10, #0
	ldr	r5, .L22+4
	ldr	r9, .L22+8
	ldr	r7, .L22+12
	ldr	r8, .L22+16
	sub	sp, sp, #20
	add	r6, r4, #364
	b	.L11
.L12:
	add	r4, r4, #52
	cmp	r4, r6
	beq	.L21
.L11:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L12
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L10
	ldr	r3, [r8]
	str	fp, [r4, #44]
	str	r10, [r4, #48]
	add	r4, r4, #52
	sub	r3, r3, #1
	cmp	r4, r6
	str	r3, [r8]
	bne	.L11
.L21:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L10:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r4, #4]
	ldr	r2, [r7]
	sub	r3, r3, r2
	cmp	r3, #0
	strlt	r0, [r4, #48]
	b	.L12
.L23:
	.align	2
.L22:
	.word	balloons
	.word	puffle
	.word	collision
	.word	hOff
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
	push	{r4, lr}
	mov	r4, #5
	ldr	r2, .L30
	ldr	r3, .L30+4
	ldrh	lr, [r2]
	ldr	r2, .L30+8
	add	r0, r3, #364
.L27:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrheq	r1, [r2, #8]
	ldrne	ip, [r3]
	subne	r1, r1, lr
	orreq	r1, r1, #512
	orrne	r1, r1, #16384
	add	r3, r3, #52
	strheq	r1, [r2, #8]	@ movhi
	strhne	r4, [r2, #12]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L27
	pop	{r4, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	hOff
	.word	balloons
	.word	shadowOAM
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
	ldr	r4, .L36
	ldr	r7, .L36+4
	ldr	r6, .L36+8
	ldr	r5, .L36+12
.L33:
	str	r8, [r4, #4]
	mov	lr, pc
	bx	r7
	mov	ip, #12
	mov	r1, #14
	mov	r2, #1
	smull	r3, lr, r6, r0
	asr	r3, r0, #31
	add	lr, lr, r0
	rsb	r3, r3, lr, asr #6
	rsb	r3, r3, r3, lsl #5
	add	r8, r8, #140
	sub	r0, r0, r3, lsl #2
	add	r0, r0, ip
	cmp	r8, r5
	str	r9, [r4, #8]
	str	r9, [r4, #24]
	str	r0, [r4]
	str	ip, [r4, #12]
	str	r1, [r4, #16]
	str	r2, [r4, #20]
	add	r4, r4, #28
	bne	.L33
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L37:
	.align	2
.L36:
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
	mov	fp, #1
	mov	r10, #0
	ldr	r4, .L53
	ldr	r6, .L53+4
	ldr	r9, .L53+8
	ldr	r8, .L53+12
	sub	sp, sp, #20
	add	r7, r4, #84
.L43:
	ldr	r5, [r4, #24]
	cmp	r5, #0
	beq	.L52
.L40:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r4, #4]
	ldr	r2, [r8]
	sub	r3, r3, r2
	cmp	r3, #0
	strlt	r10, [r4, #20]
.L42:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L43
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L52:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #12]
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
	beq	.L40
	mov	r0, #1
	str	fp, [r4, #24]
	str	r5, [r4, #20]
	ldr	r3, .L53+16
	mov	lr, pc
	bx	r3
	b	.L40
.L54:
	.align	2
.L53:
	.word	fuels
	.word	puffle
	.word	collision
	.word	hOff
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
	push	{r4, lr}
	mov	r4, #2
	ldr	r2, .L61
	ldr	r3, .L61+4
	ldrh	lr, [r2]
	ldr	r2, .L61+8
	add	r0, r3, #24
.L58:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	ldrne	r1, [r2, #4]
	ldrheq	r1, [r3, #64]
	ldrne	ip, [r2]
	subne	r1, r1, lr
	orreq	r1, r1, #512
	orrne	r1, r1, #16384
	strheq	r1, [r3, #64]	@ movhi
	strhne	r4, [r3, #68]	@ movhi
	strhne	r1, [r3, #66]	@ movhi
	strhne	ip, [r3, #64]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #28
	bne	.L58
	pop	{r4, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	hOff
	.word	shadowOAM
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
	ldr	r4, .L67
	ldr	r7, .L67+4
	ldr	r6, .L67+8
	ldr	r5, .L67+12
.L64:
	str	r8, [r4, #4]
	mov	lr, pc
	bx	r7
	mov	ip, #6
	mov	r1, #14
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
	bne	.L64
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L68:
	.align	2
.L67:
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
	ldr	r4, .L84
	ldr	r8, .L84+4
	ldr	r6, .L84+8
	ldr	fp, .L84+12
	ldr	r10, .L84+16
	ldr	r9, .L84+20
	sub	sp, sp, #20
	add	r7, r4, #320
	b	.L74
.L72:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r4, #4]
	ldr	r2, [r8]
	sub	r3, r3, r2
	cmp	r3, #0
	movlt	r3, #0
	strlt	r3, [r4, #20]
.L73:
	add	r4, r4, #32
	cmp	r4, r7
	beq	.L83
.L74:
	ldr	r5, [r4, #28]
	cmp	r5, #0
	bne	.L72
	ldr	r0, [r6, #4]
	ldr	r1, [r6]
	smull	r2, r3, r10, r0
	smull	r2, ip, fp, r1
	add	r3, r3, r0
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #7
	asr	r2, r1, #31
	rsb	r2, r2, ip, asr #6
	add	r2, r2, r2, lsl #2
	ldr	lr, [r4]
	rsb	r3, r3, r3, lsl #4
	sub	r1, r1, r2, lsl #5
	ldr	r2, [r4, #4]
	ldr	ip, [r4, #16]
	sub	r0, r0, r3, lsl #4
	ldr	r3, [r4, #12]
	stm	sp, {r2, lr}
	str	ip, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	ip, .L84+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L72
	mov	r2, #1
	ldr	r3, [r9]
	str	r5, [r4, #20]
	str	r2, [r4, #28]
	add	r4, r4, #32
	add	r3, r3, #5
	cmp	r4, r7
	str	r3, [r9]
	bne	.L74
.L83:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	coins
	.word	hOff
	.word	puffle
	.word	1717986919
	.word	-2004318071
	.word	score
	.word	collision
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
	push	{r4, r5, lr}
	mov	r5, #4
	ldr	r2, .L94
	ldr	r3, .L94+4
	ldrh	r4, [r2]
	ldr	lr, .L94+8
	ldr	r2, .L94+12
	add	ip, r3, #80
.L91:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	ldmne	r2, {r0, r1}
	ldrheq	r1, [r3, #88]
	orrne	r0, r0, lr
	orreq	r1, r1, #512
	subne	r1, r1, r4
	strheq	r1, [r3, #88]	@ movhi
	strhne	r5, [r3, #92]	@ movhi
	strhne	r0, [r3, #88]	@ movhi
	strhne	r1, [r3, #90]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	bne	.L91
	pop	{r4, r5, lr}
	bx	lr
.L95:
	.align	2
.L94:
	.word	hOff
	.word	shadowOAM
	.word	-32768
	.word	coins
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
	.comm	coins,320,4
	.comm	fuels,84,4
	.comm	balloons,364,4
	.comm	bullets,140,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
