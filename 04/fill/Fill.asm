// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.


@SCREEN   // byte address 8192 to start, 2*this-1 would be the end 
D = A
@num
M = D // putting 8192 into memory now. 


(LOOP)
@i
M = 0 

(INNER)
@KBD
D = M
@UNFILL
D;JEQ   // if no input we can move to unfill


(FILL)
@i
D = M
@SCREEN // pull byte address of screen 
A = A + D   
M = -1    // This is all 1s in 2s complement, or setting it to black 
@END
0;JMP  


(UNFILL)
@i
D = M

@SCREEN
A = A + D   // Calculate byte address
M = 0     // sets bytes to 0 to fill with white 


(END)   
@i
MD=M+1  // next byte address

@num
D=D-M

@LOOP
D;JEQ  

@INNER
0;JMP 