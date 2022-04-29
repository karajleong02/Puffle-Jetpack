//Constants
#define COINCOUNT 30
#define FUELCOUNT 2
#define BALLOONCOUNT 20


//Struct for Balloons
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

//Struct for Fuel
typedef struct {
    int worldRow;
    int worldCol;
    int shift;
    int width;
    int height;
    int active;
    int collected;
} FUEL;

//Struct for Coin
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

//Prototypes
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

//Variables
BALLOON balloons[BALLOONCOUNT];
FUEL fuels[FUELCOUNT];
COIN coins[COINCOUNT];

int cheat;