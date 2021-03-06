# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 62 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 83 "myLib.h"
typedef struct {
    u16 tileimg[8192];
} charblock;


typedef struct {
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();


typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 152 "myLib.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} SPRITE;
# 190 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;






typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 276 "myLib.h"
typedef void (*ihp_t)(void);
# 300 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);


int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "game.c" 2
# 1 "game.h" 1







typedef struct {
    int direction;
    int worldRow;
    int worldCol;
    int origCol;
    int cdel;
    int width;
    int height;
    int active;
} BULLET;


void initGame();
void updateGame();
void drawGame();
void initPlayer();
void drawPlayer();
void updatePlayer();
void initBullet();
void fireBullet();
void drawBullet();
void updateBullet();
void setFuelLevel(int);
void drawUI();
void drawScore();



extern int vOff;
extern int hOff;
extern int pufflehOff;
extern int spritehOff;
extern int score;
extern int lives;
extern int screenBlock;
extern float gasLevel;
extern SPRITE puffle;
BULLET bullets[8];
# 3 "game.c" 2
# 1 "obstacles.h" 1







typedef struct {
    int worldRow;
    int worldCol;
    int shift;
    int rdel;
    int width;
    int height;
    int aniCounter;
    int currFrame;
    int numFrames;
    int hit;
    int active;
} BALLOON;


typedef struct {
    int worldRow;
    int worldCol;
    int shift;
    int width;
    int height;
    int active;
    int collected;
} FUEL;


typedef struct {
    int worldRow;
    int worldCol;
    int shift;
    int width;
    int height;
    int active;
    int value;
    int collected;
} COIN;


void initObstacles();
void drawObstacles();
void updateObstacles();
void initBalloons();
void updateBalloons();
void drawBalloons();
void initFuel();
void drawFuel();
void updateFuel();
void initCoin();
void drawCoin();
void updateCoin();


BALLOON balloons[20];
FUEL fuels[2];
COIN coins[30];

int cheat;
# 4 "game.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 5 "game.c" 2

int vOff;
int hOff;
int pufflehOff;
int spritehOff;
int score = 0;
int lives = 3;
int screenBlock;
float gasLevel = 100;
SPRITE puffle;
BULLET bullets[8];


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
    DMANow(3, shadowOAM, ((OBJ_ATTR *)(0x7000000)), 128*4);
}

void updateGame () {
    if (!cheat) {
        setFuelLevel(0);
    }
    updateObstacles();
    updatePlayer();
    for (int i = 0; i < 8; i++) {
  updateBullet(&bullets[i]);
 }
}

void initPlayer() {
    puffle.worldRow = 80;
    puffle.worldCol = 14;


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
        shadowOAM[0].attr0 |= (2 << 8);
    } else {
        shadowOAM[0].attr0 = ((puffle.worldRow - vOff) & 0xFF) | (0 << 13) | (0 << 14);
        shadowOAM[0].attr1 = ((puffle.worldCol - pufflehOff) & 0x1FF) | (2 << 14);
        shadowOAM[0].attr2 = ((0) << 12) | ((2 + 4 * puffle.curFrame)*32 + (7 + 4 * puffle.aniState));
    }
}

