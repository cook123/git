ipl.bin : ipl.nas Makefile
	D:/tolset/z_tools/nask.exe ipl.nas ipl.bin ipl.lst

systemmain.sys : systemmain.nas Makefile
	D:/tolset/z_tools/nask.exe systemmain.nas systemmain.sys systemmain.lst
	
helloos.img : ipl.bin Makefile
	D:/tolset/z_tools/edimg.exe   imgin:D:/tolset/z_tools/fdimg0at.tek \
		wbinimg src:ipl.bin len:512 from:0 to:0 \
		copy from:systemmain.sys to:@: \
		imgout:helloos.img
		
asm :
	D:/tolset/z_tools/make.exe -r ipl.bin

img :
	D:/tolset/z_tools/make.exe -r helloos.img
	