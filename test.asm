asect 0
main: ext               # Declare labels
default_handler: ext    # as external

# Interrupt vector table (IVT)
# Place a vector to program start and map 
# all internal exceptions to default_handler
dc main, 0              # Startup/Reset vector
dc default_handler, 0   # Unaligned SP
dc default_handler, 0   # Unaligned PC
dc default_handler, 0   # Invalid instruction
dc default_handler, 0   # Double fault
align 0x80              # Reserve space for the rest 
                        # of IVT

# Exception handlers section

# This handler halts processor
rsect default_handler
default_handler>
    halt

# Main program section
rsect main
main>
    # YOUR CODE HERE
    ldi r1, 6
    # while 
    #     tst r0
    # stays z
        inc r1
        ldi r2, 0xfff1
        st r2, r1
    # wend

end.
