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
	ldr	r1, .L4+44
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r2, #256
	ldr	r1, .L4+48
	strh	r3, [r5, #16]	@ movhi
	strh	r3, [r5, #18]	@ movhi
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
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #7680
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldrh	r2, [r3, #8]
	orr	r2, r2, #16384
	ldr	r4, .L19+4
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L19+8
	mov	lr, pc
	bx	r4
	mov	r3, #9216
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
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100724736
	.word	gameScreenMap
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
	push	{r4, lr}
	ldr	r4, .L33
	ldr	r3, .L33+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L22
	ldr	r2, .L33+8
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L31
.L22:
	tst	r3, #2
	beq	.L21
	ldr	r3, .L33+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L32
.L21:
	pop	{r4, lr}
	bx	lr
.L32:
	ldr	r3, .L33+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L31:
	bl	goToInstructions
	ldrh	r3, [r4]
	b	.L22
.L34:
	.align	2
.L33:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	initGame
	.size	splash, .-splash
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
	ldr	r4, .L37
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L37+4
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
	ldr	r1, .L37+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L37+12
	ldr	r1, .L37+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L37+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L37+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L37+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L38:
	.align	2
.L37:
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
	ldr	r4, .L51
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L40
	ldr	r2, .L51+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L49
.L40:
	tst	r3, #8
	beq	.L39
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L50
.L39:
	pop	{r4, lr}
	bx	lr
.L50:
	pop	{r4, lr}
	b	goToGame
.L49:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L40
.L52:
	.align	2
.L51:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
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
	@ link register save eliminated.
	b	pause
	.size	instructions, .-instructions
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
	ldr	r4, .L56
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+4
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
	ldr	r1, .L56+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L56+12
	ldr	r1, .L56+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L56+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L56+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L56+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L60
	ldrh	r3, [r3]
	tst	r3, #2
	bxeq	lr
	b	win.part.0
.L61:
	.align	2
.L60:
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
	ldr	r4, .L64
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+4
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
	ldr	r1, .L64+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L64+12
	ldr	r1, .L64+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L64+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L64+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L64+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L65:
	.align	2
.L64:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLose, .-goToLose
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
	ldr	r3, .L83
	ldr	r4, .L83+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L67
	ldr	r2, .L83+12
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L80
.L67:
	tst	r3, #4
	beq	.L68
	ldr	r2, .L83+12
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L81
.L68:
	tst	r3, #8
	beq	.L66
	ldr	r3, .L83+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L82
.L66:
	pop	{r4, lr}
	bx	lr
.L82:
	pop	{r4, lr}
	b	goToLose
.L80:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L67
.L81:
	bl	goToWin
	ldrh	r3, [r4]
	b	.L68
.L84:
	.align	2
.L83:
	.word	updateGame
	.word	oldButtons
	.word	drawGame
	.word	buttons
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
	ldr	r4, .L100
	ldr	r10, .L100+4
	ldrh	r0, [r4, #48]
	ldr	r5, .L100+8
	ldr	r6, .L100+12
	ldr	r3, .L100+16
	strh	r1, [r5]	@ movhi
	strh	r0, [r10]	@ movhi
	ldr	r9, .L100+20
	mov	lr, pc
	bx	r3
	ldr	r8, .L100+24
	ldrh	r0, [r10]
	ldr	r1, [r6]
	ldr	r7, .L100+28
	ldr	fp, .L100+32
.L87:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r1, #5
	ldrls	pc, [pc, r1, asl #2]
	b	.L96
.L89:
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L91
	.word	.L90
	.word	.L88
.L88:
	tst	r0, #2
	beq	.L96
	ldr	r3, .L100+36
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldrh	r0, [r10]
	b	.L87
.L90:
	tst	r0, #2
	beq	.L96
	mov	lr, pc
	bx	fp
	ldr	r1, [r6]
	ldrh	r0, [r10]
	b	.L87
.L91:
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldrh	r0, [r10]
	b	.L87
.L92:
	mov	lr, pc
	bx	r8
	ldr	r1, [r6]
	ldrh	r0, [r10]
	b	.L87
.L93:
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldrh	r0, [r10]
	b	.L87
.L94:
	mov	lr, pc
	bx	r9
	ldr	r1, [r6]
	ldrh	r0, [r10]
	b	.L87
.L96:
	mov	r0, r3
	b	.L87
.L101:
	.align	2
.L100:
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	state
	.word	goToSplash
	.word	splash
	.word	game
	.word	pause
	.word	win.part.0
	.word	lose.part.0
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
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	coins,240,4
	.comm	fuels,60,4
	.comm	balloons,336,4
	.comm	bullets,120,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