void updatePlayer() {
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5)))) {
        if (puffle.worldCol > 0) {
            puffle.worldCol -= puffle.cdel;
            puffle.aniState = PUFFLELEFT;
            if (hOff > 0 && (puffle.worldCol - hOff) < 240 / 2) {
                hOff-=puffle.cdel;
                pufflehOff-=puffle.cdel;
                spritehOff-=puffle.cdel;
            }
        }
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4)))) {
        puffle.aniState = PUFFLERIGHT;
        if (puffle.worldCol + puffle.width < 1024) {
            puffle.worldCol += puffle.cdel;
            if (screenBlock < 31 && (hOff < 1024 - 240) && (puffle.worldCol + pufflehOff) > 240 / 2) {
                hOff+=puffle.cdel;
                pufflehOff+=puffle.cdel;
                spritehOff+=puffle.cdel;
            }
        }

    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6)))) {
        if (puffle.worldRow > 12) {
            puffle.worldRow += puffle.rdel;
            if (vOff > 0 && ((puffle.worldRow - vOff) < (160 / 2))) {
                vOff--;
            }
        }

    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 7)))) {
        if ((puffle.worldRow + puffle.height) < 160) {
            puffle.worldRow -= puffle.rdel;

            if (vOff < 160 - 160 && (puffle.worldRow + vOff) > 160 / 2) {
                vOff++;
            }
        }
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0))))) {
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
    for (int i = 0; i < 8; i++) {
        bullets[i].direction = 0;
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
    for(int i = 0; i < 8; i++) {
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
    for(int in = 0; in < 8; in++) {
        if (bullets[in].active) {
            shadowOAM[in+55].attr0 = bullets[in].worldRow & 0xFF | (0 << 13) | (1 << 14);
            shadowOAM[in+55].attr1 = (bullets[in].worldCol - pufflehOff) & 0x1FF | (0 << 14);
            shadowOAM[in+55].attr2 = ((0) << 12) | ((4)*32 + (0));
        } else {
            shadowOAM[in+55].attr0 = (2 << 8);
        }
    }
}

void updateBullet(BULLET *b) {
    if (b->active) {
  if (b->direction == 2) {
            if (b->worldCol + b->width <= 1024 || b->worldCol - b-> origCol < 240) {
                b->worldCol += (b->cdel);
            } else {
                b->active = 0;
            }
        } else if (b->direction == 1){
            if(b->worldCol >= 0 || b->origCol - b->worldCol < 240) {
                b->worldCol -= b->cdel;
            } else {
                b->active = 0;
            }
        }

 }
    for (int j = 0; j < 20; j++) {
        if (collision(balloons[j].worldCol, balloons[j].worldRow, balloons[j].width, balloons[j].height, b->worldCol, b->worldRow, b->width, b->height)){
            b->active = 0;
            balloons[j].active = 0;
            shadowOAM[j+1].attr0 |= (2 << 8);
            balloons[j].hit = 1;
        }
    }

}




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

    shadowOAM[64].attr0 = 0 | (0 << 13) | (1 << 14);
    shadowOAM[64].attr1 = 0 | (2 << 14);
    shadowOAM[64].attr2 = ((0) << 12) | ((12)*32 + (0));


    shadowOAM[65].attr0 = 3 | (0 << 13) | (1 << 14);
    shadowOAM[65].attr1 = 25 | (1 << 14);

    if (gasLevel > 75) {
         shadowOAM[65].attr2 = ((0) << 12) | ((8)*32 + (0));
    } else if (gasLevel > 50) {
         shadowOAM[65].attr2 = ((0) << 12) | ((9)*32 + (0));
    } else if (gasLevel > 25) {
         shadowOAM[65].attr2 = ((0) << 12) | ((10)*32 + (0));
    } else {
         shadowOAM[65].attr2 = ((0) << 12) | ((11)*32 + (0));
    }


    shadowOAM[66].attr0 = 0 | (0 << 13) | (1 << 14);
    shadowOAM[66].attr1 = 208 | (1 << 14);

    if (lives == 3) {
        shadowOAM[66].attr2 = ((0) << 12) | ((5)*32 + (0));
    } else if (lives == 2) {
        shadowOAM[66].attr2 = ((0) << 12) | ((6)*32 + (0));
    } else if (lives == 1) {
        shadowOAM[66].attr2 = ((0) << 12) | ((7)*32 + (0));
    }

    drawScore();
}

void drawScore() {

    shadowOAM[67].attr0 = 0 | (0 << 13) | (1 << 14);
    shadowOAM[67].attr1 = 85 | (2 << 14);
    shadowOAM[67].attr2 = ((0) << 12) | ((14)*32 + (0));

    shadowOAM[68].attr0 = 3 | (0 << 13) | (0 << 14);
    shadowOAM[68].attr1 = 115 | (0 << 14);
    shadowOAM[68].attr2 = ((0) << 12) | ((31)*32 + ((score / 100)));

    shadowOAM[69].attr0 = 3 | (0 << 13) | (0 << 14);
    shadowOAM[69].attr1 = 121 | (0 << 14);
    shadowOAM[69].attr2 = ((0) << 12) | ((31)*32 + ((score / 10) % 10));

    shadowOAM[70].attr0 = 3 | (0 << 13) | (0 << 14);
    shadowOAM[70].attr1 = 128 | (0 << 14);
    shadowOAM[70].attr2 = ((0) << 12) | ((31)*32 + (score % 10));
}
