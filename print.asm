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
	addsp	-4
	shr	r0, r1, 8
	ldi	r2, -2
	add	r2, fp, r2
	ldi	r3, 1
	stb	r2, r3, r1
	ssb	r0, -2
	ldi	r0, 0
	ssw	r0, -4
	br	__LBB0_1
__LBB0_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	lsw	r0, -4
	ldi	r1, 15
	cmp	r0, r1
	bgt	__LBB0_4
	br	__LBB0_2
__LBB0_2:                               # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	ldi	r0, -2
	add	r0, fp, r0
	ldi	r1, 1
	ldb	r0, r1, r0
	shl	r0, r0, 8
	lsb	r1, -2
	or r0, r1, r0
	ldi	r1, 32
	ldw	r0, r1, r0
	ldi	r1, DISPLAY
	stw	r1, r0
	br	__LBB0_3
__LBB0_3:                               # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	add	r0, 1
	ssw	r0, -4
	br	__LBB0_1
__LBB0_4:                               # %for.end
	addsp	4
	pop	fp
	rts
                                        # -- End function
end.
