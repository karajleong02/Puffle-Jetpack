#include "myLib.h"
#include "game.h"
#include "obstacles.h"
#include "spritesheet.h"

int hshift; //0: no shift, 1: shift left, 2: shift right
int vshift; //0: no shift, 1: shift up, 2: shift down
int vOff;
int hOff;
int score = 0;
int lives = 3;
int gasLevel = 100;
SPRITE puffle;
BULLET bullets[BULLETCOUNT];

//Puffle animation states
enum {PUFFLELEFT, PUFFLERIGHT};

void initGame() {
    initObstacles();
    initPlayer();
    initBullet();
    vOff = 96;
    hOff = 9;
}

void drawGame() {
    drawObstacles();
    drawPlayer();
    drawWords();
    for (int i = 0; i < BULLETCOUNT; i++) {
		drawBullet(&bullets[i]);
	}

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

void updateGame () {
    updatePlayer();
    for (int i = 0; i < BULLETCOUNT; i++) {
		updateBullet(&bullets[i]);
	}
    updateObstacles();
}

void initPlayer() {
    puffle.worldRow = 170;
    puffle.worldCol = 14;
    puffle.rdel = 1;
    puffle.cdel = 1;
    puffle.width = 16;
    puffle.height = 16;
    puffle.aniCounter = 0;
    puffle.aniState = PUFFLELEFT;
    puffle.prevAniState = 0;
    puffle.curFrame = 0;
    puffle.numFrames = 0;
    puffle.hide = 0;
}

void drawPlayer() {
    if (puffle.hide == 1) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = ((puffle.worldRow - vOff) & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[0].attr1 = ((puffle.worldCol - hOff) & COLMASK) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);
    }
}

void updatePlayer() {
    hshift = 0;
    vshift = 0;
    if(BUTTON_HELD(BUTTON_LEFT)) {
        if (puffle.worldCol > 0) {
            puffle.worldCol -= puffle.cdel;

            if (hOff > 0 && (puffle.worldCol  - hOff) < SCREENWIDTH / 2) {
                hOff--;
                hshift = 1;
            }
        }
        
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (puffle.worldCol + puffle.width < MAPWIDTH) {
            puffle.worldCol += puffle.cdel;

            if (hOff < MAPWIDTH - SCREENWIDTH && (puffle.worldCol + hOff) > SCREENWIDTH / 2) {
                hOff++;
                hshift = 2;
            }
        }
        
    }
    if(BUTTON_HELD(BUTTON_UP)) {
        if (puffle.worldRow > 0) {
            puffle.worldRow -= puffle.rdel;

            if (vOff > 0 && ((puffle.worldRow - vOff) < (SCREENHEIGHT / 2))) {
                vOff--;
                vshift = 1;
            }
        }
        
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
        if (puffle.worldRow + puffle.height < MAPHEIGHT) {
            puffle.worldRow += puffle.rdel;

            if (vOff < MAPHEIGHT - SCREENHEIGHT && (puffle.worldRow  + vOff) > SCREENHEIGHT / 2) {
                vOff++;
                vshift = 2;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_A)) {
        fireBullet();
    }
}

void initBullet() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].worldRow = puffle.worldRow;
        bullets[i].worldCol = puffle.worldCol;
        bullets[i].origCol = bullets[i].worldCol;
        bullets[i].cdel = 1;
        bullets[i].width = 3;
        bullets[i].height = 1;
        bullets[i].active = 0;
    }
}

void fireBullet() {
    for(int i = 0; i < BULLETCOUNT; i++) {
		if(!bullets[i].active) {
			bullets[i].worldRow = puffle.worldRow + (puffle.height / 2); 
			bullets[i].worldCol = puffle.worldCol+puffle.width;
            bullets[i].origCol = bullets[i].worldCol;
			bullets[i].active = 1;
			break;
		}
	}
}

void drawBullet(BULLET *b) {
    for(int i = 0; i < BULLETCOUNT; i++) {
        if (bullets[i].active == 1) {
            shadowOAM[i+21].attr0 = b->worldRow | ATTR0_4BPP | ATTR0_WIDE;
            shadowOAM[i+21].attr1 = b->worldCol | ATTR1_TINY;
            shadowOAM[i+21].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 2);  
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

}

void drawWords() {
    shadowOAM[26].attr0 = 0 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[26].attr1 = 0 | ATTR1_MEDIUM;
    shadowOAM[26].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7, 0);
}