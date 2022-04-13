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
void updateBullet(BULLET *);
void setFuelLevel(int);
void drawUI();



extern int vOff;
extern int hOff;
extern int score;
extern int lives;
extern float gasLevel;
extern SPRITE puffle;
BULLET bullets[5];
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
    int aniState;
    int prevAniState;
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


BALLOON balloons[7];
FUEL fuels[3];
COIN coins[10];
# 4 "game.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 5 "game.c" 2

int vOff;
int hOff;
int score = 0;
int lives = 3;
float gasLevel = 100;
SPRITE puffle;
BULLET bullets[5];


enum {PUFFLELEFT, PUFFLERIGHT};

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

    (*(volatile unsigned short *)0x04000010) = hOff;

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR *)(0x7000000)), 128*4);
}

void updateGame () {
    setFuelLevel(0);
    updateObstacles();
    updatePlayer();
    for (int i = 0; i < 5; i++) {
  updateBullet(&bullets[i]);
 }
}

void initPlayer() {
    puffle.worldRow = 80;
    puffle.worldCol = 14;


    puffle.rdel = 1;
    puffle.cdel = 1;
    puffle.width = 14;
    puffle.height = 14;
    puffle.aniCounter = 0;
    puffle.aniState = PUFFLELEFT;
    puffle.prevAniState = 0;
    puffle.curFrame = 0;
    puffle.numFrames = 0;
    puffle.hide = 0;
}

void drawPlayer() {
    if (puffle.hide == 1) {
        shadowOAM[0].attr0 |= (2 << 8);
    } else {
        shadowOAM[0].attr0 = ((puffle.worldRow - vOff) & 0xFF) | (0 << 13) | (0 << 14);
        shadowOAM[0].attr1 = ((puffle.worldCol - hOff) & 0x1FF) | (1 << 14);
        shadowOAM[0].attr2 = ((0) << 12) | ((0)*32 + (0));
    }
}

void updatePlayer() {
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5)))) {
        if (puffle.worldCol > 0) {
            puffle.worldCol -= puffle.cdel;

            if (hOff > 0 && (puffle.worldCol - hOff) < 240 / 2) {
                hOff--;

            }
        }

    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4)))) {
        if (puffle.worldCol + puffle.width < 512) {
            puffle.worldCol += puffle.cdel;

            if (hOff < 512 - 240 && (puffle.worldCol + hOff) > 240 / 2) {
                hOff++;
            }
        }

    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6)))) {
        if (puffle.worldRow > 12) {
            puffle.worldRow -= puffle.rdel;

            if (vOff > 0 && ((puffle.worldRow - vOff) < (160 / 2))) {
                vOff--;
            }
        }

    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 7)))) {
        if (puffle.worldRow + puffle.height < 160) {
            puffle.worldRow += puffle.rdel;

            if (vOff < 160 - 160 && (puffle.worldRow + vOff) > 160 / 2) {
                vOff++;
            }
        }
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0))))) {
        fireBullet();
    }


}

void initBullet() {
    for (int i = 0; i < 5; i++) {
        bullets[i].worldRow = puffle.worldRow;
        bullets[i].worldCol = puffle.worldCol;
        bullets[i].origCol = bullets[i].worldCol;
        bullets[i].cdel = 1;
        bullets[i].width = 8;
        bullets[i].height = 2;
        bullets[i].active = 0;
    }
}

void fireBullet() {
    for(int i = 0; i < 5; i++) {
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
    for(int in = 0; in < 5; in++) {
        if (bullets[in].active) {
            shadowOAM[in+21].attr0 = bullets[in].worldRow | (0 << 13) | (0 << 14);
            shadowOAM[in+21].attr1 = (bullets[in].worldCol-hOff) | (0 << 14);
            shadowOAM[in+21].attr2 = ((0) << 12) | ((2)*32 + (0));
        } else {
            shadowOAM[in+21].attr0 = (2 << 8);
        }
    }
}

void updateBullet(BULLET *b) {
    if (b->active) {
  if (b->worldCol + b->width <= 512 || b->worldCol - b-> origCol < 240) {
   b->worldCol += b->cdel;
  } else {
   b->active = 0;
  }
 }
    for (int j = 0; j < 7; j++) {
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

    shadowOAM[26].attr0 = 0 | (0 << 13) | (1 << 14);
    shadowOAM[26].attr1 = 0 | (2 << 14);
    shadowOAM[26].attr2 = ((0) << 12) | ((0)*32 + (7));


    shadowOAM[27].attr0 = 0 | (0 << 13) | (1 << 14);
    shadowOAM[27].attr1 = 33 | (2 << 14);

    if (gasLevel > 75) {
         shadowOAM[27].attr2 = ((0) << 12) | ((0)*32 + (11));
    } else if (gasLevel > 50) {
         shadowOAM[27].attr2 = ((0) << 12) | ((2)*32 + (11));
    } else if (gasLevel > 25) {
         shadowOAM[27].attr2 = ((0) << 12) | ((4)*32 + (11));
    } else {
         shadowOAM[27].attr2 = ((0) << 12) | ((6)*32 + (11));
    }


    shadowOAM[28].attr0 = 0 | (0 << 13) | (1 << 14);
    shadowOAM[28].attr1 = 208 | (2 << 14);

    if (lives == 3) {
        shadowOAM[28].attr2 = ((0) << 12) | ((0)*32 + (15));
    } else if (lives == 2) {
        shadowOAM[28].attr2 = ((0) << 12) | ((2)*32 + (15));
    } else if (lives == 1) {
        shadowOAM[28].attr2 = ((0) << 12) | ((4)*32 + (15));
    }


    shadowOAM[29].attr0 = 0 | (0 << 13) | (1 << 14);
    shadowOAM[29].attr1 = 65 | (2 << 14);
    shadowOAM[29].attr2 = ((0) << 12) | ((2)*32 + (7));

    shadowOAM[30].attr0 = 3 | (0 << 13) | (0 << 14);
    shadowOAM[30].attr1 = 95 | (0 << 14);
    shadowOAM[30].attr2 = ((0) << 12) | ((4)*32 + ((score / 10)));

    shadowOAM[31].attr0 = 3 | (0 << 13) | (0 << 14);
    shadowOAM[31].attr1 = 101 | (0 << 14);
    shadowOAM[31].attr2 = ((0) << 12) | ((4)*32 + (score % 10));
}
