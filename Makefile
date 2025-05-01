CC=./clang-cdm-macos-latest/clang-19
C_OPTS=-target cdm -S

ASM=cocas
ASM_OPTS=-t cdm16 --debug build/out.dbg.json

all: print.asm main.asm life.asm start.asm
	$(ASM) $(ASM_OPTS) print.asm main.asm life.asm start.asm -o build/out.img

print.asm: print.c
	$(CC) $(C_OPTS) -o print.asm print.c
main.asm: main.c
	$(CC) $(C_OPTS) -o main.asm main.c
life.asm: life.c
	$(CC) $(C_OPTS) -o life.asm life.c
