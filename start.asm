asect 0x0000
start: ext
default_handler: ext   
# Interrupt vector table (IVT)
# Place a vector to program start and
# map all internal exceptions to default_handler
dc start, 0       # Startup/Reset vector
dc default_handler, 0   # Unaligned SP
dc default_handler, 0   # Unaligned PC
dc default_handler, 0   # Invalid instruction
dc default_handler, 0   # Double fault
align 0x80              # Reserve space for the rest 
                        # of IVT

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
    jsr main
    halt
asect 0xffc0
PROGRESS> ds 2
asect 0xffd0 # ffd0 - ffef
DISPLAY> ds 32
end.