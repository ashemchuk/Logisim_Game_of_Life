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

asect 0xF0 ## 0xF0???
FIELD: 
ds 1
PRINT_ENABLE:
ds 1


#count_neighbours: # r0 - 0 .. 255 - position of checking cell
#	#need to check 8 neighbours: N, NE, E, ES, S, SW, W, WN
#	#N
#	save r1
#	
#	
#	restore r1
#	
asect 0x00
ldi r0 , field0
dec r0
stsp r0


main:
	jsr set_cur_field
	ldi r1, 32 # byte number
	while 
		dec r1
	stays nz
		ldi r0, 0b10000000 # mask
		
		shl r0
	wend
	halt 
	
set_cur_field:
	ldi r3, FIELD
	ld r3, r3
	if
		tst r3
	is z
		ldi r2, field0
	else
		ldi r2, field1
	fi
	#r2 - address of current field
	rts	

check_position: # return 0 or 1, 0 - dead, 1 - alive cell (into r0)
#r0 - mask, r1 - byte number
	save r2
	save r3
	
	
	
	
	restore r3
	restore r2
	rts
	

end