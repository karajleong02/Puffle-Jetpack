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
	mov	r0, #1
	push	{r4, r5, r6, lr}
	mov	ip, #45
	mov	r6, r0
	mov	r5, #2
	mov	lr, #16
	mov	r2, #0
	ldr	r3, .L6
	ldr	r4, .L6+4
.L2:
	rsb	r1, r0, r0, lsl #4
	str	ip, [r3, #4]
	lsl	r1, r1, #1
	add	ip, ip, #60
	add	r1, r1, #75
	cmp	ip, r4
	str	r5, [r3, #8]
	str	lr, [r3, #12]
	str	lr, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r6, [r3, #44]
	str	r1, [r3]
	rsb	r0, r0, #0
	add	r3, r3, #48
	bne	.L2
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	balloons
	.word	465
	.size	initBalloons, .-initBalloons
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
	mov	r4, #1
	mov	r0, #100
	mvn	r1, #0
	mov	ip, #16
	ldr	r3, .L14
	ldr	lr, .L14+4
.L9:
	rsb	r2, r1, r1, lsl #4
	str	r0, [r3, #4]
	lsl	r2, r2, #1
	add	r0, r0, #115
	add	r2, r2, #75
	cmp	r0, lr
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r4, [r3, #16]
	str	r2, [r3]
	rsb	r1, r1, #0
	add	r3, r3, #20
	bne	.L9
	mov	r0, #70
	mvn	r1, #0
	mov	ip, #16
	mov	r4, #1
	ldr	r3, .L14+8
	ldr	lr, .L14+12
.L10:
	rsb	r2, r1, r1, lsl #4
	str	r0, [r3, #4]
	lsl	r2, r2, #1
	add	r0, r0, #50
	add	r2, r2, #75
	cmp	r0, lr
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r4, [r3, #16]
	str	r2, [r3]
	rsb	r1, r1, #0
	add	r3, r3, #24
	bne	.L10
	pop	{r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	fuels
	.word	445
	.word	coins
	.word	570
	.size	initObstacles, .-initObstacles
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
	mov	r7, #0
	mov	fp, #1
	ldr	r8, .L32
	ldr	r10, .L32+4
	sub	sp, sp, #20
	add	r9, r8, #240
.L23:
	ldr	r3, .L32+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L30
	cmp	r3, #2
	ldreq	r3, [r8, #4]
	subeq	r3, r3, #1
	streq	r3, [r8, #4]
.L18:
	ldr	r3, .L32+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L31
	cmp	r3, #2
	ldreq	r3, [r8]
	subeq	r3, r3, #1
	streq	r3, [r8]
.L21:
	ldr	r5, .L32+16
	ldr	r4, .L32
.L20:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #12
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldm	r2, {r2, r3}
	ldr	r6, [r5, #24]
	mov	lr, pc
	bx	r10
	add	r4, r4, #48
	tst	r6, r0
	strne	r7, [r5, #24]
	str	r7, [r4, #-4]
	str	fp, [r4, #-8]
	cmp	r4, r9
	add	r5, r5, #28
	bne	.L20
	ldr	r3, .L32+20
	add	r8, r8, #48
	cmp	r8, r3
	bne	.L23
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L31:
	ldr	r3, [r8]
	add	r3, r3, #1
	str	r3, [r8]
	b	.L21
.L30:
	ldr	r3, [r8, #4]
	add	r3, r3, #1
	str	r3, [r8, #4]
	b	.L18
.L33:
	.align	2
.L32:
	.word	balloons
	.word	collision
	.word	hshift
	.word	vshift
	.word	bullets
	.word	balloons+336
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
	ldr	r3, .L40
	ldr	r2, .L40+4
	ldr	lr, .L40+8
	add	r0, r3, #336
.L37:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrheq	r1, [r2, #8]
	ldrbne	ip, [r3]	@ zero_extendqisi2
	andne	r1, r1, lr
	orreq	r1, r1, #512
	orrne	r1, r1, #16384
	add	r3, r3, #48
	strheq	r1, [r2, #8]	@ movhi
	strhne	r4, [r2, #12]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L37
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	balloons
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
	push	{r4, lr}
	mov	r0, #100
	mvn	r1, #0
	mov	ip, #16
	mov	r4, #1
	ldr	r3, .L46
	ldr	lr, .L46+4
.L43:
	rsb	r2, r1, r1, lsl #4
	str	r0, [r3, #4]
	lsl	r2, r2, #1
	add	r0, r0, #115
	add	r2, r2, #75
	cmp	r0, lr
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r4, [r3, #16]
	str	r2, [r3]
	rsb	r1, r1, #0
	add	r3, r3, #20
	bne	.L43
	pop	{r4, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	fuels
	.word	445
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
	@ link register save eliminated.
	ldr	r1, .L58
	ldr	r1, [r1]
	ldr	r2, .L58+4
	ldr	r3, .L58+8
	cmp	r1, #1
	ldr	r2, [r2]
	add	ip, r3, #60
	beq	.L56
.L49:
	cmp	r1, #2
	ldreq	r0, [r3, #4]
	subeq	r0, r0, #1
	streq	r0, [r3, #4]
	cmp	r2, #1
	beq	.L57
.L51:
	cmp	r2, #2
	ldreq	r0, [r3]
	subeq	r0, r0, #1
	streq	r0, [r3]
.L52:
	add	r3, r3, #20
	cmp	r3, ip
	bxeq	lr
	cmp	r1, #1
	bne	.L49
.L56:
	ldr	r0, [r3, #4]
	cmp	r2, #1
	add	r0, r0, #1
	str	r0, [r3, #4]
	bne	.L51
.L57:
	ldr	r0, [r3]
	add	r0, r0, #1
	str	r0, [r3]
	b	.L52
.L59:
	.align	2
.L58:
	.word	hshift
	.word	vshift
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
	ldr	r3, .L66
	ldr	r2, .L66+4
	add	r0, r3, #24
.L63:
	ldr	r1, [r2, #16]
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
	add	r2, r2, #20
	bne	.L63
	ldr	lr, [sp], #4
	bx	lr
.L67:
	.align	2
.L66:
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
	push	{r4, lr}
	mov	r0, #70
	mvn	r1, #0
	mov	ip, #16
	mov	r4, #1
	ldr	r3, .L72
	ldr	lr, .L72+4
.L69:
	rsb	r2, r1, r1, lsl #4
	str	r0, [r3, #4]
	lsl	r2, r2, #1
	add	r0, r0, #50
	add	r2, r2, #75
	cmp	r0, lr
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r4, [r3, #16]
	str	r2, [r3]
	rsb	r1, r1, #0
	add	r3, r3, #24
	bne	.L69
	pop	{r4, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	coins
	.word	570
	.size	initCoin, .-initCoin
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
	@ link register save eliminated.
	ldr	r1, .L83
	ldr	r2, .L83+4
	ldr	r3, .L83+8
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	ip, r3, #240
	b	.L79
.L75:
	cmp	r1, #2
	ldreq	r0, [r3, #4]
	subeq	r0, r0, #1
	streq	r0, [r3, #4]
	cmp	r2, #1
	beq	.L82
.L77:
	cmp	r2, #2
	ldreq	r0, [r3]
	subeq	r0, r0, #1
	streq	r0, [r3]
.L78:
	add	r3, r3, #24
	cmp	r3, ip
	bxeq	lr
.L79:
	cmp	r1, #1
	bne	.L75
	ldr	r0, [r3, #4]
	cmp	r2, #1
	add	r0, r0, #1
	str	r0, [r3, #4]
	bne	.L77
.L82:
	ldr	r0, [r3]
	add	r0, r0, #1
	str	r0, [r3]
	b	.L78
.L84:
	.align	2
.L83:
	.word	hshift
	.word	vshift
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
	ldr	r3, .L93
	ldr	r2, .L93+4
	ldr	lr, .L93+8
	add	r0, r3, #80
.L90:
	ldr	r1, [r2, #16]
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
	add	r2, r2, #24
	bne	.L90
	pop	{r4, lr}
	bx	lr
.L94:
	.align	2
.L93:
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
	.comm	coins,240,4
	.comm	fuels,60,4
	.comm	balloons,336,4
	.comm	bullets,140,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
