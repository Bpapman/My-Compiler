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
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 44:     LD  3,-2(0) 	Load variable z
 45:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 46:    LDA  1,-3(1) 	Load address of new frame 
 47:    LDA  3,1(7) 	Return address in ac 
 48:    LDA  7,-43(7) 	Call  output
 49:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
 50:    LDC  3,122(6) 	Load constant 
 51:     ST  3,-2(0) 	Store variable z
* 			Begin call to  output
 52:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 53:     LD  3,-2(0) 	Load variable z
 54:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 55:    LDA  1,-3(1) 	Load address of new frame 
 56:    LDA  3,1(7) 	Return address in ac 
 57:    LDA  7,-52(7) 	Call  output
 58:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
 59:    LDC  2,0(6) 	Set return value to 0 
 60:     LD  3,-1(1) 	Load return address 
 61:     LD  1,0(1) 	Adjust fp 
 62:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 63:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 64:    LDC  3,637(6) 	Load constant 
 65:     ST  3,0(0) 	Store variable z
* 			Begin call to  cat
 66:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 67:     LD  3,0(0) 	Load variable z
 68:     ST  3,-4(1) 	Store parameter 
* 			Jump to  cat
 69:    LDA  1,-2(1) 	Load address of new frame 
 70:    LDA  3,1(7) 	Return address in ac 
 71:    LDA  7,-30(7) 	Call  cat
 72:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* 			Begin call to  output
 73:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 74:     LD  3,0(0) 	Load variable z
 75:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 76:    LDA  1,-2(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-73(7) 	Call  output
 79:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
 80:    LDC  2,0(6) 	Set return value to 0 
 81:     LD  3,-1(1) 	Load return address 
 82:     LD  1,0(1) 	Adjust fp 
 83:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,83(7) 	Jump to init [backpatch] 
* BEGIN Init
 84:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 85:    LDA  1,0(0) 	set first frame at end of globals 
 86:     ST  1,0(1) 	store old fp (point to self) 
 87:    LDA  3,0(7) 	return address in ac 
 88:    LDA  7,-26(7) 	Jump to main 
 89:   HALT  0,0,0 	DONE 
* END init
