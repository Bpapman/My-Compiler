* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  overlayCall.c-
* BEGIN function input
  1:     ST  3,-1(1) 	Store return address 
  2:     IN  2,2,2 	Grab int input 
  3:     LD  3,-1(1) 	Load return address 
  4:     LD  1,0(1) 	Adjust fp 
  5:    LDA  7,0(3) 	Return 
* END of function input
* BEGIN function output
  6:     ST  3,-1(1) 	Store return address 
  7:     LD  3,-2(1) 	Load parameter 
  8:    OUT  3,3,3 	Output integer 
  9:    LDC  2,0(6) 	Set return to 0 
 10:     LD  3,-1(1) 	Load return address 
 11:     LD  1,0(1) 	Adjust fp 
 12:    LDA  7,0(3) 	Return 
* END of function output
* BEGIN function inputb
 13:     ST  3,-1(1) 	Store return address 
 14:    INB  2,2,2 	Grab bool input 
 15:     LD  3,-1(1) 	Load return address 
 16:     LD  1,0(1) 	Adjust fp 
 17:    LDA  7,0(3) 	Return 
* END of function inputb
* BEGIN function outputb
 18:     ST  3,-1(1) 	Store return address 
 19:     LD  3,-2(1) 	Load parameter 
 20:   OUTB  3,3,3 	Output bool 
 21:    LDC  2,0(6) 	Set return to 0 
 22:     LD  3,-1(1) 	Load return address 
 23:     LD  1,0(1) 	Adjust fp 
 24:    LDA  7,0(3) 	Return 
* END of function outputb
* BEGIN function inputc
 25:     ST  3,-1(1) 	Store return address 
 26:    INC  2,2,2 	Grab char input 
 27:     LD  3,-1(1) 	Load return address 
 28:     LD  1,0(1) 	Adjust fp 
 29:    LDA  7,0(3) 	Return 
* END of function inputc
* BEGIN function outputc
 30:     ST  3,-1(1) 	Store return address 
 31:     LD  3,-2(1) 	Load parameter 
 32:   OUTC  3,3,3 	Output char 
 33:    LDC  2,0(6) 	Set return to 0 
 34:     LD  3,-1(1) 	Load return address 
 35:     LD  1,0(1) 	Adjust fp 
 36:    LDA  7,0(3) 	Return 
* END of function outputc
* BEGIN function outnl
 37:     ST  3,-1(1) 	Store return address 
 38:  OUTNL  3,3,3 	Output a newline 
 39:     LD  3,-1(1) 	Load return address 
 40:     LD  1,0(1) 	Adjust fp 
 41:    LDA  7,0(3) 	Return 
* END of function outnl
* BEGIN function dog
 42:     ST  3,-1(1) 	Store return address. 
* Add standard closing in case there is no return statement
 43:    LDC  2,0(6) 	Set return value to 0 
 44:     LD  3,-1(1) 	Load return address 
 45:     LD  1,0(1) 	Adjust fp 
 46:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
 47:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* BEGIN compound statement
 48:    LDC  3,10(6) 	load size of array x
 49:     ST  3,-2(1) 	save size of array x
* EXPRESSION STMT
*                       Begin call to  dog
 50:     ST  1,-13(1) 	Store old fp in ghost frame 
*                       Jump to dog
 51:    LDA  1,-13(1) 	Load address of new frame 
 52:    LDA  3,1(7) 	Return address in ac 
 53:    LDA  7,-12(7) 	CALL dog
 54:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* END compound statement
* EXPRESSION STMT
*                       Begin call to  dog
 55:     ST  1,-13(1) 	Store old fp in ghost frame 
*                       Jump to dog
 56:    LDA  1,-13(1) 	Load address of new frame 
 57:    LDA  3,1(7) 	Return address in ac 
 58:    LDA  7,-17(7) 	CALL dog
 59:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* END compound statement
* Add standard closing in case there is no return statement
 60:    LDC  2,0(6) 	Set return value to 0 
 61:     LD  3,-1(1) 	Load return address 
 62:     LD  1,0(1) 	Adjust fp 
 63:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,63(7) 	Jump to init [backpatch] 
* BEGIN Init
 64:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 65:    LDA  1,0(0) 	set first frame at end of globals 
 66:     ST  1,0(1) 	store old fp (point to self) 
 67:    LDA  3,1(7) 	Return address in ac 
 68:    LDA  7,-22(7) 	Jump to main 
 69:   HALT  0,0,0 	DONE! 
* END Init
