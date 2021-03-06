* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  f03.tm
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
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 44:    LDC  3,42(6) 	Load constant 
 45:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 46:    LDA  1,-2(1) 	Load address of new frame 
 47:    LDA  3,1(7) 	Return address in ac 
 48:    LDA  7,-43(7) 	CALL output
 49:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* RETURN
 50:     LD  3,-1(1) 	Load return address 
 51:     LD  1,0(1) 	Adjust fp 
 52:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 53:    LDC  2,0(6) 	Set return value to 0 
 54:     LD  3,-1(1) 	Load return address 
 55:     LD  1,0(1) 	Adjust fp 
 56:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 57:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  cat
 58:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to cat
 59:    LDA  1,-2(1) 	Load address of new frame 
 60:    LDA  3,1(7) 	Return address in ac 
 61:    LDA  7,-20(7) 	CALL cat
 62:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 63:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 64:    LDC  3,43(6) 	Load constant 
 65:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 66:    LDA  1,-2(1) 	Load address of new frame 
 67:    LDA  3,1(7) 	Return address in ac 
 68:    LDA  7,-63(7) 	CALL output
 69:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
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
 78:    LDA  7,-22(7) 	Jump to main 
 79:   HALT  0,0,0 	DONE! 
* END Init
