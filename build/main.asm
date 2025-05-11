### SECTION: .text
rsect _main_c_16807

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
	ldi	r6, IS_RUNNING
	ldi	r4, 0
	ldi	r5, FIELD0
__LBB0_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ldw	r6, r0
	cmp	r0, r4
	beq	__LBB0_3
	br	__LBB0_2
__LBB0_2:                               # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movens	r5, r0
	movens	r6, r4
	movens	r5, r6
	ldi	r5, FIELD1
	movens	r5, r1
	jsr	next_gen
	movens	r5, r0
	movens	r6, r5
	movens	r4, r6
	ldi	r4, 0
	jsr	print
__LBB0_3:                               # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	ldw	r6, r0
	cmp	r0, r4
	beq	__LBB0_1
	br	__LBB0_4
__LBB0_4:                               # %if.then2
                                        #   in Loop: Header=BB0_1 Depth=1
	ldi	r0, FIELD1
	movens	r5, r1
	jsr	next_gen
	movens	r5, r0
	jsr	print
	br	__LBB0_1
                                        # -- End function
### SECTION: .bss
FIELD0>                                 # @FIELD0
	ds	216

FIELD1>                                 # @FIELD1
	ds	216

end.
