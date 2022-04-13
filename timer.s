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
	.file	"timer.c"
	.text
	.global	__aeabi_fsub
	.align	2
	.global	interruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r2, .L19
	ldrh	r1, [r2, #2]
	tst	r1, #8
	push	{r4, r5, r6, r7, r8, lr}
	strh	r3, [r2, #8]	@ movhi
	beq	.L3
	ldr	r1, .L19+4
	ldr	r2, [r1]
	add	r2, r2, #1
	cmp	r2, #99
	movle	r3, r2
	str	r3, [r1]
.L3:
	ldr	r3, .L19
	ldrh	r3, [r3, #2]
	tst	r3, #16
	beq	.L7
	ldr	r4, .L19+8
	ldr	r5, [r4]
	ldr	r6, .L19+12
	add	r7, r5, #1
	ldr	r0, [r6]	@ float
	mov	r1, #1065353216
	str	r7, [r4]
	ldr	r3, .L19+16
	mov	lr, pc
	bx	r3
	cmp	r7, #99
	subgt	r5, r5, #99
	str	r0, [r6]	@ float
	strgt	r5, [r4]
.L7:
	ldr	r3, .L19
	ldrh	r3, [r3, #2]
	tst	r3, #32
	ldrne	r2, .L19+20
	ldrne	r3, [r2]
	addne	r3, r3, #1
	strne	r3, [r2]
	ldr	r3, .L19
	ldrh	r3, [r3, #2]
	tst	r3, #4096
	beq	.L10
	ldr	r2, .L19+24
	ldrh	r3, [r2, #48]
	ands	r3, r3, #8
	bne	.L10
	mov	r1, #195
	mov	r0, #196
	ldr	r4, .L19+4
	ldr	lr, .L19+8
	ldr	ip, .L19+20
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	str	r3, [r4]
	str	r3, [lr]
	str	r3, [ip]
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r2, #6]	@ movhi
	strh	r0, [r2, #10]	@ movhi
.L10:
	mov	r1, #1
	ldr	r3, .L19
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	67109376
	.word	time_cs
	.word	time_s
	.word	gasLevel
	.word	__aeabi_fsub
	.word	time_m
	.word	67109120
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	enableTimerInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	enableTimerInterrupts, %function
enableTimerInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #195
	mov	r2, #0
	mvn	r6, #163
	mov	r5, #1
	mov	r4, #49152
	mov	lr, #56
	mvn	ip, #59
	mov	r0, #196
	ldr	r3, .L23
	strh	r2, [r3, #2]	@ movhi
	strh	r6, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r5, [r3, #6]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	ldr	r1, .L23+4
	strh	r2, [r3, #10]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #10]	@ movhi
	bx	lr
.L24:
	.align	2
.L23:
	.word	67109120
	.word	67109376
	.size	enableTimerInterrupts, .-enableTimerInterrupts
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #0
	mov	r2, #195
	mov	r4, #1
	mvn	r6, #163
	mov	r5, #49152
	mvn	r0, #59
	mov	r1, #196
	mov	lr, #67108864
	ldr	r3, .L27
	strh	ip, [r3, #2]	@ movhi
	strh	r6, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	strh	r5, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	ldrh	r2, [r3, #50]
	orr	r2, r2, #16384
	ldrh	r1, [lr, #4]
	orr	r2, r2, #13
	strh	r2, [r3, #50]	@ movhi
	ldr	r0, .L27+4
	ldr	ip, .L27+8
	ldr	r3, .L27+12
	ldr	r2, .L27+16
	orr	r1, r1, #8
	strh	r4, [r0, #8]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	str	r2, [r3, #4092]
	pop	{r4, r5, r6, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	67109120
	.word	67109376
	.word	4153
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.comm	time_cs,4,4
	.comm	time_s,4,4
	.comm	time_m,4,4
	.comm	bullets,140,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
