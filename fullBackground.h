
//{{BLOCK(fullBackground)

//======================================================================
//
//	fullBackground, 1024x256@4, 
//	+ palette 256 entries, not compressed
//	+ 319 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 10208 + 8192 = 18912
//
//	Time-stamp: 2022-04-29, 03:10:13
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FULLBACKGROUND_H
#define GRIT_FULLBACKGROUND_H

#define fullBackgroundTilesLen 10208
extern const unsigned short fullBackgroundTiles[5104];

#define fullBackgroundMapLen 8192
extern const unsigned short fullBackgroundMap[4096];

#define fullBackgroundPalLen 512
extern const unsigned short fullBackgroundPal[256];

#endif // GRIT_FULLBACKGROUND_H

//}}BLOCK(fullBackground)
