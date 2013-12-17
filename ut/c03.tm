* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c03.tm
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
 43:    LDC  3,1(6) 	Load constant 
 44:     ST  3,0(0) 	Store variable x
* EXPRESSION STMT
 45:    LDC  3,0(6) 	Load constant 
 46:     ST  3,-1(0) 	Store variable y
* EXPRESSION STMT
* 			Begin call to  outputb
 47:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 48:     LD  3,0(0) 	Load variable x
 49:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 50:     LD  3,-1(0) 	Load variable y
 51:     LD  4,-4(1) 	Load left into ac1 
 52:    JEQ  3,1(7) 	Op AND 
 53:    LDA  3,0(5) 	 
 54:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 55:    LDA  1,-2(1) 	Load address of new frame 
 56:    LDA  3,1(7) 	Return address in ac 
 57:    LDA  7,-40(7) 	CALL outputb
 58:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 59:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 60:    LDA  1,-2(1) 	Load address of new frame 
 61:    LDA  3,1(7) 	Return address in ac 
 62:    LDA  7,-26(7) 	CALL outnl
 63:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 64:    LDC  2,0(6) 	Set return value to 0 
 65:     LD  3,-1(1) 	Load return address 
 66:     LD  1,0(1) 	Adjust fp 
 67:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,67(7) 	Jump to init [backpatch] 
* BEGIN Init
 68:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 69:    LDA  1,-2(0) 	set first frame at end of globals 
 70:     ST  1,0(1) 	store old fp (point to self) 
 71:    LDA  3,1(7) 	Return address in ac 
 72:    LDA  7,-31(7) 	Jump to main 
 73:   HALT  0,0,0 	DONE! 
* END Init
