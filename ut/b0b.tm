* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  b0b.tm
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
* 			Begin call to  outputb
 43:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 44:    LDC  3,0(6) 	Load constant 
 45:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 46:    LDC  3,0(6) 	Load constant 
 47:     LD  4,-4(1) 	Load left into ac1 
 48:    JEQ  3,1(7) 	Op OR 
 49:    LDA  3,0(5) 	 
 50:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 51:    LDA  1,-2(1) 	Load address of new frame 
 52:    LDA  3,1(7) 	Return address in ac 
 53:    LDA  7,-36(7) 	CALL outputb
 54:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 55:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 56:    LDC  3,0(6) 	Load constant 
 57:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 58:    LDC  3,1(6) 	Load constant 
 59:     LD  4,-4(1) 	Load left into ac1 
 60:    JEQ  3,1(7) 	Op OR 
 61:    LDA  3,0(5) 	 
 62:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 63:    LDA  1,-2(1) 	Load address of new frame 
 64:    LDA  3,1(7) 	Return address in ac 
 65:    LDA  7,-48(7) 	CALL outputb
 66:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 67:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 68:    LDC  3,1(6) 	Load constant 
 69:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 70:    LDC  3,0(6) 	Load constant 
 71:     LD  4,-4(1) 	Load left into ac1 
 72:    JEQ  3,1(7) 	Op OR 
 73:    LDA  3,0(5) 	 
 74:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 75:    LDA  1,-2(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-60(7) 	CALL outputb
 78:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 79:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 80:    LDC  3,1(6) 	Load constant 
 81:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 82:    LDC  3,1(6) 	Load constant 
 83:     LD  4,-4(1) 	Load left into ac1 
 84:    JEQ  3,1(7) 	Op OR 
 85:    LDA  3,0(5) 	 
 86:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 87:    LDA  1,-2(1) 	Load address of new frame 
 88:    LDA  3,1(7) 	Return address in ac 
 89:    LDA  7,-72(7) 	CALL outputb
 90:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 91:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 92:    LDC  3,0(6) 	Load constant 
 93:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 94:    LDC  3,0(6) 	Load constant 
 95:     LD  4,-4(1) 	Load left into ac1 
 96:    JEQ  3,1(7) 	Op AND 
 97:    LDA  3,0(5) 	 
 98:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 99:    LDA  1,-2(1) 	Load address of new frame 
100:    LDA  3,1(7) 	Return address in ac 
101:    LDA  7,-84(7) 	CALL outputb
102:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
103:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
104:    LDC  3,0(6) 	Load constant 
105:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
106:    LDC  3,1(6) 	Load constant 
107:     LD  4,-4(1) 	Load left into ac1 
108:    JEQ  3,1(7) 	Op AND 
109:    LDA  3,0(5) 	 
110:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
111:    LDA  1,-2(1) 	Load address of new frame 
112:    LDA  3,1(7) 	Return address in ac 
113:    LDA  7,-96(7) 	CALL outputb
114:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
115:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
116:    LDC  3,1(6) 	Load constant 
117:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
118:    LDC  3,0(6) 	Load constant 
119:     LD  4,-4(1) 	Load left into ac1 
120:    JEQ  3,1(7) 	Op AND 
121:    LDA  3,0(5) 	 
122:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
123:    LDA  1,-2(1) 	Load address of new frame 
124:    LDA  3,1(7) 	Return address in ac 
125:    LDA  7,-108(7) 	CALL outputb
126:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
127:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
128:    LDC  3,1(6) 	Load constant 
129:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
130:    LDC  3,1(6) 	Load constant 
131:     LD  4,-4(1) 	Load left into ac1 
132:    JEQ  3,1(7) 	Op AND 
133:    LDA  3,0(5) 	 
134:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
135:    LDA  1,-2(1) 	Load address of new frame 
136:    LDA  3,1(7) 	Return address in ac 
137:    LDA  7,-120(7) 	CALL outputb
138:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
139:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
140:    LDC  3,0(6) 	Load constant 
141:    LDA  3,1(5) 	Not load address 
142:    SUB  3,4,3 	Op Not 
143:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
144:    LDA  1,-2(1) 	Load address of new frame 
145:    LDA  3,1(7) 	Return address in ac 
146:    LDA  7,-129(7) 	CALL outputb
147:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
148:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
149:    LDC  3,1(6) 	Load constant 
150:    LDA  3,1(5) 	Not load address 
151:    SUB  3,4,3 	Op Not 
152:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
153:    LDA  1,-2(1) 	Load address of new frame 
154:    LDA  3,1(7) 	Return address in ac 
155:    LDA  7,-138(7) 	CALL outputb
156:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
157:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to outnl
158:    LDA  1,-2(1) 	Load address of new frame 
159:    LDA  3,1(7) 	Return address in ac 
160:    LDA  7,-124(7) 	CALL outnl
161:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
162:    LDC  2,0(6) 	Set return value to 0 
163:     LD  3,-1(1) 	Load return address 
164:     LD  1,0(1) 	Adjust fp 
165:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,165(7) 	Jump to init [backpatch] 
* BEGIN Init
166:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
167:    LDA  1,0(0) 	set first frame at end of globals 
168:     ST  1,0(1) 	store old fp (point to self) 
169:    LDA  3,1(7) 	Return address in ac 
170:    LDA  7,-129(7) 	Jump to main 
171:   HALT  0,0,0 	DONE! 
* END Init
