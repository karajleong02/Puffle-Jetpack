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
	mov	r8, #80
	mov	r7, #14
	mov	r6, #3
	ldr	r3, .L6
	mov	lr, pc
	bx	r3
	mov	r5, #0
	ldr	r1, .L6+4
	mvn	fp, #0
	str	r8, [r1]
	mov	r10, #1
	mov	r9, #24
	mov	r4, r8
	mov	r8, #32
	mov	r2, r7
	mov	r0, r6
	mov	lr, #2
	mov	ip, #7
	str	r5, [r1, #24]
	str	r5, [r1, #28]
	str	r5, [r1, #32]
	str	r5, [r1, #36]
	str	r5, [r1, #44]
	mov	r3, r5
	ldr	r5, .L6+8
	str	fp, [r1, #8]
	str	r10, [r1, #12]
	str	r9, [r1, #16]
	str	r8, [r1, #20]
	str	r7, [r1, #4]
	str	r6, [r1, #40]
	add	r1, r5, #256
.L2:
	str	r2, [r5, #8]
	str	r2, [r5, #12]
	str	lr, [r5, #16]
	str	ip, [r5, #20]
	str	r0, [r5, #24]
	str	r3, [r5, #28]
	stm	r5, {r3, r4}
	add	r5, r5, #32
	cmp	r5, r1
	bne	.L2
	mov	lr, #9
	mov	r1, #29
	ldr	ip, .L6+12
	ldr	r2, .L6+16
	str	lr, [ip]
	str	r1, [r2]
	ldr	lr, .L6+20
	ldr	r2, .L6+24
	ldr	ip, .L6+28
	ldr	r1, .L6+32
	str	r3, [lr]
	str	r3, [ip]
	str	r0, [r2]
	str	r1, [r2, #4]	@ float
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	initObstacles
	.word	puffle
	.word	bullets
	.word	hOff
	.word	screenBlock
	.word	vOff
	.word	.LANCHOR1
	.word	.LANCHOR0
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
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #80
	mov	r5, #14
	mvn	r4, #0
	mov	lr, #1
	mov	ip, #24
	mov	r0, #32
	mov	r1, #3
	ldr	r3, .L10
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	pop	{r4, r5, r6, lr}
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
	.word	pufflehOff
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
	mov	r1, #0
	mov	r5, #2
	mov	r4, #7
	mov	lr, #3
	ldr	r2, .L22
	ldr	r3, .L22+4
	ldr	ip, [r2]
	ldr	r2, [r2, #4]
	add	r0, r3, #256
.L19:
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #28]
	stm	r3, {r1, ip}
	add	r3, r3, #32
	cmp	r3, r0
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
	mov	r3, #0
	ldr	r1, .L38
	b	.L30
.L25:
	add	r3, r3, #1
	cmp	r3, #8
	bxeq	lr
.L30:
	ldr	r2, [r1, r3, lsl #5]
	cmp	r2, #0
	lsl	r2, r3, #5
	bne	.L25
	ldr	r0, .L38+4
	ldr	ip, [r0, #20]
	push	{r4, lr}
	ldr	r1, .L38+8
	ldr	lr, [r0]
	ldr	r4, [r0, #28]
	add	ip, ip, ip, lsr #31
	add	ip, lr, ip, asr #1
	cmp	r4, #1
	add	lr, r1, r2
	str	ip, [lr, #4]
	beq	.L37
	cmp	r4, #0
	moveq	r4, #2
	ldreq	ip, [r0, #4]
	ldreq	r0, [r0, #16]
	addeq	r0, ip, r0
	ldrne	r0, [lr, #8]
	streq	r0, [lr, #8]
	streq	r4, [r1, r3, lsl #5]
.L27:
	mov	r3, #1
	add	r2, r1, r2
	str	r0, [r2, #12]
	str	r3, [r2, #28]
	pop	{r4, lr}
	bx	lr
.L37:
	ldr	r0, [r0, #4]
	str	r4, [r1, r3, lsl #5]
	str	r0, [lr, #8]
	b	.L27
.L39:
	.align	2
.L38:
	.word	bullets+28
	.word	puffle
	.word	bullets
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
	ldr	r3, .L66
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, r5, r6, lr}
	ldr	r4, .L66+4
	bne	.L42
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L42
	mov	ip, #1
	ldr	r0, .L66+8
	ldr	r1, [r4, #12]
	ldr	r2, [r0]
	sub	r3, r3, r1
	cmp	r2, #0
	str	r3, [r4, #4]
	str	ip, [r4, #28]
	ble	.L42
	sub	r3, r3, r2
	cmp	r3, #119
	bgt	.L42
	ldr	r5, .L66+12
	ldr	lr, .L66+16
	ldr	ip, [r5]
	ldr	r3, [lr]
	sub	r2, r2, r1
	sub	ip, ip, r1
	sub	r1, r3, r1
	str	r2, [r0]
	str	ip, [r5]
	str	r1, [lr]
.L42:
	ldr	r3, .L66
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L45
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #16]
	add	r2, r1, r2
	cmp	r2, #1024
	str	r3, [r4, #28]
	blt	.L61
.L45:
	ldr	r3, .L66
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L48
	ldr	r3, [r4]
	cmp	r3, #12
	bgt	.L62
.L48:
	ldr	r3, .L66
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L51
	ldr	r3, [r4]
	ldr	r2, [r4, #20]
	add	r2, r3, r2
	cmp	r2, #159
	ble	.L63
.L51:
	ldr	r3, .L66+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L53
	ldr	r3, .L66+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L64
.L53:
	ldr	r5, [r4, #24]
	cmp	r5, #29
	movgt	r3, #0
	strgt	r3, [r4, #24]
	bgt	.L40
	ldr	r3, .L66+28
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	beq	.L65
.L55:
	add	r5, r5, #1
	str	r5, [r4, #24]
.L40:
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	ldr	r0, [r4, #36]
	ldr	r3, .L66+32
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
	b	.L55
.L63:
	ldr	r1, .L66+36
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4]
	bge	.L51
	add	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L51
.L62:
	ldr	r1, .L66+36
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4]
	ble	.L48
	sub	r3, r3, r2
	cmp	r3, #79
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L48
.L61:
	ldr	r2, .L66+40
	ldr	r3, [r4, #12]
	ldr	r2, [r2]
	add	r1, r1, r3
	cmp	r2, #30
	str	r1, [r4, #4]
	bgt	.L45
	ldr	r0, .L66+8
	ldr	r2, [r0]
	cmp	r2, #784
	bge	.L45
	ldr	lr, .L66+12
	ldr	ip, [lr]
	add	r1, r1, ip
	cmp	r1, #120
	ble	.L45
	ldr	r5, .L66+16
	ldr	r1, [r5]
	add	r2, r3, r2
	add	ip, r3, ip
	add	r3, r1, r3
	str	r2, [r0]
	str	ip, [lr]
	str	r3, [r5]
	b	.L45
.L64:
	bl	fireBullet
	b	.L53
.L67:
	.align	2
.L66:
	.word	67109120
	.word	puffle
	.word	hOff
	.word	pufflehOff
	.word	spritehOff
	.word	oldButtons
	.word	buttons
	.word	1717986919
	.word	__aeabi_idivmod
	.word	vOff
	.word	screenBlock
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
	push	{r4, r5, r6, lr}
	mov	r6, #512
	mov	r5, #128
	ldr	r2, .L74
	ldr	r3, .L74+4
	ldrh	r4, [r2]
	ldr	lr, .L74+8
	ldr	r2, .L74+12
	add	ip, r3, #64
.L71:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	ldrne	r1, [r2, #8]
	ldrbne	r0, [r2, #4]	@ zero_extendqisi2
	subne	r1, r1, r4
	andne	r1, r1, lr
	orrne	r0, r0, #16384
	strhne	r5, [r3, #4]	@ movhi
	strhne	r1, [r3, #2]	@ movhi
	strhne	r0, [r3]	@ movhi
	strheq	r6, [r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	bne	.L71
	pop	{r4, r5, r6, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	pufflehOff
	.word	shadowOAM+440
	.word	511
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	mov	r5, r0
	ldr	r2, [r0, #20]
	ldr	r3, [r0, #8]
	sub	sp, sp, #16
	beq	.L77
	ldr	r1, [r0]
	cmp	r1, #2
	beq	.L93
	cmp	r1, #1
	beq	.L94
.L77:
	ldr	r4, .L96
	mov	r7, #0
	mov	r10, #1
	ldr	r6, .L96+4
	ldr	r8, .L96+8
	add	r9, r4, #880
	b	.L81
.L85:
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #20]
.L81:
	ldr	r0, [r5, #24]
	ldr	r1, [r5, #4]
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L84
	ldrh	r3, [r6, #8]
	orr	r3, r3, #512
	str	r7, [r5, #28]
	str	r7, [r4, #40]
	str	r10, [r4, #36]
	strh	r3, [r6, #8]	@ movhi
.L84:
	add	r4, r4, #44
	cmp	r9, r4
	add	r6, r6, #8
	bne	.L85
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L93:
	add	r1, r2, r3
	cmp	r1, #1024
	ble	.L79
	ldr	r1, [r0, #12]
	sub	r1, r3, r1
	cmp	r1, #239
	bgt	.L80
.L79:
	ldr	r1, [r5, #16]
	add	r3, r3, r1
	str	r3, [r5, #8]
	b	.L77
.L94:
	cmp	r3, #0
	blt	.L95
.L82:
	ldr	r1, [r5, #16]
	sub	r3, r3, r1
	str	r3, [r5, #8]
	b	.L77
.L95:
	ldr	r1, [r0, #12]
	sub	r1, r1, r3
	cmp	r1, #239
	ble	.L82
.L80:
	mov	r1, #0
	str	r1, [r5, #28]
	b	.L77
.L97:
	.align	2
.L96:
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
	ldr	r3, .L103+8
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	bne	.L99
	ldr	r4, .L103+12
	ldr	r3, .L103+16
	ldr	r0, [r4, #4]	@ float
	mov	lr, pc
	bx	r3
	ldr	r5, .L103+20
	adr	r3, .L103
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	ldr	r3, .L103+24
	mov	lr, pc
	bx	r3
	str	r0, [r4, #4]	@ float
.L99:
	ldr	r3, .L103+28
	mov	lr, pc
	bx	r3
	bl	updatePlayer
	ldr	r4, .L103+32
	add	r5, r4, #256
.L100:
	mov	r0, r4
	add	r4, r4, #32
	bl	updateBullet
	cmp	r4, r5
	bne	.L100
	pop	{r4, r5, r6, lr}
	bx	lr
.L104:
	.align	3
.L103:
	.word	2576980378
	.word	1068079513
	.word	cheat
	.word	.LANCHOR1
	.word	__aeabi_f2d
	.word	__aeabi_dsub
	.word	__aeabi_d2f
	.word	updateObstacles
	.word	bullets
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
	ldr	r4, .L114+8
	cmp	r0, #1
	ldr	r5, [r4, #4]	@ float
	beq	.L113
	mov	r0, r5
	ldr	r3, .L114+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L114+16
	adr	r3, .L114
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	ldr	r3, .L114+20
	mov	lr, pc
	bx	r3
	str	r0, [r4, #4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	mov	r0, r5
	ldr	r3, .L114+24
	ldr	r1, .L114+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L111
	ldr	r3, .L114+32
	str	r3, [r4, #4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L111:
	mov	r0, r5
	ldr	r3, .L114+36
	ldr	r1, .L114+40
	mov	lr, pc
	bx	r3
	str	r0, [r4, #4]	@ float
	pop	{r4, r5, r6, lr}
	bx	lr
.L115:
	.align	3
.L114:
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
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L118
	ldr	r2, .L118+4
	ldr	r1, [r3]
	smull	r0, r3, r2, r1
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #16384
	mov	r6, #448
	mov	ip, #3
	mov	r5, #115
	mov	r4, #121
	mov	lr, #128
	asr	r0, r1, #31
	rsb	r3, r0, r3, asr #2
	smull	r8, r9, r2, r3
	ldr	r8, .L118+8
	smull	r2, r8, r1, r8
	asr	r2, r3, #31
	rsb	r2, r2, r9, asr #2
	add	r2, r2, r2, lsl #2
	add	r9, r3, r3, lsl #2
	sub	r2, r3, r2, lsl #1
	ldr	r3, .L118+12
	sub	r1, r1, r9, lsl #1
	rsb	r0, r0, r8, asr #5
	add	r2, r2, #992
	add	r8, r3, #556
	strh	r2, [r8]	@ movhi
	add	r1, r1, #992
	add	r2, r3, #564
	strh	r1, [r2]	@ movhi
	add	r0, r0, #992
	add	r2, r3, #548
	ldr	r1, .L118+16
	strh	r0, [r2]	@ movhi
	add	r2, r3, #536
	strh	r7, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r3, #540
	strh	r6, [r2]	@ movhi
	add	r1, r3, #544
	add	r2, r3, #552
	add	r3, r3, #560
	strh	r5, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L119:
	.align	2
.L118:
	.word	.LANCHOR0
	.word	1717986919
	.word	1374389535
	.word	shadowOAM
	.word	-32683
	.size	drawScore, .-drawScore
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L139
	mov	ip, #16384
	mov	r3, r4
	mov	r0, #32768
	mov	r2, #384
	ldr	r1, .L139+4
	ldr	r5, .L139+8
	strh	r0, [r4, #2]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	strh	ip, [r4]	@ movhi
	ldr	r2, .L139+12
	strh	r1, [r3, #8]!	@ movhi
	ldr	r7, [r5, #4]	@ float
	ldr	r6, .L139+16
	strh	r2, [r3, #2]	@ movhi
	mov	r0, r7
	ldr	r1, .L139+20
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #256
	strhne	r3, [r4, #12]	@ movhi
	bne	.L123
	mov	r0, r7
	ldr	r1, .L139+24
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #288
	strhne	r3, [r4, #12]	@ movhi
	beq	.L138
.L123:
	ldr	r2, [r5]
	cmp	r2, #3
	mov	r0, #16384
	moveq	r2, #160
	ldr	r3, .L139+28
	ldr	r1, .L139+32
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strheq	r2, [r3, #4]	@ movhi
	beq	.L129
	cmp	r2, #2
	moveq	r2, #192
	strheq	r2, [r3, #4]	@ movhi
	beq	.L129
	cmp	r2, #1
	moveq	r2, #224
	strheq	r2, [r3, #4]	@ movhi
.L129:
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawScore
.L138:
	mov	r0, r7
	ldr	r1, .L139+36
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #320
	moveq	r3, #352
	strh	r3, [r4, #12]	@ movhi
	b	.L123
.L140:
	.align	2
.L139:
	.word	shadowOAM+512
	.word	16387
	.word	.LANCHOR1
	.word	16409
	.word	__aeabi_fcmpgt
	.word	1117126656
	.word	1112014848
	.word	shadowOAM+528
	.word	16592
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
	ldr	r3, .L143
	mov	lr, pc
	bx	r3
	bl	drawPlayer
	bl	drawUI
	bl	drawBullet
	ldr	r3, .L143+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L143+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L143+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L144:
	.align	2
.L143:
	.word	drawObstacles
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.comm	puffle,48,4
	.global	gasLevel
	.comm	screenBlock,4,4
	.global	lives
	.global	score
	.comm	spritehOff,4,4
	.comm	pufflehOff,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	cheat,4,4
	.comm	coins,960,4
	.comm	fuels,56,4
	.comm	balloons,880,4
	.comm	bullets,256,4
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
