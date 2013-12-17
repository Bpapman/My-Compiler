* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  d045.tm
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
* 			Begin call to  outputb
 43:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 44:    LDC  3,111(6) 	Load constant 
 45:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 46:    LDC  3,222(6) 	Load constant 
 47:     LD  4,-4(1) 	Load left into ac1 
 48:    SUB  4,4,3 	Op < 
 49:    LDC  3,1(6) 	True case 
 50:    JGT  4,1(7) 	Jump if true 
 51:    LDC  3,0(6) 	False case 
 52:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 53:    LDC  3,333(6) 	Load constant 
 54:     ST  3,-5(1) 	Save left side 
* EXPRESSION STMT
 55:    LDC  3,444(6) 	Load constant 
 56:     LD  4,-5(1) 	Load left into ac1 
 57:    SUB  4,4,3 	Op < 
 58:    LDC  3,1(6) 	True case 
 59:    JLT  4,1(7) 	Jump if true 
 60:    LDC  3,0(6) 	False case 
 61:     LD  4,-4(1) 	Load left into ac1 
 62:    JEQ  3,1(7) 	Op AND 
 63:    LDA  3,0(5) 	 
 64:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 65:    LDA  1,-2(1) 	Load address of new frame 
 66:    LDA  3,1(7) 	Return address in ac 
 67:    LDA  7,-50(7) 	CALL outputb
 68:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 69:    LDC  2,0(6) 	Set return value to 0 
 70:     LD  3,-1(1) 	Load return address 
 71:     LD  1,0(1) 	Adjust fp 
 72:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,72(7) 	Jump to init [backpatch] 
* BEGIN Init
 73:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 74:    LDA  1,0(0) 	set first frame at end of globals 
 75:     ST  1,0(1) 	store old fp (point to self) 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-36(7) 	Jump to main 
 78:   HALT  0,0,0 	DONE! 
* END Init
