#include "myLib.h"
#include "game.h"
#include "obstacles.h"
#include "spritesheet.h"

int vOff;
int hOff;
int pufflehOff;
int spritehOff;
int score = 0;
int lives = 3;
int screenBlock;
float gasLevel = 100;
SPRITE puffle;
BULLET bullets[BULLETCOUNT];

//Puffle animation states
enum {PUFFLERIGHT, PUFFLELEFT};


void initGame() {
    initObstacles();
    initPlayer();
    initBullet();
    vOff = 0;
    hOff = 9;
    screenBlock = 29;
    score = 0;
    lives = 3;
    gasLevel = 100;
}

void drawGame() {
    drawObstacles();
    drawPlayer();
    drawUI();
    drawBullet();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

void updateGame () {
    if (!cheat) {
        setFuelLevel(0);
    }
    updateObstacles();
    updatePlayer();
    for (int i = 0; i < BULLETCOUNT; i++) {
		updateBullet(&bullets[i]);
	}
}

void initPlayer() {
    puffle.worldRow = 80;
    puffle.worldCol = 14;
    // puffle.row = puffle.worldRow;
    // puffle.col = puffle.worldCol;
    puffle.rdel = -1;
    puffle.cdel = 1;
    puffle.width = 24;
    puffle.height = 32;
    puffle.aniCounter = 0;
    puffle.aniState = PUFFLERIGHT;
    puffle.prevAniState = 0;
    puffle.curFrame = 0;
    puffle.numFrames = 3;
    puffle.hide = 0;
}

void drawPlayer() {
    if (puffle.hide == 1) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = ((puffle.worldRow - vOff) & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[0].attr1 = ((puffle.worldCol - pufflehOff) & COLMASK) | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7 + 4 * puffle.aniState, 2 + 4 * puffle.curFrame);
    }
}

void updatePlayer() {
    if(BUTTON_HELD(BUTTON_LEFT)) {
        if (puffle.worldCol > 0) {
            puffle.worldCol -= puffle.cdel;
            puffle.aniState = PUFFLELEFT;
            if (hOff > 0 && (puffle.worldCol  - hOff) < SCREENWIDTH / 2) {
                hOff-=puffle.cdel;
                pufflehOff-=puffle.cdel;
                spritehOff-=puffle.cdel;
            }
        }
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        puffle.aniState = PUFFLERIGHT;
        if (puffle.worldCol + puffle.width < MAPWIDTH) {
            puffle.worldCol += puffle.cdel;
            if (screenBlock < 31 && (hOff < MAPWIDTH - SCREENWIDTH) && (puffle.worldCol + pufflehOff) > SCREENWIDTH / 2) {
                hOff+=puffle.cdel;
                pufflehOff+=puffle.cdel;
                spritehOff+=puffle.cdel;
            }
        }
        
    }
    if(BUTTON_HELD(BUTTON_UP)) {
        if (puffle.worldRow > 12) {
            puffle.worldRow += puffle.rdel;
            if (vOff > 0 && ((puffle.worldRow - vOff) < (SCREENHEIGHT / 2))) {
                vOff--;
            }
        }
        
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
        if ((puffle.worldRow + puffle.height) < MAPHEIGHT) {
            puffle.worldRow -= puffle.rdel;

            if (vOff < MAPHEIGHT - SCREENHEIGHT && (puffle.worldRow  + vOff) > SCREENHEIGHT / 2) {
                vOff++;
            }
        }
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        fireBullet();
    }
    if (puffle.aniCounter < 30) {
        if (puffle.aniCounter % 10 == 0) {
            puffle.curFrame = (puffle.curFrame + 1) % puffle.numFrames;
        }
        puffle.aniCounter++;
    } else {
        puffle.aniCounter = 0;
    }
    
}

void initBullet() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].direction = 0; //1 is left, 2 is right
        bullets[i].worldRow = puffle.worldRow;
        bullets[i].worldCol = puffle.worldCol;
        bullets[i].origCol = bullets[i].worldCol;
        bullets[i].cdel = 2;
        bullets[i].width = 7;
        bullets[i].height = 3;
        bullets[i].active = 0;
    }
}

