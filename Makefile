CC=./clang-cdm-macos-latest/clang-19
C_OPTS=-target cdm -S -O1

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

bitwise: bitwise_print.asm bitwise_life.asm bitwise_main.asm bitwise_neighbours.asm interrupts.asm start.asm
	$(ASM) $(ASM_OPTS) bitwise_print.asm bitwise_life.asm bitwise_main.asm bitwise_neighbours.asm interrupts.asm start.asm -o build/out.img

bitwise_print.asm: bitwise_print.c
	$(CC) $(C_OPTS) bitwise_print.c -o bitwise_print.asm
bitwise_life.asm: bitwise_life.c
	$(CC) $(C_OPTS) bitwise_life.c -o bitwise_life.asm
bitwise_main.asm: bitwise_main.c
	$(CC) $(C_OPTS) bitwise_main.c -o bitwise_main.asm
bitwise_neighbours.asm: bitwise_neighbours.c
	$(CC) $(C_OPTS) bitwise_neighbours.c -o bitwise_neighbours.asm
interrupts.asm: interrupts.c
	$(CC) $(C_OPTS) interrupts.c -o interrupts.asm