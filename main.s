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
	.file	"main.c"
	.text
	.align	2
	.global	goToSplash
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSplash, %function
goToSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+40
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #7936
	mov	r3, #512
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r2, #256
	ldr	r0, .L4+48
	ldr	r1, .L4+52
	strh	r3, [r5, #16]	@ movhi
	strh	r3, [r5, #18]	@ movhi
	str	r3, [r0]
	str	r3, [r1]
	strh	r2, [r5]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	splashScreenPal
	.word	5168
	.word	splashScreenTiles
	.word	100726784
	.word	splashScreenMap
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.word	seed
	.size	goToSplash, .-goToSplash
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #4352
	mov	r1, #0
	push	{r4, lr}
	strh	r2, [r3]	@ movhi
	add	r3, r3, #256
	ldrh	ip, [r3, #48]
	ldr	r0, .L8
	ldr	r2, .L8+4
	ldr	r3, .L8+8
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToSplash
.L9:
	.align	2
.L8:
	.word	buttons
	.word	oldButtons
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #2
	bxne	lr
	b	goToSplash
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r5, .L16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+4
	mov	lr, pc
	bx	r5
	mov	r4, #67108864
	mov	r2, #7936
	mov	r3, #3664
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L16+12
	mov	r3, #1024
	ldr	r2, .L16+16
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L16+20
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L16+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #1
	mov	r3, #256
	ldr	r2, .L16+28
	str	r1, [r2]
	strh	r3, [r4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	instructionScreenPal
	.word	instructionScreenTiles
	.word	instructionScreenMap
	.word	100726784
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #24064
	ldr	r4, .L20+4
	strh	r3, [r2]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r4
	mov	r3, #2944
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L20+16
	ldr	r1, .L20+20
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+28
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L20+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	waitForVBlank
	.word	DMANow
	.word	backgroundPal
	.word	backgroundTiles
	.word	100724736
	.word	backgroundMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	splash
	.syntax unified
	.arm
	.fpu softvfp
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L34
	ldr	r5, .L34+4
	ldr	r3, .L34+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldrh	r2, [r5]
	add	r3, r3, #1
	tst	r2, #1
	str	r3, [r4]
	beq	.L23
	ldr	r3, .L34+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L32
.L23:
	tst	r2, #2
	beq	.L22
	ldr	r3, .L34+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L33
.L22:
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	ldr	r0, [r4]
	ldr	r3, .L34+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+20
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L32:
	bl	goToInstructions
	ldrh	r2, [r5]
	b	.L23
.L35:
	.align	2
.L34:
	.word	seed
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	srand
	.word	initGame
	.size	splash, .-splash
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L48
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L37
	ldr	r2, .L48+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L46
.L37:
	tst	r3, #8
	beq	.L36
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L47
.L36:
	pop	{r4, lr}
	bx	lr
.L47:
	ldr	r2, .L48+8
	ldr	r3, .L48+12
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L46:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L37
.L49:
	.align	2
.L48:
	.word	oldButtons
	.word	buttons
	.word	seed
	.word	srand
	.word	initGame
	.size	instructions, .-instructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L52
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+4
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r3, #7936
	mov	r2, #100663296
	strh	r3, [r1, #8]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	mov	r3, #3504
	strh	r0, [r1, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L52+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L52+12
	ldr	r1, .L52+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L52+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L52+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L52+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100726784
	.word	pauseScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L66
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L55
	ldr	r2, .L66+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L64
.L55:
	tst	r3, #8
	beq	.L54
	ldr	r3, .L66+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
.L54:
	pop	{r4, lr}
	bx	lr
.L65:
	pop	{r4, lr}
	b	goToGame
.L64:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L55
.L67:
	.align	2
.L66:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L70
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L70+4
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r3, #7936
	mov	r2, #100663296
	strh	r3, [r1, #8]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	mov	r3, #2720
	strh	r0, [r1, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L70+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L70+12
	ldr	r1, .L70+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L70+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L70+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L70+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L74
	ldrh	r3, [r3]
	tst	r3, #2
	bxeq	lr
	b	win.part.0
.L75:
	.align	2
.L74:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L78
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L78+4
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r3, #7936
	mov	r2, #100663296
	strh	r3, [r1, #8]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	mov	r3, #3072
	strh	r0, [r1, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L78+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L78+12
	ldr	r1, .L78+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L78+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L78+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L78+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L79:
	.align	2
.L78:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLose, .-goToLose
	.global	__aeabi_fcmple
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L93
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L81
	ldr	r3, .L93+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L91
.L81:
	ldr	r2, .L93+16
	ldr	r3, .L93+20
	ldr	r2, [r2, #4]
	cmp	r2, r3
	bgt	.L92
.L82:
	ldr	r3, .L93+24
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L83
	ldr	r2, .L93+28
	mov	r1, #0
	ldr	r3, .L93+32
	ldr	r0, [r2]	@ float
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L83
	pop	{r4, lr}
	bx	lr
.L83:
	pop	{r4, lr}
	b	goToLose
.L92:
	bl	goToWin
	b	.L82
.L91:
	bl	goToPause
	b	.L81
.L94:
	.align	2
.L93:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	puffle
	.word	474
	.word	lives
	.word	gasLevel
	.word	__aeabi_fcmple
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r6, .L110
	ldr	fp, .L110+4
	ldr	r3, .L110+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L110+12
	ldr	r1, [r6]
	ldrh	r0, [fp]
	ldr	r10, .L110+16
	ldr	r9, .L110+20
	ldr	r8, .L110+24
	ldr	r7, .L110+28
	ldr	r4, .L110+32
.L97:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r1, #5
	ldrls	pc, [pc, r1, asl #2]
	b	.L106
.L99:
	.word	.L104
	.word	.L103
	.word	.L102
	.word	.L101
	.word	.L100
	.word	.L98
.L98:
	tst	r0, #2
	beq	.L106
	ldr	r3, .L110+36
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L97
.L100:
	tst	r0, #2
	beq	.L106
	ldr	r3, .L110+40
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L97
.L101:
	mov	lr, pc
	bx	r8
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L97
.L102:
	mov	lr, pc
	bx	r9
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L97
.L103:
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L97
.L104:
	mov	lr, pc
	bx	r10
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L97
.L106:
	mov	r0, r3
	b	.L97
.L111:
	.align	2
.L110:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	splash
	.word	game
	.word	pause
	.word	instructions
	.word	67109120
	.word	lose.part.0
	.word	win.part.0
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	coins,320,4
	.comm	fuels,84,4
	.comm	balloons,364,4
	.comm	bullets,140,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
