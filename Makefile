CC=./clang-cdm-macos-latest/clang-19
C_OPTS=-target cdm -S -O1

ASM=cocas
ASM_OPTS=-t cdm16 --debug build/out.dbg.json

all: build/print.asm build/life.asm build/main.asm build/neighbours.asm build/interrupts.asm start.asm
	$(ASM) $(ASM_OPTS) build/print.asm build/life.asm build/main.asm build/neighbours.asm build/interrupts.asm start.asm -o build/out.img

build/print.asm: print.c
	$(CC) $(C_OPTS) print.c -o build/print.asm
build/life.asm: life.c
	$(CC) $(C_OPTS) life.c -o build/life.asm
build/main.asm: main.c
	$(CC) $(C_OPTS) main.c -o build/main.asm
build/neighbours.asm: neighbours.c
	$(CC) $(C_OPTS) neighbours.c -o build/neighbours.asm
build/interrupts.asm: interrupts.c
	$(CC) $(C_OPTS) interrupts.c -o build/interrupts.asm

clean:
	rm build/*
rebuild: clean all