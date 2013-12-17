* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  d015.tm
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
 44:    LDC  3,88(6) 	Load constant 
 45:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 46:    LDC  3,89(6) 	Load constant 
 47:     LD  4,-4(1) 	Load left into ac1 
 48:    SUB  4,4,3 	Op < 
 49:    LDC  3,1(6) 	True case 
 50:    JLT  4,1(7) 	Jump if true 
 51:    LDC  3,0(6) 	False case 
 52:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 53:    LDA  1,-2(1) 	Load address of new frame 
 54:    LDA  3,1(7) 	Return address in ac 
 55:    LDA  7,-38(7) 	CALL outputb
 56:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 57:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 58:    LDC  3,88(6) 	Load constant 
 59:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 60:    LDC  3,89(6) 	Load constant 
 61:     LD  4,-4(1) 	Load left into ac1 
 62:    SUB  4,4,3 	Op < 
 63:    LDC  3,1(6) 	True case 
 64:    JGT  4,1(7) 	Jump if true 
 65:    LDC  3,0(6) 	False case 
 66:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 67:    LDA  1,-2(1) 	Load address of new frame 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-52(7) 	CALL outputb
 70:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 71:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 72:    LDC  3,88(6) 	Load constant 
 73:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 74:    LDC  3,89(6) 	Load constant 
 75:     LD  4,-4(1) 	Load left into ac1 
 76:    SUB  4,4,3 	Op == 
 77:    LDC  3,1(6) 	True case 
 78:    JEQ  4,1(7) 	Jump if true 
 79:    LDC  3,0(6) 	False case 
 80:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 81:    LDA  1,-2(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-66(7) 	CALL outputb
 84:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 85:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 86:    LDC  3,88(6) 	Load constant 
 87:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 88:    LDC  3,89(6) 	Load constant 
 89:     LD  4,-4(1) 	Load left into ac1 
 90:    SUB  3,4,3 	Op != 
 91:    JEQ  3,1(7) 	Jump if true 
 92:    LDC  3,1(6) 	True case 
 93:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
 94:    LDA  1,-2(1) 	Load address of new frame 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-79(7) 	CALL outputb
 97:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 98:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 99:    LDC  3,88(6) 	Load constant 
100:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
101:    LDC  3,89(6) 	Load constant 
102:     LD  4,-4(1) 	Load left into ac1 
103:    SUB  4,4,3 	Op >= 
104:    LDC  3,1(6) 	True case 
105:    JTE  4,1(7) 	Jump if true 
106:    LDC  3,0(6) 	False case 
107:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
108:    LDA  1,-2(1) 	Load address of new frame 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-93(7) 	CALL outputb
111:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
112:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
113:    LDC  3,88(6) 	Load constant 
114:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
115:    LDC  3,89(6) 	Load constant 
116:     LD  4,-4(1) 	Load left into ac1 
117:    SUB  4,4,3 	Op <= 
118:    LDC  3,1(6) 	True case 
119:    JLE  4,1(7) 	Jump if true 
120:    LDC  3,0(6) 	False case 
121:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
122:    LDA  1,-2(1) 	Load address of new frame 
123:    LDA  3,1(7) 	Return address in ac 
124:    LDA  7,-107(7) 	CALL outputb
125:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
126:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
127:    LDC  3,89(6) 	Load constant 
128:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
129:    LDC  3,89(6) 	Load constant 
130:     LD  4,-4(1) 	Load left into ac1 
131:    SUB  4,4,3 	Op == 
132:    LDC  3,1(6) 	True case 
133:    JEQ  4,1(7) 	Jump if true 
134:    LDC  3,0(6) 	False case 
135:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
136:    LDA  1,-2(1) 	Load address of new frame 
137:    LDA  3,1(7) 	Return address in ac 
138:    LDA  7,-121(7) 	CALL outputb
139:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
140:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
141:    LDC  3,89(6) 	Load constant 
142:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
143:    LDC  3,89(6) 	Load constant 
144:     LD  4,-4(1) 	Load left into ac1 
145:    SUB  3,4,3 	Op != 
146:    JEQ  3,1(7) 	Jump if true 
147:    LDC  3,1(6) 	True case 
148:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
149:    LDA  1,-2(1) 	Load address of new frame 
150:    LDA  3,1(7) 	Return address in ac 
151:    LDA  7,-134(7) 	CALL outputb
152:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
153:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
154:    LDC  3,89(6) 	Load constant 
155:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
156:    LDC  3,89(6) 	Load constant 
157:     LD  4,-4(1) 	Load left into ac1 
158:    SUB  4,4,3 	Op >= 
159:    LDC  3,1(6) 	True case 
160:    JTE  4,1(7) 	Jump if true 
161:    LDC  3,0(6) 	False case 
162:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
163:    LDA  1,-2(1) 	Load address of new frame 
164:    LDA  3,1(7) 	Return address in ac 
165:    LDA  7,-148(7) 	CALL outputb
166:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
167:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
168:    LDC  3,89(6) 	Load constant 
169:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
170:    LDC  3,89(6) 	Load constant 
171:     LD  4,-4(1) 	Load left into ac1 
172:    SUB  4,4,3 	Op <= 
173:    LDC  3,1(6) 	True case 
174:    JLE  4,1(7) 	Jump if true 
175:    LDC  3,0(6) 	False case 
176:     ST  3,-4(1) 	Store parameter 
* 			Jump to outputb
177:    LDA  1,-2(1) 	Load address of new frame 
178:    LDA  3,1(7) 	Return address in ac 
179:    LDA  7,-162(7) 	CALL outputb
180:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
181:    LDC  2,0(6) 	Set return value to 0 
182:     LD  3,-1(1) 	Load return address 
183:     LD  1,0(1) 	Adjust fp 
184:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,184(7) 	Jump to init [backpatch] 
* BEGIN Init
185:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
186:    LDA  1,0(0) 	set first frame at end of globals 
187:     ST  1,0(1) 	store old fp (point to self) 
188:    LDA  3,1(7) 	Return address in ac 
189:    LDA  7,-148(7) 	Jump to main 
190:   HALT  0,0,0 	DONE! 
* END Init
