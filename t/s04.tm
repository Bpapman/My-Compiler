* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  s04.c-
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
* EXPRESSION STMT
*                       Begin call to  output
 53:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
 54:     LD  3,-1(0) 	Load variable s
 55:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
 56:    LDA  1,-3(1) 	Load address of new frame 
 57:    LDA  3,1(7) 	Return address in ac 
 58:    LDA  7,-53(7) 	CALL output
 59:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* ELSE
 52:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
 61:     LD  3,-2(1) 	Load variable d
 62:     ST  3,-1(0) 	Store variable s
 60:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 63:    LDC  2,0(6) 	Set return value to 0 
 64:     LD  3,-1(1) 	Load return address 
 65:     LD  1,0(1) 	Adjust fp 
 66:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function cat
 67:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
 68:     LD  3,-2(1) 	Load variable c
 69:     ST  3,-3(1) 	Save left side 
 70:    LDC  3,0(6) 	Load constant 
 71:     LD  4,-3(1) 	Load left into ac1 
 72:    SUB  4,4,3 	Op == 
 73:    LDC  3,1(6) 	True case 
 74:    JEQ  4,1(7) 	Jump if true 
 75:    LDC  3,0(6) 	False case 
 76:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  output
 78:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
 79:     LD  3,-2(0) 	Load variable s
 80:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
 81:    LDA  1,-3(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-78(7) 	CALL output
 84:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* ELSE
 77:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
 86:     LD  3,-2(1) 	Load variable c
 87:     ST  3,-2(0) 	Store variable s
 85:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 88:    LDC  2,0(6) 	Set return value to 0 
 89:     LD  3,-1(1) 	Load return address 
 90:     LD  1,0(1) 	Adjust fp 
 91:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 92:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 93:    LDC  3,333(6) 	Load constant 
 94:     ST  3,0(0) 	Store variable s
* EXPRESSION STMT
*                       Begin call to  dog
 95:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 96:    LDC  3,111(6) 	Load constant 
 97:     ST  3,-4(1) 	Store parameter 
*                       Jump to dog
 98:    LDA  1,-2(1) 	Load address of new frame 
 99:    LDA  3,1(7) 	Return address in ac 
100:    LDA  7,-59(7) 	CALL dog
101:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* EXPRESSION STMT
*                       Begin call to  cat
102:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
103:    LDC  3,222(6) 	Load constant 
104:     ST  3,-4(1) 	Store parameter 
*                       Jump to cat
105:    LDA  1,-2(1) 	Load address of new frame 
106:    LDA  3,1(7) 	Return address in ac 
107:    LDA  7,-41(7) 	CALL cat
108:    LDA  3,0(2) 	Save the result in ac 
*                       End call to cat
* EXPRESSION STMT
*                       Begin call to  dog
109:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
110:    LDC  3,0(6) 	Load constant 
111:     ST  3,-4(1) 	Store parameter 
*                       Jump to dog
112:    LDA  1,-2(1) 	Load address of new frame 
113:    LDA  3,1(7) 	Return address in ac 
114:    LDA  7,-73(7) 	CALL dog
115:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* EXPRESSION STMT
*                       Begin call to  cat
116:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
117:    LDC  3,0(6) 	Load constant 
118:     ST  3,-4(1) 	Store parameter 
*                       Jump to cat
119:    LDA  1,-2(1) 	Load address of new frame 
120:    LDA  3,1(7) 	Return address in ac 
121:    LDA  7,-55(7) 	CALL cat
122:    LDA  3,0(2) 	Save the result in ac 
*                       End call to cat
* EXPRESSION STMT
*                       Begin call to  output
123:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
124:     LD  3,0(0) 	Load variable s
125:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
126:    LDA  1,-2(1) 	Load address of new frame 
127:    LDA  3,1(7) 	Return address in ac 
128:    LDA  7,-123(7) 	CALL output
129:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* END compound statement
* Add standard closing in case there is no return statement
130:    LDC  2,0(6) 	Set return value to 0 
131:     LD  3,-1(1) 	Load return address 
132:     LD  1,0(1) 	Adjust fp 
133:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,133(7) 	Jump to init [backpatch] 
* BEGIN Init
134:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
135:    LDA  1,-3(0) 	set first frame at end of globals 
136:     ST  1,0(1) 	store old fp (point to self) 
137:    LDA  3,1(7) 	Return address in ac 
138:    LDA  7,-47(7) 	Jump to main 
139:   HALT  0,0,0 	DONE! 
* END Init
