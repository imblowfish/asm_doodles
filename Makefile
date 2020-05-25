all: build clean
	
build:
	del main.exe
	nasm -fwin32 $(path) -o asm.o
	gcc -o main.exe asm.o
clean:
	del asm.o