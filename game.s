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
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L6
	mov	lr, pc
	bx	r3
	mov	r7, #1
	mov	ip, #0
	mov	r8, #80
	mov	r3, #14
	mov	r6, r8
	mov	r5, r7
	mov	r0, ip
	mov	r4, #8
	mov	lr, #2
	ldr	r2, .L6+4
	mov	r1, r3
	str	r3, [r2, #4]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	ldr	r3, .L6+8
	str	r8, [r2]
	str	r7, [r2, #8]
	str	r7, [r2, #12]
	str	ip, [r2, #24]
	str	ip, [r2, #28]
	str	ip, [r2, #32]
	str	ip, [r2, #36]
	str	ip, [r2, #40]
	str	ip, [r2, #44]
	add	r2, r3, #140
.L2:
	str	r6, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r0, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L2
	mov	r1, #9
	mov	lr, #3
	ldr	r2, .L6+12
	ldr	r3, .L6+16
	str	r1, [r2]
	ldr	ip, .L6+20
	ldr	r1, .L6+24
	ldr	r2, .L6+28
	str	lr, [r3]
	str	ip, [r3, #4]	@ float
	str	r0, [r1]
	str	r0, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	initObstacles
	.word	puffle
	.word	bullets
	.word	hOff
	.word	.LANCHOR1
	.word	1120403456
	.word	vOff
	.word	.LANCHOR0
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
	ldr	r3, .L9
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
.L10:
	.align	2
.L9:
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
	ldr	r2, .L15
	ldr	r3, [r2, #44]
	cmp	r3, #1
	beq	.L14
	mov	r0, #0
	ldr	r1, .L15+4
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L15+8
	ldr	r2, [r2]
	sub	r3, r3, ip
	ldr	ip, [r1]
	lsl	r3, r3, #23
	ldr	r1, .L15+12
	lsr	r3, r3, #23
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	bx	lr
.L14:
	ldr	r2, .L15+12
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L16:
	.align	2
.L15:
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
	ldr	r2, .L21
	ldr	r3, .L21+4
	ldm	r2, {r0, r2}
	add	r1, r3, #140
.L18:
	str	r2, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #24]
	stm	r3, {r0, r2}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L18
	pop	{r4, r5, lr}
	bx	lr
.L22:
	.align	2
.L21:
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
	ldr	r0, .L34
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L33
.L24:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L24
.L33:
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	r1, .L34+4
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
.L35:
	.align	2
.L34:
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
	@ link register save eliminated.
	ldr	r3, .L56
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L38
	ldr	r2, .L56+4
	ldr	r3, [r2, #4]
	cmp	r3, #0
	ble	.L38
	ldr	r0, .L56+8
	ldr	ip, [r2, #12]
	ldr	r1, [r0]
	sub	r3, r3, ip
	cmp	r1, #0
	str	r3, [r2, #4]
	ble	.L38
	sub	r3, r3, r1
	cmp	r3, #119
	suble	r1, r1, #1
	strle	r1, [r0]
.L38:
	ldr	r3, .L56
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L41
	ldr	r2, .L56+4
	ldr	r3, [r2, #4]
	ldr	r1, [r2, #16]
	add	r1, r3, r1
	cmp	r1, #512
	blt	.L53
.L41:
	ldr	r3, .L56
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L44
	ldr	r2, .L56+4
	ldr	r3, [r2]
	cmp	r3, #12
	bgt	.L54
.L44:
	ldr	r3, .L56
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L47
	ldr	r2, .L56+4
	ldr	r3, [r2]
	ldr	r1, [r2, #20]
	add	r1, r3, r1
	cmp	r1, #159
	ble	.L55
.L47:
	ldr	r3, .L56+12
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L56+16
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	fireBullet
.L55:
	ldr	r0, .L56+20
	ldr	ip, [r2, #8]
	ldr	r1, [r0]
	add	r3, r3, ip
	cmp	r1, #0
	str	r3, [r2]
	bge	.L47
	add	r3, r3, r1
	cmp	r3, #80
	addgt	r1, r1, #1
	strgt	r1, [r0]
	b	.L47
.L54:
	ldr	r0, .L56+20
	ldr	ip, [r2, #8]
	ldr	r1, [r0]
	sub	r3, r3, ip
	cmp	r1, #0
	str	r3, [r2]
	ble	.L44
	sub	r3, r3, r1
	cmp	r3, #79
	suble	r1, r1, #1
	strle	r1, [r0]
	b	.L44
.L53:
	ldr	r0, .L56+8
	ldr	ip, [r2, #12]
	ldr	r1, [r0]
	add	r3, r3, ip
	cmp	r1, #272
	str	r3, [r2, #4]
	bge	.L41
	add	r3, r3, r1
	cmp	r3, #120
	addgt	r1, r1, #1
	strgt	r1, [r0]
	b	.L41
.L57:
	.align	2
.L56:
	.word	67109120
	.word	puffle
	.word	hOff
	.word	oldButtons
	.word	buttons
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
	push	{r4, r5, lr}
	mov	r5, #512
	mov	r4, #64
	ldr	r2, .L64
	ldr	r3, .L64+4
	ldrh	lr, [r2]
	ldr	r2, .L64+8
	add	r0, r3, #140
.L61:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrne	ip, [r3]
	subne	r1, r1, lr
	add	r3, r3, #28
	strhne	r4, [r2, #172]	@ movhi
	strhne	r1, [r2, #170]	@ movhi
	strhne	ip, [r2, #168]	@ movhi
	strheq	r5, [r2, #168]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L61
	pop	{r4, r5, lr}
	bx	lr
.L65:
	.align	2
.L64:
	.word	hOff
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
	beq	.L67
	add	r1, r3, r2
	cmp	r1, #512
	bgt	.L80
	ldr	r1, [r5, #12]
	add	r3, r3, r1
	str	r3, [r5, #4]
.L67:
	ldr	r4, .L81
	mov	r9, #0
	mov	r10, #1
	ldr	r6, .L81+4
	ldr	r7, .L81+8
	add	r8, r4, #364
	b	.L70
.L72:
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #16]
.L70:
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
	beq	.L71
	ldrh	r3, [r6, #8]
	orr	r3, r3, #512
	str	r9, [r5, #24]
	str	r9, [r4, #48]
	str	r10, [r4, #44]
	strh	r3, [r6, #8]	@ movhi
.L71:
	add	r4, r4, #52
	cmp	r4, r8
	add	r6, r6, #8
	bne	.L72
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L80:
	ldr	r1, [r0, #8]
	sub	r1, r3, r1
	cmp	r1, #239
	movgt	r1, #0
	strgt	r1, [r0, #24]
	ldrle	r1, [r5, #12]
	addle	r3, r3, r1
	strle	r3, [r5, #4]
	b	.L67
.L82:
	.align	2
.L81:
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
	ldr	r5, .L85+8
	ldr	r3, .L85+12
	ldr	r0, [r5, #4]	@ float
	mov	lr, pc
	bx	r3
	ldr	r4, .L85+16
	adr	r3, .L85
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r4
	ldr	r3, .L85+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L85+24
	ldr	r3, .L85+28
	str	r0, [r5, #4]	@ float
	mov	lr, pc
	bx	r3
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
	pop	{r4, r5, r6, lr}
	b	updateBullet
.L86:
	.align	3
.L85:
	.word	2576980378
	.word	1068079513
	.word	.LANCHOR1
	.word	__aeabi_f2d
	.word	__aeabi_dsub
	.word	__aeabi_d2f
	.word	bullets
	.word	updateObstacles
	.size	updateGame, .-updateGame
	.global	__aeabi_fcmpge
	.global	__aeabi_fadd
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L96+8
	cmp	r0, #1
	ldr	r5, [r4, #4]	@ float
	beq	.L95
	mov	r0, r5
	ldr	r3, .L96+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L96+16
	adr	r3, .L96
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	ldr	r3, .L96+20
	mov	lr, pc
	bx	r3
	str	r0, [r4, #4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	mov	r0, r5
	ldr	r3, .L96+24
	ldr	r1, .L96+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L93
	ldr	r3, .L96+32
	str	r3, [r4, #4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	mov	r0, r5
	ldr	r3, .L96+36
	ldr	r1, .L96+40
	mov	lr, pc
	bx	r3
	str	r0, [r4, #4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L97:
	.align	3
.L96:
	.word	2576980378
	.word	1068079513
	.word	.LANCHOR1
	.word	__aeabi_f2d
	.word	__aeabi_dsub
	.word	__aeabi_d2f
	.word	__aeabi_fcmpge
	.word	1117126656
	.word	1120403456
	.word	__aeabi_fadd
	.word	1103626240
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
	ldr	r4, .L117
	ldr	r5, .L117+4
	ldr	r7, [r5, #4]	@ float
	strh	r3, [r4, #208]	@ movhi
	strh	r3, [r4, #216]	@ movhi
	ldr	r3, .L117+8
	strh	r1, [r4, #210]	@ movhi
	strh	r3, [r4, #218]	@ movhi
	mov	r0, r7
	ldr	r6, .L117+12
	strh	r2, [r4, #212]	@ movhi
	ldr	r1, .L117+16
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #11
	strhne	r3, [r4, #220]	@ movhi
	bne	.L101
	mov	r0, r7
	ldr	r1, .L117+20
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #75
	strhne	r3, [r4, #220]	@ movhi
	beq	.L116
.L101:
	ldr	r3, [r5]
	cmp	r3, #3
	mov	r1, #16384
	moveq	r3, #15
	ldr	r2, .L117+24
	strh	r1, [r4, #224]	@ movhi
	strh	r2, [r4, #226]	@ movhi
	strheq	r3, [r4, #228]	@ movhi
	beq	.L107
	cmp	r3, #2
	moveq	r3, #79
	strheq	r3, [r4, #228]	@ movhi
	beq	.L107
	cmp	r3, #1
	moveq	r3, #143
	strheq	r3, [r4, #228]	@ movhi
.L107:
	mov	r6, #16384
	mov	r5, #71
	mov	r0, #3
	mov	lr, #95
	mov	ip, #101
	ldr	r2, .L117+28
	ldr	r3, .L117+32
	ldr	r2, [r2]
	smull	r7, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r1, r3, r3, lsl #2
	add	r3, r3, #128
	strh	r3, [r4, #244]	@ movhi
	sub	r2, r2, r1, lsl #1
	ldr	r3, .L117+36
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
.L116:
	mov	r0, r7
	ldr	r1, .L117+40
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #139
	moveq	r3, #203
	strh	r3, [r4, #220]	@ movhi
	b	.L101
.L118:
	.align	2
.L117:
	.word	shadowOAM
	.word	.LANCHOR1
	.word	-32735
	.word	__aeabi_fcmpgt
	.word	1117126656
	.word	1112014848
	.word	-32560
	.word	.LANCHOR0
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
	ldr	r3, .L121
	mov	lr, pc
	bx	r3
	bl	drawPlayer
	bl	drawUI
	bl	drawBullet
	mov	r2, #67108864
	ldr	r3, .L121+4
	ldrh	r1, [r3]
	ldr	r3, .L121+8
	strh	r1, [r2, #16]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L121+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L121+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L122:
	.align	2
.L121:
	.word	drawObstacles
	.word	hOff
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.comm	puffle,48,4
	.global	gasLevel
	.global	lives
	.global	score
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	coins,320,4
	.comm	fuels,84,4
	.comm	balloons,364,4
	.comm	bullets,140,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	lives, %object
	.size	lives, 4
lives:
	.word	3
	.type	gasLevel, %object
	.size	gasLevel, 4
gasLevel:
	.word	1120403456
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
