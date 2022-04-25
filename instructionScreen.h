
//{{BLOCK(instructionScreen)

//======================================================================
//
//	instructionScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 326 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10432 + 2048 = 12992
//
//	Time-stamp: 2022-04-25, 19:32:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSCREEN_H
#define GRIT_INSTRUCTIONSCREEN_H

#define instructionScreenTilesLen 10432
extern const unsigned short instructionScreenTiles[5216];

#define instructionScreenMapLen 2048
extern const unsigned short instructionScreenMap[1024];

#define instructionScreenPalLen 512
extern const unsigned short instructionScreenPal[256];

#endif // GRIT_INSTRUCTIONSCREEN_H

//}}BLOCK(instructionScreen)
