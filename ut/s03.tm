* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  s03.tm
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
* BEGIN function main
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,-24(1) 	Store old fp in ghost frame 
* 			Load param 1
 44:    LDA  3,-3(1) 	Load address of base of array cat
 45:    MUL  3,1,3 	Load array size 
 46:     ST  3,-26(1) 	Store parameter 
* 			Jump to output
 47:    LDA  1,-24(1) 	Load address of new frame 
 48:    LDA  3,1(7) 	Return address in ac 
 49:    LDA  7,-44(7) 	CALL output
 50:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 51:     ST  1,-24(1) 	Store old fp in ghost frame 
* 			Load param 1
 52:    LDA  3,-1(0) 	Load address of base of array dog
 53:    MUL  3,1,3 	Load array size 
 54:     ST  3,-26(1) 	Store parameter 
* 			Jump to output
 55:    LDA  1,-24(1) 	Load address of new frame 
 56:    LDA  3,1(7) 	Return address in ac 
 57:    LDA  7,-52(7) 	CALL output
 58:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 59:    LDC  2,0(6) 	Set return value to 0 
 60:     LD  3,-1(1) 	Load return address 
 61:     LD  1,0(1) 	Adjust fp 
 62:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,62(7) 	Jump to init [backpatch] 
* BEGIN Init
 63:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
 64:    LDC  3,10(6) 	load size of array dog
 65:     ST  3,0(0) 	saves size of array dog
* END init of globals
 66:    LDA  1,-11(0) 	set first frame at end of globals 
 67:     ST  1,0(1) 	store old fp (point to self) 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-28(7) 	Jump to main 
 70:   HALT  0,0,0 	DONE! 
* END Init
