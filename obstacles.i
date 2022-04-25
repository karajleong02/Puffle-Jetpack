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
# 276 "myLib.h"
typedef void (*ihp_t)(void);
# 300 "myLib.h"
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
# 3 "obstacles.c" 2
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


BALLOON balloons[7];
FUEL fuels[3];
COIN coins[10];
# 4 "obstacles.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 5 "obstacles.c" 2

# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupt();
void interruptHandlers();

void pauseSound();
void unpauseSound();
void stopSound();
# 49 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 7 "obstacles.c" 2
# 1 "coinCollect.h" 1


extern const unsigned int coinCollect_sampleRate;
extern const unsigned int coinCollect_length;
extern const signed char coinCollect_data[];
# 8 "obstacles.c" 2
# 1 "fuelCollect.h" 1


extern const unsigned int fuelCollect_sampleRate;
extern const unsigned int fuelCollect_length;
extern const signed char fuelCollect_data[];
# 9 "obstacles.c" 2
# 1 "balloonPop.h" 1


extern const unsigned int balloonPop_sampleRate;
extern const unsigned int balloonPop_length;
extern const signed char balloonPop_data[];
# 10 "obstacles.c" 2



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
        balloons[i].worldCol = i * 57 + 42;
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


void updateBalloons() {
    for (int i = 0; i < 7; i++) {
        if(balloons[i].active) {
            if( collision(puffle.worldCol, puffle.worldRow, puffle.width, puffle.height, balloons[i].worldCol, balloons[i].worldRow, balloons[i].width, balloons[i].height)) {
                balloons[i].hit = 1;
                balloons[i].active = 0;
                shadowOAM[i+1].attr0 |= (2 << 8);
                playSoundB(balloonPop_data, balloonPop_length, 0);
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
    for (int i = 0; i < 7; i++) {
        if (!balloons[i].active) {
            shadowOAM[i+1].attr0 |= (2 << 8);
        } else {
            shadowOAM[i+1].attr0 = (balloons[i].worldRow & 0xFF) | (0 << 13) | (2 << 14);
            shadowOAM[i+1].attr1 = ((balloons[i].worldCol - hOff) & 0x1FF) | (2 << 14);
            shadowOAM[i+1].attr2 = ((0) << 12) | ((2 + 4 * balloons[i].currFrame)*32 + (4));
        }
    }
}

void initFuel() {
    int number = -1;
    for (int i = 0; i < 3; i++) {
        fuels[i].worldCol = i * 140 + 97;
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
    for (int i = 0; i < 3; i++) {
        if(!fuels[i].collected && collision(puffle.worldCol, puffle.worldRow, puffle.width, puffle.height, fuels[i].worldCol, fuels[i].worldRow, fuels[i].width, fuels[i].height)) {
            fuels[i].collected = 1;
            fuels[i].active = 0;
            shadowOAM[i+8].attr0 |= (2 << 8);
            playSoundB(fuelCollect_data, fuelCollect_length, 0);
            setFuelLevel(1);
        }
        if(fuels[i].active && fuels[i].worldCol - hOff < 0) {
            fuels[i].active = 0;
        }
    }
}

void drawFuel() {
    for (int i = 0; i < 3; i++) {
        if (!fuels[i].active) {
            shadowOAM[i+8].attr0 |= (2 << 8);
        } else {
            shadowOAM[i+8].attr0 = (fuels[i].worldRow & 0xFF) | (0 << 13) | (0 << 14);
            shadowOAM[i+8].attr1 = ((fuels[i].worldCol-hOff) & 0x1FF) | (1 << 14);
            shadowOAM[i+8].attr2 = ((0) << 12) | ((2)*32 + (2));
        }
    }
}

void initCoin() {
    int number = -1;
    for (int i = 0; i < 10; i++) {
        coins[i].worldCol = i * 42 + 70;
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
    for (int i = 0; i < 10; i++) {
        if(!coins[i].collected && collision(puffle.worldCol, puffle.worldRow, puffle.width, puffle.height, coins[i].worldCol, coins[i].worldRow, coins[i].width, coins[i].height)) {
            coins[i].collected = 1;
            coins[i].active = 0;
            shadowOAM[i+11].attr0 |= (2 << 8);
            playSoundB(coinCollect_data, coinCollect_length, 0);
            score+=5;
        }
        if(coins[i].active && coins[i].worldCol - hOff < 0) {
            coins[i].active = 0;
        }
    }
}

void drawCoin() {
    for (int i = 0; i < 10; i++) {
        if (!coins[i].active) {
            shadowOAM[i+11].attr0 |= (2 << 8);
        } else {
            shadowOAM[i+11].attr0 = (coins[i].worldRow & 0xFF) | (0 << 13) | (0 << 14);
            shadowOAM[i+11].attr1 = ((coins[i].worldCol - hOff) & 0x1FF) | (1 << 14);
            shadowOAM[i+11].attr2 = ((0) << 12) | ((2)*32 + (0));
        }
    }
}
