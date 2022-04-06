
//{{BLOCK(instructionScreen)

//======================================================================
//
//	instructionScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 229 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7328 + 2048 = 9888
//
//	Time-stamp: 2022-04-04, 17:25:13
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSCREEN_H
#define GRIT_INSTRUCTIONSCREEN_H

#define instructionScreenTilesLen 7328
extern const unsigned short instructionScreenTiles[3664];

#define instructionScreenMapLen 2048
extern const unsigned short instructionScreenMap[1024];

#define instructionScreenPalLen 512
extern const unsigned short instructionScreenPal[256];

#endif // GRIT_INSTRUCTIONSCREEN_H

//}}BLOCK(instructionScreen)
