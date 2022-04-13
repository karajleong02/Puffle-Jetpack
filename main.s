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
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #0
	strh	r1, [r3]	@ movhi
	add	r3, r3, #256
	ldrh	r0, [r3, #48]
	ldr	r1, .L7
	ldr	r3, .L7+4
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToSplash
.L8:
	.align	2
.L7:
	.word	buttons
	.word	oldButtons
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
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #2
	bxne	lr
	b	goToSplash
.L12:
	.align	2
.L11:
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
	ldr	r5, .L15
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L15+4
	mov	lr, pc
	bx	r5
	mov	r4, #67108864
	mov	r2, #7936
	mov	r3, #3664
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L15+8
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L15+12
	mov	r3, #1024
	ldr	r2, .L15+16
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L15+20
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L15+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #1
	mov	r3, #256
	ldr	r2, .L15+28
	str	r1, [r2]
	strh	r3, [r4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L16:
	.align	2
.L15:
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
	ldr	r3, .L19
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #24064
	ldr	r4, .L19+4
	strh	r3, [r2]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L19+8
	mov	lr, pc
	bx	r4
	mov	r3, #2944
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L19+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L19+16
	ldr	r1, .L19+20
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L19+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L19+28
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L19+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L20:
	.align	2
.L19:
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
	ldr	r4, .L33
	ldr	r5, .L33+4
	ldr	r3, .L33+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldrh	r2, [r5]
	add	r3, r3, #1
	tst	r2, #1
	str	r3, [r4]
	beq	.L22
	ldr	r3, .L33+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L31
.L22:
	tst	r2, #2
	beq	.L21
	ldr	r3, .L33+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L32
.L21:
	pop	{r4, r5, r6, lr}
	bx	lr
.L32:
	ldr	r0, [r4]
	ldr	r3, .L33+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+20
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L31:
	bl	goToInstructions
	ldrh	r2, [r5]
	b	.L22
.L34:
	.align	2
.L33:
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
	ldr	r4, .L47
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L36
	ldr	r2, .L47+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L45
.L36:
	tst	r3, #8
	beq	.L35
	ldr	r3, .L47+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L46
.L35:
	pop	{r4, lr}
	bx	lr
.L46:
	ldr	r2, .L47+8
	ldr	r3, .L47+12
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L45:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L36
.L48:
	.align	2
.L47:
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
	ldr	r4, .L51
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L51+4
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
	ldr	r1, .L51+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L51+12
	ldr	r1, .L51+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L51+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L51+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L51+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
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
	ldr	r4, .L65
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L54
	ldr	r2, .L65+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L63
.L54:
	tst	r3, #8
	beq	.L53
	ldr	r3, .L65+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L64
.L53:
	pop	{r4, lr}
	bx	lr
.L64:
	pop	{r4, lr}
	b	goToGame
.L63:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L54
.L66:
	.align	2
.L65:
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
	ldr	r4, .L69
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L69+4
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
	ldr	r1, .L69+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L69+12
	ldr	r1, .L69+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L69+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L69+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L69+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L70:
	.align	2
.L69:
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
	ldr	r3, .L73
	ldrh	r3, [r3]
	tst	r3, #2
	bxeq	lr
	b	win.part.0
.L74:
	.align	2
.L73:
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
	ldr	r4, .L77
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L77+4
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
	ldr	r1, .L77+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L77+12
	ldr	r1, .L77+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L77+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L77+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L78:
	.align	2
.L77:
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
	ldr	r3, .L92
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L80
	ldr	r3, .L92+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L90
.L80:
	ldr	r2, .L92+16
	ldr	r3, .L92+20
	ldr	r2, [r2, #4]
	cmp	r2, r3
	bgt	.L91
.L81:
	ldr	r3, .L92+24
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L82
	ldr	r2, .L92+28
	mov	r1, #0
	ldr	r3, .L92+32
	ldr	r0, [r2]	@ float
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L82
	pop	{r4, lr}
	bx	lr
.L82:
	pop	{r4, lr}
	b	goToLose
.L91:
	bl	goToWin
	b	.L81
.L90:
	bl	goToPause
	b	.L80
.L93:
	.align	2
.L92:
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
	mov	r3, #67108864
	mov	r2, #4352
	mov	r1, #0
	push	{r4, r7, fp, lr}
	strh	r2, [r3]	@ movhi
	ldr	r4, .L109
	ldr	fp, .L109+4
	ldrh	r0, [r4, #48]
	ldr	r5, .L109+8
	ldr	r6, .L109+12
	ldr	r3, .L109+16
	strh	r1, [r5]	@ movhi
	strh	r0, [fp]	@ movhi
	ldr	r10, .L109+20
	mov	lr, pc
	bx	r3
	ldr	r9, .L109+24
	ldrh	r0, [fp]
	ldr	r1, [r6]
	ldr	r8, .L109+28
	ldr	r7, .L109+32
.L96:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r1, #5
	ldrls	pc, [pc, r1, asl #2]
	b	.L105
.L98:
	.word	.L103
	.word	.L102
	.word	.L101
	.word	.L100
	.word	.L99
	.word	.L97
.L97:
	tst	r0, #2
	beq	.L105
	ldr	r3, .L109+36
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L96
.L99:
	tst	r0, #2
	beq	.L105
	ldr	r3, .L109+40
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L96
.L100:
	mov	lr, pc
	bx	r8
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L96
.L101:
	mov	lr, pc
	bx	r9
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L96
.L102:
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L96
.L103:
	mov	lr, pc
	bx	r10
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L96
.L105:
	mov	r0, r3
	b	.L96
.L110:
	.align	2
.L109:
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	state
	.word	goToSplash
	.word	splash
	.word	game
	.word	pause
	.word	instructions
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
