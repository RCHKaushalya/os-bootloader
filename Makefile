# Makefile
ASM = nasm
ASMFLAGS = -f bin

all: helloos.img

helloos.img: boot.asm
	$(ASM) $(ASMFLAGS) boot.asm -o helloos.img

clean:
	rm -f helloos.img
