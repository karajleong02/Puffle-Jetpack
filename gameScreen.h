
//{{BLOCK(gameScreen)

//======================================================================
//
//	gameScreen, 768x256@4, 
//	+ palette 256 entries, not compressed
//	+ 200 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 96x32 
//	Total size: 512 + 6400 + 6144 = 13056
//
//	Time-stamp: 2022-04-23, 16:11:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gameScreenTilesLen 6400
extern const unsigned short gameScreenTiles[3200];

#define gameScreenMapLen 6144
extern const unsigned short gameScreenMap[3072];

#define gameScreenPalLen 512
extern const unsigned short gameScreenPal[256];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gameScreen)
