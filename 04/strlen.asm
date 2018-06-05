@len
M = 0 // set len to 0
@i
M = D

(LOOP)
	@i 
	A = M 
	D = M // not condition 
	@END
	D;JEQ
	
	// code block 1
	@i
	M = M+1
	@len
	M = M+1
	
	@LOOP 
	0;JMP // run again 
(END)
	@len
	D = M
	@16
	M = D
@END
	0;JMP // infinite loop to end