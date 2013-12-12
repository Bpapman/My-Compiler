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
 53:     ST  3,-2(1) 	Load size of array x
* BEGIN function sum
 54:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
* EXPRESSION STMT
 55:     LD  3,-2(1) 	Load variable init
 56:    JGT  3,1(7) 	Jump to then part 
* THEN
 58:    LDC  3,0(6) 	Load constant 
 59:     ST  3,0(0) 	Store variable runningSum
  0:    LDA  7,59(7) 	Jump around the THEN [backpatch] 
* ENDIF
 60:     LD  3,-3(0) 	Load variable x
 61:     LD  4,0(0) 	load lhs variable runningSum
 62:    ADD  3,4,3 	Op += 
 63:     ST  3,0(0) 	Store variable runningSum
* RETURN
 64:     LD  3,0(0) 	Load variable runningSum
 65:    LDA  2,0(3) 	Copy result to rt register 
 66:     LD  3,-1(1) 	Load return address 
 67:     LD  1,0(1) 	Adjust fp 
 68:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 69:    LDC  2,0(6) 	Set return value to 0 
 70:     LD  3,-1(1) 	Load return address 
 71:     LD  1,0(1) 	Adjust fp 
 72:    LDA  7,0(3) 	Return 
* END of function sum
* BEGIN function main
 73:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 74:    LDC  3,7000(6) 	Load constant 
 75:     ST  3,-1(0) 	Store variable runningSum
* 			Begin call to  output
 76:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 77:     LD  3,-1(0) 	Load variable runningSum
 78:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 79:    LDA  1,-2(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-76(7) 	Call  output
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  sum
 83:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 84:    LDC  3,1(6) 	Load constant 
 85:     ST  3,-4(1) 	Store parameter 
 86:    LDC  3,666(6) 	Load constant 
 87:     ST  3,-4(1) 	Store parameter 
* 			Load Param 1
 88:    LDC  3,666(6) 	Load constant 
 89:     ST  3,-5(1) 	Store parameter 
* 			Jump to  sum
 90:    LDA  1,-2(1) 	Load address of new frame 
 91:    LDA  3,1(7) 	Return address in ac 
 92:    LDA  7,-39(7) 	Call  sum
 93:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* 			Begin call to  sum
 94:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 95:    LDC  3,0(6) 	Load constant 
 96:     ST  3,-4(1) 	Store parameter 
 97:    LDC  3,3(6) 	Load constant 
 98:     ST  3,-4(1) 	Store parameter 
* 			Load Param 1
 99:    LDC  3,3(6) 	Load constant 
100:     ST  3,-5(1) 	Store parameter 
* 			Jump to  sum
101:    LDA  1,-2(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-50(7) 	Call  sum
104:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* 			Begin call to  output
105:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  sum
106:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
107:    LDC  3,0(6) 	Load constant 
108:     ST  3,-6(1) 	Store parameter 
109:    LDC  3,0(6) 	Load constant 
110:     ST  3,-6(1) 	Store parameter 
* 			Load Param 1
111:    LDC  3,0(6) 	Load constant 
112:     ST  3,-7(1) 	Store parameter 
* 			Jump to  sum
113:    LDA  1,-4(1) 	Load address of new frame 
114:    LDA  3,1(7) 	Return address in ac 
115:    LDA  7,-62(7) 	Call  sum
116:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
117:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
118:    LDA  1,-2(1) 	Load address of new frame 
119:    LDA  3,1(7) 	Return address in ac 
120:    LDA  7,-115(7) 	Call  output
121:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
122:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
123:     LD  3,-1(0) 	Load variable runningSum
124:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
125:    LDA  1,-2(1) 	Load address of new frame 
126:    LDA  3,1(7) 	Return address in ac 
127:    LDA  7,-122(7) 	Call  output
128:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
129:    LDC  2,0(6) 	Set return value to 0 
130:     LD  3,-1(1) 	Load return address 
131:     LD  1,0(1) 	Adjust fp 
132:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,132(7) 	Jump to init [backpatch] 
* BEGIN Init
133:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
134:    LDA  1,0(0) 	set first frame at end of globals 
135:     ST  1,0(1) 	store old fp (point to self) 
136:    LDA  3,0(7) 	return address in ac 
137:    LDA  7,-65(7) 	Jump to main 
138:   HALT  0,0,0 	DONE 
* END init
