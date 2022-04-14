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
        balloons[i].worldCol = i * 57 + 42;
        balloons[i].worldRow = rand() % 124 + 12;
        balloons[i].shift = 0;
        balloons[i].rdel = 2;
        balloons[i].width = 14;
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
        if(balloons[i].active && collision(puffle.worldCol, puffle.worldRow, puffle.width, puffle.height, balloons[i].worldCol, balloons[i].worldRow, balloons[i].width, balloons[i].height)) {
            balloons[i].hit = 1;
            balloons[i].active = 0;
            shadowOAM[i+1].attr0 |= ATTR0_HIDE;
            lives--;
        }
        if(balloons[i].active && balloons[i].worldCol - hOff < 0) {
            balloons[i].active = 0;
        }
    } 
}

void drawBalloons() {
    for (int i = 0; i < BALLOONCOUNT; i++) {
        if (!balloons[i].active) {
            shadowOAM[i+1].attr0 |= ATTR0_HIDE;
        } else {
            shadowOAM[i+1].attr0 = balloons[i].worldRow | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+1].attr1 = (balloons[i].worldCol - hOff) | ATTR1_SMALL;
            shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(5, 0);
        }
    }
}

void initFuel() {
    int number = -1;
    for (int i = 0; i < FUELCOUNT; i++) {
        fuels[i].worldCol = i * 140 + 97;
        fuels[i].worldRow = rand() % 124 + 12;
        fuels[i].shift = 0;
        fuels[i].width = 12;
        fuels[i].height = 14;
        fuels[i].active = 1;
        fuels[i].collected = 0;
        number *= -1;
    }
}

void updateFuel() {
    for (int i = 0; i < FUELCOUNT; i++) {
        if(!fuels[i].collected && collision(puffle.worldCol, puffle.worldRow, puffle.width, puffle.height, fuels[i].worldCol, fuels[i].worldRow, fuels[i].width, fuels[i].height)) {
            fuels[i].collected = 1;
            fuels[i].active = 0;
            shadowOAM[i+8].attr0 |= ATTR0_HIDE;
            setFuelLevel(1);
        }
        if(fuels[i].active && fuels[i].worldCol - hOff < 0) {
            fuels[i].active = 0;
        }
    }
}

void drawFuel() {
    for (int i = 0; i < FUELCOUNT; i++) {
        if (!fuels[i].active) {
            shadowOAM[i+8].attr0 |= ATTR0_HIDE;
        } else {
            shadowOAM[i+8].attr0 = fuels[i].worldRow | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+8].attr1 = (fuels[i].worldCol-hOff) | ATTR1_SMALL;
            shadowOAM[i+8].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2, 0);
        }
    }
}

void initCoin() {
    int number = -1;
    for (int i = 0; i < COINCOUNT; i++) {
        coins[i].worldCol = i * 42 + 70;
        coins[i].worldRow = rand() % 124 + 12;
        coins[i].shift = 0;
        coins[i].width = 6;
        coins[i].height = 14;
        coins[i].active = 1;
        coins[i].collected = 0;
        number *= -1;
    }
}

void updateCoin() {
    for (int i = 0; i < COINCOUNT; i++) {
        if(!coins[i].collected && collision(puffle.worldCol, puffle.worldRow, puffle.width, puffle.height, coins[i].worldCol, coins[i].worldRow, coins[i].width, coins[i].height)) {
            coins[i].collected = 1;
            coins[i].active = 0;
            shadowOAM[i+11].attr0 |= ATTR0_HIDE;
            score+=5;
        }
        if(coins[i].active && coins[i].worldCol - hOff < 0) {
            coins[i].active = 0;
        }
    }
}

void drawCoin() {
    for (int i = 0; i < COINCOUNT; i++) {
        if (!coins[i].active) {
            shadowOAM[i+11].attr0 |= ATTR0_HIDE;
        } else {
            shadowOAM[i+11].attr0 = coins[i].worldRow | ATTR0_4BPP | ATTR0_TALL;
            shadowOAM[i+11].attr1 = (coins[i].worldCol - hOff) | ATTR1_TINY;
            shadowOAM[i+11].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 0);
        }
    }
}
