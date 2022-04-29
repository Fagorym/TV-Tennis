asect  0x00

start:
	ldi r0, a
	ldi r1, b
	ld r0,r0
	ld r1,r1
	add r0,r1
	ldi r0,ans
	st r0,r1
    br start

asect 0xf0

a: 		ds 1
b: 		ds 1

ans: 	ds 1

end

