### SECTION: .text
rsect _print_c_16807

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
	ldi	r2, 0
	ldi	r3, 16
	movens	r2, r5
__LBB0_1:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	ssw	r5, -8                          # 2-byte Folded Spill
	movens	r2, r1
	movens	r2, r6
	ldi	r4, 1
	br	__LBB0_4
__LBB0_4:                               # %for.body4
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldb	r0, r1, r5
	cmp	r5, r2
	movens	r2, r5
	beq	__LBB0_6
# %bb.5:                                # %for.body4
                                        #   in Loop: Header=BB0_4 Depth=2
	movens	r4, r5
__LBB0_6:                               # %for.body4
                                        #   in Loop: Header=BB0_4 Depth=2
	or r5, r6, r6
	shl	r4, r4, 1
	add	r1, 1
	cmp	r1, r3
	beq	__LBB0_3
	br	__LBB0_4
__LBB0_3:                               # %for.cond.cleanup3
                                        #   in Loop: Header=BB0_1 Depth=1
	lsw	r5, -8                          # 2-byte Folded Reload
	shl	r5, r1, 1
	ldi	r4, DISPLAY
	stw	r1, r4, r6
	add	r0, 16
	add	r5, 1
	cmp	r5, r3
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
