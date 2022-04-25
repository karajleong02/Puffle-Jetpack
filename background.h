
//{{BLOCK(background)

//======================================================================
//
//	background, 768x256@4, 
//	+ palette 256 entries, not compressed
//	+ 200 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 96x32 
//	Total size: 512 + 6400 + 6144 = 13056
//
//	Time-stamp: 2022-04-19, 16:33:52
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BACKGROUND_H
#define GRIT_BACKGROUND_H

#define backgroundTilesLen 6400
extern const unsigned short backgroundTiles[3200];

#define backgroundMapLen 6144
extern const unsigned short backgroundMap[3072];

#define backgroundPalLen 512
extern const unsigned short backgroundPal[256];

#endif // GRIT_BACKGROUND_H

//}}BLOCK(background)
