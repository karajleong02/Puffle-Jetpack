	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"balloon_pop.c"
	.text
	.global	balloon_pop_data
	.global	balloon_pop_length
	.global	balloon_pop_sampleRate
	.section	.rodata
	.align	2
	.type	balloon_pop_data, %object
	.size	balloon_pop_data, 6032
balloon_pop_data:
	.ascii	"\377\376\377\376\377\376\377\377\376\377\376\377\376"
	.ascii	"\376\377\376\377\376\377\377\376\377\376\377\376\377"
	.ascii	"\376\377\377\376\377\376\377\377\377\376\377\377\376"
	.ascii	"\377\376\377\376\377\376\377\377\377\377\377\377\377"
	.ascii	"\377\376\377\376\375\375\372\371\371\370\367\367\367"
	.ascii	"\367\365\365\366\364\365\363\364\364\364\365\363\364"
	.ascii	"\365\364\364\364\361\367\363\374\350\346\000\014\365"
	.ascii	"\0279\031\034\"-\032\013\025\035\035\021\010\000\007"
	.ascii	"\376\003\360\325\340\374\354\330\363\364\357\354\334"
	.ascii	"\365\343\316\327\332\363\357\007\0240:1?0(&\004\334"
	.ascii	"\327\334\336\342\337\327\334\341\344\347\354\340\360"
	.ascii	"\376\0221,1,&\027\356\332\325\335\345\017'(*'# \003"
	.ascii	"\351\376\002\361\346\334\333\335\347\007\023\006\372"
	.ascii	"\362\345\360\353\355\362\350\365\356\371\363\376\021"
	.ascii	"\035%(-(\030\002\372\010\011\003\365\341\341\360\030"
	.ascii	"\034\030$$\036\035-'\026\017\020\031\033\031\362\335"
	.ascii	"\332\327\327\321\326\331\337\360\374 6++\024\377\356"
	.ascii	"\335\354\345\321\326\325\351\014\021\026\013\005\036"
	.ascii	"/\037\026\006\022\036\026\011\351\321\333\005\031$ "
	.ascii	"\033\013\372\332\317\326\363\367\352\366\337\347\376"
	.ascii	"\012\024\023\367\014\011\362\334\327\342\360\375\000"
	.ascii	"\016\031\036+!\034\016\332\320\322\333\354\0253:3)\036"
	.ascii	"\015\376\340\323\322\327\341\377&,1$\037\026\364\333"
	.ascii	"\306\276\312\334\343\367\375\356\371\002\010\002\335"
	.ascii	"\357\027\036\031\030\037') \017\007\356\346\015\035"
	.ascii	"!\030\033\006\344\326\322\350\012\006\371\345\321\335"
	.ascii	"\326\327\332\334\333\335\372\037\026\033($,#\037##\014"
	.ascii	"\353\342\335\323\323\340\351\365\024%2'\032\020\007"
	.ascii	"\016\377\355\362\355\331\322\327\373\365\362\373\373"
	.ascii	"\363\344\340\370\011&\"\017$\036\023\021\001\364\355"
	.ascii	"\347\350\360\366\011-&\033\016\363\350\366\342\325\321"
	.ascii	"\331\332\327\003#\036\"/2-\017\360\363\002\352\364\366"
	.ascii	"\361\011\002\001\036!'!\007\377\361\347\376\365\337"
	.ascii	"\327\332\331\342\000\013\025\004\377\367\012\377\347"
	.ascii	"\355\362\365\367\027\035\035#$\034\030\372\343\341\332"
	.ascii	"\344\355\360\017\026#\"\016\012\020\026\376\342\347"
	.ascii	"\372\005\003\0172&)(!\362\302\303\313\317\314\334\351"
	.ascii	"\350\004$39,\033\374\342\325\305\312\333\334\336\376"
	.ascii	"\016\027\035 + \036\030\014\014\030\023\031\"!\377\335"
	.ascii	"\330\327\364\006\357\354\020\013\026\022\027\023\005"
	.ascii	"\365\343\364\363\367\376\000\327\316\321\326\332\345"
	.ascii	"\012\025*12$\036\035\034\023\370\334\307\306\305\327"
	.ascii	"\353\373\367\351\374\023\023\011\352\347\331\341\005"
	.ascii	"\013\005\375\025\"!\016\025\034\015\361\344\340\352"
	.ascii	"\370\003\033\037\037\031\035\030\360\330\321\335\361"
	.ascii	"\001\010\347\353\371\356\356\345\340\341\344\363\031"
	.ascii	"$'\037)\026\371\357\356\033($ \034\007\336\342\351\350"
	.ascii	"\344\343\352\362\353\334\343\357\362\363\013\371\356"
	.ascii	"\026\037(-&*\033\376\353\354\004!+$\027\020\007\030"
	.ascii	"\"%\020\354\336\321\331\332\360\016\017\034\030\374"
	.ascii	"\326\310\324\333\341\355\370\007\"#)*\036#\037\034\022"
	.ascii	"\013\006\014\377\345\350\345\342\351\355\012\034\013"
	.ascii	"\022\016\014\372\330\351\375\013\023\032\375\333\316"
	.ascii	"\315\325\336\326\345\011\030\"\022\022\002\367\370\006"
	.ascii	"\007\010\020\013\016\012\012\011\017\365\353\344\337"
	.ascii	"\346\351\361\003\021\027\033\030\026\025\003\346\313"
	.ascii	"\304\317\340\350\352\372\026\037\361\341\343\362\016"
	.ascii	"\032\037\034\031\036\020\362\354\353\355\346\347\335"
	.ascii	"\324\336\357\001\015'&&'..'\036\361\333\323\320\312"
	.ascii	"\316\324\332\005!#%+4*\023\370\360\351\343\324\354\374"
	.ascii	"\360\010\005\003\015\023\033- \013\377\002\024%%\025"
	.ascii	"\021\375\375\356\331\322\322\324\334\352\005\034\001"
	.ascii	"\363\011\013\364\357\364\365\001\006\017\"\"+)0'\376"
	.ascii	"\350\350\346\326\304\310\316\335\014\034$$+.(\037\024"
	.ascii	"\371\337\326\317\312\307\305\325\345\371\022\031%*-"
	.ascii	"%\036\002\352\344\331\336\316\306\313\347\365\004\031"
	.ascii	"\032\017\012\007\377\364\362\033&'#\023\012\005\377"
	.ascii	"\356\364\016\012\020\024\005\370\354\351\353\356\352"
	.ascii	"\351\370\012\011\014\024\030\036\015\373\364\366\373"
	.ascii	"\011\013\017\010\346\320\311\322\344\357\001&410'0*"
	.ascii	"\030\366\341\324\327\360\377\026\015\362\345\371\006"
	.ascii	"\024\027\033\036\376\343\343\324\320\342\347\362\363"
	.ascii	"\006\376\000\015\017\010\352\364\371\371\355\364\012"
	.ascii	"\031\035\030\376\343\340\334\352\361\361\354\361\372"
	.ascii	"\004\011\003\372\010\035\026\023\027\024\002\023&\014"
	.ascii	"\017\011\345\354\353\355\344\347\017\021\024\024\014"
	.ascii	"\002\377\374\376\003\021\036\033\"\005\355\345\330\326"
	.ascii	"\336\343\366\005\032\".8-\037\003\017\024\015\010\365"
	.ascii	"\345\326\325\335\334\350\367\373\377\371\011\017\017"
	.ascii	"\023\024\033 \036\036\032\022\004\013\003\350\335\340"
	.ascii	"\343\336\334\354\365\365\375\376\004\025\373\371\012"
	.ascii	"\007\012\005\367\344\327\326\323\331\367\026#\023\024"
	.ascii	"\020\023\035\026\016\024\036 \037\033\024\004\375\371"
	.ascii	"\362\354\330\330\333\333\332\336\342\345\337\352\006"
	.ascii	"\007\012\013\004\377\373\362\352\344\370\000\372\011"
	.ascii	"\025\033%/($\036\373\353\342\337\345\343\355\356\364"
	.ascii	"\356\361\012\001\010\021\016\005\362\350\355\364\363"
	.ascii	"\374\376\370\374\002\016\026!&#\"'\031\374\347\344\353"
	.ascii	"\354\352\342\360\375\377\001\010\020\030#\034%\"\035"
	.ascii	"\036\035\020\021\002\347\334\321\320\323\321\345\010"
	.ascii	"\027%--'&*\035\014\000\364\332\323\326\323\327\336\335"
	.ascii	"\334\344\361\377\022$!\032\025\005\367\370\351\346\343"
	.ascii	"\344\361\371\011\020\032\033$(%\"\033\020\011\012\007"
	.ascii	"\005\371\347\336\335\340\341\347\346\346\360\004\021"
	.ascii	"\031\030\022\000\362\354\337\331\324\320\332\346\361"
	.ascii	"\374\363\355\352\357\352\371\007\021\033\030%\033\036"
	.ascii	"\036\031\012\366\362\372\366\357\363\356\366\372\362"
	.ascii	"\365\366\373\000\371\372\372\002\016\027\033\026\022"
	.ascii	"\005\367\360\343\334\334\335\352\354\357\365\370\014"
	.ascii	"\032$+)'\032\027\023\032\034\020\373\355\357\356\361"
	.ascii	"\354\376\014\022\021\014\023\010\005\006\007\004\015"
	.ascii	"\011\377\372\347\344\347\352\357\361\371\375\002\005"
	.ascii	"\006\014\000\373\376\377\010\012\005\353\331\321\321"
	.ascii	"\327\337\352\375\007\021\021\013\011\001\011\015\020"
	.ascii	"\020\014\016\004\012\016\012\024\012\024\032\026\012"
	.ascii	"\373\352\347\360\343\342\344\340\336\343\350\364\016"
	.ascii	"\033\037'\036\027\021\011\020\011\374\367\362\353\343"
	.ascii	"\343\343\336\352\373\023,2/) \032\021\001\360\340\347"
	.ascii	"\367\356\352\354\366\365\367\006\023\025\031\022\023"
	.ascii	"\005\364\357\351\350\364\372\374\010\005\002\377\376"
	.ascii	"\013\023\026\016\012\006\002\375\366\362\366\357\343"
	.ascii	"\356\362\361\370\375\001\003\004\004\006\023\025\027"
	.ascii	"\031\025\017\006\371\353\345\353\355\360\366\374\006"
	.ascii	"\005\372\376\011\012\016\015\012\006\006\374\356\346"
	.ascii	"\353\345\363\372\005\033\024\013\374\361\351\344\342"
	.ascii	"\335\332\342\347\350\373\007\025\"%\033\024\015\023"
	.ascii	"\025\014\004\001\007\014\011\004\370\362\365\363\371"
	.ascii	"\374\003\013\013\014\005\005\373\363\353\360\364\365"
	.ascii	"\361\355\355\356\365\376\004\016\024\026\016\010\367"
	.ascii	"\363\366\002\012\010\011\006\012\015\014\013\007\000"
	.ascii	"\371\363\367\371\002\011\014\020\012\375\370\357\343"
	.ascii	"\327\330\335\327\333\342\353\365\001\013\021\026\033"
	.ascii	"\036\033\020\011\001\377\002\007\005\004\377\372\002"
	.ascii	"\003\371\364\357\361\365\366\372\374\376\376\005\020"
	.ascii	"\025\024\023\022\021\017\022\027\021\012\000\364\346"
	.ascii	"\335\333\331\334\340\361\001\016\031\036!\030\017\004"
	.ascii	"\374\365\364\365\365\370\373\372\374\000\001\375\374"
	.ascii	"\004\015\022\031\022\007\367\355\355\360\373\002\010"
	.ascii	"\013\017\010\003\001\377\000\003\010\007\005\373\363"
	.ascii	"\353\347\350\357\360\361\364\371\373\373\373\002\004"
	.ascii	"\005\006\376\377\000\011\015\017\016\007\375\366\363"
	.ascii	"\353\352\342\341\346\354\366\371\003\006\012\013\012"
	.ascii	"\014\013\010\007\010\011\000\371\363\362\370\374\003"
	.ascii	"\015\025\022\014\007\001\372\360\355\355\361\367\374"
	.ascii	"\373\374\376\376\002\003\005\003\375\364\350\344\353"
	.ascii	"\362\364\370\000\011\023\033!!\037\031\024\014\003\367"
	.ascii	"\355\355\353\354\366\000\012\017\021\024\013\011\377"
	.ascii	"\363\351\342\341\343\350\357\364\375\001\005\006\013"
	.ascii	"\016\011\001\000\375\377\011\021\024\024\024\020\012"
	.ascii	"\377\374\367\363\363\364\373\375\377\003\011\020\024"
	.ascii	"\022\022\016\011\007\000\370\364\364\361\363\366\374"
	.ascii	"\003\007\016\012\005\002\377\377"
	.ascii	"\377\003\004\004\001\003\003\376\370\371\371\371\370"
	.ascii	"\371\372\372\376\375\367\365\356\355\357\356\363\364"
	.ascii	"\366\366\371\000\002\006\005\012\016\023\023\017\010"
	.ascii	"\005\001\377\371\364\356\351\344\347\350\346\345\351"
	.ascii	"\361\371\000\001\000\000\003\004\005\004\002\001\377"
	.ascii	"\373\370\371\371\372\003\013\020\023\017\012\007\010"
	.ascii	"\010\010\002\000\002\001\004\005\006\002\370\365\366"
	.ascii	"\367\367\370\367\374\376\375\374\375\000\003\004\001"
	.ascii	"\002\001\003\005\000\002\005\005\013\014\013\015\020"
	.ascii	"\022\024\020\015\006\375\374\374\374\376\376\004\002"
	.ascii	"\376\001\001\002\002\001\374\373\372\373\367\371\375"
	.ascii	"\002\006\016\020\020\013\002\374\377\377\000\000\375"
	.ascii	"\370\372\374\376\373\372\371\371\366\362\360\355\351"
	.ascii	"\351\356\371\001\006\011\010\007\004\005\007\012\013"
	.ascii	"\014\012\007\007\003\373\367\364\365\365\366\366\366"
	.ascii	"\364\365\366\367\370\371\375\377\004\004\007\005\003"
	.ascii	"\000\372\366\367\367\375\002\004\010\011\010\005\002"
	.ascii	"\377\377\001\003\000\001\376\375\373\372\366\365\371"
	.ascii	"\375\002\004\004\004\005\002\000\374\374\374\374\001"
	.ascii	"\003\005\002\000\375\376\375\375\372\370\364\362\360"
	.ascii	"\357\355\357\360\365\370\374\376\002\003\006\007\012"
	.ascii	"\005\004\005\011\011\010\005\376\370\367\362\360\357"
	.ascii	"\360\364\372\376\375\376\001\004\014\022\024\022\016"
	.ascii	"\010\003\375\371\367\366\370\371\375\375\376\375\001"
	.ascii	"\003\004\003\002\377\373\371\371\371\373\376\375\001"
	.ascii	"\001\004\006\003\376\373\373\375\376\376\375\377\002"
	.ascii	"\005\005\006\003\000\376\377\377\000\004\007\012\007"
	.ascii	"\003\001\376\372\372\373\374\377\001\377\375\373\375"
	.ascii	"\375\377\377\000\001\004\003\377\372\371\367\366\365"
	.ascii	"\366\366\367\370\371\370\375\000\006\011\017\022\026"
	.ascii	"\022\016\012\006\001\375\373\373\375\374\376\376\001"
	.ascii	"\377\375\374\376\377\376\000\000\001\000\003\005\004"
	.ascii	"\002\375\374\371\372\372\372\370\372\373\375\374\377"
	.ascii	"\377\002\004\005\010\011\011\013\010\007\004\003\001"
	.ascii	"\004\005\010\012\006\006\003\001\375\374\374\374\376"
	.ascii	"\377\002\002\004\004\006\005\006\004\000\000\376\374"
	.ascii	"\370\363\357\354\356\360\364\367\373\376\004\007\012"
	.ascii	"\012\007\004\000\000\000\002\376\374\371\370\366\363"
	.ascii	"\363\365\367\373\376\002\003\003\002\004\006\010\007"
	.ascii	"\005\004\001\374\374\371\370\370\371\372\372\371\366"
	.ascii	"\367\366\367\367\370\371\370\370\372\375\376\377\376"
	.ascii	"\377\377\000\001\005\005\005\003\005\007\013\013\007"
	.ascii	"\002\377\371\366\361\357\360\360\366\371\373\376\000"
	.ascii	"\377\001\001\001\377\376\374\376\000\001\000\373\372"
	.ascii	"\366\366\364\365\366\373\377\003\004\005\003\005\005"
	.ascii	"\005\006\005\005\002\001\376\375\374\374\373\377\001"
	.ascii	"\006\007\011\010\010\006\006\004\003\377\377\375\375"
	.ascii	"\374\375\373\374\374\375\374\376\376\001\003\005\006"
	.ascii	"\004\003\003\002\002\001\001\377\377\376\376\374\377"
	.ascii	"\377\376\001\002\005\005\011\013\011\010\006\005\002"
	.ascii	"\376\377\376\000\001\002\005\005\007\006\004\003\000"
	.ascii	"\376\375\376\001\001\000\377\376\377\377\001\004\006"
	.ascii	"\010\005\004\001\000\376\376\373\374\375\000\001\002"
	.ascii	"\001\002\000\377\374\375\376\376\000\000\377\001\000"
	.ascii	"\001\000\001\001\002\001\377\377\374\370\363\361\360"
	.ascii	"\362\363\367\372\377\000\003\005\004\004\001\376\374"
	.ascii	"\374\372\372\370\367\366\363\365\366\374\377\000\002"
	.ascii	"\000\376\374\372\374\373\375\375\377\377\001\003\006"
	.ascii	"\006\006\004\002\001\376\376\372\372\370\367\372\375"
	.ascii	"\002\004\007\007\006\007\006\003\002\000\000\376\376"
	.ascii	"\373\370\365\362\364\365\371\373\374\377\377\000\377"
	.ascii	"\376\376\374\377\377\001\001\003\004\004\005\002\002"
	.ascii	"\002\002\003\004\003\002\377\375\373\372\372\373\374"
	.ascii	"\374\373\374\372\373\370\371\367\372\374\376\377\002"
	.ascii	"\001\003\004\007\007\010\007\006\005\003\004\000\374"
	.ascii	"\371\370\371\372\375\375\377\376\000\000\002\003\004"
	.ascii	"\002\003\001\001\000\000\377\000\001\001\004\006\010"
	.ascii	"\010\005\003\377\376\375\375\374\376\375\375\374\374"
	.ascii	"\376\377\376\376\375\375\375\375\375\376\376\001\002"
	.ascii	"\006\007\011\010\007\004\003\001\376\376\376\375\377"
	.ascii	"\377\000\000\003\003\003\001\002\000\002\000\000\376"
	.ascii	"\373\374\373\374\377\001\003\002\002\377\377\376\374"
	.ascii	"\375\375\001\002\004\002\001\377\000\377\000\001\002"
	.ascii	"\000\000\377\374\373\370\370\371\374\376\002\004\005"
	.ascii	"\006\007\005\004\000\377\375\374\376\376\000\376\375"
	.ascii	"\374\373\374\375\375\377\001\002\002\002\377\376\374"
	.ascii	"\374\374\373\375\374\377\377\001\377\376\374\375\376"
	.ascii	"\001\000\001\377\377\376\374\376\377\377\000\377\377"
	.ascii	"\377\376\375\374\376\376\377\375\375\373\370\371\371"
	.ascii	"\372\375\373\375\374\374\375\376\377\377\376\377\377"
	.ascii	"\000\000\001\377\000\376\376\376\375\377\000\002\001"
	.ascii	"\377\376\374\371\371\367\370\370\374\376\003\005\005"
	.ascii	"\006\006\004\003\001\002\000\000\376\377\377\000\001"
	.ascii	"\003\004\003\004\002\002\377\376\373\374\372\373\371"
	.ascii	"\373\374\375\376\376\377\376\000\000\376\377\000\001"
	.ascii	"\004\004\006\005\005\003\004\003\001\001\000\377\376"
	.ascii	"\376\376\377\376\377\377\001\003\006\006\005\006\004"
	.ascii	"\005\003\004\001\001\376\377\376\375\376\376\375\376"
	.ascii	"\375\376\375\376\375\377\376\000\377\001\002\001\003"
	.ascii	"\004\004\005\004\005\003\003\002\001\000\001\377\001"
	.ascii	"\000\000\377\377\376\374\374\373\374\374\376\376\000"
	.ascii	"\000\377\000\000\001\001\000\376\375\373\373\372\374"
	.ascii	"\373\375\375\377\376\377\376\377\376\376\377\377\001"
	.ascii	"\000\000\377\000\000\000\376\377\375\376\377\376\376"
	.ascii	"\000\377\001\000\001\377\377\375\376\375\373\372\371"
	.ascii	"\372\372\373\372\373\372\375\376\001\002\000\000\376"
	.ascii	"\377\376\000\000\377\376\373\372\370\371\370\372\373"
	.ascii	"\372\375\375\375\377\377\002\002\003\003\002\003\001"
	.ascii	"\001\377\377\376\374\374\374\375\374\375\374\374\373"
	.ascii	"\375\375\377\000\000\002\001\001\000\377\375\376\376"
	.ascii	"\377\376\000\000\003\003\004\005\003\002\000\000\376"
	.ascii	"\000\377\001\000\377\000\000\001\000\000\376\377\376"
	.ascii	"\377\376\377\376\000\377\000\377\001\000\002\001\001"
	.ascii	"\000\001\000\001\002\001\002\002\003\002\002\000\001"
	.ascii	"\001\002\000\377\375\375\374\373\375\375\000\000\001"
	.ascii	"\001\001\002\002\002\002\002\001\001\001\377\377\375"
	.ascii	"\376\375\377\376\000\377\001\000\001\002\002\003\002"
	.ascii	"\004\002\003\001\001\002\001\001\001\001\000\377\377"
	.ascii	"\376\377\375\376\376\376\376\377\376\377\376\377\377"
	.ascii	"\377\000\377\001\000\001\000\002\001\000\001\000\000"
	.ascii	"\001\377\377\376\374\375\374\375\375\375\376\376\375"
	.ascii	"\376\376\377\377\001\001\377\377\377\376\376\376\377"
	.ascii	"\375\376\374\375\373\374\375\375\375\375\376\377\377"
	.ascii	"\377\376\376\374\375\374\375\374\375\376\376\375\376"
	.ascii	"\376\377\000\000\001\000\377\377\376\377\377\000\376"
	.ascii	"\376\374\374\373\374\374\373\375\374\376\375\376\375"
	.ascii	"\375\374\376\376\375\377\376\000\000\376\377\376\375"
	.ascii	"\376\375\376\376\375\376\376\375\377\377\001\001\001"
	.ascii	"\002\002\001\001\001\000\001\377\000\376\377\376\377"
	.ascii	"\375\376\375\375\374\373\374\373\374\377\377\000\000"
	.ascii	"\001\002\001\002\000\001\000\001\000\001\377\000\000"
	.ascii	"\377\000\377\000\000\000\001\000\001\000\001\002\001"
	.ascii	"\002\000\001\000\001\377\377\376\376\375\376\375\377"
	.ascii	"\377\001\002\002\003\003\003\002\003\002\003\002\003"
	.ascii	"\002\001\001\000\377\376\376\376\377\377\000\000\001"
	.ascii	"\000\001\000\001\001\001\001\000\001\001\000\001\000"
	.ascii	"\001\000\001\001\000\001\000\000\001\000\001\000\001"
	.ascii	"\000\001\377\000\376\377\376\377\377\377\377\376\376"
	.ascii	"\376\375\376\376\377\000\377\000\377\377\376\376\375"
	.ascii	"\376\376\000\000\377\000\377\376\377\376\000\000\377"
	.ascii	"\000\376\377\375\376\374\375\374\373\374\374\374\375"
	.ascii	"\375\377\376\000\377\001\000\000\377\377\375\375\374"
	.ascii	"\374\373\372\373\373\374\374\374\376\376\376\377\376"
	.ascii	"\376\375\377\376\000\377\000\377\375\376\375\375\374"
	.ascii	"\374\373\374\374\376\376\000\001\000\002\002\001\002"
	.ascii	"\000\001\377\377\375\375\373\373\374\373\375\374\375"
	.ascii	"\376\376\000\000\001\002\001\002\000\000\000\377\377"
	.ascii	"\376\376\375\376\376\375\376\376\377\000\000\001\000"
	.ascii	"\001\002\001\002\002\001\002\002\000\001\377\000\376"
	.ascii	"\376\375\376\375\377\000\000\000\001\000\001\000\001"
	.ascii	"\000\001\001\001\000\001\000\001\001\377\000\376\377"
	.ascii	"\376\000\000\000\001\001\002\001\002\001\002\001\002"
	.ascii	"\001\000\001\000\001\000\001\001\000\001\000\001\000"
	.ascii	"\000\376\377\375\376\376\375\376\375\376\376\000\377"
	.ascii	"\000\001\000\002\001\002\002\001\001\000\001\377\377"
	.ascii	"\377\375\376\376\375\376\376\377\377\376\377\376\377"
	.ascii	"\376\000\000\001\001\002\000\001\000\000\000\377\000"
	.ascii	"\377\377\377\376\377\375\377\376\000\377\001\000\000"
	.ascii	"\377\377\376\376\376\374\375\374\375\374\375\376\375"
	.ascii	"\377\377\001\001\002\001\002\002\000\000\377\376\376"
	.ascii	"\375\376\374\375\375\374\375\374\375\375\375\376\376"
	.ascii	"\000\000\000\001\000\000\377\377\376\376\375\376\374"
	.ascii	"\375\375\375\374\376\376\376\377\376\377\377\000\377"
	.ascii	"\000\000\000\377\377\377\375\376\375\376\376"
	.ascii	"\375\376\375\376\376\377\377\000\000\377\001\000\001"
	.ascii	"\377\000\377\377\376\376\375\376\376\375\376\376\376"
	.ascii	"\375\376\375\377\376\376\377\376\377\377\377\376\377"
	.ascii	"\376\377\000\377\377\000\377\000\377\000\376\377\376"
	.ascii	"\377\376\377\000\000\000\000\377\000\377\000\000\377"
	.ascii	"\377\377\000\377\000\376\377\377\377\376\377\377\000"
	.ascii	"\000\001\000\002\001\002\001\001\001\377\000\377\000"
	.ascii	"\377\377\376\377\377\376\377\377\000\377\000\000\000"
	.ascii	"\000\001\000\001\001\000\001\000\001\000\001\000\001"
	.ascii	"\000\000\377\000\377\000\377\000\376\377\376\377\376"
	.ascii	"\377\376\377\376\000\377\000\377\000\377\000\377\001"
	.ascii	"\001\001\002\001\002\000\001\000\001\000\377\000\377"
	.ascii	"\377\377\376\377\377\376\377\376\377\377\376\377\377"
	.ascii	"\000\000\377\001\000\000\377\000\377\000\000\377\000"
	.ascii	"\377\377\376\377\377\377\377\000\000\377\377\377\376"
	.ascii	"\377\375\376\375\376\375\376\376\377\376\377\376\377"
	.ascii	"\376\377\377\376\377\376\377\376\377\377\376\376\376"
	.ascii	"\377\377\376\377\376\376\376\375\376\375\376\376\375"
	.ascii	"\377\376\377\376\377\377\376\376\376\376\376\376\376"
	.ascii	"\376\377\377\376\377\376\000\000\377\000\376\377\377"
	.ascii	"\377\375\376\375\376\376\375\376\377\376\377\377\000"
	.ascii	"\000\377\377\376\377\376\377\375\376\375\377\376\377"
	.ascii	"\377\377\000\377\000\000\377\000\377\000\377\000\377"
	.ascii	"\000\377\000\376\377\377\375\376\375\377\377\376\377"
	.ascii	"\377\377\000\001\000\002\001\002\001\002\001\001\000"
	.ascii	"\377\377\376\377\376\377\376\377\376\377\000\000\000"
	.ascii	"\000\001\000\001\000\001\000\000\000\377\376\377\375"
	.ascii	"\376\376\377\377\377\000\377\001\001\000\001\000\002"
	.ascii	"\000\001\000\001\377\000\377\376\377\376\377\377\376"
	.ascii	"\377\376\377\376\377\376\000\377\001\000\001\000\000"
	.ascii	"\376\377\375\376\375\376\377\376\376\000\377\000\377"
	.ascii	"\000\000\377\000\377\000\377\000\377\377\000\376\377"
	.ascii	"\376\377\376\377\377\000\377\000\377\377\376\377\376"
	.ascii	"\377\376\000\377\377\000\377\000\377\000\377\000\377"
	.ascii	"\000\377\000\377\000\000\377\000\000\000\000\000\376"
	.ascii	"\377\376\376\375\376\376\376\377\376\000\000\000\000"
	.ascii	"\377\000\377\000\376\377\000\377\000\377\000\376\377"
	.ascii	"\377\376\377\377\377\376\377\376\377\376\377\376\377"
	.ascii	"\376\377\376\377\377\376\377\377\376\377\376\377\376"
	.ascii	"\377\376\377\000\377\000\377\000\377\377\377\376\375"
	.ascii	"\376\376\375\376\375\376\376\377\376\377\000\377\000"
	.ascii	"\377\000\377\377\376\377\376\377\376\377\376\377\376"
	.ascii	"\377\377\376\377\376\377\377\376\000\377\000\377\000"
	.ascii	"\377\000\376\377\376\377\376\377\376\377\376\377\377"
	.ascii	"\376\377\377\377\000\377\000\377\000\377\000\377\000"
	.ascii	"\000\377\000\000\000\377\377\377\376\377\000\000\001"
	.ascii	"\000\001\001\001\001\377\377\000\376\377\376\376\377"
	.ascii	"\376\377\377\000\000\000\000\000\000\000\000\377\001"
	.ascii	"\000\001\000\001\001\000\001\000\000\377\000\000\000"
	.ascii	"\000\000\000\000\377\000\377\000\377\000\377\000\377"
	.ascii	"\000\376\377\376\377\377\377\376\377\376\377\377\000"
	.ascii	"\377\000\377\000\377\000\377\376\377\376\000\377\000"
	.ascii	"\377\000\376\377\377\376\377\377\376\377\377\377\000"
	.ascii	"\377\377\377\376\377\376\376\376\376\377\376\377\377"
	.ascii	"\376\377\376\000\000\000\377\000\377\000\376\377\376"
	.ascii	"\377\376\376\375\376\376\377\376\377\376\377\376\377"
	.ascii	"\376\000\377\000\377\000\377\377\376\377\377\376\377"
	.ascii	"\377\376\377\376\377\377\376\377\376\376\377\376\377"
	.ascii	"\376\376\377\376\377\376\377\376\377\377\376\377\000"
	.ascii	"\000\000\377\000\376\000\377\000\377\000\377\000\377"
	.ascii	"\000\377\376\377\376\377\376\377\376\377\376\000\377"
	.ascii	"\000\377\000\377\000\377\000\377\000\377\000\000\000"
	.ascii	"\377\376\377\376\000\377\000\377\000\377\000\376\377"
	.ascii	"\376\000\377\000\377\000\377\000\000\000\000\377\377"
	.ascii	"\377\377\377\377\376\000\377\000\377\000\000\000\377"
	.ascii	"\000\000\000\377\000\000\000\000\377\000\000\000\001"
	.ascii	"\000\000\377\000\377\377\376\377\377\000\377\000\000"
	.ascii	"\000\377\000\376\377\376\377\376\377\376\000\000\377"
	.ascii	"\000\377\000\377\000\377\000\000\000\377\377\377\376"
	.ascii	"\377\376\377\376\377\000\377\000\000\377\000\376\377"
	.ascii	"\377\376\377\377\376\377\377\000\377\376\377\377\376"
	.ascii	"\377\376\377\376\377\377\376\377\376\377\376\377\377"
	.ascii	"\376\377\376\377\376\377\376\377\377\376\377\377\000"
	.ascii	"\377\000\377\000\000\377\000\376\377\376\377\376\377"
	.ascii	"\377\376\377\377\376\377\376\377\377\376\377\376\000"
	.ascii	"\000\377\000\377\000\377\377\376\377\377\000\377\000"
	.ascii	"\377\000\377\000\377\000\377\000\377\000\377\377\000"
	.ascii	"\377\000\376\377\376\377\376\377\376\377\376\377\376"
	.ascii	"\377\377\000\377\000\377\000\377\000\377\000\377\000"
	.ascii	"\376\377\376\377\377\376\377\377\376\377\376\000\377"
	.ascii	"\000\377\000\000\377\000\377\000\000\376\377\376\377"
	.ascii	"\377\376\377\376\377\376\377\376\000\377\000\377\000"
	.ascii	"\000\377\000\000\376\377\376\377\377\376\377\376\377"
	.ascii	"\376\377\376\377\377\377\000\377\000\377\000\377\000"
	.ascii	"\000\377\000\377\377\000\377\377\376\377\377\377\376"
	.ascii	"\377\376\377\376\377\377\376\377\377\000\377\000\377"
	.ascii	"\000\377\000\000\000\377\000\377\000\000\376\377\376"
	.ascii	"\377\377\376\377\377\376\377\376\377\376\377\376\000"
	.ascii	"\000\377\000\000\377\000\377\000\377\000\000\000\377"
	.ascii	"\000\377\000\377\377\377\376\000\377\000\377\377\377"
	.ascii	"\377\376\377\376\377\376\377\376\377\376\377\376\377"
	.ascii	"\376\377\376\000\377\000\377\377\000\377\000\377\000"
	.ascii	"\376\377\376\377\376\377\376\377\376\377\376\377\376"
	.ascii	"\377\376\376\377\376\377\376\377\377\376\377\376\377"
	.ascii	"\377\377\000\377\000\377\000\000\376\377\377\376\377"
	.ascii	"\376\377\376\377\377\377\376\377\376\377\377\377\377"
	.ascii	"\000\000\377\000\377\376\377\376\377\376\000\377\000"
	.ascii	"\377\000\000\377\377\376\377\376\377\377\377\377\377"
	.ascii	"\376\377\376\377\377\376\000\377\000\000\377\377\376"
	.ascii	"\377\376\377\376\377\376\000\377\000\377\000\377\000"
	.ascii	"\377\377\377\376\000\377\000\000\377\000\377\000\377"
	.ascii	"\377\376\377\376\377\376\377\377\376\000\377\000\377"
	.ascii	"\377\000\377\000\377\376\377\376\377\377\000\377\000"
	.ascii	"\377\000\377\000\377\000\377\377\377\376\377\376\377"
	.ascii	"\376\377\377\376\377\376\377\376\377\000\377\000\377"
	.ascii	"\377\000\377\000\377\377\377\376\377\377\376\377\376"
	.ascii	"\000\000\377\000\377\000\377\000\000\377\000\377\000"
	.ascii	"\377\000\377\000\377\000\376\377\377\376\377\376\377"
	.ascii	"\377\376\377\376\377\000\000\377\000\000\377\000\377"
	.ascii	"\376\377\376\377\377\376\000\377\000\376\377\376\377"
	.ascii	"\377\376\377\376\377\377\376\377\376\377\376\377\376"
	.ascii	"\000\377\000\000\377\377\376\377\377\377\377\376\377"
	.ascii	"\377\377\377\376\377\377\377\377\376\377\376\377\376"
	.ascii	"\377\377\000\000\000\377\000\377\000\000\377\000\377"
	.ascii	"\377\377\376\377\376\377\377\000\000\377\000\000\377"
	.ascii	"\000\376\377\377\377\377\376\377\377\000\000\000\377"
	.ascii	"\000\377\000\000\000\000\377\000\377\000\376\377\376"
	.ascii	"\377\376\377\376\377\376\377\000\377\000\377\000\000"
	.ascii	"\377\000\377\000\377\000\377\377\376\377\376\377\376"
	.ascii	"\000\000\000\377\000\000\000\000\377\377\376\377\376"
	.ascii	"\000\377\000\000\377\000\377\000\377\000\377\000\376"
	.ascii	"\377\377\376\377\376\377\377\377\376\377\377\377\377"
	.ascii	"\376\377\376\377\377\376\377\376\377\376\377\377\377"
	.ascii	"\376\377\376\377\377\376\377\000\377\000\377\000\377"
	.ascii	"\000\376\377\377\376\377\377\376\377\376\377\377\376"
	.ascii	"\377\377\377\000\377\000\377\000\377\000\377\000\377"
	.ascii	"\000\377\000\000\377\000\377\000\377\000\000\377\000"
	.ascii	"\000\377\000\000\377\000\377\000\000\000\000\000\000"
	.ascii	"\377\000\376\377\377\377\376\000\377\000\377\000\377"
	.ascii	"\000\000\377\000\377\000\000\000\000\377\000\376\377"
	.ascii	"\376\377\377\377\377\376\377\376\000\377\377\000\377"
	.ascii	"\000\377\000\000\377\000\377\000\377\377\376\377\376"
	.ascii	"\377\376\377\376\377\377\376\377\377\377\000\000\000"
	.ascii	"\377\000\377\000\377\377\377\376\377\377\376\377\376"
	.ascii	"\377\377\376\377\377\000\000\377\000\000\377\000\377"
	.ascii	"\000\377\000\376\377\377\377\376\377\376\377\376\377"
	.ascii	"\376\377\376\000\000\000\377\000\377\000\377\000\377"
	.ascii	"\377\377\377\377\377\377\377\377\376\377\376\377\376"
	.ascii	"\000\377\000\377\000\377\000\377\000\377\000\000\377"
	.ascii	"\376\377\377\376\377\376\377\377\376\377\377\000\377"
	.ascii	"\000\377\000\000\377\000\377\000\000\000\000\377\000"
	.ascii	"\377\377\376\377\376\377\376\377\376\000\000\377\000"
	.ascii	"\377\000\377\000\377\000\376\377\376\377\377\376\377"
	.ascii	"\376\377\377\376\377\376\377\377\376\377\377\000\377"
	.ascii	"\000\377\000\377\377\377\376\377\376\377\377\376\377"
	.ascii	"\376\377\377\376\377\376\377\376\377\376\377\376\377"
	.ascii	"\377\376\377\376\377\376\377\376\377\376\377\377\376"
	.ascii	"\377\376\000\377\000\000\377\000\377\000\377\000\376"
	.ascii	"\377\377\377\377\377\377\377\000\000\377\000\377\000"
	.ascii	"\377\000\377\000\377\000\377\000\377\000\000\000\377"
	.ascii	"\000\377\000\000\376\000\377\000\377\377\000\377\000"
	.ascii	"\377\000\377\000\377\000\000\377\000\377\000\377\000"
	.ascii	"\000\377\000\377\000\377\000\000\377\000\377\000\377"
	.ascii	"\000\377\000\000\377\000\000\377\000\377\377"
	.ascii	"\376\377\377\376\377\376\000\000\377\000\377\000\000"
	.ascii	"\377\000\377\000\377\000\000\377\377\376\377\376\377"
	.ascii	"\376\377\376\377\376\377"
	.type	balloon_pop_length, %object
	.size	balloon_pop_length, 4
balloon_pop_length:
	.word	6032
	.type	balloon_pop_sampleRate, %object
	.size	balloon_pop_sampleRate, 4
balloon_pop_sampleRate:
	.word	11025
	.ident	"GCC: (devkitARM release 53) 9.1.0"
