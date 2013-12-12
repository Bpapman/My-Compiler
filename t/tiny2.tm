* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  tiny2.c-
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
* BEGIN function wolf
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
 43:    LDC  3,42(6) 	Load constant 
 44:    LDA  2,0(3) 	Copy result to rt register 
 45:     LD  3,-1(1) 	Load return address 
 46:     LD  1,0(1) 	Adjust fp 
 47:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 48:    LDC  2,0(6) 	Set return value to 0 
 49:     LD  3,-1(1) 	Load return address 
 50:     LD  1,0(1) 	Adjust fp 
 51:    LDA  7,0(3) 	Return 
* END of function wolf
* BEGIN function main
 52:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 53:    LDC  3,666(6) 	Load constant 
 54:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
 55:    LDC  3,42(6) 	Load constant 
 56:     ST  3,0(0) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  wolf
 57:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
 58:     LD  3,-2(1) 	Load variable x
 59:     ST  3,-5(1) 	Store parameter 
*                       Jump to wolf
 60:    LDA  1,-3(1) 	Load address of new frame 
 61:    LDA  3,1(7) 	Return address in ac 
 62:    LDA  7,-21(7) 	CALL wolf
 63:    LDA  3,0(2) 	Save the result in ac 
*                       End call to wolf
 64:     ST  3,-2(1) 	Store variable x
* END compound statement
* Add standard closing in case there is no return statement
 65:    LDC  2,0(6) 	Set return value to 0 
 66:     LD  3,-1(1) 	Load return address 
 67:     LD  1,0(1) 	Adjust fp 
 68:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,68(7) 	Jump to init [backpatch] 
* BEGIN Init
 69:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 70:    LDA  1,-1(0) 	set first frame at end of globals 
 71:     ST  1,0(1) 	store old fp (point to self) 
 72:    LDA  3,1(7) 	Return address in ac 
 73:    LDA  7,-22(7) 	Jump to main 
 74:   HALT  0,0,0 	DONE! 
* END Init
