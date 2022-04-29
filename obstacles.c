#include "myLib.h"
#include "game.h"
#include "obstacles.h"
#include "spritesheet.h"

#include "sound.h"
#include "coinCollect.h"
#include "fuelCollect.h"
#include "balloonPop.h"


//Variables
BALLOON balloons[BALLOONCOUNT];
FUEL fuels[FUELCOUNT];
COIN coins[COINCOUNT];
cheat = 0;
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
        balloons[i].worldCol = (i * 33 + 42);
        balloons[i].worldRow = rand() % 124 + 12;
        balloons[i].shift = 0;
        balloons[i].rdel = 2;
        balloons[i].width = 13;
        balloons[i].height = 32;
        balloons[i].aniCounter = 0;
        balloons[i].currFrame = rand() % 5;
        balloons[i].numFrames = 5;
        balloons[i].hit = 0;
        balloons[i].active = 1;
        number*= -1;
    }
}

//Check if bullet shot it
void updateBalloons() {
    for (int i = 0; i < BALLOONCOUNT; i++) {
        if(balloons[i].active) {
            if( collision(puffle.worldCol, puffle.worldRow, puffle.width, puffle.height, balloons[i].worldCol, balloons[i].worldRow, balloons[i].width, balloons[i].height)) {
                balloons[i].hit = 1;
                balloons[i].active = 0;
                shadowOAM[i+1].attr0 |= ATTR0_HIDE;
                //playSoundB(balloonPop_data, balloonPop_length, 0);
                lives--;
            }
            if( balloons[i].worldCol - hOff < 0) {
                balloons[i].active = 0;
            }
            if (balloons[i].aniCounter < 50) {
                if (balloons[i].aniCounter % 25 == 0) {
                    balloons[i].currFrame = (balloons[i].currFrame + 1) % balloons[i].numFrames;
                }
                balloons[i].aniCounter++;
            } else {
                balloons[i].aniCounter = 0;
            }
        }
    } 
}

void drawBalloons() {
    for (int i = 0; i < BALLOONCOUNT; i++) {
        if (!balloons[i].active) {
            shadowOAM[i+1].attr0 |= ATTR0_HIDE;
        } else {
            if ((balloons[i].worldCol + balloons[i].width - spritehOff >= 0) &&(balloons[i].worldCol - spritehOff <= SCREENWIDTH)){
                shadowOAM[i+1].attr0 = (balloons[i].worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_TALL;
                shadowOAM[i+1].attr1 = ((balloons[i].worldCol - spritehOff) & COLMASK) | ATTR1_MEDIUM;
                shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 2 + 4 * balloons[i].currFrame);
            }
        }
    }
}

void initFuel() {
    int number = -1;
    for (int i = 0; i < FUELCOUNT; i++) {
        fuels[i].worldCol = (i * 224 + 100);
        fuels[i].worldRow = rand() % 124 + 12;
        fuels[i].shift = 0;
        fuels[i].width = 10;
        fuels[i].height = 15;
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
            shadowOAM[i+14].attr0 |= ATTR0_HIDE;
            playSoundB(fuelCollect_data, fuelCollect_length, 0);
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
            shadowOAM[i+22].attr0 |= ATTR0_HIDE;
        } else {
            if ((fuels[i].worldCol + fuels[i].width - spritehOff >= 0) && (fuels[i].worldCol - spritehOff <= SCREENWIDTH)) {

            
                shadowOAM[i+22].attr0 = (fuels[i].worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
                shadowOAM[i+22].attr1 = ((fuels[i].worldCol - spritehOff) & COLMASK) | ATTR1_SMALL;
                shadowOAM[i+22].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2, 2);
            }
        }
    }
}

void initCoin() {
    int number = -1;
    for (int i = 0; i < COINCOUNT; i++) {
        coins[i].worldCol = (i * 21 + 70);
        coins[i].worldRow = rand() % 124 + 12;
        coins[i].shift = 0;
        coins[i].width = 6;
        coins[i].height = 13;
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
            shadowOAM[i+24].attr0 |= ATTR0_HIDE;
            playSoundB(coinCollect_data, coinCollect_length, 0);
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
            shadowOAM[i+24].attr0 |= ATTR0_HIDE;
        } else {
            if ((coins[i].worldCol + coins[i].width - spritehOff >= 0) &&(coins[i].worldCol - spritehOff <= SCREENWIDTH)) {
                shadowOAM[i+24].attr0 = (coins[i].worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
                shadowOAM[i+24].attr1 = ((coins[i].worldCol - spritehOff) & COLMASK) | ATTR1_SMALL;
                shadowOAM[i+24].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 2);
            }
        }
    }
}
