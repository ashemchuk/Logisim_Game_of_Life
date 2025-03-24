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

setup: # 1st step of game: user move cursor by buttons LEFT, RIGHT, UP, DOWN.
# Then user can start the game by pressing STOP(this button start and STOP the game)
	while 
		ldi r0, STOP
		ld r0, r2
	stays z # waiting for the 1st press
		ldi r1, COORD
		#pooling 
		ld r1, r2 # 4-bit coardinates to byte in field
		if # enter is pressed -> print current coord
			ld r3, 
		is

		fi
	wend




main:
	while  # button STOP is not pressed
		ldi r0, STOP
		ld r0, r0
		tst r0
	stays nz
		ldi r0, PRINT_ENABLE
		ldi r1, 0
		st r0, r1
		# start of calculations, print is not enable
		jsr calculate
	wend
halt



calculate:
	# jsr set_cur_field
	# pop r2 # field0 or field1
	ldi r1, 32 # byte count
	while 
		dec r1
	stays nz
		ldi r0, 0b10000000 # mask
		while 
			tst r0
		stays nz
		## check_neighbours
			jsr check_position 
			shra r0
		wend
		shl r0
	wend
	rts

	
set_cur_field: # result -> r2
	ldi r3, CWF
	ld r3, r3
	if
		tst r3
	is z
		ldi r2, field0
	else
		ldi r2, field1
	fi
	rts	
# we have 32-byteset, so to choose cell we need to know 2 coordinates:
# number of byte and number of bit
# it's easyier (for iteration and for checking) to store number of bit like a bitmask
# where mask have one 1 in place we check
check_position: # return 0 or 1, 0 - dead, 1 - alive cell 
# r1 - number of byte, r0- bitmask
	jsr set_cur_field
	# address of field in r2
	add r1, r2 # offset 
	ld r2, r2
	and r0, r2
	if 
		tst r2
	is z
		ldi r2, 0
	else 
		ldi r2, 1
	fi
	# push r2
	rts

count_neighbours: # 
# r1 - number of byte, r0- bitmask

	rts

end