* C- Compiler version C-F10
* Built: Dec 6, 2013
* Author: Brett Papineau
* File compiled: temp.c-
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
* 			Load Param 1
 44:    LDC  3,111(6) 	Load constant 
 45:     ST  3,-4(1) 	Store parameter 
 46:     ST  3,-2(1) 	Save left side 
 47:    LDC  3,222(6) 	Load constant 
 48:     ST  3,-5(1) 	Store parameter 
 49:     LD  4,-2(1) 	Load left into ac1 
 50:    SUB  4,4,3 	Op < 
 51:    LDC  3,1(6) 	True case 
 52:    JGT  4,1(7) 	Jump if true 
 53:    LDC  3,0(6) 	False case 
 54:     ST  3,-4(1) 	Store parameter 
 55:     ST  3,-2(1) 	Save left side 
 56:    LDC  3,333(6) 	Load constant 
 57:     ST  3,-5(1) 	Store parameter 
 58:     ST  3,-3(1) 	Save left side 
 59:    LDC  3,444(6) 	Load constant 
 60:     ST  3,-6(1) 	Store parameter 
 61:     LD  4,-3(1) 	Load left into ac1 
 62:    SUB  4,4,3 	Op < 
 63:    LDC  3,1(6) 	True case 
 64:    JLT  4,1(7) 	Jump if true 
 65:    LDC  3,0(6) 	False case 
 66:     ST  3,-5(1) 	Store parameter 
 67:     LD  4,-2(1) 	Load left into ac1 
 68:    JEQ  3,1(7) 	Op AND 
 69:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
 70:    LDA  1,-2(1) 	Load address of new frame 
 71:    LDA  3,1(7) 	Return address in ac 
 72:    LDA  7,-55(7) 	Call  outputb
 73:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* END compound statement
* Add standard closing in case there is no return statement
 74:    LDC  2,0(6) 	Set return value to 0 
 75:     LD  3,-1(1) 	Load return address 
 76:     LD  1,0(1) 	Adjust fp 
 77:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,77(7) 	Jump to init [backpatch] 
* BEGIN Init
 78:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 79:    LDA  1,0(0) 	set first frame at end of globals 
 80:     ST  1,0(1) 	store old fp (point to self) 
 81:    LDA  3,0(7) 	return address in ac 
 82:    LDA  7,-41(7) 	Jump to main 
 83:   HALT  0,0,0 	DONE 
* END init
