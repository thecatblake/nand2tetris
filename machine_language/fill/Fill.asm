// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(LOOP)
@8192
D=A
@i
M=D

@KBD
D=M
@White
D;JEQ
@Black
0;JMP

(Black)
@i
D=M
@LOOP
D;JEQ
@SCREEN
A=A+D
M=-1
@i
M=M-1
@Black
0;JMP

(White)
@i
D=M
@LOOP
D;JEQ
@SCREEN
A=A+D
M=0
@i
M=M-1
@White
0;JMP