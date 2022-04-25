#include "myLib.h"
#include "game.h"
#include "obstacles.h"
#include "spritesheet.h"

int vOff;
int hOff;
int score = 0;
int lives = 3;
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
    score = 0;
    lives = 3;
    gasLevel = 100;
}

void drawGame() {
    drawObstacles();
    drawPlayer();
    drawUI();
    drawBullet();

    REG_BG0HOFF = hOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

void updateGame () {
    setFuelLevel(0);
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
    puffle.rdel = 1;
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
        shadowOAM[0].attr1 = ((puffle.worldCol - hOff) & COLMASK) | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7 + 4 * puffle.aniState, 2 + 4 * puffle.curFrame);
    }
}

void updatePlayer() {
    if(BUTTON_HELD(BUTTON_LEFT)) {
        if (puffle.worldCol > 0) {
            puffle.worldCol -= puffle.cdel;
            puffle.aniState = PUFFLELEFT;
            if (hOff > 0 && (puffle.worldCol  - hOff) < SCREENWIDTH / 2) {
                hOff--;
                
            }
        }
        
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (puffle.worldCol + puffle.width < MAPWIDTH) {
            puffle.worldCol += puffle.cdel;
            puffle.aniState = PUFFLERIGHT;
            if (hOff < MAPWIDTH - SCREENWIDTH && (puffle.worldCol + hOff) > SCREENWIDTH / 2) {
                hOff++;
            }
        }
        
    }
    if(BUTTON_HELD(BUTTON_UP)) {
        if (puffle.worldRow > 12) {
            puffle.worldRow -= puffle.rdel;

            if (vOff > 0 && ((puffle.worldRow - vOff) < (SCREENHEIGHT / 2))) {
                vOff--;
            }
        }
        
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
        if ((puffle.worldRow + puffle.height) < MAPHEIGHT) {
            puffle.worldRow += puffle.rdel;

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
        bullets[i].worldRow = puffle.worldRow;
        bullets[i].worldCol = puffle.worldCol;
        bullets[i].origCol = bullets[i].worldCol;
        bullets[i].cdel = 1;
        bullets[i].width = 7;
        bullets[i].height = 3;
        bullets[i].active = 0;
    }
}

void fireBullet() {
    for(int i = 0; i < BULLETCOUNT; i++) {
		if(!bullets[i].active) {
			bullets[i].worldRow = puffle.worldRow + (puffle.height / 2); 
			bullets[i].worldCol = puffle.worldCol + puffle.width;
            bullets[i].origCol = bullets[i].worldCol;
			bullets[i].active = 1;
			break;
		}
	}
}

void drawBullet() {
    for(int in = 0; in < BULLETCOUNT; in++) {
        if (bullets[in].active) {
            shadowOAM[in+21].attr0 = bullets[in].worldRow | ATTR0_4BPP | ATTR0_WIDE;
            shadowOAM[in+21].attr1 = (bullets[in].worldCol-hOff) | ATTR1_TINY;
            shadowOAM[in+21].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 4);  
        } else {
            shadowOAM[in+21].attr0 = ATTR0_HIDE;
        }
    }
}

void updateBullet(BULLET *b) {
    if (b->active) {
		if (b->worldCol + b->width <= MAPWIDTH || b->worldCol - b-> origCol < SCREENWIDTH) {
			b->worldCol += b->cdel;
		} else {
			b->active = 0;
		}	
	}
    for (int j = 0; j < BALLOONCOUNT; j++) {
        if (collision(balloons[j].worldCol, balloons[j].worldRow, balloons[j].width, balloons[j].height, b->worldCol, b->worldRow, b->width, b->height)){
            b->active = 0;
            balloons[j].active = 0;
            shadowOAM[j+1].attr0 |= ATTR0_HIDE;
            balloons[j].hit = 1;
            //score += 7;
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
    shadowOAM[26].attr0 = 0 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[26].attr1 = 0 | ATTR1_MEDIUM;
    shadowOAM[26].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 12);
    
    //draws Fuel counter
    shadowOAM[27].attr0 = 3 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[27].attr1 = 25 | ATTR1_SMALL;
   
    if (gasLevel > 75) {
         shadowOAM[27].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 8);
    } else if (gasLevel > 50) {
         shadowOAM[27].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 9);
    } else if (gasLevel > 25) {
         shadowOAM[27].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 10);
    } else {
         shadowOAM[27].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 11);
    }

    //draw Heart Tracker
    shadowOAM[28].attr0 = 0 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[28].attr1 = 208 | ATTR1_SMALL;
    
    if (lives == 3) {
        shadowOAM[28].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 5);
    } else if (lives == 2) {
        shadowOAM[28].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 6);
    } else if (lives == 1) {
        shadowOAM[28].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 7);
    }

    //draw Score
    shadowOAM[29].attr0 = 0 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[29].attr1 = 65 | ATTR1_MEDIUM;
    shadowOAM[29].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 14);
    //Tens place
    shadowOAM[30].attr0 = 3 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[30].attr1 = 95 | ATTR1_TINY;
    shadowOAM[30].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((score / 10), 31);
    //Ones place
    shadowOAM[31].attr0 = 3 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[31].attr1 = 101 | ATTR1_TINY;
    shadowOAM[31].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(score % 10, 31);
}