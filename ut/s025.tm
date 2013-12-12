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
* BEGIN function toad
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* END compound statement
* Add standard closing in case there is no return statement
 43:    LDC  2,0(6) 	Set return value to 0 
 44:     LD  3,-1(1) 	Load return address 
 45:     LD  1,0(1) 	Adjust fp 
 46:    LDA  7,0(3) 	Return 
* END of function toad
* BEGIN function load
 47:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* END compound statement
* Add standard closing in case there is no return statement
 48:    LDC  2,0(6) 	Set return value to 0 
 49:     LD  3,-1(1) 	Load return address 
 50:     LD  1,0(1) 	Adjust fp 
 51:    LDA  7,0(3) 	Return 
* END of function load
 52:    LDC  3,100(6) 	Load size of array x
 53:     ST  3,-1(1) 	Load size of array x
* BEGIN function sum
 54:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 55:     LD  3,-2(0) 	Load variable x
 56:     LD  4,0(0) 	load lhs variable runningSum
 57:    ADD  3,4,3 	Op += 
 58:     ST  3,0(0) 	Store variable runningSum
* RETURN
 59:     LD  3,0(0) 	Load variable runningSum
 60:    LDA  2,0(3) 	Copy result to rt register 
 61:     LD  3,-1(1) 	Load return address 
 62:     LD  1,0(1) 	Adjust fp 
 63:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 64:    LDC  2,0(6) 	Set return value to 0 
 65:     LD  3,-1(1) 	Load return address 
 66:     LD  1,0(1) 	Adjust fp 
 67:    LDA  7,0(3) 	Return 
* END of function sum
* BEGIN function main
 68:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 69:    LDC  3,7000(6) 	Load constant 
 70:     ST  3,-2(0) 	Store variable runningSum
* 			Begin call to  output
 71:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 72:     LD  3,-2(0) 	Load variable runningSum
 73:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 74:    LDA  1,-2(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-71(7) 	Call  output
 77:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  sum
 78:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 79:    LDC  3,666(6) 	Load constant 
 80:     ST  3,-4(1) 	Store parameter 
* 			Jump to  sum
 81:    LDA  1,-2(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-30(7) 	Call  sum
 84:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* 			Begin call to  sum
 85:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 86:    LDC  3,3(6) 	Load constant 
 87:     ST  3,-4(1) 	Store parameter 
* 			Jump to  sum
 88:    LDA  1,-2(1) 	Load address of new frame 
 89:    LDA  3,1(7) 	Return address in ac 
 90:    LDA  7,-37(7) 	Call  sum
 91:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* 			Begin call to  output
 92:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  sum
 93:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 94:    LDC  3,0(6) 	Load constant 
 95:     ST  3,-6(1) 	Store parameter 
* 			Jump to  sum
 96:    LDA  1,-4(1) 	Load address of new frame 
 97:    LDA  3,1(7) 	Return address in ac 
 98:    LDA  7,-45(7) 	Call  sum
 99:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
100:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
101:    LDA  1,-2(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-98(7) 	Call  output
104:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
105:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
106:     LD  3,-2(0) 	Load variable runningSum
107:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
108:    LDA  1,-2(1) 	Load address of new frame 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-105(7) 	Call  output
111:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
112:    LDC  2,0(6) 	Set return value to 0 
113:     LD  3,-1(1) 	Load return address 
114:     LD  1,0(1) 	Adjust fp 
115:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,115(7) 	Jump to init [backpatch] 
* BEGIN Init
116:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
117:    LDA  1,0(0) 	set first frame at end of globals 
118:     ST  1,0(1) 	store old fp (point to self) 
119:    LDA  3,0(7) 	return address in ac 
120:    LDA  7,-53(7) 	Jump to main 
121:   HALT  0,0,0 	DONE 
* END init
