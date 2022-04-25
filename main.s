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
	ldr	r5, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r5
	mov	r3, #3376
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r2, #7936
	mov	r3, #512
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r2, #256
	ldr	r0, .L4+28
	ldr	r1, .L4+32
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	str	r3, [r0]
	str	r3, [r1]
	strh	r2, [r4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	splashScreenPal
	.word	splashScreenTiles
	.word	100726784
	.word	splashScreenMap
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
	ldr	r3, .L8+12
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
	.word	setupSounds
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
	mov	r0, #3
	strh	r2, [r4, #8]	@ movhi
	ldr	r3, .L16+8
	mov	r2, #100663296
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L16+16
	mov	r3, #1024
	ldr	r2, .L16+20
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L16+24
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L16+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #1
	mov	r3, #256
	ldr	r2, .L16+32
	str	r1, [r2]
	strh	r3, [r4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	instructionScreenPal
	.word	5216
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
	ldr	r4, .L20+4
	mov	lr, pc
	bx	r3
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L20+8
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L20+16
	ldr	r1, .L20+20
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #24064
	strh	r3, [r2]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L20+24
	mov	lr, pc
	bx	r4
	mov	r3, #3200
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L20+32
	ldr	r1, .L20+36
	mov	r3, #3072
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+44
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L20+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	waitForVBlank
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100724736
	.word	gameScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	splash.part.0, %function
splash.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L24
	push	{r4, lr}
	ldr	r0, [r2]
	ldr	r3, .L24+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+8
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L24+12
	ldr	r3, .L24+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L25:
	.align	2
.L24:
	.word	seed
	.word	srand
	.word	backgroundSound_length
	.word	backgroundSound_data
	.word	playSoundA
	.word	initGame
	.size	splash.part.0, .-splash.part.0
	.set	instructions.part.0,splash.part.0
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L43
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L27
	ldr	r2, .L43+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L40
.L27:
	tst	r3, #2
	beq	.L28
	ldr	r2, .L43+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L41
.L28:
	tst	r3, #8
	beq	.L26
	ldr	r3, .L43+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L42
.L26:
	pop	{r4, r5, r6, lr}
	bx	lr
.L42:
	pop	{r4, r5, r6, lr}
	b	instructions.part.0
.L40:
	mov	r3, #3584
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L43+8
	ldr	r5, .L43+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L43+16
	ldr	r1, .L43+20
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	b	.L27
.L41:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L28
.L44:
	.align	2
.L43:
	.word	oldButtons
	.word	buttons
	.word	instructionScreen2Tiles
	.word	DMANow
	.word	100726784
	.word	instructionScreen2Map
	.size	instructions, .-instructions
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
	ldr	r3, .L57
	mov	lr, pc
	bx	r3
	ldr	r4, .L57+4
	ldr	r1, .L57+8
	ldrh	r2, [r4]
	ldr	r3, [r1]
	tst	r2, #1
	add	r3, r3, #1
	str	r3, [r1]
	beq	.L46
	ldr	r3, .L57+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L55
.L46:
	tst	r2, #2
	beq	.L45
	ldr	r3, .L57+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L56
.L45:
	pop	{r4, lr}
	bx	lr
.L56:
	pop	{r4, lr}
	b	splash.part.0
.L55:
	bl	goToInstructions
	ldrh	r2, [r4]
	b	.L46
.L58:
	.align	2
.L57:
	.word	hideSprites
	.word	oldButtons
	.word	seed
	.word	buttons
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
	ldr	r4, .L61
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L61+4
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r3, #7936
	mov	r2, #100663296
	strh	r3, [r1, #8]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	mov	r3, #3088
	strh	r0, [r1, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L61+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L61+12
	ldr	r1, .L61+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L61+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L61+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L61+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r4, .L75
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L64
	ldr	r2, .L75+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L73
.L64:
	tst	r3, #8
	beq	.L63
	ldr	r3, .L75+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L74
.L63:
	pop	{r4, lr}
	bx	lr
.L74:
	bl	goToGame
	ldr	r3, .L75+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L73:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L64
.L76:
	.align	2
.L75:
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
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
	ldr	r4, .L79
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L79+4
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r3, #7936
	mov	r2, #100663296
	strh	r3, [r1, #8]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	mov	r3, #2320
	strh	r0, [r1, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L79+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L79+12
	ldr	r1, .L79+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L79+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L79+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L79+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L80:
	.align	2
.L79:
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
	ldr	r3, .L83
	ldrh	r3, [r3]
	tst	r3, #2
	bxeq	lr
	b	win.part.0
.L84:
	.align	2
.L83:
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
	ldr	r4, .L87
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L87+4
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r3, #7936
	mov	r2, #100663296
	strh	r3, [r1, #8]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	mov	r3, #3168
	strh	r0, [r1, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L87+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L87+12
	ldr	r1, .L87+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L87+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L87+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L87+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r3, .L102
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L90
	ldr	r3, .L102+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L100
.L90:
	ldr	r2, .L102+16
	ldr	r3, .L102+20
	ldr	r2, [r2, #4]
	cmp	r2, r3
	bgt	.L101
.L91:
	ldr	r3, .L102+24
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L92
	ldr	r2, .L102+28
	mov	r1, #0
	ldr	r3, .L102+32
	ldr	r0, [r2]	@ float
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L92
	pop	{r4, lr}
	bx	lr
.L92:
	ldr	r3, .L102+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLose
.L101:
	ldr	r3, .L102+36
	mov	lr, pc
	bx	r3
	bl	goToWin
	b	.L91
.L100:
	bl	goToPause
	ldr	r3, .L102+40
	mov	lr, pc
	bx	r3
	b	.L90
.L103:
	.align	2
.L102:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	puffle
	.word	474
	.word	lives
	.word	gasLevel
	.word	__aeabi_fcmple
	.word	stopSound
	.word	pauseSound
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
	ldr	r6, .L119
	ldr	fp, .L119+4
	ldr	r3, .L119+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L119+12
	ldr	r1, [r6]
	ldrh	r0, [fp]
	ldr	r10, .L119+16
	ldr	r9, .L119+20
	ldr	r8, .L119+24
	ldr	r7, .L119+28
	ldr	r4, .L119+32
.L106:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r1, #5
	ldrls	pc, [pc, r1, asl #2]
	b	.L115
.L108:
	.word	.L113
	.word	.L112
	.word	.L111
	.word	.L110
	.word	.L109
	.word	.L107
.L107:
	tst	r0, #2
	beq	.L115
	ldr	r3, .L119+36
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L106
.L109:
	tst	r0, #2
	beq	.L115
	ldr	r3, .L119+40
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L106
.L110:
	mov	lr, pc
	bx	r8
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L106
.L111:
	mov	lr, pc
	bx	r9
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L106
.L112:
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L106
.L113:
	mov	lr, pc
	bx	r10
	ldr	r1, [r6]
	ldrh	r0, [fp]
	b	.L106
.L115:
	mov	r0, r3
	b	.L106
.L120:
	.align	2
.L119:
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
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	coins,320,4
	.comm	fuels,84,4
	.comm	balloons,308,4
	.comm	bullets,140,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
