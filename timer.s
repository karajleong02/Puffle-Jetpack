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
	mov	r2, #0
	ldr	r3, .L7
	ldrh	r1, [r3, #2]
	tst	r1, #16
	push	{r4, r5, r6, r7, r8, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L3
	ldr	r4, .L7+4
	ldr	r5, [r4]
	ldr	r6, .L7+8
	add	r7, r5, #1
	ldr	r0, [r6]	@ float
	mov	r1, #1073741824
	str	r7, [r4]
	ldr	r3, .L7+12
	mov	lr, pc
	bx	r3
	cmp	r7, #99
	subgt	r5, r5, #99
	str	r0, [r6]	@ float
	strgt	r5, [r4]
.L3:
	mov	r1, #1
	ldr	r3, .L7
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	67109376
	.word	time_s
	.word	gasLevel
	.word	__aeabi_fsub
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
	str	lr, [sp, #-4]!
	mov	r1, #49152
	mov	lr, #1
	mov	r2, #195
	mov	ip, #16
	ldr	r3, .L11
	ldr	r0, .L11+4
	strh	lr, [r3, #6]	@ movhi
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L12:
	.align	2
.L11:
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
	mov	ip, #1
	mov	r1, #49152
	mov	r2, #195
	mov	r0, #67108864
	ldr	r3, .L15
	push	{r4, lr}
	strh	ip, [r3, #6]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	ldrh	r2, [r3, #50]
	orr	r2, r2, #16384
	orr	r2, r2, #13
	ldrh	r1, [r0, #4]
	add	r3, r3, #256
	strh	r2, [r3, #-206]	@ movhi
	ldr	lr, .L15+4
	strh	ip, [r3, #8]	@ movhi
	ldr	r2, .L15+8
	ldr	ip, .L15+12
	orr	r1, r1, #8
	strh	lr, [r3]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	pop	{r4, lr}
	str	ip, [r2, #4092]
	bx	lr
.L16:
	.align	2
.L15:
	.word	67109120
	.word	4113
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.comm	time_cs,4,4
	.comm	time_s,4,4
	.comm	time_m,4,4
	.comm	bullets,256,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
