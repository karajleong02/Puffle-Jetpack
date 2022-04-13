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
	.file	"game.c"
	.text
	.global	__aeabi_fcmpge
	.global	__aeabi_fadd
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setFuelLevel.part.0, %function
setFuelLevel.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L6
	ldr	r5, [r4]	@ float
	ldr	r3, .L6+4
	mov	r0, r5
	ldr	r1, .L6+8
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	ldrne	r0, .L6+12
	moveq	r0, r5
	ldreq	r3, .L6+16
	ldreq	r1, .L6+20
	moveq	lr, pc
	bxeq	r3
.L2:
	str	r0, [r4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.word	__aeabi_fcmpge
	.word	1117126656
	.word	1120403456
	.word	__aeabi_fadd
	.word	1103626240
	.size	setFuelLevel.part.0, .-setFuelLevel.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	mov	r8, #80
	mov	ip, #0
	mov	r3, #1
	mov	r7, #14
	mov	r6, r8
	mov	r0, ip
	mov	r1, #4
	mov	r4, #8
	mov	lr, #2
	ldr	r2, .L12+4
	mov	r5, r3
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	ldr	r3, .L12+8
	str	r8, [r2]
	str	r7, [r2, #4]
	str	r7, [r2, #16]
	str	r7, [r2, #20]
	str	ip, [r2, #24]
	str	ip, [r2, #28]
	str	ip, [r2, #32]
	str	ip, [r2, #36]
	str	ip, [r2, #40]
	str	ip, [r2, #44]
	add	r2, r3, #140
.L9:
	str	r6, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r0, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L9
	mov	r1, #9
	mov	lr, #3
	ldr	r2, .L12+12
	ldr	r3, .L12+16
	str	r1, [r2]
	ldr	ip, .L12+20
	ldr	r1, .L12+24
	ldr	r2, .L12+28
	str	lr, [r3, #4]
	str	ip, [r3]	@ float
	str	r0, [r1]
	str	r0, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	initObstacles
	.word	puffle
	.word	bullets
	.word	hOff
	.word	.LANCHOR0
	.word	1120403456
	.word	vOff
	.word	.LANCHOR1
	.size	initGame, .-initGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #14
	mov	r0, #1
	mov	ip, #80
	ldr	r3, .L15
	str	ip, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	bx	lr
.L16:
	.align	2
.L15:
	.word	puffle
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L21
	ldr	r3, [r2, #44]
	cmp	r3, #1
	beq	.L20
	mov	r0, #0
	ldr	r1, .L21+4
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L21+8
	ldr	r2, [r2]
	sub	r3, r3, ip
	ldr	ip, [r1]
	lsl	r3, r3, #23
	ldr	r1, .L21+12
	lsr	r3, r3, #23
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	bx	lr
.L20:
	ldr	r2, .L21+12
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L22:
	.align	2
.L21:
	.word	puffle
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullet, %function
initBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	ip, #0
	mov	r5, #1
	mov	r4, #8
	mov	lr, #2
	ldr	r1, .L27
	ldr	r3, .L27+4
	ldm	r1, {r0, r2}
	add	r1, r3, #140
	sub	r2, r2, #10
.L24:
	str	r2, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #24]
	stm	r3, {r0, r2}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L24
	pop	{r4, r5, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	puffle
	.word	bullets
	.size	initBullet, .-initBullet
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L40
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L39
.L30:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L30
.L39:
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	r1, .L40+4
	ldr	r2, [r1, #20]
	ldr	ip, [r1]
	add	r2, r2, r2, lsr #31
	add	ip, ip, r2, asr lr
	ldr	r2, [r1, #4]
	ldr	r1, [r1, #16]
	rsb	r3, r3, r3, lsl #3
	add	r2, r2, r1
	add	r1, r0, r3, lsl #2
	str	lr, [r1, #24]
	str	ip, [r0, r3, lsl #2]
	str	r2, [r1, #4]
	str	r2, [r1, #8]
	ldr	lr, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
	.word	bullets
	.word	puffle
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L91
	ldrh	r3, [r3, #48]
	ldr	r2, .L91+4
	tst	r3, #32
	str	r1, [r2]
	sub	sp, sp, #20
	bne	.L44
	ldr	r1, .L91+8
	ldr	r3, [r1, #4]
	cmp	r3, #0
	ble	.L44
	ldr	ip, .L91+12
	ldr	lr, [r1, #12]
	ldr	r0, [ip]
	sub	r3, r3, lr
	cmp	r0, #0
	str	r3, [r1, #4]
	ble	.L44
	sub	r3, r3, r0
	cmp	r3, #119
	mvnle	r3, #0
	addle	r0, r0, r3
	strle	r0, [ip]
	strle	r3, [r2]
.L44:
	ldr	r3, .L91
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L47
	ldr	r0, .L91+8
	ldr	r3, [r0, #4]
	ldr	r1, [r0, #16]
	add	r1, r3, r1
	cmp	r1, #512
	blt	.L84
.L47:
	ldr	r3, .L91
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L50
	ldr	r2, .L91+8
	ldr	r3, [r2]
	cmp	r3, #12
	bgt	.L85
.L50:
	ldr	r3, .L91
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L53
	ldr	r1, .L91+8
	ldr	r3, [r1]
	ldr	r2, [r1, #20]
	add	r2, r3, r2
	cmp	r2, #159
	ble	.L86
.L53:
	ldr	r3, .L91+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L55
	ldr	r3, .L91+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L87
.L55:
	ldr	r4, .L91+24
	ldr	r6, .L91+8
	ldr	fp, .L91+28
	ldr	r10, .L91+32
	ldr	r9, .L91+36
	ldr	r8, .L91+40
	add	r7, r4, #320
	b	.L59
.L57:
	add	r4, r4, #32
	cmp	r4, r7
	beq	.L88
.L59:
	ldr	r5, [r4, #28]
	cmp	r5, #0
	bne	.L57
	ldr	r0, [r6, #4]
	ldr	r1, [r6]
	smull	r2, r3, r10, r0
	smull	r2, ip, fp, r1
	add	r3, r3, r0
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #7
	asr	r2, r1, #31
	rsb	r2, r2, ip, asr #6
	ldr	ip, [r4, #16]
	rsb	r3, r3, r3, lsl #4
	ldr	lr, [r4]
	sub	r0, r0, r3, lsl #4
	ldr	r3, [r4, #12]
	str	ip, [sp, #12]
	add	r2, r2, r2, lsl #2
	sub	r1, r1, r2, lsl #5
	ldr	r2, [r4, #4]
	stm	sp, {r2, lr}
	str	r3, [sp, #8]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L57
	mov	r2, #1
	ldr	r3, [r8]
	str	r2, [r4, #28]
	str	r5, [r4, #20]
	add	r4, r4, #32
	add	r3, r3, #5
	cmp	r4, r7
	str	r3, [r8]
	bne	.L59
.L88:
	mov	r9, #1
	ldr	r4, .L91+44
	ldr	r6, .L91+8
	ldr	r8, .L91+36
	add	r7, r4, #84
.L63:
	ldr	r5, [r4, #24]
	cmp	r5, #0
	beq	.L89
.L61:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L63
	ldr	r4, .L91+48
	ldr	r6, .L91+8
	ldr	r9, .L91+36
	ldr	r8, .L91+52
	add	r7, r4, #364
	b	.L67
.L65:
	add	r4, r4, #52
	cmp	r4, r7
	beq	.L90
.L67:
	ldr	r5, [r4, #44]
	cmp	r5, #0
	bne	.L65
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
	beq	.L65
	mov	r2, #1
	ldr	r3, [r8, #4]
	str	r5, [r4, #48]
	str	r2, [r4, #44]
	add	r4, r4, #52
	sub	r3, r3, #1
	cmp	r4, r7
	str	r3, [r8, #4]
	bne	.L67
.L90:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L89:
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
	bx	r8
	cmp	r0, #0
	beq	.L61
	str	r9, [r4, #24]
	str	r5, [r4, #20]
	bl	setFuelLevel.part.0
	b	.L61
.L84:
	ldr	ip, .L91+12
	ldr	lr, [r0, #12]
	ldr	r1, [ip]
	add	r3, r3, lr
	cmp	r1, #272
	str	r3, [r0, #4]
	bge	.L47
	add	r3, r3, r1
	cmp	r3, #120
	movgt	r3, #1
	addgt	r1, r1, r3
	strgt	r1, [ip]
	strgt	r3, [r2]
	b	.L47
.L86:
	ldr	r0, .L91+56
	ldr	ip, [r1, #8]
	ldr	r2, [r0]
	add	r3, r3, ip
	cmp	r2, #0
	str	r3, [r1]
	bge	.L53
	add	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, #1
	strgt	r2, [r0]
	b	.L53
.L85:
	ldr	r0, .L91+56
	ldr	ip, [r2, #8]
	ldr	r1, [r0]
	sub	r3, r3, ip
	cmp	r1, #0
	str	r3, [r2]
	ble	.L50
	sub	r3, r3, r1
	cmp	r3, #79
	suble	r1, r1, #1
	strle	r1, [r0]
	b	.L50
.L87:
	bl	fireBullet
	b	.L55
.L92:
	.align	2
.L91:
	.word	67109120
	.word	hshift
	.word	puffle
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	coins
	.word	1717986919
	.word	-2004318071
	.word	collision
	.word	.LANCHOR1
	.word	fuels
	.word	balloons
	.word	.LANCHOR0
	.word	vOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #512
	mov	lr, #64
	ldr	r3, .L99
	ldr	r2, .L99+4
	add	r0, r3, #140
.L96:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #28
	strhne	lr, [r2, #172]	@ movhi
	strhne	ip, [r2, #168]	@ movhi
	strhne	r1, [r2, #170]	@ movhi
	strheq	r4, [r2, #168]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L96
	pop	{r4, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	bullets
	.word	shadowOAM
	.size	drawBullet, .-drawBullet
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r0, #24]
	cmp	r3, #0
	mov	r5, r0
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #16]
	sub	sp, sp, #16
	beq	.L102
	add	r1, r3, r2
	cmp	r1, #512
	bgt	.L115
	ldr	r1, [r5, #12]
	add	r3, r3, r1
	str	r3, [r5, #4]
.L102:
	ldr	r4, .L116
	mov	r9, #0
	mov	r10, #1
	ldr	r6, .L116+4
	ldr	r7, .L116+8
	add	r8, r4, #364
	b	.L105
.L107:
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #16]
.L105:
	ldr	r0, [r5, #20]
	ldr	r1, [r5]
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L106
	ldrh	r3, [r6, #8]
	orr	r3, r3, #512
	str	r9, [r5, #24]
	str	r9, [r4, #48]
	str	r10, [r4, #44]
	strh	r3, [r6, #8]	@ movhi
.L106:
	add	r4, r4, #52
	cmp	r4, r8
	add	r6, r6, #8
	bne	.L107
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L115:
	ldr	r1, [r0, #8]
	sub	r1, r3, r1
	cmp	r1, #239
	movgt	r1, #0
	strgt	r1, [r0, #24]
	ldrle	r1, [r5, #12]
	addle	r3, r3, r1
	strle	r3, [r5, #4]
	b	.L102
.L117:
	.align	2
.L116:
	.word	balloons
	.word	shadowOAM
	.word	collision
	.size	updateBullet, .-updateBullet
	.global	__aeabi_f2d
	.global	__aeabi_dsub
	.global	__aeabi_d2f
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L120+8
	ldr	r3, .L120+12
	ldr	r0, [r5]	@ float
	mov	lr, pc
	bx	r3
	ldr	r4, .L120+16
	adr	r3, .L120
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r4
	ldr	r3, .L120+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L120+24
	str	r0, [r5]	@ float
	bl	updatePlayer
	mov	r0, r4
	bl	updateBullet
	add	r0, r4, #28
	bl	updateBullet
	add	r0, r4, #56
	bl	updateBullet
	add	r0, r4, #84
	bl	updateBullet
	add	r0, r4, #112
	bl	updateBullet
	ldr	r3, .L120+28
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L121:
	.align	3
.L120:
	.word	2576980378
	.word	1068079513
	.word	.LANCHOR0
	.word	__aeabi_f2d
	.word	__aeabi_dsub
	.word	__aeabi_d2f
	.word	bullets
	.word	updateObstacles
	.size	updateGame, .-updateGame
	.align	2
	.global	setFuelLevel
	.syntax unified
	.arm
	.fpu softvfp
	.type	setFuelLevel, %function
setFuelLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1
	beq	.L126
	push	{r4, r5, r6, lr}
	ldr	r4, .L127+8
	ldr	r3, .L127+12
	ldr	r0, [r4]	@ float
	mov	lr, pc
	bx	r3
	ldr	r5, .L127+16
	adr	r3, .L127
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	ldr	r3, .L127+20
	mov	lr, pc
	bx	r3
	str	r0, [r4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L126:
	b	setFuelLevel.part.0
.L128:
	.align	3
.L127:
	.word	2576980378
	.word	1068079513
	.word	.LANCHOR0
	.word	__aeabi_f2d
	.word	__aeabi_dsub
	.word	__aeabi_d2f
	.size	setFuelLevel, .-setFuelLevel
	.global	__aeabi_fcmpgt
	.align	2
	.global	drawUI
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUI, %function
drawUI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #16384
	mov	r1, #32768
	mov	r2, #7
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L148
	ldr	r5, .L148+4
	ldr	r7, [r5]	@ float
	strh	r3, [r4, #208]	@ movhi
	strh	r3, [r4, #216]	@ movhi
	ldr	r3, .L148+8
	strh	r1, [r4, #210]	@ movhi
	strh	r3, [r4, #218]	@ movhi
	mov	r0, r7
	ldr	r6, .L148+12
	strh	r2, [r4, #212]	@ movhi
	ldr	r1, .L148+16
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #11
	strhne	r3, [r4, #220]	@ movhi
	bne	.L132
	mov	r0, r7
	ldr	r1, .L148+20
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #75
	strhne	r3, [r4, #220]	@ movhi
	beq	.L147
.L132:
	ldr	r3, [r5, #4]
	cmp	r3, #3
	mov	r1, #16384
	moveq	r3, #15
	ldr	r2, .L148+24
	strh	r1, [r4, #224]	@ movhi
	strh	r2, [r4, #226]	@ movhi
	strheq	r3, [r4, #228]	@ movhi
	beq	.L138
	cmp	r3, #2
	moveq	r3, #79
	strheq	r3, [r4, #228]	@ movhi
	beq	.L138
	cmp	r3, #1
	moveq	r3, #143
	strheq	r3, [r4, #228]	@ movhi
.L138:
	mov	r6, #16384
	mov	r5, #71
	mov	r0, #3
	mov	lr, #95
	mov	ip, #101
	ldr	r2, .L148+28
	ldr	r3, .L148+32
	ldr	r2, [r2]
	smull	r7, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r1, r3, r3, lsl #2
	add	r3, r3, #128
	strh	r3, [r4, #244]	@ movhi
	sub	r2, r2, r1, lsl #1
	ldr	r3, .L148+36
	add	r2, r2, #128
	strh	r2, [r4, #252]	@ movhi
	strh	r6, [r4, #232]	@ movhi
	strh	r5, [r4, #236]	@ movhi
	strh	r0, [r4, #240]	@ movhi
	strh	r0, [r4, #248]	@ movhi
	strh	lr, [r4, #242]	@ movhi
	strh	ip, [r4, #250]	@ movhi
	strh	r3, [r4, #234]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L147:
	mov	r0, r7
	ldr	r1, .L148+40
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #139
	moveq	r3, #203
	strh	r3, [r4, #220]	@ movhi
	b	.L132
.L149:
	.align	2
.L148:
	.word	shadowOAM
	.word	.LANCHOR0
	.word	-32735
	.word	__aeabi_fcmpgt
	.word	1117126656
	.word	1112014848
	.word	-32560
	.word	.LANCHOR1
	.word	1717986919
	.word	-32703
	.word	1103626240
	.size	drawUI, .-drawUI
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L156
	mov	lr, pc
	bx	r3
	mov	r4, #512
	bl	drawPlayer
	bl	drawUI
	mov	lr, #64
	ldr	r3, .L156+4
	ldr	r2, .L156+8
	add	r0, r3, #140
.L153:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #28
	strhne	lr, [r2, #172]	@ movhi
	strhne	ip, [r2, #168]	@ movhi
	strhne	r1, [r2, #170]	@ movhi
	strheq	r4, [r2, #168]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L153
	mov	r2, #67108864
	ldr	r3, .L156+12
	ldrh	r1, [r3]
	ldr	r3, .L156+16
	strh	r1, [r2, #16]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L156+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L156+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L157:
	.align	2
.L156:
	.word	drawObstacles
	.word	bullets
	.word	shadowOAM
	.word	hOff
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	puffle,48,4
	.global	gasLevel
	.global	lives
	.global	score
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	hshift,4,4
	.comm	coins,320,4
	.comm	fuels,84,4
	.comm	balloons,364,4
	.comm	bullets,140,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gasLevel, %object
	.size	gasLevel, 4
gasLevel:
	.word	1120403456
	.type	lives, %object
	.size	lives, 4
lives:
	.word	3
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
