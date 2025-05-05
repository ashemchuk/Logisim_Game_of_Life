asect 0x0000
start: ext
default_handler: ext  
KB_ISR: ext 
# Interrupt vector table (IVT)
# Place a vector to program start and
# map all internal exceptions to default_handler
dc start, 0       # Startup/Reset vector
dc default_handler, 0   # Unaligned SP
dc default_handler, 0   # Unaligned PC
dc default_handler, 0   # Invalid instruction
dc default_handler, 0   # Double fault
dc KB_ISR, 0
align 0x80              # Reserve space for the rest 
                        # of IVT
rsect irp_handlers
KB_ISR: ext 
# Exception handlers section
rsect exc_handlers
# This handler halts processor
default_handler>
    halt
# Main program section
rsect start
main: ext               # main.c
start>
    ldi r0, 0xffa0 
    stsp r0
    clr r0
    ei
    jsr main
    halt
asect 0xffc0
PROGRESS> ds 2
asect 0xffd0 # ffd0 - ffef
DISPLAY> ds 32
asect 0xfff0
KEYBOARD> ds 2
asect 0xfff2
CURSOR_ON> ds 2
asect 0xffb0 # game state
IS_RUNNING> ds 2
COORD> ds 2
ALIVE_CEILS> ds 2
end.