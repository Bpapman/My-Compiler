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
* IF
* EXPRESSION STMT
 43:     LD  3,-2(1) 	Load variable d
 44:     ST  3,-3(1) 	Save left side 
 45:    LDC  3,0(6) 	Load constant 
 46:     LD  4,-3(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op == 
 48:    LDC  3,1(6) 	True case 
 49:    JEQ  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 53:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 54:     LD  3,0(0) 	Load variable s
 55:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 56:    LDA  1,-3(1) 	Load address of new frame 
 57:    LDA  3,1(7) 	Return address in ac 
 58:    LDA  7,-53(7) 	Call  output
 59:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,59(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 60:    LDC  2,0(6) 	Set return value to 0 
 61:     LD  3,-1(1) 	Load return address 
 62:     LD  1,0(1) 	Adjust fp 
 63:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function cat
 64:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
* EXPRESSION STMT
 65:     LD  3,-2(0) 	Load variable c
 66:     ST  3,-3(1) 	Save left side 
 67:    LDC  3,0(6) 	Load constant 
 68:     LD  4,-3(1) 	Load left into ac1 
 69:    SUB  4,4,3 	Op == 
 70:    LDC  3,1(6) 	True case 
 71:    JEQ  4,1(7) 	Jump if true 
 72:    LDC  3,0(6) 	False case 
 73:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 75:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 76:     LD  3,0(0) 	Load variable s
 77:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 78:    LDA  1,-3(1) 	Load address of new frame 
 79:    LDA  3,1(7) 	Return address in ac 
 80:    LDA  7,-75(7) 	Call  output
 81:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,81(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 82:    LDC  2,0(6) 	Set return value to 0 
 83:     LD  3,-1(1) 	Load return address 
 84:     LD  1,0(1) 	Adjust fp 
 85:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 86:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 87:    LDC  3,333(6) 	Load constant 
 88:     ST  3,0(0) 	Store variable s
* 			Begin call to  dog
 89:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 90:    LDC  3,111(6) 	Load constant 
 91:     ST  3,-4(1) 	Store parameter 
* 			Jump to  dog
 92:    LDA  1,-2(1) 	Load address of new frame 
 93:    LDA  3,1(7) 	Return address in ac 
 94:    LDA  7,-53(7) 	Call  dog
 95:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
* 			Begin call to  cat
 96:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 97:    LDC  3,222(6) 	Load constant 
 98:     ST  3,-4(1) 	Store parameter 
* 			Jump to  cat
 99:    LDA  1,-2(1) 	Load address of new frame 
100:    LDA  3,1(7) 	Return address in ac 
101:    LDA  7,-38(7) 	Call  cat
102:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* 			Begin call to  dog
103:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
104:    LDC  3,0(6) 	Load constant 
105:     ST  3,-4(1) 	Store parameter 
* 			Jump to  dog
106:    LDA  1,-2(1) 	Load address of new frame 
107:    LDA  3,1(7) 	Return address in ac 
108:    LDA  7,-67(7) 	Call  dog
109:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
* 			Begin call to  cat
110:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
111:    LDC  3,0(6) 	Load constant 
112:     ST  3,-4(1) 	Store parameter 
* 			Jump to  cat
113:    LDA  1,-2(1) 	Load address of new frame 
114:    LDA  3,1(7) 	Return address in ac 
115:    LDA  7,-52(7) 	Call  cat
116:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* 			Begin call to  output
117:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
118:     LD  3,0(0) 	Load variable s
119:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
120:    LDA  1,-2(1) 	Load address of new frame 
121:    LDA  3,1(7) 	Return address in ac 
122:    LDA  7,-117(7) 	Call  output
123:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
124:    LDC  2,0(6) 	Set return value to 0 
125:     LD  3,-1(1) 	Load return address 
126:     LD  1,0(1) 	Adjust fp 
127:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,127(7) 	Jump to init [backpatch] 
* BEGIN Init
128:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
129:    LDA  1,0(0) 	set first frame at end of globals 
130:     ST  1,0(1) 	store old fp (point to self) 
131:    LDA  3,0(7) 	return address in ac 
132:    LDA  7,-47(7) 	Jump to main 
133:   HALT  0,0,0 	DONE 
* END init
