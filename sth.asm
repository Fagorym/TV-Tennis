asect  0x00

#setsp EF
start:
	
	ldi r3,0
	
	#scan input data
	ldi r0, ballY
	ldi r1, dY
	ldi r2, Cin
	
	ld r0,r0
	ld r1,r1
	ld r2,r2
	
	add r0,r1
	addc r3,r2
	
	if
		shra r2
	is cs
		neg r1
	fi
	
	ldi r0,ans
	st r0,r1
    br start

asect 0xf0

ballY: 	ds 1
dY: 	ds 1
Cin:	ds 1

ans: 	ds 1

end

