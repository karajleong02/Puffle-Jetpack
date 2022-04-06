# 1 "obstacles.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "obstacles.c"
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
# 238 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);


int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "obstacles.c" 2
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
void drawGame();
void initPlayer();
void drawPlayer();
void updatePlayer();
void initBullet();
void fireBullet();
void drawBullet(BULLET *);
void updateBullet(BULLET *);
void drawWords();


extern int vOff;
extern int hOff;

extern int hshift;
extern int vshift;
extern int score;
extern int lives;
extern int gasLevel;
extern SPRITE puffle;
BULLET bullets[5];
# 3 "obstacles.c" 2
# 1 "obstacles.h" 1






typedef struct {
    int worldRow;
    int worldCol;
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
    int width;
    int height;
    int active;
} FUEL;


typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int active;
    int value;
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
# 4 "obstacles.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 5 "obstacles.c" 2


BALLOON balloons[7];
FUEL fuels[3];
COIN coins[10];

enum {UP};

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
    for (int i = 0; i < 7; i++) {
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


void updateBalloons() {
    for (int i = 0; i < 7; i++) {
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
        for (int i = 0; i < 5; i++) {
            if (bullets[i].active & collision(balloons[i].worldCol, balloons[i].worldRow, balloons[i].width, balloons[i].height, bullets[i].worldCol, bullets[i].worldRow, bullets[i].width, bullets[i].height))
                bullets[i].active = 0;
                balloons[i].active = 0;
                balloons[i].hit = 1;
            }
        }


}

void drawBalloons() {
    for (int i = 0; i < 7; i++) {
        if (!balloons[i].active) {
            shadowOAM[i+1].attr0 |= (2 << 8);
        } else {
            shadowOAM[i+1].attr0 = (balloons[i].worldRow & 0xFF) | (0 << 13) | (0 << 14);
            shadowOAM[i+1].attr1 = (balloons[i].worldCol & 0x1FF) | (1 << 14);
            shadowOAM[i+1].attr2 = ((0) << 12) | ((0)*32 + (5));
        }
    }
}

void initFuel() {
    int number = -1;
    for (int i = 0; i < 3; i++) {
        fuels[i].worldCol = i * 115 + 100;
        fuels[i].worldRow = number * 30 + 75;
        fuels[i].width = 16;
        fuels[i].height = 16;
        fuels[i].active = 1;
        number *= -1;
    }
}

void updateFuel() {
    for (int i = 0; i < 3; i++) {
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
    for (int i = 0; i < 3; i++) {
        if (!fuels[i].active) {
            shadowOAM[i+8].attr0 |= (2 << 8);
        } else {
            shadowOAM[i+8].attr0 = fuels[i].worldRow | (0 << 13) | (0 << 14);
            shadowOAM[i+8].attr1 = fuels[i].worldCol | (1 << 14);
            shadowOAM[i+8].attr2 = ((0) << 12) | ((0)*32 + (2));
        }
    }
}

void initCoin() {
    int number = -1;
    for (int i = 0; i < 10; i++) {
        coins[i].worldCol = i * 50 + 70;
        coins[i].worldRow = number * 30 + 75;
        coins[i].width = 16;
        coins[i].height = 16;
        coins[i].active = 1;
        number *= -1;
    }
}

void updateCoin() {
    for (int i = 0; i < 10; i++) {
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
    for (int i = 0; i < 10; i++) {
        if (!coins[i].active) {
            shadowOAM[i+11].attr0 |= (2 << 8);
        } else {
            shadowOAM[i+11].attr0 = coins[i].worldRow | (0 << 13) | (2 << 14);
            shadowOAM[i+11].attr1 = coins[i].worldCol | (0 << 14);
            shadowOAM[i+11].attr2 = ((0) << 12) | ((0)*32 + (4));
        }
    }
}
