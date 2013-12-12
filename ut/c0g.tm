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
* BEGIN function main
 44:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 45:    LDC  3,1023(6) 	Load constant 
 46:     ST  3,0(0) 	Store variable x
* 			Begin call to  output
 47:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 48:     LD  3,0(0) 	load lhs variable x
 49:    LDA  3,1(3) 	increment value of x
 50:     ST  3,0(0) 	Store variable x
 51:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 52:    LDA  1,-2(1) 	Load address of new frame 
 53:    LDA  3,1(7) 	Return address in ac 
 54:    LDA  7,-49(7) 	Call  output
 55:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 56:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 57:    LDA  1,-2(1) 	Load address of new frame 
 58:    LDA  3,1(7) 	Return address in ac 
 59:    LDA  7,-23(7) 	Call  outnl
 60:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 61:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 62:    LDC  3,3(6) 	Load constant 
 63:     ST  3,-4(1) 	Store parameter 
 64:     LD  3,0(0) 	Load variable x
 65:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 66:    LDA  1,-2(1) 	Load address of new frame 
 67:    LDA  3,1(7) 	Return address in ac 
 68:    LDA  7,-63(7) 	Call  output
 69:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 70:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 71:    LDA  1,-2(1) 	Load address of new frame 
 72:    LDA  3,1(7) 	Return address in ac 
 73:    LDA  7,-37(7) 	Call  outnl
 74:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 75:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 76:     LD  3,0(0) 	load lhs variable x
 77:    LDA  3,-1(3) 	decrement value of x
 78:     ST  3,0(0) 	Store variable x
 79:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 80:    LDA  1,-2(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-77(7) 	Call  output
 83:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 84:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 85:    LDA  1,-2(1) 	Load address of new frame 
 86:    LDA  3,1(7) 	Return address in ac 
 87:    LDA  7,-51(7) 	Call  outnl
 88:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 89:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 90:    LDC  3,3(6) 	Load constant 
 91:     ST  3,-4(1) 	Store parameter 
 92:     LD  3,0(0) 	Load variable x
 93:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 94:    LDA  1,-2(1) 	Load address of new frame 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-91(7) 	Call  output
 97:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 98:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 99:    LDA  1,-2(1) 	Load address of new frame 
100:    LDA  3,1(7) 	Return address in ac 
101:    LDA  7,-65(7) 	Call  outnl
102:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
103:    LDC  2,0(6) 	Set return value to 0 
104:     LD  3,-1(1) 	Load return address 
105:     LD  1,0(1) 	Adjust fp 
106:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,106(7) 	Jump to init [backpatch] 
* BEGIN Init
107:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
108:    LDA  1,0(0) 	set first frame at end of globals 
109:     ST  1,0(1) 	store old fp (point to self) 
110:    LDA  3,0(7) 	return address in ac 
111:    LDA  7,-68(7) 	Jump to main 
112:   HALT  0,0,0 	DONE 
* END init
