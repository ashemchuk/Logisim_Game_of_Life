asect 0x0000
start: ext
default_handler: ext   
# Interrupt vector table (IVT)
# Place a vector to program start and
# map all internal exceptions to default_handler
dc start, 0      # Startup/Reset vector
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
    ldi r0, 0xffd0 
    ldi r1, 0
    ldi r2, 0b1100110011001100
    while 
        ldi r3, 32 # 30 ??
        cmp r3, r1
    stays ne
        stw r0, r1, r2
        inc r1
        inc r1
    wend

asect 0xffd0 # ffd0 - ffef
DISPLAY> ds 32
end.