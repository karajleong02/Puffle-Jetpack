#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "splashScreen.h"
#include "pauseScreen.h"
#include "winScreen.h"
#include "loseScreen.h"
#include "instructionScreen.h"
#include "gameScreen.h"
#include "spritesheet.h"
#include "game.h"
#include "obstacles.h"

// Prototypes
void initialize();

// State Prototypes.
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum {
    SPLASH,
    INSTRUCTIONS,
    GAME,
    PAUSE,
    WIN,
    LOSE
};
int state;

// Button Variables.
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM.
OBJ_ATTR shadowOAM[128];

int main() {
    initialize();

    while (1) {
        // Update button variables.
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine.
        switch (state) {
        case SPLASH:
            splash();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        case INSTRUCTIONS:
            instructions();
            break;
        }
    }
}

// Sets up GBA.
void initialize() {

    
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;; // Bitwise OR the BG(s) you want to use and Bitwise OR SPRITE_ENABLE if you want to use sprites.
    // Don't forget to set up whatever BGs you enabled in the line above!

    buttons = BUTTONS;
    oldButtons = 0;

    goToSplash();
}

// Sets up the start state.
void goToSplash() {
    DMANow(3, splashScreenPal, PALETTE, 256);

    // Load tiles to charblock and map to screenblock
    DMANow(3, splashScreenTiles, &CHARBLOCK[0], splashScreenTilesLen/2);
    DMANow(3, splashScreenMap, &SCREENBLOCK[31], splashScreenMapLen/2);

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);

    // re-hide the sprites
    hideSprites();
    // Set background 0 control register
    REG_BG0CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    DMANow(3, shadowOAM, OAM, 128*4);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = SPLASH;

    REG_DISPCTL = MODE0 | BG0_ENABLE;
}

// Runs every frame of the start state.
void splash() {
    hideSprites();

    if (BUTTON_PRESSED(BUTTON_A)) {
        goToInstructions();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        initGame();
        goToGame();
    }
}

//Sets up every instruction state.
void goToInstructions() {
    DMANow(3, instructionScreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG0CNT =  BG_SIZE_SMALL | BG_SCREENBLOCK(31);

    // Load tiles to charblock and map to screenblock
    DMANow(3, instructionScreenTiles, &CHARBLOCK[0], instructionScreenTilesLen/2);
    DMANow(3, instructionScreenMap, &SCREENBLOCK[31], instructionScreenMapLen/2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);


    state = INSTRUCTIONS;

    REG_DISPCTL = MODE0 | BG0_ENABLE;
}

//Runs every frame of the instruction state.
void instructions() {
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToSplash();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

// Sets up the game state.
void goToGame() {
    waitForVBlank();
    
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(30);

    // Set background 0 control register
    REG_BG0CNT |= BG_SIZE_WIDE;

    // Load tiles to charblock and map to screenblock
    DMANow(3, gameScreenPal, PALETTE, 256);
    DMANow(3, gameScreenTiles, &CHARBLOCK[0], gameScreenTilesLen/2);
    DMANow(3, gameScreenMap, &SCREENBLOCK[30], gameScreenMapLen/2);


    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);


    state = GAME;
    // REG_DISPCTL = MODE0 | BG0_ENABLE;
}

// Runs every frame of the game state.
void game() {
    updateGame();
    drawGame();
    
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToWin();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToLose();
    }
}

// Sets up the pause state.
void goToPause() {
    DMANow(3, pauseScreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_SCREENBLOCK(31);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    // Load tiles to charblock and map to screenblock
    DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen/2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[31], pauseScreenMapLen/2);


    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);


    state = PAUSE;

    // REG_DISPCTL = MODE0 | BG0_ENABLE;
}

// Runs every frame of the pause state.
void pause() {
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToSplash();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

// Sets up the win state.
void goToWin() {
    DMANow(3, winScreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_SCREENBLOCK(31);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    // Load tiles to charblock and map to screenblock
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen/2);
    DMANow(3, winScreenMap, &SCREENBLOCK[31], winScreenMapLen/2);


    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);


    state = WIN;

    // REG_DISPCTL = MODE0 | BG0_ENABLE;
}

// Runs every frame of the win state.
void win() {
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToSplash();
    }
}

// Sets up the lose state.
void goToLose() {
    DMANow(3, loseScreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_SCREENBLOCK(31);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    // Load tiles to charblock and map to screenblock
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen/2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[31], loseScreenMapLen/2);


    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);


    state = LOSE;

    // REG_DISPCTL = MODE0 | BG0_ENABLE;
}

// Runs every frame of the lose state.
void lose() {
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToSplash();
    }
}