void fireBullet() {
    for(int i = 0; i < BULLETCOUNT; i++) {
		if(!bullets[i].active) {
			bullets[i].worldRow = puffle.worldRow + (puffle.height / 2); 
            if (puffle.aniState == PUFFLELEFT) {
                bullets[i].direction = 1;
                bullets[i].worldCol = puffle.worldCol;
            } else if (puffle.aniState == PUFFLERIGHT){
                bullets[i].direction = 2;
                bullets[i].worldCol = puffle.worldCol + puffle.width;
            }
            bullets[i].origCol = bullets[i].worldCol;
			bullets[i].active = 1;
			break;
		}
	}
}

void drawBullet() {
    for(int in = 0; in < BULLETCOUNT; in++) {
        if (bullets[in].active) {
            shadowOAM[in+55].attr0 = bullets[in].worldRow & ROWMASK | ATTR0_4BPP | ATTR0_WIDE;
            shadowOAM[in+55].attr1 = (bullets[in].worldCol - pufflehOff) & COLMASK | ATTR1_TINY;
            shadowOAM[in+55].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 4);  
        } else {
            shadowOAM[in+55].attr0 = ATTR0_HIDE;
        }
    }
}

void updateBullet(BULLET *b) {
    if (b->active) {
		if (b->direction == 2) {
            if (b->worldCol + b->width <= MAPWIDTH || b->worldCol - b-> origCol < SCREENWIDTH) {
                b->worldCol += (b->cdel);
            } else {
                b->active = 0;
            }
        } else if (b->direction == 1){
            if(b->worldCol >= 0 || b->origCol - b->worldCol < SCREENWIDTH) {
                b->worldCol -= b->cdel;
            } else {
                b->active = 0;
            }
        }
        	
	}
    for (int j = 0; j < BALLOONCOUNT; j++) {
        if (collision(balloons[j].worldCol, balloons[j].worldRow, balloons[j].width, balloons[j].height, b->worldCol, b->worldRow, b->width, b->height)){
            b->active = 0;
            balloons[j].active = 0;
            shadowOAM[j+1].attr0 |= ATTR0_HIDE;
            balloons[j].hit = 1;
        }
    }

}

//sets fuel level depending on if fuel was collected, or timer
// if argument is 1, fuel is collected
// if argument is 0, fuel is decreasing
void setFuelLevel(int val) {
    if (val == 1) {
        if (gasLevel >= 75) {
            gasLevel = 100;
        } else {
            gasLevel +=25;
        }
    } else {
        gasLevel -= 0.05;
    }
}


void drawUI() {
    //draws Fuel word
    shadowOAM[64].attr0 = 0 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[64].attr1 = 0 | ATTR1_MEDIUM;
    shadowOAM[64].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 12);
    
    //draws Fuel counter
    shadowOAM[65].attr0 = 3 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[65].attr1 = 25 | ATTR1_SMALL;
   
    if (gasLevel > 75) {
         shadowOAM[65].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 8);
    } else if (gasLevel > 50) {
         shadowOAM[65].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 9);
    } else if (gasLevel > 25) {
         shadowOAM[65].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 10);
    } else {
         shadowOAM[65].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 11);
    }

    //draw Heart Tracker
    shadowOAM[66].attr0 = 0 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[66].attr1 = 208 | ATTR1_SMALL;
    
    if (lives == 3) {
        shadowOAM[66].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 5);
    } else if (lives == 2) {
        shadowOAM[66].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 6);
    } else if (lives == 1) {
        shadowOAM[66].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 7);
    }

    drawScore();
}

void drawScore() {
    //draw Score
    shadowOAM[67].attr0 = 0 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[67].attr1 = 85 | ATTR1_MEDIUM;
    shadowOAM[67].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 14);
    //Hundreds place
    shadowOAM[68].attr0 = 3 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[68].attr1 = 115 | ATTR1_TINY;
    shadowOAM[68].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((score / 100), 31);
    //Tens place
    shadowOAM[69].attr0 = 3 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[69].attr1 = 121 | ATTR1_TINY;
    shadowOAM[69].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((score / 10) % 10, 31);
    //Ones place
    shadowOAM[70].attr0 = 3 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[70].attr1 = 128 | ATTR1_TINY;
    shadowOAM[70].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(score % 10, 31);
}