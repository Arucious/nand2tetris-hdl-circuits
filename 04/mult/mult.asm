// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Multiplication is essentially just repeated addition, 
// a*b = a+a.. b times, or b+b... a times, since it is commutative
// we know we have a loop, that has to run a+a, b times
// one way to do this could be to have b as a reverse counter, which we subtract by 1 
// when b = 0, we can exit loop
@i
M = 0 // we will use i as the sum, and set it to 0 to start 
@R1 
D = M // use D to hold the number while we initialize a count variable 
@count
M = D // we have put the second number inside count
(LOOP)
@count
D = M // D holds count again
@END
D;JEQ
@R0
D = M // bring i down
@i
M = M + D // add i to itself
@count 
M = M - 1 // decrease count by 1 
@LOOP
0;JMP
(END)
@i
D = M // use D to hold the final sum
@R2
M = D // put the sum into R2


