#include "myLib.h"
#include "game.h"
#include "obstacles.h"
#include "spritesheet.h"

//Variables
BALLOON balloons[BALLOONCOUNT];
FUEL fuels[FUELCOUNT];
COIN coins[COINCOUNT];

enum {UP}; //anistates for balloons

void initObstacles() {
    initBalloons();
    initFuel();
    initCoin();
}

void drawObstacles() {
    drawBalloons();
    drawCoin();
    drawFuel();
}

void updateObstacles() {
    updateBalloons();
    updateCoin();
    updateFuel();
}

void initBalloons() {
    int number = 1;
    for (int i = 0; i < BALLOONCOUNT; i++) {
        balloons[i].worldCol = i * 60 + 45;
        balloons[i].worldRow = number * 30 + 75;
        balloons[i].rdel = 2;
        balloons[i].width = 16;
        balloons[i].height = 16;
        balloons[i].aniCounter = 0;
        balloons[i].aniState = UP;
        balloons[i].prevAniState = 0;
        balloons[i].currFrame = 0;
        balloons[i].numFrames = 0;
        balloons[i].hit = 0;
        balloons[i].active = 1;
        number*= -1;
    }
}

//Check if bullet shot it
void updateBalloons() {
    for (int i = 0; i < BALLOONCOUNT; i++) {
        if (hshift == 1) {
            balloons[i].worldCol++;
        }
        if (hshift == 2) {
            balloons[i].worldCol--;
        }
        if (vshift == 1) {
            balloons[i].worldRow++;
        }
    
        if (vshift == 2) {
                balloons[i].worldRow--;
        } 
        for (int i = 0; i < BULLETCOUNT; i++) {
            if (bullets[i].active & collision(balloons[i].worldCol, balloons[i].worldRow, balloons[i].width, balloons[i].height, bullets[i].worldCol, bullets[i].worldRow, bullets[i].width, bullets[i].height))
                bullets[i].active = 0;
                balloons[i].active = 0;
                balloons[i].hit = 1;
            }
        }
        
    
}

void drawBalloons() {
    for (int i = 0; i < BALLOONCOUNT; i++) {
        if (!balloons[i].active) {
            shadowOAM[i+1].attr0 |= ATTR0_HIDE;
        } else {
            shadowOAM[i+1].attr0 = (balloons[i].worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+1].attr1 = (balloons[i].worldCol & COLMASK) | ATTR1_SMALL;
            shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(5, 0);
        }
    }
}

void initFuel() {
    int number = -1;
    for (int i = 0; i < FUELCOUNT; i++) {
        fuels[i].worldCol = i * 115 + 100;
        fuels[i].worldRow = number * 30 + 75;
        fuels[i].width = 16;
        fuels[i].height = 16;
        fuels[i].active = 1;
        number *= -1;
    }
}

void updateFuel() {
    for (int i = 0; i < FUELCOUNT; i++) {
        if (hshift == 1) {
            fuels[i].worldCol++;
        }
        if (hshift == 2) {
            fuels[i].worldCol--;
        }
        if (vshift == 1) {
            fuels[i].worldRow++;
        }
        if (vshift == 2) {
            fuels[i].worldRow--;
        } 
    }
}

void drawFuel() {
    for (int i = 0; i < FUELCOUNT; i++) {
        if (!fuels[i].active) {
            shadowOAM[i+8].attr0 |= ATTR0_HIDE;
        } else {
            shadowOAM[i+8].attr0 = fuels[i].worldRow | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+8].attr1 = fuels[i].worldCol | ATTR1_SMALL;
            shadowOAM[i+8].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2, 0);
        }
    }
}

void initCoin() {
    int number = -1;
    for (int i = 0; i < COINCOUNT; i++) {
        coins[i].worldCol = i * 50 + 70;
        coins[i].worldRow = number * 30 + 75;
        coins[i].width = 16;
        coins[i].height = 16;
        coins[i].active = 1;
        number *= -1;
    }
}

void updateCoin() {
    for (int i = 0; i < COINCOUNT; i++) {
        if (hshift == 1) {
            coins[i].worldCol++;
        }
        if (hshift == 2) {
            coins[i].worldCol--;
        }
        if (vshift == 1) {
            coins[i].worldRow++;
        }
        if (vshift == 2) {
            coins[i].worldRow--;
        } 
    }
}

void drawCoin() {
    for (int i = 0; i < COINCOUNT; i++) {
        if (!coins[i].active) {
            shadowOAM[i+11].attr0 |= ATTR0_HIDE;
        } else {
            shadowOAM[i+11].attr0 = coins[i].worldRow | ATTR0_4BPP | ATTR0_TALL;
            shadowOAM[i+11].attr1 = coins[i].worldCol | ATTR1_TINY;
            shadowOAM[i+11].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 0);
        }
    }
}
