//Constants
#define COINCOUNT 10
#define FUELCOUNT 3
#define BALLOONCOUNT 7

//Struct for Balloons
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

//Struct for Fuel
typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int active;
} FUEL;

//Struct for Coin
typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int active;
    int value;
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