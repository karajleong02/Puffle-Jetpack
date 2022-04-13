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
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldr	r2, .L16
	ldr	r3, .L16+4
	ldr	r0, [r2]
	add	r1, r3, #364
.L13:
	ldr	r2, [r3, #44]
	cmp	r2, #0
	bne	.L9
	ldr	r2, [r3, #4]
	cmn	r0, #1
	addeq	r2, r2, #1
	streq	r2, [r3, #4]
	beq	.L11
	cmp	r0, #1
	subeq	r2, r2, #1
	streq	r2, [r3, #4]
.L11:
	cmp	r2, #0
	movge	r2, lr
	movlt	r2, ip
	str	r2, [r3, #48]
.L9:
	add	r3, r3, #52
	cmp	r3, r1
	bne	.L13
	ldr	lr, [sp], #4
	bx	lr
.L17:
	.align	2
.L16:
	.word	hshift
	.word	balloons
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
	str	lr, [sp, #-4]!
	mov	lr, #5
	ldr	r3, .L24
	ldr	r2, .L24+4
	add	r0, r3, #364
.L21:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	ldrheq	r1, [r2, #8]
	ldrne	r1, [r3, #4]
	ldrne	ip, [r3]
	orreq	r1, r1, #512
	orrne	r1, r1, #16384
	add	r3, r3, #52
	strheq	r1, [r2, #8]	@ movhi
	strhne	lr, [r2, #12]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L21
	ldr	lr, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
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
	ldr	r4, .L30
	ldr	r7, .L30+4
	ldr	r6, .L30+8
	ldr	r5, .L30+12
.L27:
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
	bne	.L27
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldr	r2, .L40
	ldr	r3, .L40+4
	ldr	r0, [r2]
	add	r1, r3, #84
.L37:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L33
	ldr	r2, [r3, #4]
	cmn	r0, #1
	addeq	r2, r2, #1
	streq	r2, [r3, #4]
	beq	.L35
	cmp	r0, #1
	subeq	r2, r2, #1
	streq	r2, [r3, #4]
.L35:
	cmp	r2, #0
	movge	r2, lr
	movlt	r2, ip
	str	r2, [r3, #20]
.L33:
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L37
	ldr	lr, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
	.word	hshift
	.word	fuels
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
	str	lr, [sp, #-4]!
	mov	lr, #2
	ldr	r3, .L48
	ldr	r2, .L48+4
	add	r0, r3, #24
.L45:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	ldrheq	r1, [r3, #64]
	ldrne	r1, [r2, #4]
	ldrne	ip, [r2]
	orreq	r1, r1, #512
	orrne	r1, r1, #16384
	strheq	r1, [r3, #64]	@ movhi
	strhne	lr, [r3, #68]	@ movhi
	strhne	r1, [r3, #66]	@ movhi
	strhne	ip, [r3, #64]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #28
	bne	.L45
	ldr	lr, [sp], #4
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r4, .L54
	ldr	r7, .L54+4
	ldr	r6, .L54+8
	ldr	r5, .L54+12
.L51:
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
	bne	.L51
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L55:
	.align	2
.L54:
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
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldr	r2, .L66
	ldr	r3, .L66+4
	ldr	r0, [r2]
	add	r1, r3, #320
.L63:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L59
	ldr	r2, [r3, #4]
	cmn	r0, #1
	addeq	r2, r2, #1
	streq	r2, [r3, #4]
	beq	.L61
	cmp	r0, #1
	subeq	r2, r2, #1
	streq	r2, [r3, #4]
.L61:
	cmp	r2, #0
	movge	r2, lr
	movlt	r2, ip
	str	r2, [r3, #20]
.L59:
	add	r3, r3, #32
	cmp	r3, r1
	bne	.L63
	ldr	lr, [sp], #4
	bx	lr
.L67:
	.align	2
.L66:
	.word	hshift
	.word	coins
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
	push	{r4, lr}
	mov	r4, #4
	ldr	r3, .L76
	ldr	r2, .L76+4
	ldr	lr, .L76+8
	add	r0, r3, #80
.L73:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	ldmne	r2, {r1, ip}
	ldrheq	r1, [r3, #88]
	orrne	r1, r1, lr
	orreq	r1, r1, #512
	strheq	r1, [r3, #88]	@ movhi
	strhne	r4, [r3, #92]	@ movhi
	strhne	r1, [r3, #88]	@ movhi
	strhne	ip, [r3, #90]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L73
	pop	{r4, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	shadowOAM
	.word	coins
	.word	-32768
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
