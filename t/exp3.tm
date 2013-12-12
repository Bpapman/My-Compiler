* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  exp3.c-
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
 43:    LDC  3,1(6) 	Load constant 
 44:     ST  3,-3(1) 	Store variable bilbo
* EXPRESSION STMT
 45:    LDC  3,10(6) 	Load constant 
 46:     ST  3,-2(1) 	Store variable frodo
* EXPRESSION STMT
 47:    LDC  3,100(6) 	Load constant 
 48:     ST  3,-4(1) 	Store variable sam
* EXPRESSION STMT
 49:    LDC  3,1000(6) 	Load constant 
 50:     ST  3,-5(1) 	Store variable merry
* EXPRESSION STMT
 51:    LDC  3,10000(6) 	Load constant 
 52:     ST  3,-6(1) 	Store variable pippin
* EXPRESSION STMT
 53:     LD  3,-3(1) 	Load variable bilbo
 54:     ST  3,-3(1) 	Store variable bilbo
* EXPRESSION STMT
*                       Begin call to  output
 55:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
 56:     LD  3,-3(1) 	Load variable bilbo
 57:     ST  3,-10(1) 	Store parameter 
*                       Jump to output
 58:    LDA  1,-8(1) 	Load address of new frame 
 59:    LDA  3,1(7) 	Return address in ac 
 60:    LDA  7,-55(7) 	CALL output
 61:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 62:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 63:    LDA  1,-8(1) 	Load address of new frame 
 64:    LDA  3,1(7) 	Return address in ac 
 65:    LDA  7,-29(7) 	CALL outnl
 66:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
 67:     LD  3,-3(1) 	Load variable bilbo
 68:     ST  3,-8(1) 	Save left side 
 69:    LDC  3,1(6) 	Load constant 
 70:     LD  4,-8(1) 	Load left into ac1 
 71:    ADD  3,4,3 	Op + 
 72:     ST  3,-3(1) 	Store variable bilbo
* EXPRESSION STMT
*                       Begin call to  output
 73:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
 74:     LD  3,-3(1) 	Load variable bilbo
 75:     ST  3,-10(1) 	Store parameter 
