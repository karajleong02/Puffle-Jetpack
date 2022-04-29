//Constants
#define BULLETCOUNT 8
#define MAPHEIGHT 160
#define MAPWIDTH 1024


//Struct for Bullet
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
void updateBullet();
void setFuelLevel(int);
void drawUI();
void drawScore();


//Variables
extern int vOff;
extern int hOff;
extern int pufflehOff;
extern int spritehOff;
extern int score;
extern int lives;
extern int screenBlock;
extern float gasLevel;
extern SPRITE puffle;
BULLET bullets[BULLETCOUNT];