# https://makefiletutorial.com/#automatic-variables-and-wildcards
CC := ../clang-cdm-macos-latest/clang-19
C_OPTS := -target cdm -S -O1

ASM := cocas
ASM_OPTS := -t cdm16 --debug ../build/out.dbg.json

SRC_FILES := print.c life.c main.c neighbours.c interrupts.c
ASM_FILES := $(patsubst %.c,../build/%.asm,$(SRC_FILES))

all: ../build/out.img  

../build/out.img: $(ASM_FILES) start.asm
	$(ASM) $(ASM_OPTS) $^ -o $@

$(ASM_FILES): ../build/%.asm: %.c
	$(CC) $(C_OPTS) $< -o $@

clean:
	rm -f ../build/*

rebuild: clean all