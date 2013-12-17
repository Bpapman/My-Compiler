* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  i07.tm
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
 44:     ST  3,-2(1) 	Store variable ba
* EXPRESSION STMT
 45:    LDC  3,1(6) 	Load constant 
 46:     ST  3,-5(1) 	Save left side 
* EXPRESSION STMT
 47:    LDC  3,0(6) 	Load constant 
 48:    LDA  3,1(5) 	Not load address 
 49:    SUB  3,4,3 	Op Not 
 50:     LD  4,-5(1) 	Load left into ac1 
 51:    JEQ  3,1(7) 	Op AND 
 52:    LDA  3,0(5) 	 
 53:     ST  3,-3(1) 	Store variable bb
* EXPRESSION STMT
 54:    LDC  3,5(6) 	Load constant 
 55:     ST  3,-5(1) 	Save left side 
* EXPRESSION STMT
 56:    LDC  3,4(6) 	Load constant 
 57:     LD  4,-5(1) 	Load left into ac1 
 58:    SUB  4,4,3 	Op < 
 59:    LDC  3,1(6) 	True case 
 60:    JGT  4,1(7) 	Jump if true 
 61:    LDC  3,0(6) 	False case 
 62:     ST  3,-4(1) 	Store variable bc
* EXPRESSION STMT
* 			Begin call to  outputb
 63:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
 64:     LD  3,-4(1) 	Load variable bc
 65:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
 66:    LDA  1,-5(1) 	Load address of new frame 
 67:    LDA  3,1(7) 	Return address in ac 
 68:    LDA  7,-51(7) 	CALL outputb
 69:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* BEGIN compound statement
* END compound statement
* END compound statement
* Add standard closing in case there is no return statement
 70:    LDC  2,0(6) 	Set return value to 0 
 71:     LD  3,-1(1) 	Load return address 
 72:     LD  1,0(1) 	Adjust fp 
 73:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,73(7) 	Jump to init [backpatch] 
* BEGIN Init
 74:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 75:    LDA  1,0(0) 	set first frame at end of globals 
 76:     ST  1,0(1) 	store old fp (point to self) 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-37(7) 	Jump to main 
 79:   HALT  0,0,0 	DONE! 
* END Init
