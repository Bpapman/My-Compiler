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
 43:    LDC  3,162686240(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable x
 45:    LDC  3,162686728(6) 	Load constant 
 46:     ST  3,-3(1) 	Store variable y
* 			Begin call to  outputc
 47:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 48:     LD  3,-2(1) 	Load variable x
 49:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputc
 50:    LDA  1,-5(1) 	Load address of new frame 
 51:    LDA  3,1(7) 	Return address in ac 
 52:    LDA  7,-23(7) 	Call  outputc
 53:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputc
* 			Begin call to  outputc
 54:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 55:     LD  3,-3(1) 	Load variable y
 56:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputc
 57:    LDA  1,-5(1) 	Load address of new frame 
 58:    LDA  3,1(7) 	Return address in ac 
 59:    LDA  7,-30(7) 	Call  outputc
 60:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputc
* 			Begin call to  outputc
 61:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 62:     LD  3,-3(1) 	Load variable y
 63:     ST  3,-7(1) 	Store parameter 
 64:     ST  3,-2(1) 	Store variable x
 65:     ST  3,-7(1) 	Store parameter 
 66:     ST  3,-4(1) 	Store variable z
 67:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputc
 68:    LDA  1,-5(1) 	Load address of new frame 
 69:    LDA  3,1(7) 	Return address in ac 
 70:    LDA  7,-41(7) 	Call  outputc
 71:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputc
* 			Begin call to  outputc
 72:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 73:     LD  3,-2(1) 	Load variable x
 74:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputc
 75:    LDA  1,-5(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-48(7) 	Call  outputc
 78:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputc
* 			Begin call to  outputc
 79:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 80:     LD  3,-3(1) 	Load variable y
 81:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputc
 82:    LDA  1,-5(1) 	Load address of new frame 
 83:    LDA  3,1(7) 	Return address in ac 
 84:    LDA  7,-55(7) 	Call  outputc
 85:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputc
* 			Begin call to  outputc
 86:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 87:     LD  3,-4(1) 	Load variable z
 88:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputc
 89:    LDA  1,-5(1) 	Load address of new frame 
 90:    LDA  3,1(7) 	Return address in ac 
 91:    LDA  7,-62(7) 	Call  outputc
 92:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputc
* 			Begin call to  outnl
 93:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 94:    LDA  1,-5(1) 	Load address of new frame 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-60(7) 	Call  outnl
 97:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 98:    LDC  2,0(6) 	Set return value to 0 
 99:     LD  3,-1(1) 	Load return address 
100:     LD  1,0(1) 	Adjust fp 
101:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,101(7) 	Jump to init [backpatch] 
* BEGIN Init
102:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
103:    LDA  1,0(0) 	set first frame at end of globals 
104:     ST  1,0(1) 	store old fp (point to self) 
105:    LDA  3,0(7) 	return address in ac 
106:    LDA  7,-65(7) 	Jump to main 
107:   HALT  0,0,0 	DONE 
* END init
