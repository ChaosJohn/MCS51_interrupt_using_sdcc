CC = sdcc
SOURCE = $(wildcard *.c) 
SHELL = /bin/sh

all: 
	$(CC) -mmcs51 $(SOURCE)
	make clean 

bin: 
	$(shell objcopy -I ihex -O binary *.ihx `basename *.ihx .ihx`.bin )

burn:
	sudo stcisp -f $(wildcard *.ihx)

.PHONY: clean distclean 

clean: 
	rm -f *.bak
	rm -f *.rel 
	rm -f *.asm 
	rm -f *.lst 
	rm -f *.sym 
	rm -f *.map 
	rm -f *.lnk 
	rm -f *.mem 
	rm -f *.i 
	rm -f *.d 
	rm -f *.rst 
	rm -f *.lk

distclean: 
	rm -f *.bak
	rm -f *.rel 
	rm -f *.asm 
	rm -f *.lst 
	rm -f *.sym 
	rm -f *.map 
	rm -f *.lnk 
	rm -f *.mem 
	rm -f *.i 
	rm -f *.d 
	rm -f *.rst 
	rm -f *.lk
	rm -f *.ihx 
	rm -f *.bin

