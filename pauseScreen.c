
//{{BLOCK(pauseScreen)

//======================================================================
//
//	pauseScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 219 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7008 + 2048 = 9568
//
//	Time-stamp: 2022-04-04, 17:27:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short pauseScreenTiles[3504] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3EE3,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x7633,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3EF6,0x3333,0x9AAA,0x333E,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x666E,0x333E,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x6666,0xA796,0xAAAA,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3E66,0x3333,0xAAAA,0x3F17,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x9333,0x3333,0xA933,
	0x3333,0xAA63,0x3333,0xAA13,0x3333,0xAA93,0x3333,0xAA93,
	0x6E33,0x9918,0xAA7F,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x9777,0x3F81,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x3333,0x3333,0x3E17,0x3333,0x7AAA,0x333F,0xAAAA,0x3F7A,
	0xAAAA,0x9AAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x333E,0x3333,0x33FA,0x3333,0x38AA,0x3333,0xFAAA,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0xE333,0x3333,0x7333,
	0x3333,0xA933,0x3333,0xAAF3,0x3333,0xAAAE,0x3333,0xAAA9,
	0x9633,0xAAAA,0xAA93,0xAAAA,0xAAA7,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x3387,0x3333,0xFAAA,0x3333,0xAAAA,0x3338,0xAAAA,0x33FA,
	0xAAAA,0x3EAA,0xAAAA,0x39AA,0xAAAA,0xEAAA,0xAAAA,0x1AAA,

	0x3333,0x9983,0xE333,0xAAA7,0x9333,0xAAAA,0xAE33,0xAAAA,
	0xA633,0xAAAA,0xAF33,0xAAAA,0xA633,0xAAAA,0xA633,0xAAAA,
	0x33E8,0x3333,0x3E9A,0x3333,0x39AA,0x3333,0x3AAA,0x3333,
	0xEAAA,0x3333,0xEAAA,0x3333,0x6AAA,0x3333,0x6AAA,0x3333,
	0x3333,0xAA63,0x3333,0xAA13,0x3333,0xAA93,0x3333,0xAA93,
	0x3333,0xAA93,0x3333,0xAA83,0x3333,0xAAF3,0x3333,0xAAF3,
	0xAAAA,0x3337,0xAAAA,0x331A,0xAAAA,0x33AA,0xAAAA,0x3EAA,
	0xAAAA,0x36AA,0xAAAA,0x36AA,0xAAAA,0x36AA,0xAAAA,0x36AA,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x9333,0x3333,0xA133,0x3333,0xAA63,0x3333,0xAA73,
	0x3333,0xA9F3,0x9E33,0xAAAA,0xAA83,0xAAAA,0xAAA9,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0x697A,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x3333,0x3333,0x3367,0x3333,0x38AA,0x3333,0x8AAA,0x3333,
	0xAAAA,0x333E,0xAAAA,0x3331,0xAAAA,0x3339,0xAAAA,0x3339,

	0x3333,0x7633,0x3333,0xAAF3,0x3333,0xAAA3,0x3333,0xAAA8,
	0x3333,0xAAA9,0x3333,0xAAA7,0x3333,0xAAA7,0x3333,0xAAA7,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x666A,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x98F6,0xAAA7,
	0x6817,0x3366,0xAAAA,0x1AAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,

	0x3333,0x3333,0x333E,0x3333,0x33E9,0x3333,0x331A,0x3333,
	0x337A,0x3333,0x337A,0x3333,0x339A,0x3333,0x3367,0x3333,
	0x3333,0xAA93,0x3333,0xAA83,0x3333,0xAAF3,0x3333,0xAAF3,
	0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,
	0xAAAA,0x97AA,0xAAAA,0x33AA,0xAAAA,0x33AA,0xAAAA,0x3EAA,
	0xAAAA,0x36AA,0xAAAA,0x36AA,0xAAAA,0x36AA,0xAAAA,0x36AA,
	0x7999,0xAAAA,0x3333,0x7863,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAA96,0xAAAA,0x7633,0xAAAA,
	0x3333,0xAAA9,0x3333,0xAAA3,0x3333,0xAAA3,0x3333,0xAAA6,
	0xAAAA,0x333E,0xAAAA,0x3337,0xAAAA,0x336A,0xAAAA,0x338A,
	0xAAAA,0x339A,0xAAAA,0x337A,0xAAAA,0x337A,0xAAAA,0x339A,
	0x6333,0xAAAA,0x7333,0xAAAA,0xAF33,0xAAAA,0xA733,0xAAAA,
	0xAAF3,0xAAAA,0xAA73,0xAAAA,0xAAA6,0xAAAA,0xAAA9,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAEFA,0xAAAA,0x9339,0xAAAA,0x6333,
	0xFAAA,0x3333,0x37AA,0x3333,0x36AA,0x3333,0x337A,0x3333,

	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAA9,0xAAAA,0xAAA8,0xAAAA,0xAAAF,0xAAAA,
	0xA633,0xAAAA,0xA636,0xAAAA,0xAE31,0xAAAA,0xAFE7,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x6AAA,0x3333,0x6AAA,0x3333,0x6AAA,0x3333,0x6AAA,0x3333,
	0x6AAA,0x3333,0x6AAA,0x3333,0x6AAA,0x3333,0x6AAA,0x3333,
	0x3333,0xAAF3,0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,
	0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,

	0xAAAA,0x36AA,0xAAAA,0x36AA,0xAAAA,0x36AA,0xAAAA,0x36AA,
	0xAAAA,0x36AA,0xAAAA,0x3FAA,0xAAAA,0x3FAA,0xAAAA,0x3FAA,
	0x3333,0xAAA6,0x3333,0xAAA9,0x3333,0xAAAA,0xE333,0xAAAA,
	0x6333,0xAAAA,0x6333,0xAAAA,0xF333,0xAAAA,0xF333,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0x38AA,0xAAAA,0x33FA,0xAAAA,0x3337,
	0xAAAA,0x3338,0xAAAA,0x3336,0xAAAA,0x3336,0xAAAA,0x3336,
	0xF6F1,0xAAA9,0x3333,0xAA83,0x3333,0x9633,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0xAAAA,0x3338,0x9AAA,0x333E,0xE177,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0xAAA9,0x3333,0xAAA9,0x3333,0xAAA9,0x3333,0xAAA9,
	0x3333,0xAAA9,0x3333,0xAAA9,0x3333,0xAAA9,0x3333,0xAAA9,
	0xAAAA,0x3337,0xAAAA,0x3337,0xAAAA,0x333A,0xAAAA,0x333A,
	0xAAAA,0x333A,0xAAAA,0x333A,0xAAAA,0x333A,0xAAAA,0x333A,
	0x3333,0x1FE3,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0xAAA7,0x7AAA,0x6E33,0x3E66,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3336,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAAE3,
	0x3333,0xAA33,0x3333,0xA733,0x3333,0xA733,0x3333,0xA933,
	0xAAAA,0x36AA,0xAAAA,0x36AA,0xAAAA,0x36AA,0xAAAA,0x3FAA,
	0xAAAA,0x38AA,0xAAAA,0x31AA,0xAAAA,0x39AA,0xAAAA,0x37AA,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x6333,0x3333,0xA633,0x3333,0xAA13,
	0x3333,0xAAA7,0x8333,0xAAAA,0xA633,0xAAAA,0xAAE3,0xAAAA,
	0xAAAE,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xE38A,0xAAAA,0x836A,0xAAAA,0x7337,0xAAAA,0xA33F,
	0x7AAA,0xA633,0x6AAA,0xA833,0x31AA,0xA933,0x337A,0xA733,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0x9AAA,0xAAAA,0xFAAA,0xAAAA,0x3AAA,0xAAAA,0x37AA,

	0x336A,0x3333,0x3337,0x3333,0x333F,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0xF633,
	0xAAA6,0xAAAA,0xAAA6,0xAAAA,0xAAAE,0xAAAA,0xAA73,0xAAAA,
	0xAA93,0xAAAA,0xAA93,0xAAAA,0xAA13,0xAAAA,0xAAA1,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xA9AA,0xAAAA,
	0xA8AA,0xAAAA,0xA8AA,0xAAAA,0xA8AA,0xAAAA,0xA7AA,0xAAAA,
	0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,
	0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,

	0xAAAA,0x38AA,0xAAAA,0x38AA,0xAAAA,0x38AA,0xAAAA,0x38AA,
	0xAAAA,0x38AA,0xAAAA,0x38AA,0xAAAA,0x38AA,0xAAAA,0x38AA,
	0xF333,0xAAAA,0x6333,0xAAAA,0x6333,0xAAAA,0x3333,0xAAAA,
	0x3333,0xAAA9,0x3333,0xAAA6,0x3333,0xAA73,0x3333,0xAA63,
	0xAAAA,0x3336,0xAAAA,0x3338,0xAAAA,0x3337,0xAAAA,0x338A,
	0xAAAA,0x36AA,0xAAAA,0xFAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3338,0x3333,0x331A,0x3333,

	0x3333,0xAAA9,0x3333,0xAAA7,0x3333,0xAAA7,0x3333,0xAAAA,
	0xE333,0xAAAA,0x6333,0xAAAA,0x6333,0xAAAA,0x6333,0xAAAA,
	0xAAAA,0x3337,0xAAAA,0x3337,0xAAAA,0x3337,0xAAAA,0x3339,
	0xAAAA,0x3331,0xAAAA,0xE338,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x6E33,0x1F66,0xAAA7,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x333E,0x3333,0x31AA,0x3333,0x1AAA,0x3333,0xAAAA,0x3333,

	0x3333,0xA133,0x3333,0xA833,0x3333,0xAF33,0x3333,0xAF33,
	0x3333,0xA633,0x3333,0xA633,0x3333,0xA633,0x3333,0xA633,
	0xAAAA,0x3AAA,0xAAAA,0xEAAA,0xAAAA,0x9AAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x6333,0xAAA7,0xA7F3,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x6AAA,0xAAAA,0x36AA,
	0xAAAA,0x33EA,0x7AAA,0x3333,0x31AA,0x3333,0x3367,0x3333,

	0x333A,0xAA33,0x333E,0xAAE3,0x3333,0xAA63,0x3333,0xAA83,
	0x3333,0xAAA6,0x3333,0xAAA7,0x6333,0xAAAA,0xF333,0xAAAA,
	0xAAAA,0x39AA,0xAAAA,0x19AA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x1633,0xAAA7,0xAAA7,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,

	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x7AAA,0xAAAA,
	0x9AAA,0xAAAA,0x8AAA,0xAAAA,0xFAAA,0xAAAA,0x6AAA,0xAAA7,
	0xFAAA,0x3333,0x1AAA,0x3333,0x7AAA,0x3333,0xAAAA,0x3333,
	0xAAAA,0x3336,0xAAAA,0x3331,0xAAAA,0x3337,0xAAAA,0x33EA,
	0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,0x3333,0xAA63,
	0x3333,0xAAF3,0x3333,0xAA13,0x3333,0xAA93,0x3333,0xAAA3,
	0xAAAA,0x3FAA,0xAAAA,0x3FAA,0xAAAA,0x3FAA,0xAAAA,0x36AA,
	0xAAAA,0x36AA,0xAAAA,0x36AA,0xAAAA,0x3EAA,0xAAAA,0x33AA,

	0x3333,0xA133,0x3333,0x7333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAA7,0xAAAA,0xAA7E,0xAAAA,
	0xA933,0xAAAA,0x9333,0xAAAA,0x3333,0xAAA8,0x3333,0xAAF3,
	0x39AA,0x3333,0x7AAA,0x333E,0xAAAA,0x33EA,0xAAAA,0x3EAA,
	0xAAAA,0xEAAA,0xAAAA,0x7AAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3339,0x3333,0x338A,0x3333,

	0x6333,0xAAAA,0x6333,0xAAAA,0xF333,0xAAAA,0xF333,0xAAAA,
	0xF333,0xAAAA,0xF333,0xAAAA,0xF333,0xAAAA,0xF333,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xFFF8,0xAAAA,0x3336,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0x689A,0xE666,0x3333,0x3333,0x3333,
	0xAAAA,0x333E,0xAAAA,0x333E,0x9AAA,0x3333,0xE7AA,0x3333,
	0x331A,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3333,0xA633,0x3333,0xAE33,0x3333,0xA333,0x3333,0x7333,
	0x3333,0x9333,0x3333,0x1333,0x3333,0x8333,0x3333,0xF333,
	0xAAAA,0x8AAA,0xAAAA,0x3387,0x617A,0x3333,0x333E,0x3333,
	0x3333,0x3333,0x333E,0x3333,0x3336,0x3333,0x3336,0x3333,
	0xE333,0xAAAA,0x3333,0xAAA7,0x3333,0xAA7E,0x3333,0xA733,
	0x3333,0xA133,0x3333,0xA833,0x3333,0xAF33,0x3333,0xAE33,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xE9AA,0xAAAA,0x39AA,
	0xAAAA,0x3AAA,0xAAAA,0xEAAA,0xAAAA,0x8AAA,0xAAAA,0xAAAA,

	0xAAAA,0x689A,0x689A,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x333E,0x3333,
	0xA83E,0xAAAA,0xAF33,0xAAAA,0xAF33,0xAAAA,0xAF33,0xAAAA,
	0xA833,0xAAAA,0xA933,0xAAAA,0xAAE3,0xAAAA,0xAA63,0xAAAA,
	0x6AAA,0xAAA1,0x6AAA,0xAAA6,0x6AAA,0xAAA3,0x6AAA,0xAA93,
	0x6AAA,0xAA63,0x6AAA,0xAA33,0xEAAA,0xA133,0x3AAA,0xAE33,
	0xAAAA,0x338A,0xAAAA,0x337A,0xAAAA,0x36AA,0xAAAA,0x31AA,
	0xAAAA,0x3AAA,0xAAAA,0x1AAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,

	0x3333,0xAAAE,0x3333,0xAAA8,0x3333,0xAAAA,0x8333,0xAAAA,
	0xAE33,0xAAAA,0xAA63,0xAAAA,0xAAA7,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0x337A,0xAAAA,0x331A,0xAAAA,0x33FA,0xAAAA,0x333A,
	0xAAAA,0x3337,0xAAAA,0x333F,0x7AAA,0x3333,0xFAAA,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3EE3,0xE333,0xAAA9,
	0x7E33,0xAAAA,0xA833,0xAAAA,0xA933,0xAAAA,0xA933,0xAAAA,
	0x3333,0xA633,0x3333,0x6333,0x3333,0x3333,0x3331,0x3333,
	0x339A,0x3333,0x31AA,0x3333,0x1AAA,0x3333,0xAAAA,0x6F1A,

	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAA6,0xAAAA,0xAAF3,0xAAAA,
	0xA933,0xAAAA,0xAE33,0xAAAA,0x1333,0xAAAA,0x1666,0xAAAA,
	0x3EAA,0x3333,0x39AA,0x3333,0x6AAA,0x3333,0x9AAA,0x3333,
	0xAAAA,0x3333,0xAAAA,0x333E,0xAAAA,0x3336,0xAAAA,0x3336,
	0xF333,0xAAAA,0xF333,0xAAAA,0xF333,0xAAAA,0xF333,0xAAAA,
	0x6333,0xAAAA,0x6333,0xAAAA,0xE333,0xAAAA,0x3333,0xAAAA,
	0xAAAA,0x3336,0xAAAA,0x3336,0xAAAA,0x3336,0xAAAA,0x3336,
	0xAAAA,0x333F,0xAAAA,0x3331,0xAAAA,0x3337,0xAAAA,0x336A,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x1E33,0x8633,0xAAA9,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x9983,0x33F1,0xAAAA,0x38AA,0xAAAA,0xEAAA,
	0x3333,0x6333,0x3333,0xE333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAA9,0xAAAA,
	0xAAA8,0xAAAA,0xAAAE,0xAAAA,0xAA73,0xAAAA,0xAA63,0xAAAA,

	0x3331,0x3333,0x333A,0x3333,0x33FA,0x3333,0x331A,0x3333,
	0x339A,0x3333,0x331A,0x3333,0x336A,0x3333,0x3337,0x3333,
	0x3333,0x7333,0x3333,0x1333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAA8,0xAAAA,
	0xAA93,0xAAAA,0x7F33,0xF7AA,0x3333,0x33E3,0x3333,0x3333,
	0x3339,0x3333,0x333A,0x3333,0x33EA,0x3333,0x3337,0x3333,
	0x333F,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0xAAF3,0xAAAA,0xAA33,0xAAAA,0xA133,0xAAAA,0x1333,0xAAAA,
	0x3333,0x3E63,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x39AA,0x9333,0x3EAA,0x6333,0x338A,0x3333,0x333F,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAA1,0xAAAA,0xAA73,0xAAAA,
	0xA7E3,0xAAAA,0x9333,0xAAAA,0x3333,0xAA9F,0x3333,0xE333,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0x6AAA,0xAAAA,0x331A,0x17AA,0x333E,0x33E6,0x3333,

	0x39AA,0x3333,0x3EAA,0x3333,0x336A,0x3333,0x3336,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xA133,0xAAAA,0xA633,0xAAAA,0x9333,0xAAAA,0x3333,0xAAA7,
	0x3333,0xAAAE,0x3333,0xA7E3,0x3333,0x8333,0x3333,0x3333,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xA9F3,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x1AAA,

	0xAAAA,0x3336,0xAAAA,0x333E,0xAAAA,0x3333,0x9AAA,0x3333,
	0xEAAA,0x3333,0x3FAA,0x3333,0x33FA,0x3333,0x333E,0x3333,
	0x3333,0xAAA9,0x3333,0xAAAF,0x3333,0xAAA3,0x3333,0xAA93,
	0x3333,0xAA63,0x3333,0xA133,0x3333,0xA333,0x3333,0x6333,
	0xAAAA,0x339A,0xAAAA,0x3FAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x3333,0x1F33,0x8633,0xAAA7,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,

	0xAAA7,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x9AAA,
	0xAAAA,0x8AAA,0xAAAA,0x8AAA,0xAAAA,0xFAAA,0xAAAA,0x3AAA,
	0xAAAA,0x36AA,0xAAAA,0x3367,0x87AA,0x3333,0x33E8,0x3333,
	0x7633,0x9AAA,0x3333,0x3E66,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x333E,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x9986,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x9977,0x3368,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xAAA6,0xAAAA,0xA9E3,0xAAAA,0x6333,0xAA71,0x3333,0xE333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xAAAA,0xAAAA,0xAAAA,0x17AA,0x17AA,0x33EF,0x3336,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x17AA,0x336F,0x33EF,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x0B33,0x3333,0x0013,0x3333,0x0043,
	0x3333,0x0033,0x3333,0x0433,0x3333,0x0433,0x3333,0x0433,
	0x2C29,0x3334,0x0000,0x9000,0x0000,0x0000,0xBB00,0x0000,
	0x3300,0x0013,0x3300,0x00B3,0x3300,0x000B,0x0B00,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3332,0x3333,0x3330,0x3333,
	0x33F0,0x3333,0x3330,0x3333,0x3335,0x32D3,0x3333,0xD009,

	0x3333,0x3333,0x3333,0x0433,0x3333,0x0053,0x3333,0x0004,
	0x3333,0x0000,0x3333,0x4000,0x3333,0x0000,0x3333,0x0004,
	0x3333,0x3333,0x0000,0x333D,0x0000,0x3330,0x0000,0x3330,
	0x0239,0x333D,0x3333,0x3333,0x333B,0x3333,0x3B00,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x4333,0x3333,0x0333,
	0x3333,0x0133,0x3333,0x0833,0x3333,0x0633,0x3333,0x0333,
	0x3333,0x3333,0x3333,0x3333,0x33DB,0x3333,0x3E00,0x3333,
	0x3300,0x3333,0x3300,0x3333,0x3300,0x6333,0x3800,0x5333,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x00B3,0x363D,0x0005,0xD000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0xC833,0x3F25,
	0x00B3,0x0000,0x0005,0x0000,0x0000,0x0005,0xE000,0xB533,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x38BB,0x3333,
	0x3500,0xF833,0x3B00,0x000C,0xC000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x33E0,0x3333,0x3300,0x3333,0x3500,0x3333,

	0x3333,0x0433,0x3333,0x0933,0x3333,0x0133,0x3333,0x0133,
	0x3333,0x0133,0x3333,0x0333,0x3333,0x0333,0x3333,0x0233,
	0x0000,0x3B00,0x0000,0x6000,0x0000,0x0000,0x3300,0x0005,
	0x3300,0x0023,0x3300,0x00C3,0xEF00,0x000B,0x0000,0x0000,
	0x3333,0x4001,0x3333,0x3F63,0x333E,0x3333,0x3330,0x2583,
	0x33E0,0x0003,0x3360,0x000E,0x3330,0xF293,0x3333,0x3333,
	0x3333,0x0093,0x3333,0xD333,0x3333,0x3333,0x3333,0x3333,
	0x333F,0x3DCE,0x333E,0xC00B,0x3333,0x000B,0x3333,0x0003,

	0x0000,0x3332,0x0000,0x33C0,0x00D3,0x3800,0x0333,0x3C00,
	0xC333,0x3B00,0x2333,0x3000,0xB33C,0x3B00,0x0400,0x3D00,
	0x0B33,0x0C61,0x0053,0x0000,0x00B3,0x0000,0x00B3,0xC000,
	0x00C3,0x3300,0x0093,0x3310,0x0043,0x3360,0x0083,0x1B00,
	0x6500,0x0333,0x0000,0xB338,0x0000,0xC330,0x00C9,0x4330,
	0x0093,0xF330,0x00B3,0x3330,0x0003,0x333D,0x0000,0x3333,
	0x3900,0x0333,0x3C00,0x0933,0x3B00,0x0C33,0x3000,0x0033,
	0x3000,0x0033,0x6000,0x0033,0x9000,0x0033,0x2000,0x0033,

	0x4D00,0x0000,0x3300,0x000B,0x3300,0x0000,0x3320,0x0000,
	0x9310,0x0000,0x03F0,0x0000,0x0280,0x0000,0x0000,0x0000,
	0x0000,0x3338,0x0002,0x3320,0x0023,0x3B00,0x0433,0x0000,
	0x3333,0x0000,0x3633,0x0023,0xB024,0x0533,0x0000,0x003B,
	0x0000,0x5300,0x0000,0x3320,0x0002,0x3330,0x0009,0x3330,
	0x0000,0x3335,0x0000,0x3332,0x0000,0x333C,0x0000,0x333C,
	0xE000,0x3333,0xD000,0x3333,0xB005,0x3333,0x0004,0x3333,
	0x0001,0x3333,0x0008,0x3333,0x0008,0x3333,0x0008,0x3333,

	0x3333,0x0033,0x3333,0x0C33,0x3333,0x4333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0xE000,0x0000,0x33C0,0x4C55,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x0063,0x3333,0xB333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x3300,0x0000,0x33D0,0x00B9,0x3334,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x0083,0x0000,0x0033,0x0000,0x0033,0x0000,0x0033,0x6800,
	0x0533,0x3E00,0x0933,0x3400,0x0333,0x3D00,0x4333,0x36B0,
	0xD000,0x3333,0x3C00,0x3333,0x3340,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xB00B,0x0033,0x500D,0x0F33,0x35C3,0x6333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0090,0x0000,0x0D36,0x34CC,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x0020,0x0000,0x0034,0x0000,0xB333,0x2000,0x3333,0x336E,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xB090,0x333F,0x333C,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0006,0x3333,0x9BD3,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0xF333,0x45BC,

	0x3333,0x000C,0x0333,0x0000,0x0033,0x0000,0x0053,0x8650,
	0x0003,0x3335,0x0001,0x3333,0x0001,0x3336,0x0003,0x3380,
	0x3850,0x33E3,0x9000,0x0004,0xB000,0x000C,0xC00D,0x0003,
	0x3F33,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xB000,0x5418,0x9000,0x3333,0x9000,0x3333,0xC00B,0x3333,
	0x3333,0x3333,0x331B,0x0133,0x3300,0x0063,0x6300,0x000F,
	0x0980,0x0000,0x0C33,0x0000,0x0233,0xD000,0x0933,0xE000,

	0x33E3,0x3333,0x6000,0x3333,0x0000,0x3333,0x0000,0x133B,
	0x00C4,0x8360,0x0033,0x3350,0x0C33,0x3300,0x0E33,0x3E00,
	0x0C33,0x0000,0x0023,0x0000,0x000B,0x0B50,0x0000,0x333E,
	0x0000,0x3333,0x2000,0x3333,0x4000,0x3333,0x2000,0x4333,
	0x33C0,0x3333,0x3000,0x2333,0xB000,0x2333,0x000B,0x3336,
	0x0003,0x3338,0x000E,0x3338,0x000B,0x3333,0xC000,0x3333,
	0x44D9,0x8894,0x0000,0x0000,0x0000,0x0000,0x000C,0x0000,
	0x0133,0x3300,0x0133,0x3300,0x0333,0x3E00,0x0333,0x3100,

	0x3888,0x3333,0x0000,0x333E,0x0000,0x3334,0x0000,0x333E,
	0x1B23,0x1333,0x3333,0x0333,0x3333,0xB333,0x3333,0x6333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3325,0x3333,0x3400,0x3333,0x3900,0x3333,0x3384,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x00BE,0x3333,0x0000,
	0x5333,0x0000,0x0333,0x3C00,0x0D33,0x3300,0x0B33,0x3350,
	0x3333,0x3333,0x3333,0x3333,0xC000,0x3333,0x0000,0x333E,
	0xB000,0x3333,0x3883,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0xB433,0x63DB,0x0023,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3193,0x3333,0x400C,0x3330,0x5000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x4833,0xB338,0x00B3,0x0CC0,0x000B,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x65BD,0x3333,0x0000,0x333F,0x0000,0x3330,0x0000,0x3350,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x6333,0x33E8,0x0083,0x3B00,0x000F,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x333E,0x3333,0x333B,0x3333,
	0x0043,0x6B00,0x0D33,0x0000,0x9333,0x0000,0x3333,0x0023,
	0x3333,0x9333,0x3333,0x3333,0x3333,0x34CF,0x3333,0x0000,
	0x3333,0x3333,0x33FB,0x3333,0x3500,0x3333,0xB000,0x3333,
	0x0000,0x3331,0x0003,0x333C,0x00B3,0x3335,0x0000,0x333D,

	0x0002,0x3333,0x0009,0x3333,0x0003,0x333E,0x0003,0x3339,
	0x00B3,0x333C,0x0023,0x3330,0x0093,0x3330,0x0033,0x3330,
	0x0133,0x3000,0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,
	0xB333,0x3000,0xC333,0x3000,0x4333,0x3000,0x9333,0x3000,
	0x0333,0x3D00,0x0000,0x3B00,0x0000,0xC000,0x0000,0x2000,
	0x1333,0x3000,0x1333,0x3000,0x6333,0x3000,0x3333,0x3000,
	0xB000,0x09DD,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x000B,0x00B2,0x000C,0x0E3C,0x0004,0x3330,0x0003,0x3330,

	0x3000,0x3333,0x3800,0x3333,0x3340,0x3333,0x33B0,0x3333,
	0x3B00,0x3333,0xB000,0x3333,0x0000,0x333C,0x0003,0x3380,
	0x0333,0x3D00,0xB333,0x3500,0xC333,0x3B00,0x4333,0x3000,
	0x1333,0x3000,0x8333,0x3000,0x1333,0x3000,0x1333,0x3000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x34F3,0x3333,0x50B3,0x3333,0xB00E,0x3333,0xED93,0x3333,
	0x0033,0x3390,0x0033,0x0BF0,0x0083,0x00D0,0x0083,0x0090,
	0x0083,0x8330,0x0083,0x3330,0x0063,0x3330,0x0033,0x3320,

	0x8833,0x3336,0x0000,0x33C0,0x0000,0x3300,0x0000,0x8300,
	0x0088,0x23C0,0x0033,0xB390,0x0093,0x0330,0x0006,0x0330,
	0x000E,0x0000,0x0005,0x000B,0x2000,0x0053,0x3000,0x0023,
	0x3000,0x00B3,0x3500,0x0003,0x3400,0x0004,0x3800,0x0000,
	0x3390,0xB000,0x3380,0x0000,0x3390,0x0000,0x83C0,0x0000,
	0x83B0,0x0000,0x9300,0x0000,0xB200,0x0000,0x0000,0x0000,
	0x0000,0x0000,0xC000,0x0000,0x9400,0x0000,0x6300,0x0000,
	0x3320,0x0000,0x33F0,0x5000,0x3330,0xD000,0x3330,0x9000,

	0x0B60,0x4300,0x033B,0x0C00,0xB339,0x0000,0x9333,0x0000,
	0x3333,0x0000,0x3333,0x000B,0x3333,0x0004,0x3333,0x000E,
	0x4000,0x00C3,0x3B00,0x0033,0x3900,0x0026,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x3C00,0xE900,0x3333,0x3C00,0x3333,
	0x3330,0x3333,0x33F0,0x3333,0x33F0,0x3333,0x3330,0x3333,
	0x3332,0x3333,0x3333,0x3333,0x3333,0x3333,0x3E33,0x3333,
	0x3333,0x000B,0x3333,0x000E,0x3333,0xCD33,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x0000,0x3333,0xE000,0x3333,0x339C,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0033,0x3390,0x0033,0x3300,0x0033,0x3F00,0x0533,0x3300,
	0xB333,0x338B,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x6000,0x3333,0x4000,0x3333,0xE000,0x3333,0x3C0E,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3000,0x6333,0xF000,0x3333,0x3000,0x3333,0x3846,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x0003,0x3330,0x0043,0x3330,0x2133,0x3338,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0033,0x33D0,0x0933,0x338B,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x8333,0x3000,0xF333,0x8000,0x3333,0x3B05,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0B33,0x0000,0x0333,0x0000,0x6333,0x0000,0x3333,0x8863,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x0000,0x0339,0xC000,0x0333,0x3400,0xD333,0x3336,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0D00,0x9000,0x0000,0x3500,0x0000,0x33B0,0xB00D,0x3334,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x000F,0x004B,0x3333,0x3E33,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x333B,0xE000,0x3338,0x3451,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x0003,0x3333,0x0003,0x3333,0xCBE3,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xD000,0x3333,0x0000,0x0BC0,0x0009,0x0000,0x00E3,0x0000,
	0x9333,0x2BB5,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x400C,0x3333,0xC000,0x3333,0xE000,0x3333,0x33B0,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
};

