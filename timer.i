# 1 "timer.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "timer.c"
# 1 "timer.h" 1

void interruptHandler();
void enableTimerInterrupts();
void setupInterrupts();
# 2 "timer.c" 2
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
# 3 "timer.c" 2
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
# 4 "timer.c" 2



int time_m;
int time_s;
int time_cs;


inline void haltUntilInterrupt(){
  __asm__("swi 0x04 << 15");
}




void interruptHandler(void) {

  *(unsigned short*)0x4000208 = 0;

  if ( *(volatile unsigned short*)0x4000202 & 1<<3 ) {
    time_cs++;
    if (time_cs > 99) time_cs = 0;
  }

  if ( *(volatile unsigned short*)0x4000202 & 1<<4 ) {
    time_s++;
    gasLevel--;
    if (time_s > 99) {
      time_s = time_s - 100;
    }
  }

  if ( *(volatile unsigned short*)0x4000202 & 1<<5 ) {
    time_m++;
  }




  if ((*(volatile unsigned short*)0x4000202 & 1 << 12) && (~(*(volatile unsigned short *)0x04000130) & (1 << 3))) {
    *(volatile unsigned short*)0x4000102 = (0<<7);
    *(volatile unsigned short*)0x4000106 = (0<<7);
    *(volatile unsigned short*)0x400010A = (0<<7);
    time_cs = 0;
    time_s = 0;
    time_m = 0;
    *(volatile unsigned short*)0x4000102 = 3 | (1<<7) | (1<<6);
    *(volatile unsigned short*)0x4000106 = 3 | (1<<7) | (1<<6);
    *(volatile unsigned short*)0x400010A = (1<<2) | (1<<7) | (1<<6);
  }
# 62 "timer.c"
  *(volatile unsigned short*)0x4000202 = *(volatile unsigned short*)0x4000202;
  *(unsigned short*)0x4000208 = 1;
}


void enableTimerInterrupts(void) {

  *(unsigned short*)0x4000200 = 1<<3 | 1<<4 | 1<<5;


  *(volatile unsigned short*)0x4000102 = 0;
  *(volatile unsigned short*)0x4000100 = 65536 - 164;
  *(volatile unsigned short*)0x4000102 = 3 | (1<<7) | (1<<6);

  *(volatile unsigned short*)0x4000106 = 1;
  *(volatile unsigned short*)0x4000104 = 65536 - 16384;
  *(volatile unsigned short*)0x4000106 = 3 | (1<<7) | (1<<6);

  *(volatile unsigned short*)0x400010A = 0;
  *(volatile unsigned short*)0x4000108 = 65536 - 60;
  *(volatile unsigned short*)0x400010A = (1<<2) | (1<<7) | (1<<6);
}

void setupInterrupts(void) {

  *(unsigned short*)0x4000208 = 0;

  *((ihp_t *)0x03007FFC) = interruptHandler;
  enableTimerInterrupts();


  *(unsigned short*)0x4000200 |= 1 << 0;
  *(unsigned short*)0x4000004 |= 1 << 3;

  *(unsigned short*)0x4000200 |= 1 << 12;
  (*(volatile unsigned short *)0x04000132) |= (1 << 0) | (1 << 2) | (1 << 3) | 1 << 14;

  *(unsigned short*)0x4000208 = 1;
}
