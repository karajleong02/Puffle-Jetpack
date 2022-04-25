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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #1
	mov	r9, #80
	mov	r8, #14
	mov	r7, #3
	ldr	r3, .L6
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	fp, #24
	mov	r10, #32
	mov	r5, r9
	mov	r1, r8
	mov	r4, r6
	mov	ip, r7
	mov	lr, #7
	ldr	r2, .L6+4
	mov	r0, r3
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r3, [r2, #36]
	str	r3, [r2, #44]
	ldr	r3, .L6+8
	str	r9, [r2]
	str	fp, [r2, #16]
	str	r10, [r2, #20]
	str	r8, [r2, #4]
	str	r6, [r2, #8]
	str	r6, [r2, #12]
	str	r7, [r2, #40]
	add	r2, r3, #140
.L2:
	str	r5, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	str	r4, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L2
	mov	r2, #9
	ldr	r3, .L6+12
	ldr	lr, .L6+16
	str	r2, [r3]
	ldr	r1, .L6+20
	ldr	r3, .L6+24
	ldr	r2, .L6+28
	str	r0, [lr]
	str	ip, [r3]
	str	r2, [r3, #4]	@ float
	str	r0, [r1]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	initObstacles
	.word	puffle
	.word	bullets
	.word	hOff
	.word	vOff
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	1120403456
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
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #80
	mov	r4, #14
	mov	lr, #24
	mov	r1, #1
	mov	ip, #32
	mov	r0, #3
	ldr	r3, .L10
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	pop	{r4, r5, lr}
	bx	lr
.L11:
	.align	2
.L10:
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
	ldr	r1, .L16
	ldr	r3, [r1, #44]
	cmp	r3, #1
	beq	.L15
	ldr	r3, .L16+4
	ldr	r2, [r1, #4]
	ldr	r3, [r3]
	sub	r2, r2, r3
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r3, [r1, #36]
	ldr	ip, .L16+8
	ldr	r0, [r1, #28]
	lsl	r3, r3, #5
	ldr	ip, [ip]
	ldr	r1, [r1]
	add	r3, r3, #16
	add	r3, r3, r0
	sub	r1, r1, ip
	ldr	r0, .L16+12
	lsl	r3, r3, #2
	and	r1, r1, #255
	add	r3, r3, #7
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L15:
	ldr	r2, .L16+12
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L17:
	.align	2
.L16:
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
	mov	r4, #7
	mov	lr, #3
	ldr	r2, .L22
	ldr	r3, .L22+4
	ldm	r2, {r0, r2}
	add	r1, r3, #140
.L19:
	str	r2, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #24]
	stm	r3, {r0, r2}
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L19
	pop	{r4, r5, lr}
	bx	lr
.L23:
	.align	2
.L22:
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
	ldr	r0, .L35
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L34
.L25:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L25
.L34:
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	r1, .L35+4
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
.L36:
	.align	2
.L35:
	.word	bullets
	.word	puffle
	.size	fireBullet, .-fireBullet
	.global	__aeabi_idivmod
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
	ldr	r3, .L63
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, r5, r6, lr}
	ldr	r4, .L63+4
	bne	.L39
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L39
	mov	r0, #1
	ldr	r1, .L63+8
	ldr	ip, [r4, #12]
	ldr	r2, [r1]
	sub	r3, r3, ip
	cmp	r2, #0
	str	r3, [r4, #4]
	str	r0, [r4, #28]
	ble	.L39
	sub	r3, r3, r2
	cmp	r3, #119
	suble	r2, r2, #1
	strle	r2, [r1]
.L39:
	ldr	r3, .L63
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L42
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	add	r1, r2, r1
	cmp	r1, #560
	blt	.L58
.L42:
	ldr	r3, .L63
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L45
	ldr	r3, [r4]
	cmp	r3, #12
	bgt	.L59
.L45:
	ldr	r3, .L63
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L48
	ldr	r3, [r4]
	ldr	r2, [r4, #20]
	add	r2, r3, r2
	cmp	r2, #159
	ble	.L60
.L48:
	ldr	r3, .L63+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L50
	ldr	r3, .L63+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L61
.L50:
	ldr	r5, [r4, #24]
	cmp	r5, #29
	movgt	r3, #0
	strgt	r3, [r4, #24]
	bgt	.L37
	ldr	r3, .L63+20
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	beq	.L62
.L52:
	add	r5, r5, #1
	str	r5, [r4, #24]
.L37:
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	ldr	r0, [r4, #36]
	ldr	r3, .L63+24
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
	b	.L52
.L60:
	ldr	r1, .L63+28
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4]
	bge	.L48
	add	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L48
.L59:
	ldr	r1, .L63+28
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4]
	ble	.L45
	sub	r3, r3, r2
	cmp	r3, #79
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L45
.L58:
	ldr	r0, .L63+8
	ldr	ip, [r4, #12]
	ldr	r1, [r0]
	add	r2, r2, ip
	cmp	r1, #320
	str	r3, [r4, #28]
	str	r2, [r4, #4]
	bge	.L42
	add	r2, r2, r1
	cmp	r2, #120
	addgt	r1, r1, #1
	strgt	r1, [r0]
	b	.L42
.L61:
	bl	fireBullet
	b	.L50
.L64:
	.align	2
.L63:
	.word	67109120
	.word	puffle
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	1717986919
	.word	__aeabi_idivmod
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
	mov	r4, #128
	ldr	r2, .L71
	ldr	r3, .L71+4
	ldrh	lr, [r2]
	ldr	r2, .L71+8
	add	ip, r3, #140
.L68:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldmne	r3, {r0, r1}
	add	r3, r3, #28
	orrne	r0, r0, #16384
	subne	r1, r1, lr
	strhne	r4, [r2, #172]	@ movhi
	strhne	r0, [r2, #168]	@ movhi
	strhne	r1, [r2, #170]	@ movhi
	strheq	r5, [r2, #168]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L68
	pop	{r4, r5, lr}
	bx	lr
.L72:
	.align	2
.L71:
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
	beq	.L74
	add	r1, r3, r2
	cmp	r1, #560
	bgt	.L87
	ldr	r1, [r5, #12]
	add	r3, r3, r1
	str	r3, [r5, #4]
.L74:
	ldr	r4, .L88
	mov	r9, #0
	mov	r10, #1
	ldr	r6, .L88+4
	ldr	r7, .L88+8
	add	r8, r4, #308
	b	.L77
.L79:
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #16]
.L77:
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
	beq	.L78
	ldrh	r3, [r6, #8]
	orr	r3, r3, #512
	str	r9, [r5, #24]
	str	r9, [r4, #40]
	str	r10, [r4, #36]
	strh	r3, [r6, #8]	@ movhi
.L78:
	add	r4, r4, #44
	cmp	r4, r8
	add	r6, r6, #8
	bne	.L79
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L87:
	ldr	r1, [r0, #8]
	sub	r1, r3, r1
	cmp	r1, #239
	movgt	r1, #0
	strgt	r1, [r0, #24]
	ldrle	r1, [r5, #12]
	addle	r3, r3, r1
	strle	r3, [r5, #4]
	b	.L74
.L89:
	.align	2
.L88:
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
	ldr	r5, .L92+8
	ldr	r3, .L92+12
	ldr	r0, [r5, #4]	@ float
	mov	lr, pc
	bx	r3
	ldr	r4, .L92+16
	adr	r3, .L92
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r4
	ldr	r3, .L92+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L92+24
	ldr	r3, .L92+28
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
.L93:
	.align	3
.L92:
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
	ldr	r4, .L103+8
	cmp	r0, #1
	ldr	r5, [r4, #4]	@ float
	beq	.L102
	mov	r0, r5
	ldr	r3, .L103+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L103+16
	adr	r3, .L103
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	ldr	r3, .L103+20
	mov	lr, pc
	bx	r3
	str	r0, [r4, #4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L102:
	mov	r0, r5
	ldr	r3, .L103+24
	ldr	r1, .L103+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L100
	ldr	r3, .L103+32
	str	r3, [r4, #4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	mov	r0, r5
	ldr	r3, .L103+36
	ldr	r1, .L103+40
	mov	lr, pc
	bx	r3
	str	r0, [r4, #4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L104:
	.align	3
.L103:
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
	mov	r3, #32768
	mov	r2, #16384
	mov	r1, #384
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L124
	ldr	r5, .L124+4
	ldr	r7, [r5, #4]	@ float
	strh	r3, [r4, #210]	@ movhi
	ldr	r3, .L124+8
	strh	r2, [r4, #208]	@ movhi
	add	r2, r2, #3
	strh	r1, [r4, #212]	@ movhi
	strh	r3, [r4, #218]	@ movhi
	mov	r0, r7
	ldr	r6, .L124+12
	strh	r2, [r4, #216]	@ movhi
	ldr	r1, .L124+16
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #256
	strhne	r3, [r4, #220]	@ movhi
	bne	.L108
	mov	r0, r7
	ldr	r1, .L124+20
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #288
	strhne	r3, [r4, #220]	@ movhi
	beq	.L123
.L108:
	ldr	r3, [r5]
	cmp	r3, #3
	mov	r1, #16384
	moveq	r3, #160
	ldr	r2, .L124+24
	strh	r1, [r4, #224]	@ movhi
	strh	r2, [r4, #226]	@ movhi
	strheq	r3, [r4, #228]	@ movhi
	beq	.L114
	cmp	r3, #2
	moveq	r3, #192
	strheq	r3, [r4, #228]	@ movhi
	beq	.L114
	cmp	r3, #1
	moveq	r3, #224
	strheq	r3, [r4, #228]	@ movhi
.L114:
	mov	r6, #16384
	mov	r5, #448
	mov	r0, #3
	mov	lr, #95
	mov	ip, #101
	ldr	r2, .L124+28
	ldr	r3, .L124+32
	ldr	r2, [r2]
	smull	r7, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r1, r3, r3, lsl #2
	add	r3, r3, #992
	strh	r3, [r4, #244]	@ movhi
	sub	r2, r2, r1, lsl #1
	ldr	r3, .L124+36
	add	r2, r2, #992
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
.L123:
	mov	r0, r7
	ldr	r1, .L124+40
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #320
	moveq	r3, #352
	strh	r3, [r4, #220]	@ movhi
	b	.L108
.L125:
	.align	2
.L124:
	.word	shadowOAM
	.word	.LANCHOR1
	.word	16409
	.word	__aeabi_fcmpgt
	.word	1117126656
	.word	1112014848
	.word	16592
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
	ldr	r3, .L128
	mov	lr, pc
	bx	r3
	bl	drawPlayer
	bl	drawUI
	bl	drawBullet
	mov	r2, #67108864
	ldr	r3, .L128+4
	ldrh	r1, [r3]
	ldr	r3, .L128+8
	strh	r1, [r2, #16]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L128+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L128+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L129:
	.align	2
.L128:
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
	.comm	balloons,308,4
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