*                       Jump to output
 76:    LDA  1,-8(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-73(7) 	CALL output
 79:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 80:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 81:    LDA  1,-8(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-47(7) 	CALL outnl
 84:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
 85:     LD  3,-2(1) 	Load variable frodo
 86:     ST  3,-8(1) 	Save left side 
 87:     LD  3,-3(1) 	Load variable bilbo
 88:     ST  3,-9(1) 	Save left side 
 89:     LD  3,-4(1) 	Load variable sam
 90:     ST  3,-10(1) 	Save left side 
 91:     LD  3,-5(1) 	Load variable merry
 92:     ST  3,-11(1) 	Save left side 
 93:     LD  3,-6(1) 	Load variable pippin
 94:     LD  4,-11(1) 	Load left into ac1 
 95:    MUL  3,4,3 	Op * 
 96:     LD  4,-10(1) 	Load left into ac1 
 97:    ADD  3,4,3 	Op + 
 98:     LD  4,-9(1) 	Load left into ac1 
 99:    MUL  3,4,3 	Op * 
100:     LD  4,-8(1) 	Load left into ac1 
101:    ADD  3,4,3 	Op + 
102:     ST  3,-3(1) 	Store variable bilbo
* EXPRESSION STMT
*                       Begin call to  output
103:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
104:     LD  3,-3(1) 	Load variable bilbo
105:     ST  3,-10(1) 	Store parameter 
*                       Jump to output
106:    LDA  1,-8(1) 	Load address of new frame 
107:    LDA  3,1(7) 	Return address in ac 
108:    LDA  7,-103(7) 	CALL output
109:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
110:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Jump to outnl
111:    LDA  1,-8(1) 	Load address of new frame 
112:    LDA  3,1(7) 	Return address in ac 
113:    LDA  7,-77(7) 	CALL outnl
114:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
115:     LD  3,-5(1) 	Load variable merry
116:     ST  3,-8(1) 	Save left side 
117:     LD  3,-6(1) 	Load variable pippin
118:     LD  4,-8(1) 	Load left into ac1 
119:    MUL  3,4,3 	Op * 
120:     ST  3,-8(1) 	Save left side 
121:     LD  3,-4(1) 	Load variable sam
122:     LD  4,-8(1) 	Load left into ac1 
123:    ADD  3,4,3 	Op + 
124:     ST  3,-8(1) 	Save left side 
125:     LD  3,-3(1) 	Load variable bilbo
126:     LD  4,-8(1) 	Load left into ac1 
127:    MUL  3,4,3 	Op * 
128:     ST  3,-8(1) 	Save left side 
129:     LD  3,-2(1) 	Load variable frodo
130:     LD  4,-8(1) 	Load left into ac1 
131:    ADD  3,4,3 	Op + 
132:     ST  3,-3(1) 	Store variable bilbo
* EXPRESSION STMT
*                       Begin call to  output
133:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
134:     LD  3,-3(1) 	Load variable bilbo
135:     ST  3,-10(1) 	Store parameter 
*                       Jump to output
136:    LDA  1,-8(1) 	Load address of new frame 
137:    LDA  3,1(7) 	Return address in ac 
138:    LDA  7,-133(7) 	CALL output
139:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
140:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Jump to outnl
141:    LDA  1,-8(1) 	Load address of new frame 
142:    LDA  3,1(7) 	Return address in ac 
143:    LDA  7,-107(7) 	CALL outnl
144:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
145:     LD  3,-3(1) 	Load variable bilbo
146:     ST  3,-8(1) 	Save left side 
147:     LD  3,-3(1) 	Load variable bilbo
148:     ST  3,-9(1) 	Save left side 
149:     LD  3,-3(1) 	Load variable bilbo
150:     ST  3,-10(1) 	Save left side 
151:     LD  3,-3(1) 	Load variable bilbo
152:     ST  3,-11(1) 	Save left side 
153:     LD  3,-3(1) 	Load variable bilbo
154:     ST  3,-12(1) 	Save left side 
155:     LD  3,-3(1) 	Load variable bilbo
156:     LD  4,-12(1) 	Load left into ac1 
157:    ADD  3,4,3 	Op + 
158:     LD  4,-11(1) 	Load left into ac1 
159:    SUB  3,4,3 	Op - 
160:     LD  4,-10(1) 	Load left into ac1 
161:    ADD  3,4,3 	Op + 
162:     LD  4,-9(1) 	Load left into ac1 
163:    SUB  3,4,3 	Op - 
164:     LD  4,-8(1) 	Load left into ac1 
165:    ADD  3,4,3 	Op + 
166:     ST  3,-3(1) 	Store variable bilbo
* EXPRESSION STMT
*                       Begin call to  output
167:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
168:     LD  3,-3(1) 	Load variable bilbo
169:     ST  3,-10(1) 	Store parameter 
*                       Jump to output
170:    LDA  1,-8(1) 	Load address of new frame 
171:    LDA  3,1(7) 	Return address in ac 
172:    LDA  7,-167(7) 	CALL output
173:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
174:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Jump to outnl
175:    LDA  1,-8(1) 	Load address of new frame 
176:    LDA  3,1(7) 	Return address in ac 
177:    LDA  7,-141(7) 	CALL outnl
178:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
179:    LDC  3,1(6) 	Load constant 
180:     ST  3,-7(1) 	Store variable arwen
* EXPRESSION STMT
181:    LDC  3,0(6) 	Load constant 
182:     ST  3,-8(1) 	Save left side 
183:     LD  3,-7(1) 	Load variable arwen
184:     ST  3,-9(1) 	Save left side 
185:     LD  3,-5(1) 	Load variable merry
186:    LDC  4,0(6) 	Load 0 
187:    SUB  3,4,3 	Op unary - 
188:     ST  3,-10(1) 	Save left side 
189:     LD  3,-4(1) 	Load variable sam
190:    LDC  4,0(6) 	Load 0 
191:    SUB  3,4,3 	Op unary - 
192:     LD  4,-10(1) 	Load left into ac1 
193:    MUL  3,4,3 	Op * 
194:     ST  3,-10(1) 	Save left side 
195:     LD  3,-6(1) 	Load variable pippin
196:     LD  4,-10(1) 	Load left into ac1 
197:    ADD  3,4,3 	Op + 
198:     ST  3,-10(1) 	Save left side 
199:     LD  3,-3(1) 	Load variable bilbo
200:     ST  3,-11(1) 	Save left side 
201:     LD  3,-2(1) 	Load variable frodo
202:     ST  3,-12(1) 	Save left side 
203:     LD  3,-2(1) 	Load variable frodo
204:    LDC  4,0(6) 	Load 0 
205:    SUB  3,4,3 	Op unary - 
206:     LD  4,-12(1) 	Load left into ac1 
207:    MUL  3,4,3 	Op * 
208:     LD  4,-11(1) 	Load left into ac1 
209:    ADD  3,4,3 	Op + 
210:     LD  4,-10(1) 	Load left into ac1 
211:    SUB  4,4,3 	Op >= 
212:    LDC  3,1(6) 	True case 
213:    JGE  4,1(7) 	Jump if true 
214:    LDC  3,0(6) 	False case 
215:    LDC  4,1(6) 	Load 1 
216:    SUB  3,4,3 	Op NOT 
217:     LD  4,-9(1) 	Load left into ac1 
218:    JEQ  3,1(7) 	Op AND 
219:    LDA  3,0(4) 	 
220:     LD  4,-8(1) 	Load left into ac1 
221:    JGT  3,1(7) 	Op OR 
222:    LDA  3,0(4) 	 
223:     ST  3,-7(1) 	Store variable arwen
* EXPRESSION STMT
*                       Begin call to  outputb
224:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
225:     LD  3,-7(1) 	Load variable arwen
226:     ST  3,-10(1) 	Store parameter 
*                       Jump to outputb
227:    LDA  1,-8(1) 	Load address of new frame 
228:    LDA  3,1(7) 	Return address in ac 
229:    LDA  7,-212(7) 	CALL outputb
230:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
231:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Jump to outnl
232:    LDA  1,-8(1) 	Load address of new frame 
233:    LDA  3,1(7) 	Return address in ac 
234:    LDA  7,-198(7) 	CALL outnl
235:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
236:    LDC  2,0(6) 	Set return value to 0 
237:     LD  3,-1(1) 	Load return address 
238:     LD  1,0(1) 	Adjust fp 
239:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,239(7) 	Jump to init [backpatch] 
* BEGIN Init
240:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
241:    LDA  1,0(0) 	set first frame at end of globals 
242:     ST  1,0(1) 	store old fp (point to self) 
243:    LDA  3,1(7) 	Return address in ac 
244:    LDA  7,-203(7) 	Jump to main 
245:   HALT  0,0,0 	DONE! 
* END Init
