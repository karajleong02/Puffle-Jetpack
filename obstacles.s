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
	mov	r10, #42
	mov	r5, #0
	ldr	r4, .L6
	ldr	r6, .L6+4
	ldr	r9, .L6+8
	ldr	r8, .L6+12
	add	r7, r4, #880
.L2:
	str	r10, [r4, #4]
	mov	lr, pc
	bx	r6
	mov	ip, #2
	mov	r1, #13
	mov	r2, #32
	smull	r3, lr, r9, r0
	asr	r3, r0, #31
	add	lr, lr, r0
	rsb	r3, r3, lr, asr #6
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl ip
	add	r0, r0, #12
	str	ip, [r4, #12]
	str	r1, [r4, #16]
	str	r2, [r4, #20]
	str	r5, [r4, #8]
	str	r5, [r4, #24]
	str	r0, [r4]
	mov	lr, pc
	bx	r6
	mov	r2, #1
	mov	r1, #5
	smull	r3, ip, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr r2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	str	r5, [r4, #36]
	str	r0, [r4, #28]
	str	r1, [r4, #32]
	str	r2, [r4, #40]
	add	r4, r4, #44
	cmp	r4, r7
	add	r10, r10, #33
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
	ldr	r4, .L24
	ldr	r5, .L24+4
	ldr	r6, .L24+8
	ldr	r9, .L24+12
	ldr	r8, .L24+16
	ldr	fp, .L24+20
	ldr	r10, .L24+24
	sub	sp, sp, #28
	add	r7, r4, #880
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
	beq	.L10
	mov	r1, #1
	mov	r2, #0
	ldr	r0, .L24+28
	ldr	r3, [r0]
	sub	r3, r3, #1
	str	r3, [r0]
	ldrh	r3, [r5]
	orr	r3, r3, #512
	strh	r3, [r5]	@ movhi
	str	r1, [r4, #36]
	str	r2, [r4, #40]
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
	ldr	r1, .L24+32
	cmp	r2, r1
	bhi	.L13
	ldr	r0, [r4, #28]
	str	r3, [sp, #20]
	ldr	r2, .L24+36
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
.L25:
	.align	2
.L24:
	.word	balloons
	.word	shadowOAM+8
	.word	puffle
	.word	collision
	.word	hOff
	.word	-1030792151
	.word	85899345
	.word	lives
	.word	171798690
	.word	__aeabi_idivmod
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
	ldr	r3, .L34
	ldr	ip, [r3]
	ldr	r3, .L34+4
	push	{r4, r5, r6, r7, lr}
	lsl	r5, ip, #16
	ldr	r2, .L34+8
	ldr	r4, .L34+12
	ldr	r6, .L34+16
	lsr	r5, r5, #16
	add	lr, r3, #880
	b	.L29
.L33:
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L28:
	add	r3, r3, #44
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L32
.L29:
	ldr	r1, [r3, #40]
	cmp	r1, #0
	beq	.L33
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #16]
	add	r1, r0, r1
	sub	r1, r1, ip
	cmp	r1, #0
	sub	r7, r0, ip
	blt	.L28
	cmp	r7, #240
	bgt	.L28
	ldr	r1, [r3, #28]
	ldrb	r7, [r3]	@ zero_extendqisi2
	sub	r0, r0, r5
	and	r0, r0, r6
	lsl	r1, r1, #7
	add	r3, r3, #44
	orr	r0, r0, r4
	add	r1, r1, #68
	orr	r7, r7, r4
	cmp	r3, lr
	strh	r0, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	strh	r7, [r2, #8]	@ movhi
	add	r2, r2, #8
	bne	.L29
.L32:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	spritehOff
	.word	balloons
	.word	shadowOAM
	.word	-32768
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
	mov	r3, #100
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L38
	ldr	r10, .L38+4
	str	r3, [r4, #4]
	mov	lr, pc
	bx	r10
	mov	r5, #0
	mov	r8, #10
	mov	r7, #15
	mov	r6, #1
	mov	r2, #324
	ldr	r9, .L38+8
	smull	r3, r1, r9, r0
	asr	r3, r0, #31
	add	r1, r1, r0
	rsb	r3, r3, r1, asr #6
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #12
	str	r0, [r4]
	str	r2, [r4, #32]
	str	r5, [r4, #8]
	str	r5, [r4, #24]
	str	r8, [r4, #12]
	str	r7, [r4, #16]
	str	r6, [r4, #20]
	mov	lr, pc
	bx	r10
	smull	r3, r9, r0, r9
	asr	r3, r0, #31
	add	r9, r9, r0
	rsb	r3, r3, r9, asr #6
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #12
	str	r5, [r4, #36]
	str	r8, [r4, #40]
	str	r7, [r4, #44]
	str	r6, [r4, #48]
	str	r5, [r4, #52]
	str	r0, [r4, #28]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	fuels
	.word	rand
	.word	-2078209981
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
	ldr	r4, .L55
	ldr	r6, [r4, #24]
	cmp	r6, #0
	mov	r7, #0
	ldr	r5, .L55+4
	ldr	r8, .L55+8
	ldr	r9, .L55+12
	ldr	fp, .L55+16
	ldr	r10, .L55+20
	sub	sp, sp, #20
	beq	.L54
.L42:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	ldr	r2, .L55+24
	beq	.L44
	ldr	r2, [r2]
	ldr	r3, [r4, #4]
	sub	r3, r3, r2
	cmp	r3, #0
	movlt	r3, #0
	strlt	r3, [r4, #20]
.L44:
	cmp	r7, #1
	add	r4, r4, #28
	add	r5, r5, #8
	bne	.L46
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L46:
	ldr	r6, [r4, #24]
	cmp	r6, #0
	mov	r7, #1
	bne	.L42
.L54:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #12]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L42
	mov	r3, #1
	ldrh	ip, [r5, #112]
	orr	ip, ip, #512
	mov	r0, r10
	str	r3, [r4, #24]
	mov	r2, r6
	ldr	r1, [fp]
	str	r6, [r4, #20]
	strh	ip, [r5, #112]	@ movhi
	ldr	r3, .L55+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r0, r3
	ldr	r3, .L55+32
	mov	lr, pc
	bx	r3
	b	.L42
.L56:
	.align	2
.L55:
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
	push	{r4, r5, r6, r7, lr}
	mov	ip, #0
	mov	r5, #66
	ldr	r3, .L64
	ldr	lr, [r3]
	ldr	r2, .L64+4
	lsl	r4, lr, #16
	ldr	r3, .L64+8
	ldr	r6, .L64+12
	lsr	r4, r4, #16
.L60:
	ldr	r1, [r3, #20]
	cmp	r1, #0
	bne	.L58
	ldrh	r1, [r2, #176]
	orr	r1, r1, #512
	strh	r1, [r2, #176]	@ movhi
.L59:
	cmp	ip, #1
	add	r3, r3, #28
	add	r2, r2, #8
	bne	.L61
.L63:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L58:
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #12]
	add	r1, r0, r1
	sub	r1, r1, lr
	cmp	r1, #0
	sub	r7, r0, lr
	blt	.L59
	cmp	r7, #240
	bgt	.L59
	sub	r0, r0, r4
	ldrb	r1, [r3]	@ zero_extendqisi2
	and	r0, r0, r6
	orr	r0, r0, #16384
	cmp	ip, #1
	strh	r0, [r2, #178]	@ movhi
	strh	r5, [r2, #180]	@ movhi
	strh	r1, [r2, #176]	@ movhi
	add	r3, r3, #28
	add	r2, r2, #8
	beq	.L63
.L61:
	mov	ip, #1
	b	.L60
.L65:
	.align	2
.L64:
	.word	spritehOff
	.word	shadowOAM
	.word	fuels
	.word	511
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
	mov	r9, #70
	mov	r10, #0
	mov	r8, #6
	ldr	r4, .L70
	ldr	r7, .L70+4
	ldr	r6, .L70+8
	add	r5, r4, #960
.L67:
	str	r9, [r4, #4]
	mov	lr, pc
	bx	r7
	mov	r1, #13
	mov	r2, #1
	smull	r3, ip, r6, r0
	asr	r3, r0, #31
	add	ip, ip, r0
	rsb	r3, r3, ip, asr #6
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #12
	str	r10, [r4, #8]
	str	r8, [r4, #12]
	str	r10, [r4, #28]
	str	r0, [r4]
	str	r1, [r4, #16]
	str	r2, [r4, #20]
	add	r4, r4, #32
	cmp	r4, r5
	add	r9, r9, #21
	bne	.L67
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	coins
	.word	rand
	.word	-2078209981
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
	ldr	r4, .L89
	ldr	r5, .L89+4
	ldr	r7, .L89+8
	ldr	r9, .L89+12
	ldr	fp, .L89+16
	ldr	r10, .L89+20
	sub	sp, sp, #20
	add	r8, r4, #960
	b	.L79
.L76:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	ldr	r2, .L89+24
	beq	.L78
	ldr	r2, [r2]
	ldr	r3, [r4, #4]
	sub	r3, r3, r2
	cmp	r3, #0
	movlt	r3, #0
	strlt	r3, [r4, #20]
.L78:
	add	r4, r4, #32
	cmp	r4, r8
	add	r5, r5, #8
	beq	.L88
.L79:
	ldr	r6, [r4, #28]
	cmp	r6, #0
	bne	.L76
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
	beq	.L76
	mov	ip, #1
	ldrh	r3, [r5]
	ldr	r1, .L89+28
	orr	r3, r3, #512
	strh	r3, [r5]	@ movhi
	mov	r2, r6
	ldr	r3, .L89+32
	mov	r0, fp
	str	r6, [r4, #20]
	ldr	r1, [r1]
	str	ip, [r4, #28]
	mov	lr, pc
	bx	r3
	ldr	r3, [r10]
	add	r3, r3, #5
	str	r3, [r10]
	b	.L76
.L88:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	coins
	.word	shadowOAM+192
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
	ldr	r3, .L101
	ldr	ip, [r3]
	ldr	r3, .L101+4
	push	{r4, r5, r6, r7, lr}
	lsl	r4, ip, #16
	mov	r6, #64
	ldr	r2, .L101+8
	ldr	r5, .L101+12
	lsr	r4, r4, #16
	add	lr, r3, #240
	b	.L96
.L100:
	ldrh	r1, [r3, #192]
	orr	r1, r1, #512
	strh	r1, [r3, #192]	@ movhi
.L95:
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #32
	beq	.L99
.L96:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	beq	.L100
	ldr	r0, [r2, #4]
	ldr	r1, [r2, #12]
	add	r1, r0, r1
	sub	r1, r1, ip
	cmp	r1, #0
	sub	r7, r0, ip
	blt	.L95
	cmp	r7, #240
	bgt	.L95
	sub	r0, r0, r4
	ldrb	r1, [r2]	@ zero_extendqisi2
	and	r0, r0, r5
	orr	r0, r0, #16384
	strh	r0, [r3, #194]	@ movhi
	strh	r6, [r3, #196]	@ movhi
	strh	r1, [r3, #192]	@ movhi
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #32
	bne	.L96
.L99:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	spritehOff
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
	.global	cheat
	.comm	coins,960,4
	.comm	fuels,56,4
	.comm	balloons,880,4
	.comm	bullets,256,4
	.bss
	.align	2
	.type	cheat, %object
	.size	cheat, 4
cheat:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
