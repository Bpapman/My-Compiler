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
 42:    LDC  3,7(6) 	Load size of array x
 43:     ST  3,0(1) 	Load size of array x
 44:    LDC  3,9(6) 	Load size of array y
 45:     ST  3,-1(1) 	Load size of array y
* BEGIN function main
 46:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 47:    LDC  3,333(6) 	Load constant 
 48:     ST  3,0(0) 	Store variable x
 49:    LDC  3,444(6) 	Load constant 
 50:     ST  3,-1(0) 	Store variable y
 51:    LDC  3,7(6) 	Load constant 
 52:     LD  3,-1(0) 	Load variable y
 53:     LD  4,0(0) 	load lhs variable x
 54:    ADD  3,4,3 	Op += 
 55:     ST  3,0(0) 	Store variable x
* 			Begin call to  output
 56:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 57:    LDC  3,5(6) 	Load constant 
 58:     ST  3,-4(1) 	Store parameter 
 59:     LD  3,0(0) 	Load variable x
 60:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 61:    LDA  1,-2(1) 	Load address of new frame 
 62:    LDA  3,1(7) 	Return address in ac 
 63:    LDA  7,-58(7) 	Call  output
 64:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
 65:    LDC  3,5(6) 	Load constant 
 66:     LD  3,0(0) 	Load variable x
 67:     LD  4,-1(0) 	load lhs variable y
 68:    SUB  3,4,3 	Op += 
 69:     ST  3,-1(0) 	Store variable y
* 			Begin call to  output
 70:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 71:    LDC  3,7(6) 	Load constant 
 72:     ST  3,-4(1) 	Store parameter 
 73:     LD  3,-1(0) 	Load variable y
 74:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 75:    LDA  1,-2(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-72(7) 	Call  output
 78:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 79:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 80:    LDA  1,-2(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-46(7) 	Call  outnl
 83:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 84:    LDC  2,0(6) 	Set return value to 0 
 85:     LD  3,-1(1) 	Load return address 
 86:     LD  1,0(1) 	Adjust fp 
 87:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,87(7) 	Jump to init [backpatch] 
* BEGIN Init
 88:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 89:    LDA  1,0(0) 	set first frame at end of globals 
 90:     ST  1,0(1) 	store old fp (point to self) 
 91:    LDA  3,0(7) 	return address in ac 
 92:    LDA  7,-47(7) 	Jump to main 
 93:   HALT  0,0,0 	DONE 
* END init
