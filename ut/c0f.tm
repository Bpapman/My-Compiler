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
 43:    LDC  3,1023(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable x
* 			Begin call to  output
 45:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load Param 1
 46:     LD  3,-2(1) 	load lhs variable x
 47:    LDA  3,1(3) 	increment value of x
 48:     ST  3,-2(1) 	Store variable x
 49:     ST  3,-12(1) 	Store parameter 
* 			Jump to  output
 50:    LDA  1,-10(1) 	Load address of new frame 
 51:    LDA  3,1(7) 	Return address in ac 
 52:    LDA  7,-47(7) 	Call  output
 53:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 54:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 55:    LDA  1,-10(1) 	Load address of new frame 
 56:    LDA  3,1(7) 	Return address in ac 
 57:    LDA  7,-21(7) 	Call  outnl
 58:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 59:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load Param 1
 60:    LDC  3,3(6) 	Load constant 
 61:     ST  3,-12(1) 	Store parameter 
 62:     LD  3,-2(1) 	Load variable x
 63:     ST  3,-12(1) 	Store parameter 
* 			Jump to  output
 64:    LDA  1,-10(1) 	Load address of new frame 
 65:    LDA  3,1(7) 	Return address in ac 
 66:    LDA  7,-61(7) 	Call  output
 67:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 68:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 69:    LDA  1,-10(1) 	Load address of new frame 
 70:    LDA  3,1(7) 	Return address in ac 
 71:    LDA  7,-35(7) 	Call  outnl
 72:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 73:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load Param 1
 74:     LD  3,-2(1) 	load lhs variable x
 75:    LDA  3,-1(3) 	decrement value of x
 76:     ST  3,-2(1) 	Store variable x
 77:     ST  3,-12(1) 	Store parameter 
* 			Jump to  output
 78:    LDA  1,-10(1) 	Load address of new frame 
 79:    LDA  3,1(7) 	Return address in ac 
 80:    LDA  7,-75(7) 	Call  output
 81:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 82:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 83:    LDA  1,-10(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-49(7) 	Call  outnl
 86:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 87:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load Param 1
 88:    LDC  3,3(6) 	Load constant 
 89:     ST  3,-12(1) 	Store parameter 
 90:     LD  3,-2(1) 	Load variable x
 91:     ST  3,-12(1) 	Store parameter 
* 			Jump to  output
 92:    LDA  1,-10(1) 	Load address of new frame 
 93:    LDA  3,1(7) 	Return address in ac 
 94:    LDA  7,-89(7) 	Call  output
 95:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 96:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 97:    LDA  1,-10(1) 	Load address of new frame 
 98:    LDA  3,1(7) 	Return address in ac 
 99:    LDA  7,-63(7) 	Call  outnl
100:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
101:    LDC  2,0(6) 	Set return value to 0 
102:     LD  3,-1(1) 	Load return address 
103:     LD  1,0(1) 	Adjust fp 
104:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,104(7) 	Jump to init [backpatch] 
* BEGIN Init
105:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
106:    LDA  1,0(0) 	set first frame at end of globals 
107:     ST  1,0(1) 	store old fp (point to self) 
108:    LDA  3,0(7) 	return address in ac 
109:    LDA  7,-68(7) 	Jump to main 
110:   HALT  0,0,0 	DONE 
* END init
