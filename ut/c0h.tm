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
* BEGIN function dog
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 44:     LD  3,-2(1) 	load lhs variable x
 45:    LDA  3,1(3) 	increment value of x
 46:     ST  3,-2(1) 	Store variable x
 47:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 48:    LDA  1,-3(1) 	Load address of new frame 
 49:    LDA  3,1(7) 	Return address in ac 
 50:    LDA  7,-45(7) 	Call  output
 51:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 52:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 53:    LDA  1,-3(1) 	Load address of new frame 
 54:    LDA  3,1(7) 	Return address in ac 
 55:    LDA  7,-19(7) 	Call  outnl
 56:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 57:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 58:    LDC  3,3(6) 	Load constant 
 59:     ST  3,-5(1) 	Store parameter 
 60:     LD  3,-2(1) 	Load variable x
 61:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 62:    LDA  1,-3(1) 	Load address of new frame 
 63:    LDA  3,1(7) 	Return address in ac 
 64:    LDA  7,-59(7) 	Call  output
 65:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 66:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 67:    LDA  1,-3(1) 	Load address of new frame 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-33(7) 	Call  outnl
 70:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 71:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 72:     LD  3,-2(1) 	load lhs variable x
 73:    LDA  3,-1(3) 	decrement value of x
 74:     ST  3,-2(1) 	Store variable x
 75:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 76:    LDA  1,-3(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-73(7) 	Call  output
 79:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 80:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 81:    LDA  1,-3(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-47(7) 	Call  outnl
 84:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 85:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 86:    LDC  3,3(6) 	Load constant 
 87:     ST  3,-5(1) 	Store parameter 
 88:     LD  3,-2(1) 	Load variable x
 89:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 90:    LDA  1,-3(1) 	Load address of new frame 
 91:    LDA  3,1(7) 	Return address in ac 
 92:    LDA  7,-87(7) 	Call  output
 93:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 94:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 95:    LDA  1,-3(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-61(7) 	Call  outnl
 98:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 99:    LDC  2,0(6) 	Set return value to 0 
100:     LD  3,-1(1) 	Load return address 
101:     LD  1,0(1) 	Adjust fp 
102:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
103:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
104:    LDC  3,1023(6) 	Load constant 
105:     ST  3,-2(1) 	Store variable x
* 			Begin call to  dog
106:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load Param 1
107:     LD  3,-2(1) 	Load variable x
108:     ST  3,-12(1) 	Store parameter 
* 			Jump to  dog
109:    LDA  1,-10(1) 	Load address of new frame 
110:    LDA  3,1(7) 	Return address in ac 
111:    LDA  7,-70(7) 	Call  dog
112:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
* 			Begin call to  output
113:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load Param 1
114:    LDC  3,3(6) 	Load constant 
115:     ST  3,-12(1) 	Store parameter 
116:     LD  3,-2(1) 	Load variable x
117:     ST  3,-12(1) 	Store parameter 
* 			Jump to  output
118:    LDA  1,-10(1) 	Load address of new frame 
119:    LDA  3,1(7) 	Return address in ac 
120:    LDA  7,-115(7) 	Call  output
121:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
122:    LDC  2,0(6) 	Set return value to 0 
123:     LD  3,-1(1) 	Load return address 
124:     LD  1,0(1) 	Adjust fp 
125:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,125(7) 	Jump to init [backpatch] 
* BEGIN Init
126:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
127:    LDA  1,0(0) 	set first frame at end of globals 
128:     ST  1,0(1) 	store old fp (point to self) 
129:    LDA  3,0(7) 	return address in ac 
130:    LDA  7,-28(7) 	Jump to main 
131:   HALT  0,0,0 	DONE 
* END init
