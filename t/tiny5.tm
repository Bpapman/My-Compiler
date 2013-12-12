* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  tiny5.c-
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
 43:    LDC  3,2(6) 	load size of array w
 44:     ST  3,-3(1) 	save size of array w
* RETURN
 45:    LDC  3,77(6) 	Load constant 
 46:     ST  3,-6(1) 	Save left side 
 47:    LDC  3,1(6) 	Load constant 
 48:     LD  4,-2(1) 	Load address of base of array garion
 49:    SUB  3,4,3 	Compute offset of value 
 50:     LD  3,0(3) 	Load the value 
 51:     LD  4,-6(1) 	Load left into ac1 
 52:    ADD  3,4,3 	Op + 
 53:    LDA  2,0(3) 	Copy result to rt register 
 54:     LD  3,-1(1) 	Load return address 
 55:     LD  1,0(1) 	Adjust fp 
 56:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 57:    LDC  2,0(6) 	Set return value to 0 
 58:     LD  3,-1(1) 	Load return address 
 59:     LD  1,0(1) 	Adjust fp 
 60:    LDA  7,0(3) 	Return 
* END of function wolf
* BEGIN function main
 61:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 62:    LDC  3,3(6) 	load size of array y
 63:     ST  3,-2(1) 	save size of array y
* EXPRESSION STMT
 64:    LDC  3,1(6) 	Load constant 
 65:     ST  3,-6(1) 	Save index 
 66:    LDC  3,666(6) 	Load constant 
 67:     LD  4,-6(1) 	Restore index 
 68:    LDA  5,-3(1) 	Load address of base of array y
 69:    SUB  5,5,4 	Compute offset of value 
 70:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  wolf
 71:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 72:    LDA  3,-3(1) 	Load address of base of array y
 73:     ST  3,-8(1) 	Store parameter 
*                       Jump to wolf
 74:    LDA  1,-6(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-35(7) 	CALL wolf
 77:    LDA  3,0(2) 	Save the result in ac 
*                       End call to wolf
* END compound statement
* Add standard closing in case there is no return statement
 78:    LDC  2,0(6) 	Set return value to 0 
 79:     LD  3,-1(1) 	Load return address 
 80:     LD  1,0(1) 	Adjust fp 
 81:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,81(7) 	Jump to init [backpatch] 
* BEGIN Init
 82:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
 83:    LDC  3,3(6) 	load size of array g
 84:     ST  3,0(0) 	save size of array g
* END init of globals
 85:    LDA  1,-4(0) 	set first frame at end of globals 
 86:     ST  1,0(1) 	store old fp (point to self) 
 87:    LDA  3,1(7) 	Return address in ac 
 88:    LDA  7,-28(7) 	Jump to main 
 89:   HALT  0,0,0 	DONE! 
* END Init
