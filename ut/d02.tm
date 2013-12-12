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
 43:    LDC  3,755(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable x
 45:    LDC  3,88(6) 	Load constant 
 46:     ST  3,-3(1) 	Store variable y
 47:    LDC  3,3(6) 	Load constant 
 48:     ST  3,-4(1) 	Store variable z
* 			Begin call to  output
 49:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 50:    LDC  3,755(6) 	Load constant 
 51:     ST  3,-7(1) 	Store parameter 
 52:     ST  3,-5(1) 	Save left side 
 53:    LDC  3,88(6) 	Load constant 
 54:     ST  3,-8(1) 	Store parameter 
 55:     ST  3,-6(1) 	Save left side 
 56:    LDC  3,3(6) 	Load constant 
 57:     ST  3,-9(1) 	Store parameter 
 58:     LD  4,-6(1) 	Load left into ac1 
 59:    MUL  3,4,3 	Op * 
 60:     ST  3,-8(1) 	Store parameter 
 61:     LD  4,-5(1) 	Load left into ac1 
 62:    ADD  3,4,3 	Op + 
 63:     ST  3,-7(1) 	Store parameter 
* 			Jump to  output
 64:    LDA  1,-5(1) 	Load address of new frame 
 65:    LDA  3,1(7) 	Return address in ac 
 66:    LDA  7,-61(7) 	Call  output
 67:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
 68:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 69:    LDC  3,755(6) 	Load constant 
 70:     ST  3,-7(1) 	Store parameter 
 71:     ST  3,-5(1) 	Save left side 
 72:    LDC  3,88(6) 	Load constant 
 73:     ST  3,-8(1) 	Store parameter 
 74:     LD  4,-5(1) 	Load left into ac1 
 75:    MUL  3,4,3 	Op * 
 76:     ST  3,-7(1) 	Store parameter 
 77:     ST  3,-5(1) 	Save left side 
 78:    LDC  3,3(6) 	Load constant 
 79:     ST  3,-8(1) 	Store parameter 
 80:     LD  4,-5(1) 	Load left into ac1 
 81:    ADD  3,4,3 	Op + 
 82:     ST  3,-7(1) 	Store parameter 
* 			Jump to  output
 83:    LDA  1,-5(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-80(7) 	Call  output
 86:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
 87:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 88:    LDC  3,755(6) 	Load constant 
 89:     ST  3,-7(1) 	Store parameter 
 90:     ST  3,-5(1) 	Save left side 
 91:    LDC  3,88(6) 	Load constant 
 92:     ST  3,-8(1) 	Store parameter 
 93:     LD  4,-5(1) 	Load left into ac1 
 94:    SUB  3,4,3 	Op - 
 95:     ST  3,-7(1) 	Store parameter 
 96:     ST  3,-5(1) 	Save left side 
 97:    LDC  3,3(6) 	Load constant 
 98:     ST  3,-8(1) 	Store parameter 
 99:     LD  4,-5(1) 	Load left into ac1 
100:    SUB  3,4,3 	Op - 
101:     ST  3,-7(1) 	Store parameter 
* 			Jump to  output
102:    LDA  1,-5(1) 	Load address of new frame 
103:    LDA  3,1(7) 	Return address in ac 
104:    LDA  7,-99(7) 	Call  output
105:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
106:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
107:    LDC  3,755(6) 	Load constant 
108:     ST  3,-7(1) 	Store parameter 
109:     ST  3,-5(1) 	Save left side 
110:    LDC  3,88(6) 	Load constant 
111:     ST  3,-8(1) 	Store parameter 
112:     LD  4,-5(1) 	Load left into ac1 
113:    DIV  3,4,3 	Op div 
114:     ST  3,-7(1) 	Store parameter 
115:     ST  3,-5(1) 	Save left side 
116:    LDC  3,3(6) 	Load constant 
117:     ST  3,-8(1) 	Store parameter 
118:     LD  4,-5(1) 	Load left into ac1 
119:    DIV  3,4,3 	Op div 
120:     ST  3,-7(1) 	Store parameter 
* 			Jump to  output
121:    LDA  1,-5(1) 	Load address of new frame 
122:    LDA  3,1(7) 	Return address in ac 
123:    LDA  7,-118(7) 	Call  output
124:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
125:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
126:    LDC  3,755(6) 	Load constant 
127:     ST  3,-7(1) 	Store parameter 
128:     ST  3,-5(1) 	Save left side 
129:    LDC  3,88(6) 	Load constant 
130:     ST  3,-8(1) 	Store parameter 
131:     LD  4,-5(1) 	Load left into ac1 
132:    MUL  3,4,3 	Op * 
133:     ST  3,-7(1) 	Store parameter 
134:     ST  3,-5(1) 	Save left side 
135:    LDC  3,3(6) 	Load constant 
136:     ST  3,-8(1) 	Store parameter 
137:     ST  3,-6(1) 	Save left side 
138:    LDC  3,3(6) 	Load constant 
139:     ST  3,-9(1) 	Store parameter 
140:     LD  4,-6(1) 	Load left into ac1 
141:    MUL  3,4,3 	Op * 
142:     ST  3,-8(1) 	Store parameter 
143:     LD  4,-5(1) 	Load left into ac1 
144:    ADD  3,4,3 	Op + 
145:     ST  3,-7(1) 	Store parameter 
* 			Jump to  output
146:    LDA  1,-5(1) 	Load address of new frame 
147:    LDA  3,1(7) 	Return address in ac 
148:    LDA  7,-143(7) 	Call  output
149:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
150:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
151:    LDC  3,755(6) 	Load constant 
152:     ST  3,-7(1) 	Store parameter 
153:     ST  3,-5(1) 	Save left side 
154:    LDC  3,88(6) 	Load constant 
155:     ST  3,-8(1) 	Store parameter 
156:     LD  4,-5(1) 	Load left into ac1 
157:    DIV  4,4,3 	Op % 
158:    MUL  5,5,3 	Op * 
159:    SUB  3,4,5 	Op - 
160:     ST  3,-7(1) 	Store parameter 
161:     ST  3,-5(1) 	Save left side 
162:    LDC  3,3(6) 	Load constant 
163:     ST  3,-8(1) 	Store parameter 
164:     LD  4,-5(1) 	Load left into ac1 
165:    DIV  4,4,3 	Op % 
166:    MUL  5,5,3 	Op * 
167:    SUB  3,4,5 	Op - 
168:     ST  3,-7(1) 	Store parameter 
* 			Jump to  output
169:    LDA  1,-5(1) 	Load address of new frame 
170:    LDA  3,1(7) 	Return address in ac 
171:    LDA  7,-166(7) 	Call  output
172:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
173:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
174:    LDC  3,755(6) 	Load constant 
175:     ST  3,-7(1) 	Store parameter 
176:    SUB  3,4,3 	Op - 
177:     ST  3,-7(1) 	Store parameter 
178:     ST  3,-5(1) 	Save left side 
179:    LDC  3,88(6) 	Load constant 
180:     ST  3,-8(1) 	Store parameter 
181:     ST  3,-6(1) 	Save left side 
182:    LDC  3,3(6) 	Load constant 
183:     ST  3,-9(1) 	Store parameter 
184:     LD  4,-6(1) 	Load left into ac1 
185:    MUL  3,4,3 	Op * 
186:     ST  3,-8(1) 	Store parameter 
187:     LD  4,-5(1) 	Load left into ac1 
188:    ADD  3,4,3 	Op + 
189:     ST  3,-7(1) 	Store parameter 
* 			Jump to  output
190:    LDA  1,-5(1) 	Load address of new frame 
191:    LDA  3,1(7) 	Return address in ac 
192:    LDA  7,-187(7) 	Call  output
193:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
194:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
195:    LDA  1,-5(1) 	Load address of new frame 
196:    LDA  3,1(7) 	Return address in ac 
197:    LDA  7,-161(7) 	Call  outnl
198:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
199:    LDC  2,0(6) 	Set return value to 0 
200:     LD  3,-1(1) 	Load return address 
201:     LD  1,0(1) 	Adjust fp 
202:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,202(7) 	Jump to init [backpatch] 
* BEGIN Init
203:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
204:    LDA  1,0(0) 	set first frame at end of globals 
205:     ST  1,0(1) 	store old fp (point to self) 
206:    LDA  3,0(7) 	return address in ac 
207:    LDA  7,-166(7) 	Jump to main 
208:   HALT  0,0,0 	DONE 
* END init
