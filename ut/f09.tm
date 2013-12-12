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
* BEGIN function cat
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
* EXPRESSION STMT
 43:    LDC  3,93(6) 	Load constant 
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
* END of function cat
* BEGIN function main
 52:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 53:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  cat
 54:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Jump to  cat
 55:    LDA  1,-4(1) 	Load address of new frame 
 56:    LDA  3,1(7) 	Return address in ac 
 57:    LDA  7,-16(7) 	Call  cat
 58:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
 59:     ST  3,-4(1) 	Store parameter 
 60:     ST  3,-2(1) 	Save left side 
* 			Begin call to  cat
 61:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to  cat
 62:    LDA  1,-5(1) 	Load address of new frame 
 63:    LDA  3,1(7) 	Return address in ac 
 64:    LDA  7,-23(7) 	Call  cat
 65:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
 66:     ST  3,-5(1) 	Store parameter 
 67:     LD  4,-2(1) 	Load left into ac1 
 68:    ADD  3,4,3 	Op + 
 69:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 70:    LDA  1,-2(1) 	Load address of new frame 
 71:    LDA  3,1(7) 	Return address in ac 
 72:    LDA  7,-67(7) 	Call  output
 73:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
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
 82:    LDA  7,-31(7) 	Jump to main 
 83:   HALT  0,0,0 	DONE 
* END init