const unsigned short pauseScreenMap[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0002,0x0001,0x0001,0x0001,0x0003,0x0004,
	0x0001,0x0001,0x0005,0x0001,0x0001,0x0006,0x0007,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0008,0x0009,0x000A,0x000B,
	0x000C,0x000D,0x000E,0x000F,0x0010,0x0011,0x0012,0x0013,
	0x0014,0x0015,0x0016,0x0017,0x0018,0x0019,0x001A,0x001B,
	0x001C,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x001D,0x001E,0x001F,0x0020,
	0x0021,0x0022,0x0023,0x0024,0x0025,0x0026,0x0027,0x0028,
	0x0029,0x002A,0x002B,0x002C,0x002D,0x002E,0x002F,0x0030,
	0x0031,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0032,0x0033,0x0034,0x0035,
	0x0036,0x0037,0x0038,0x0039,0x003A,0x0026,0x003B,0x003C,
	0x003D,0x003E,0x003F,0x0001,0x0040,0x0041,0x0042,0x0043,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0044,0x0045,0x0046,0x0047,
	0x0048,0x0049,0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,
	0x0050,0x0051,0x0052,0x0053,0x0054,0x0055,0x0056,0x0057,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0058,0x004B,0x0059,0x0001,
	0x005A,0x005B,0x005C,0x005D,0x005E,0x005F,0x0060,0x0061,
	0x0062,0x0063,0x0064,0x0065,0x0066,0x0067,0x0001,0x0068,
	0x0069,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x006A,0x006B,0x006C,0x0001,
	0x006D,0x006E,0x006F,0x0070,0x0071,0x0072,0x0073,0x0074,
	0x0075,0x0076,0x0077,0x0078,0x0079,0x007A,0x007B,0x007C,
	0x007D,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x007E,0x007F,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0080,0x0081,0x0001,0x0001,0x0082,0x0083,0x0084,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0085,0x0086,
	0x0087,0x0088,0x0089,0x0001,0x008A,0x008B,0x008C,0x008D,
	0x008E,0x008F,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0090,0x0091,
	0x0092,0x0093,0x0094,0x0095,0x0096,0x0097,0x0098,0x0099,
	0x009A,0x009B,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x009C,0x009D,
	0x0001,0x009E,0x009F,0x00A0,0x00A1,0x00A2,0x00A3,0x00A4,
	0x00A5,0x00A6,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x00A7,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x00A8,0x00A9,
	0x00AA,0x00AB,0x00AC,0x00AD,0x00AE,0x00AF,0x00B0,0x00B1,
	0x00B2,0x00B3,0x00B4,0x00B5,0x00B6,0x00B7,0x00B8,0x00B9,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x00BA,0x00BB,
	0x00BC,0x00BD,0x00BE,0x00BF,0x00C0,0x00C1,0x0001,0x00C2,
	0x00C3,0x00C4,0x00C5,0x00C6,0x00C7,0x00C8,0x00C9,0x00CA,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x00CB,0x00CC,
	0x00CD,0x00CE,0x00CF,0x00D0,0x00D1,0x00D2,0x0001,0x0001,
	0x00D3,0x00D4,0x00D5,0x00D6,0x00D7,0x00D8,0x00D9,0x00DA,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short pauseScreenPal[256] __attribute__((aligned(4)))=
{
	0x20A4,0x66D3,0x41AC,0x7B9A,0x5650,0x2D07,0x7336,0x6290,
	0x6AF4,0x62B2,0x5E6E,0x24C5,0x3569,0x49EE,0x7357,0x6F15,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(pauseScreen)
