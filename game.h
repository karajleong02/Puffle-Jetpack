//Constants
#define BULLETCOUNT 5
#define MAPHEIGHT 256
#define MAPWIDTH 512

//Struct for Bullet
typedef struct {
    int worldRow;
    int worldCol;
    int origCol;
    int cdel;
    int width;
    int height;
    int active;
} BULLET;

//Prototypes
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

//Variables
extern int vOff;
extern int hOff;
//MAKE SHIFT 1 VARIABLE?
extern int hshift;
extern int vshift;
extern int score;
extern int lives;
extern int gasLevel;
extern SPRITE puffle;
BULLET bullets[BULLETCOUNT];