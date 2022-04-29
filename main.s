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
	mov	r0, #29
	mov	r2, #256
	ldr	r1, .L4+28
	strh	r3, [r4, #16]	@ movhi
	ldr	lr, .L4+32
	strh	r3, [r4, #18]	@ movhi
	ldr	ip, .L4+36
	str	r3, [r1]
	ldr	r1, .L4+40
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r1]
	ldr	r5, .L4+44
	ldr	lr, .L4+48
	ldr	ip, .L4+52
	ldr	r1, .L4+56
	str	r3, [r5]
	str	r3, [lr]
	str	r3, [ip]
	str	r0, [r1]
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
	.word	spritehOff
	.word	pufflehOff
	.word	moved
	.word	state
	.word	hOff
	.word	seed
	.word	cheat
	.word	screenBlock
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
	ldr	r5, .L12
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r5
	mov	r4, #67108864
	mov	r2, #7936
	mov	r0, #3
	strh	r2, [r4, #8]	@ movhi
	ldr	r3, .L12+8
	mov	r2, #100663296
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L12+16
	mov	r3, #1024
	ldr	r2, .L12+20
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L12+24
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L12+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #1
	mov	r3, #256
	ldr	r2, .L12+32
	str	r1, [r2]
	strh	r3, [r4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
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
	ldr	r3, .L16
	ldr	r4, .L16+4
	mov	lr, pc
	bx	r3
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L16+8
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #23808
	strh	r3, [r2]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L16+24
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L16+28
	ldr	r1, .L16+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+36
	ldr	r1, .L16+40
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+48
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L16+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	fullBackgroundPal
	.word	5104
	.word	fullBackgroundTiles
	.word	100722688
	.word	fullBackgroundMap
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
	ldr	r2, .L20
	push	{r4, lr}
	ldr	r0, [r2]
	ldr	r3, .L20+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+8
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L20+12
	ldr	r3, .L20+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L21:
	.align	2
.L20:
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
	ldr	r4, .L39
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L23
	ldr	r2, .L39+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L36
.L23:
	tst	r3, #2
	beq	.L24
	ldr	r2, .L39+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L37
.L24:
	tst	r3, #8
	beq	.L22
	ldr	r3, .L39+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L38
.L22:
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	pop	{r4, r5, r6, lr}
	b	instructions.part.0
.L36:
	mov	r3, #3584
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L39+8
	ldr	r5, .L39+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L39+16
	ldr	r1, .L39+20
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	b	.L23
.L37:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L24
.L40:
	.align	2
.L39:
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
	ldr	r3, .L53
	mov	lr, pc
	bx	r3
	ldr	r4, .L53+4
	ldr	r1, .L53+8
	ldrh	r2, [r4]
	ldr	r3, [r1]
	tst	r2, #1
	add	r3, r3, #1
	str	r3, [r1]
	beq	.L42
	ldr	r3, .L53+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L51
.L42:
	tst	r2, #2
	beq	.L41
	ldr	r3, .L53+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L52
.L41:
	pop	{r4, lr}
	bx	lr
.L52:
	pop	{r4, lr}
	b	splash.part.0
.L51:
	bl	goToInstructions
	ldrh	r2, [r4]
	b	.L42
.L54:
	.align	2
.L53:
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
	ldr	r4, .L57
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L57+4
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
	ldr	r1, .L57+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L57+12
	ldr	r1, .L57+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L57+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L57+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L57+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L58:
	.align	2
.L57:
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
	ldr	r4, .L71
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L60
	ldr	r2, .L71+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L69
.L60:
	tst	r3, #8
	beq	.L59
	ldr	r3, .L71+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L70
.L59:
	pop	{r4, lr}
	bx	lr
.L70:
	bl	goToGame
	ldr	r3, .L71+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L69:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L60
.L72:
	.align	2
.L71:
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
	ldr	r4, .L75
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L75+4
	mov	lr, pc
	bx	r4
	mov	r0, #67108864
	mov	r3, #7936
	mov	r1, #0
	strh	r3, [r0, #8]	@ movhi
	ldr	ip, .L75+8
	ldr	r2, .L75+12
	ldr	r3, .L75+16
	str	r1, [ip]
	str	r1, [r2]
	str	r1, [r3]
	mov	r2, #100663296
	strh	r1, [r0, #16]	@ movhi
	mov	r3, #2320
	strh	r1, [r0, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L75+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L75+24
	ldr	r1, .L75+28
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L75+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L75+36
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L75+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L76:
	.align	2
.L75:
	.word	DMANow
	.word	winScreenPal
	.word	hOff
	.word	spritehOff
	.word	pufflehOff
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
	ldr	r3, .L84
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L77
	ldr	r3, .L84+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L83
.L77:
	pop	{r4, lr}
	bx	lr
.L83:
	pop	{r4, lr}
	b	goToSplash
.L85:
	.align	2
.L84:
	.word	drawScore
	.word	oldButtons
	.word	buttons
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
	ldr	r4, .L88
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L88+4
	mov	lr, pc
	bx	r4
	mov	r0, #67108864
	mov	r3, #7936
	mov	r1, #0
	strh	r3, [r0, #8]	@ movhi
	ldr	ip, .L88+8
	ldr	r2, .L88+12
	ldr	r3, .L88+16
	str	r1, [ip]
	str	r1, [r2]
	str	r1, [r3]
	mov	r2, #100663296
	strh	r1, [r0, #16]	@ movhi
	mov	r3, #3168
	strh	r1, [r0, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L88+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L88+24
	ldr	r1, .L88+28
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L88+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L88+36
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L88+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L89:
	.align	2
.L88:
	.word	DMANow
	.word	loseScreenPal
	.word	hOff
	.word	spritehOff
	.word	pufflehOff
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L115
	ldr	r4, .L115+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #256
	ble	.L91
	mov	ip, #67108864
	ldr	r0, .L115+12
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r4]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L91:
	ldr	r2, .L115+16
	ldr	r3, [r2]
	cmp	r3, #512
	ble	.L92
	ldr	r0, .L115+20
	ldr	r1, [r0]
	sub	r3, r3, #512
	sub	r1, r1, #512
	str	r3, [r2]
	str	r1, [r0]
.L92:
	ldr	r5, .L115+24
	ldrh	r3, [r5]
	tst	r3, #2
	beq	.L93
	ldr	r2, .L115+28
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L112
.L93:
	tst	r3, #256
	beq	.L94
	ldr	r3, .L115+28
	ldrh	r3, [r3]
	tst	r3, #256
	bne	.L94
	mov	r0, #1
	ldr	r1, .L115+32
	ldr	r3, .L115+36
	ldr	r2, .L115+40
	str	r0, [r1]
	str	r2, [r3]	@ float
.L95:
	ldr	r2, .L115+44
	ldrh	r3, [r2, #8]
	add	r3, r3, #17
	strh	r3, [r2, #8]	@ movhi
	ldr	r3, .L115+48
	ldr	r3, [r3, #4]
	cmp	r3, #700
	bge	.L113
.L97:
	ldr	r3, .L115+52
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L98
.L114:
	ldr	r2, .L115+36
	mov	r1, #0
	ldr	r3, .L115+56
	ldr	r0, [r2]	@ float
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L98
.L99:
	mov	r3, #67108864
	ldrh	r2, [r4]
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #16]	@ movhi
	bx	lr
.L94:
	ldr	r3, .L115+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L95
	ldr	r3, .L115+48
	ldr	r3, [r3, #4]
	cmp	r3, #700
	blt	.L97
.L113:
	ldr	r3, .L115+60
	mov	lr, pc
	bx	r3
	bl	goToWin
	ldr	r3, .L115+52
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L114
.L98:
	ldr	r3, .L115+60
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L99
.L112:
	bl	goToPause
	ldr	r3, .L115+64
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L93
.L116:
	.align	2
.L115:
	.word	updateGame
	.word	hOff
	.word	drawGame
	.word	screenBlock
	.word	pufflehOff
	.word	spritehOff
	.word	oldButtons
	.word	buttons
	.word	cheat
	.word	gasLevel
	.word	1120403456
	.word	83886592
	.word	puffle
	.word	lives
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
	ldr	r3, .L129
	mov	lr, pc
	bx	r3
	ldr	r6, .L129+4
	ldr	r8, .L129+8
	ldr	r5, .L129+12
	ldr	fp, .L129+16
	ldr	r10, .L129+20
	ldr	r9, .L129+24
	ldr	r7, .L129+28
	ldr	r4, .L129+32
.L118:
	ldr	r1, [r6]
	ldrh	r3, [r8]
.L119:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r1, #5
	ldrls	pc, [pc, r1, asl #2]
	b	.L119
.L121:
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L120
	.word	.L120
.L120:
	mov	lr, pc
	bx	r7
	b	.L118
.L122:
	mov	lr, pc
	bx	r9
	b	.L118
.L123:
	mov	lr, pc
	bx	r10
	b	.L118
.L124:
	ldr	r3, .L129+36
	mov	lr, pc
	bx	r3
	b	.L118
.L125:
	mov	lr, pc
	bx	fp
	b	.L118
.L130:
	.align	2
.L129:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	splash
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.word	instructions
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
	.comm	moved,4,4
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	cheat,4,4
	.comm	coins,960,4
	.comm	fuels,56,4
	.comm	balloons,880,4
	.comm	bullets,256,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
