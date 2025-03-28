# i use double-buffering and flag with current 
# ready to print field
asect 0xB0
field0:
ds 32 # 32 bytes - compressed field 16X16 (bitset)
# 0xB0 - 0xCF

asect 0xD0
field1:
ds 32
# 0xD0 - 0xEF

asect 0xF0 
CWF:  # current working field
ds 1
PRINT_ENABLE: #0xf1
ds 1
STOP: #0xf2
ds 1
COORD:	#0xf3
# 1st 4 bits - X, others - Y
ds 1 	
ENTER:
ds 1

asect 0x00
ldi r0 , field0
dec r0
stsp r0

main:
    ldi r0, 0b00110011
    ldi r1, 0xb0
    ldi r2, 0xd0
    while 
        cmp r1, r2
    stays nz
        st r1, r0
        inc r1
    wend
    ldi r0, 0b01010101
    ldi r1, 0xd0
    ldi r2, 0xf0
    while 
        cmp r1, r2
    stays nz
        st r1, r0
        inc r1
    wend
    halt
end