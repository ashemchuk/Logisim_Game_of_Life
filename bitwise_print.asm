### SECTION: .text
rsect _bitwise_print_c_16807

DISPLAY: ext


macro movens/2
push $1
pop $2
mend

print>                                  # -- Begin function print
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-8
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r1, 0
	add	r0, 14
	ldi	r3, 8
	movens	r1, r5
__LBB0_1:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	ssw	r5, -8                          # 2-byte Folded Spill
	ldi	r1, 0
	movens	r1, r6
	br	__LBB0_4
__LBB0_4:                               # %for.body4
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldw	r0, r6, r2
	shr	r2, r4, 8
	shr	r4, r4, 9-8
	movens	r0, r5
	movens	r3, r0
	ldi	r3, 4
	and r4, r3, r4
	movens	r0, r3
	movens	r5, r0
	shl	r1, r1, 4
	or r4, r1, r1
	shr	r2, r4, 8
	shr	r4, r4, 12-8
	and r4, r3, r4
	or r1, r4, r1
	shr	r2, r4, 6
	ldi	r5, 2
	and r4, r5, r4
	or r1, r4, r1
	ldi	r4, 1
	shr	r2, r2, 3
	and r2, r4, r2
	or r1, r2, r1
	add	r6, 2
	cmp	r6, r3
	beq	__LBB0_3
	br	__LBB0_4
__LBB0_3:                               # %for.cond.cleanup3
                                        #   in Loop: Header=BB0_1 Depth=1
	lsw	r5, -8                          # 2-byte Folded Reload
	shl	r5, r6, 1
	ldi	r2, DISPLAY
	stw	r6, r2, r1
	add	r0, 12
	add	r5, 1
	ldi	r1, 16
	cmp	r5, r1
	beq	__LBB0_2
	br	__LBB0_1
__LBB0_2:                               # %for.cond.cleanup
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	8
	pop	fp
	rts
                                        # -- End function
end.
