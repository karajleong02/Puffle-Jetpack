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
	mov	r8, #170
	mov	ip, #0
	mov	r7, #14
	mov	r3, #1
	mov	r6, #16
	mov	r5, r8
	mov	r0, r7
	mov	r4, ip
	mov	lr, #3
	ldr	r2, .L6+4
	mov	r1, r3
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	ldr	r3, .L6+8
	str	r8, [r2]
	str	r7, [r2, #4]
	str	r6, [r2, #16]
	str	r6, [r2, #20]
	str	ip, [r2, #24]
	str	ip, [r2, #28]
	str	ip, [r2, #32]
	str	ip, [r2, #36]
	str	ip, [r2, #40]
	str	ip, [r2, #44]
	add	r2, r3, #140
.L2:
	str	r5, [r3]
	str	r0, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	r1, [r3, #20]
	str	r4, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L2
	mov	r0, #96
	mov	r2, #9
	ldr	r1, .L6+12
	ldr	r3, .L6+16
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	initObstacles
	.word	puffle
	.word	bullets
	.word	vOff
	.word	hOff
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
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #170
	mov	r0, #1
	mov	r1, #16
	mov	ip, #14
	ldr	r3, .L10
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	ldr	lr, [sp], #4
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
	ldr	r2, .L16
	ldr	r3, [r2, #44]
	cmp	r3, #1
	beq	.L15
	mov	r0, #0
	ldr	r1, .L16+4
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L16+8
	ldr	r2, [r2]
	sub	r3, r3, ip
	ldr	ip, [r1]
	lsl	r3, r3, #23
	ldr	r1, .L16+12
	lsr	r3, r3, #23
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
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
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L25
	ldr	r5, .L25+4
	mov	lr, pc
	bx	r3
	bl	drawPlayer
	mov	r1, #16384
	mov	r2, #32768
	mov	r3, #7
	mov	r0, r5
	mov	r4, #64
	ldr	ip, .L25+8
	add	r6, r5, #140
	strh	r1, [ip, #208]	@ movhi
	strh	r2, [ip, #210]	@ movhi
	strh	r3, [ip, #212]	@ movhi
	add	ip, ip, #40
.L19:
	mov	r2, r5
	ldr	r3, .L25+8
.L21:
	ldr	r1, [r2, #24]
	cmp	r1, #1
	ldmeq	r0, {r1, lr}
	orreq	r1, r1, #16384
	strheq	r4, [r3, #172]	@ movhi
	strheq	r1, [r3, #168]	@ movhi
	strheq	lr, [r3, #170]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #28
	bne	.L21
	add	r0, r0, #28
	cmp	r0, r6
	bne	.L19
	mov	r3, #67108864
	ldr	r2, .L25+12
	ldrh	r1, [r2]
	ldr	r2, .L25+16
	strh	r1, [r3, #16]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L25+20
	strh	r1, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L25+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L25+8
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	drawObstacles
	.word	bullets
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
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
	push	{r4, lr}
	mov	r1, #1
	mov	r4, #3
	mov	lr, #0
	ldr	r2, .L31
	ldr	r3, .L31+4
	ldr	ip, [r2]
	ldr	r2, [r2, #4]
	add	r0, r3, #140
.L28:
	str	ip, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	str	r4, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L28
	pop	{r4, lr}
	bx	lr
.L32:
	.align	2
.L31:
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
	ldr	r0, .L44
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L43
.L34:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L34
.L43:
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	r1, .L44+4
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
.L45:
	.align	2
.L44:
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
	mov	r3, #0
	ldr	r1, .L64
	ldr	r2, .L64+4
	push	{r4, lr}
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, .L64+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L48
	ldr	r0, .L64+12
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ble	.L48
	ldr	lr, .L64+16
	ldr	r4, [r0, #12]
	ldr	ip, [lr]
	sub	r3, r3, r4
	cmp	ip, #0
	str	r3, [r0, #4]
	ble	.L48
	sub	r3, r3, ip
	cmp	r3, #119
	movle	r3, #1
	suble	ip, ip, #1
	strle	ip, [lr]
	strle	r3, [r1]
.L48:
	ldr	r3, .L64+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L51
	ldr	r0, .L64+12
	ldr	r3, [r0, #4]
	ldr	ip, [r0, #16]
	add	ip, r3, ip
	cmp	ip, #512
	blt	.L61
.L51:
	ldr	r3, .L64+8
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L54
	ldr	r1, .L64+12
	ldr	r3, [r1]
	cmp	r3, #0
	ble	.L54
	ldr	ip, .L64+20
	ldr	lr, [r1, #8]
	ldr	r0, [ip]
	sub	r3, r3, lr
	cmp	r0, #0
	str	r3, [r1]
	ble	.L54
	sub	r3, r3, r0
	cmp	r3, #79
	movle	r3, #1
	suble	r0, r0, #1
	strle	r0, [ip]
	strle	r3, [r2]
.L54:
	ldr	r3, .L64+8
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L57
	ldr	r1, .L64+12
	ldr	r3, [r1]
	ldr	r0, [r1, #20]
	add	r0, r3, r0
	cmp	r0, #255
	ble	.L62
.L57:
	ldr	r3, .L64+8
	ldrh	r3, [r3, #48]
	tst	r3, #1
	beq	.L63
.L46:
	pop	{r4, lr}
	bx	lr
.L61:
	ldr	lr, .L64+16
	ldr	r4, [r0, #12]
	ldr	ip, [lr]
	add	r3, r3, r4
	cmp	ip, #272
	str	r3, [r0, #4]
	bge	.L51
	add	r3, r3, ip
	cmp	r3, #120
	movgt	r3, #2
	addgt	ip, ip, #1
	strgt	ip, [lr]
	strgt	r3, [r1]
	b	.L51
.L62:
	ldr	ip, .L64+20
	ldr	lr, [r1, #8]
	ldr	r0, [ip]
	add	r3, r3, lr
	cmp	r0, #95
	str	r3, [r1]
	bgt	.L57
	add	r3, r3, r0
	cmp	r3, #80
	movgt	r3, #2
	strgt	r3, [r2]
	ldr	r3, .L64+8
	ldrh	r3, [r3, #48]
	addgt	r0, r0, #1
	strgt	r0, [ip]
	tst	r3, #1
	bne	.L46
.L63:
	pop	{r4, lr}
	b	fireBullet
.L65:
	.align	2
.L64:
	.word	hshift
	.word	vshift
	.word	67109120
	.word	puffle
	.word	hOff
	.word	vOff
	.size	updatePlayer, .-updatePlayer
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
	push	{r4, lr}
	bl	updatePlayer
	mov	ip, #0
	ldr	r3, .L76
	add	r0, r3, #140
.L70:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L67
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #16]
	add	r2, r1, r2
	cmp	r2, #512
	ble	.L68
	ldr	r2, [r3, #8]
	sub	r2, r1, r2
	cmp	r2, #239
	strgt	ip, [r3, #24]
	bgt	.L67
.L68:
	ldr	r2, [r3, #12]
	add	r1, r2, r1
	str	r1, [r3, #4]
.L67:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L70
	ldr	r3, .L76+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	bullets
	.word	updateObstacles
	.size	updateGame, .-updateGame
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
	mov	r4, #64
	ldr	r3, .L83
	ldr	r2, .L83+4
	add	ip, r3, #40
.L80:
	ldr	r1, [r2, #24]
	cmp	r1, #1
	ldmeq	r0, {r1, lr}
	orreq	r1, r1, #16384
	strheq	r1, [r3, #168]	@ movhi
	strheq	lr, [r3, #170]	@ movhi
	strheq	r4, [r3, #172]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #28
	bne	.L80
	pop	{r4, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	shadowOAM
	.word	bullets
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
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #16]
	add	r3, r2, r3
	cmp	r3, #512
	bgt	.L92
.L87:
	ldr	r3, [r0, #12]
	add	r2, r3, r2
	str	r2, [r0, #4]
	bx	lr
.L92:
	ldr	r3, [r0, #8]
	sub	r3, r2, r3
	cmp	r3, #239
	ble	.L87
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawWords
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWords, %function
drawWords:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #16384
	mov	r1, #32768
	mov	r2, #7
	ldr	r3, .L94
	strh	r0, [r3, #208]	@ movhi
	strh	r1, [r3, #210]	@ movhi
	strh	r2, [r3, #212]	@ movhi
	bx	lr
.L95:
	.align	2
.L94:
	.word	shadowOAM
	.size	drawWords, .-drawWords
	.comm	puffle,48,4
	.global	gasLevel
	.global	lives
	.global	score
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	vshift,4,4
	.comm	hshift,4,4
	.comm	coins,240,4
	.comm	fuels,60,4
	.comm	balloons,336,4
	.comm	bullets,140,4
	.data
	.align	2
	.type	gasLevel, %object
	.size	gasLevel, 4
gasLevel:
	.word	100
	.type	lives, %object
	.size	lives, 4
lives:
	.word	3
	.bss
	.align	2
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
