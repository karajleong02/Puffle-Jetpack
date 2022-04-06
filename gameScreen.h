
//{{BLOCK(gameScreen)

//======================================================================
//
//	gameScreen, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 576 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 18432 + 4096 = 23040
//
//	Time-stamp: 2022-04-04, 15:18:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gameScreenTilesLen 18432
extern const unsigned short gameScreenTiles[9216];

#define gameScreenMapLen 4096
extern const unsigned short gameScreenMap[2048];

#define gameScreenPalLen 512
extern const unsigned short gameScreenPal[256];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gameScreen)
