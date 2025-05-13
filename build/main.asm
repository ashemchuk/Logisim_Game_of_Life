### SECTION: .text
rsect _src_main_c_16807

next_gen: ext
print: ext
IS_RUNNING: ext


macro movens/2
push $1
pop $2
mend

main>                                   # -- Begin function main
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-6
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r6, 0
	ldi	r4, FIELD0
	ldi	r5, FIELD1
__LBB0_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ldi	r0, IS_RUNNING
	ldw	r0, r0
	cmp	r0, r6
	beq	__LBB0_1
	br	__LBB0_2
__LBB0_2:                               # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movens	r4, r0
	movens	r5, r1
	jsr	next_gen
	movens	r5, r0
	jsr	print
	movens	r5, r0
	movens	r4, r1
	jsr	next_gen
	movens	r4, r0
	jsr	print
	br	__LBB0_1
                                        # -- End function
### SECTION: .bss
FIELD0>                                 # @FIELD0
	ds	216

FIELD1>                                 # @FIELD1
	ds	216

end.
