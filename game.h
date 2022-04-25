//Constants
#define BULLETCOUNT 5
#define MAPHEIGHT 160
#define MAPWIDTH 560

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


//Variables
extern int vOff;
extern int hOff;
extern int score;
extern int lives;
extern float gasLevel;
extern SPRITE puffle;
BULLET bullets[BULLETCOUNT];