* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  logic.c-
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
*                       Begin call to  outputb
 43:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 44:    LDC  3,0(6) 	Load constant 
 45:     ST  3,-4(1) 	Save left side 
 46:    LDC  3,0(6) 	Load constant 
 47:     LD  4,-4(1) 	Load left into ac1 
 48:    JEQ  3,1(7) 	Op AND 
 49:    LDA  3,0(4) 	 
 50:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
 51:    LDA  1,-2(1) 	Load address of new frame 
 52:    LDA  3,1(7) 	Return address in ac 
 53:    LDA  7,-36(7) 	CALL outputb
 54:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
 55:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 56:    LDC  3,0(6) 	Load constant 
 57:     ST  3,-4(1) 	Save left side 
 58:    LDC  3,1(6) 	Load constant 
 59:     LD  4,-4(1) 	Load left into ac1 
 60:    JEQ  3,1(7) 	Op AND 
 61:    LDA  3,0(4) 	 
 62:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
 63:    LDA  1,-2(1) 	Load address of new frame 
 64:    LDA  3,1(7) 	Return address in ac 
 65:    LDA  7,-48(7) 	CALL outputb
 66:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
 67:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 68:    LDC  3,1(6) 	Load constant 
 69:     ST  3,-4(1) 	Save left side 
 70:    LDC  3,0(6) 	Load constant 
 71:     LD  4,-4(1) 	Load left into ac1 
 72:    JEQ  3,1(7) 	Op AND 
 73:    LDA  3,0(4) 	 
 74:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
 75:    LDA  1,-2(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-60(7) 	CALL outputb
 78:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
 79:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 80:    LDC  3,1(6) 	Load constant 
 81:     ST  3,-4(1) 	Save left side 
 82:    LDC  3,1(6) 	Load constant 
 83:     LD  4,-4(1) 	Load left into ac1 
 84:    JEQ  3,1(7) 	Op AND 
 85:    LDA  3,0(4) 	 
 86:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
 87:    LDA  1,-2(1) 	Load address of new frame 
 88:    LDA  3,1(7) 	Return address in ac 
 89:    LDA  7,-72(7) 	CALL outputb
 90:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
 91:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 92:    LDA  1,-2(1) 	Load address of new frame 
 93:    LDA  3,1(7) 	Return address in ac 
 94:    LDA  7,-58(7) 	CALL outnl
 95:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
 96:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 97:    LDC  3,0(6) 	Load constant 
 98:     ST  3,-4(1) 	Save left side 
 99:    LDC  3,0(6) 	Load constant 
100:     LD  4,-4(1) 	Load left into ac1 
101:    JGT  3,1(7) 	Op OR 
102:    LDA  3,0(4) 	 
103:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
104:    LDA  1,-2(1) 	Load address of new frame 
105:    LDA  3,1(7) 	Return address in ac 
106:    LDA  7,-89(7) 	CALL outputb
107:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
108:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
109:    LDC  3,0(6) 	Load constant 
110:     ST  3,-4(1) 	Save left side 
111:    LDC  3,1(6) 	Load constant 
112:     LD  4,-4(1) 	Load left into ac1 
113:    JGT  3,1(7) 	Op OR 
114:    LDA  3,0(4) 	 
115:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
116:    LDA  1,-2(1) 	Load address of new frame 
117:    LDA  3,1(7) 	Return address in ac 
118:    LDA  7,-101(7) 	CALL outputb
119:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
120:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
121:    LDC  3,1(6) 	Load constant 
122:     ST  3,-4(1) 	Save left side 
123:    LDC  3,0(6) 	Load constant 
124:     LD  4,-4(1) 	Load left into ac1 
125:    JGT  3,1(7) 	Op OR 
126:    LDA  3,0(4) 	 
127:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
128:    LDA  1,-2(1) 	Load address of new frame 
129:    LDA  3,1(7) 	Return address in ac 
130:    LDA  7,-113(7) 	CALL outputb
131:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
132:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
133:    LDC  3,1(6) 	Load constant 
134:     ST  3,-4(1) 	Save left side 
135:    LDC  3,1(6) 	Load constant 
136:     LD  4,-4(1) 	Load left into ac1 
137:    JGT  3,1(7) 	Op OR 
138:    LDA  3,0(4) 	 
139:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
140:    LDA  1,-2(1) 	Load address of new frame 
141:    LDA  3,1(7) 	Return address in ac 
142:    LDA  7,-125(7) 	CALL outputb
143:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
144:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
145:    LDA  1,-2(1) 	Load address of new frame 
146:    LDA  3,1(7) 	Return address in ac 
147:    LDA  7,-111(7) 	CALL outnl
148:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
149:    LDC  2,0(6) 	Set return value to 0 
150:     LD  3,-1(1) 	Load return address 
151:     LD  1,0(1) 	Adjust fp 
152:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,152(7) 	Jump to init [backpatch] 
* BEGIN Init
153:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
154:    LDA  1,0(0) 	set first frame at end of globals 
155:     ST  1,0(1) 	store old fp (point to self) 
156:    LDA  3,1(7) 	Return address in ac 
157:    LDA  7,-116(7) 	Jump to main 
158:   HALT  0,0,0 	DONE! 
* END Init
