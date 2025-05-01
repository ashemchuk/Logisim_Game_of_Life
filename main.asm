### SECTION: .text
rsect _main_c_16807

nextGeneration: ext
print: ext


macro movens/2
push $1
pop $2
mend

main>                                   # -- Begin function main
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-4
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ldi	r4, FIELD_0
	ldi	r5, FIELD_1
__LBB0_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movens	r4, r0
	movens	r5, r1
	jsr	nextGeneration
	movens	r5, r0
	jsr	print
	movens	r5, r0
	movens	r4, r1
	jsr	nextGeneration
	movens	r4, r0
	jsr	print
	br	__LBB0_1
                                        # -- End function
### SECTION: .data
FIELD_0>                                # @FIELD_0
	db	1                               # 0x1
	db	0                               # 0x0
	db	0                               # 0x0
	db	0                               # 0x0
	db	0                               # 0x0
	db	1                               # 0x1
	ds	10
	ds	16
	ds	16
	ds	16
	ds	16
	ds	16
	ds	16
	ds	16
	ds	16
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	1
	ds	8
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	1
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	1
	db	1
	db	1
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	db	0
	ds	16
	ds	16
	ds	16
	ds	16

### SECTION: .bss
FIELD_1>                                # @FIELD_1
	ds	256

end.
