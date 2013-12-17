* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  d04.tm
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
 44:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
 45:    LDC  3,0(6) 	Load constant 
 46:     ST  3,-3(1) 	Store variable y
* EXPRESSION STMT
 47:    LDC  3,1(6) 	Load constant 
 48:     ST  3,-4(1) 	Store variable z
* EXPRESSION STMT
* 			Begin call to  outputb
 49:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
 50:     LD  3,-2(1) 	Load variable x
 51:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 52:     LD  3,-3(1) 	Load variable y
 53:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
 54:     LD  3,-4(1) 	Load variable z
 55:     LD  4,-8(1) 	Load left into ac1 
 56:    JEQ  3,1(7) 	Op AND 
 57:    LDA  3,0(5) 	 
 58:     LD  4,-7(1) 	Load left into ac1 
 59:    JEQ  3,1(7) 	Op OR 
 60:    LDA  3,0(5) 	 
 61:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
 62:    LDA  1,-5(1) 	Load address of new frame 
 63:    LDA  3,1(7) 	Return address in ac 
 64:    LDA  7,-47(7) 	CALL outputb
 65:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 66:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
 67:     LD  3,-2(1) 	Load variable x
 68:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 69:     LD  3,-3(1) 	Load variable y
 70:     LD  4,-7(1) 	Load left into ac1 
 71:    JEQ  3,1(7) 	Op AND 
 72:    LDA  3,0(5) 	 
 73:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 74:     LD  3,-4(1) 	Load variable z
 75:     LD  4,-7(1) 	Load left into ac1 
 76:    JEQ  3,1(7) 	Op OR 
 77:    LDA  3,0(5) 	 
 78:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
 79:    LDA  1,-5(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-64(7) 	CALL outputb
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 83:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
 84:     LD  3,-2(1) 	Load variable x
 85:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 86:     LD  3,-3(1) 	Load variable y
 87:     LD  4,-7(1) 	Load left into ac1 
 88:    JEQ  3,1(7) 	Op AND 
 89:    LDA  3,0(5) 	 
 90:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 91:     LD  3,-4(1) 	Load variable z
 92:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
 93:     LD  3,-4(1) 	Load variable z
 94:     LD  4,-8(1) 	Load left into ac1 
 95:    JEQ  3,1(7) 	Op AND 
 96:    LDA  3,0(5) 	 
 97:     LD  4,-7(1) 	Load left into ac1 
 98:    JEQ  3,1(7) 	Op OR 
 99:    LDA  3,0(5) 	 
100:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
101:    LDA  1,-5(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-86(7) 	CALL outputb
104:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
105:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
106:     LD  3,-2(1) 	Load variable x
107:    LDA  3,1(5) 	Not load address 
108:    SUB  3,4,3 	Op Not 
109:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
110:     LD  3,-3(1) 	Load variable y
111:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
112:     LD  3,-4(1) 	Load variable z
113:     LD  4,-8(1) 	Load left into ac1 
114:    JEQ  3,1(7) 	Op AND 
115:    LDA  3,0(5) 	 
116:     LD  4,-7(1) 	Load left into ac1 
117:    JEQ  3,1(7) 	Op OR 
118:    LDA  3,0(5) 	 
119:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
120:    LDA  1,-5(1) 	Load address of new frame 
121:    LDA  3,1(7) 	Return address in ac 
122:    LDA  7,-105(7) 	CALL outputb
123:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
124:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
125:     LD  3,-2(1) 	Load variable x
126:    LDA  3,1(5) 	Not load address 
127:    SUB  3,4,3 	Op Not 
128:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
129:     LD  3,-3(1) 	Load variable y
130:     LD  4,-7(1) 	Load left into ac1 
131:    JEQ  3,1(7) 	Op AND 
132:    LDA  3,0(5) 	 
133:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
134:     LD  3,-4(1) 	Load variable z
135:     LD  4,-7(1) 	Load left into ac1 
136:    JEQ  3,1(7) 	Op OR 
137:    LDA  3,0(5) 	 
138:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
139:    LDA  1,-5(1) 	Load address of new frame 
140:    LDA  3,1(7) 	Return address in ac 
141:    LDA  7,-124(7) 	CALL outputb
142:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
143:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to outnl
144:    LDA  1,-5(1) 	Load address of new frame 
145:    LDA  3,1(7) 	Return address in ac 
146:    LDA  7,-110(7) 	CALL outnl
147:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
148:    LDC  3,1(6) 	Load constant 
149:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
150:    LDC  3,1(6) 	Load constant 
151:     ST  3,-3(1) 	Store variable y
* EXPRESSION STMT
152:    LDC  3,0(6) 	Load constant 
153:     ST  3,-4(1) 	Store variable z
* EXPRESSION STMT
* 			Begin call to  outputb
154:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
155:     LD  3,-2(1) 	Load variable x
156:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
157:     LD  3,-3(1) 	Load variable y
158:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
159:     LD  3,-4(1) 	Load variable z
160:     LD  4,-8(1) 	Load left into ac1 
161:    JEQ  3,1(7) 	Op AND 
162:    LDA  3,0(5) 	 
163:     LD  4,-7(1) 	Load left into ac1 
164:    JEQ  3,1(7) 	Op OR 
165:    LDA  3,0(5) 	 
166:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
167:    LDA  1,-5(1) 	Load address of new frame 
168:    LDA  3,1(7) 	Return address in ac 
169:    LDA  7,-152(7) 	CALL outputb
170:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
171:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
172:     LD  3,-2(1) 	Load variable x
173:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
174:     LD  3,-3(1) 	Load variable y
175:     LD  4,-7(1) 	Load left into ac1 
176:    JEQ  3,1(7) 	Op AND 
177:    LDA  3,0(5) 	 
178:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
179:     LD  3,-4(1) 	Load variable z
180:     LD  4,-7(1) 	Load left into ac1 
181:    JEQ  3,1(7) 	Op OR 
182:    LDA  3,0(5) 	 
183:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
184:    LDA  1,-5(1) 	Load address of new frame 
185:    LDA  3,1(7) 	Return address in ac 
186:    LDA  7,-169(7) 	CALL outputb
187:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
188:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
189:     LD  3,-2(1) 	Load variable x
190:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
191:     LD  3,-3(1) 	Load variable y
192:     LD  4,-7(1) 	Load left into ac1 
193:    JEQ  3,1(7) 	Op AND 
194:    LDA  3,0(5) 	 
195:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
196:     LD  3,-4(1) 	Load variable z
197:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
198:     LD  3,-4(1) 	Load variable z
199:     LD  4,-8(1) 	Load left into ac1 
200:    JEQ  3,1(7) 	Op AND 
201:    LDA  3,0(5) 	 
202:     LD  4,-7(1) 	Load left into ac1 
203:    JEQ  3,1(7) 	Op OR 
204:    LDA  3,0(5) 	 
205:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
206:    LDA  1,-5(1) 	Load address of new frame 
207:    LDA  3,1(7) 	Return address in ac 
208:    LDA  7,-191(7) 	CALL outputb
209:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
210:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
211:     LD  3,-2(1) 	Load variable x
212:    LDA  3,1(5) 	Not load address 
213:    SUB  3,4,3 	Op Not 
214:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
215:     LD  3,-3(1) 	Load variable y
216:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
217:     LD  3,-4(1) 	Load variable z
218:     LD  4,-8(1) 	Load left into ac1 
219:    JEQ  3,1(7) 	Op AND 
220:    LDA  3,0(5) 	 
221:     LD  4,-7(1) 	Load left into ac1 
222:    JEQ  3,1(7) 	Op OR 
223:    LDA  3,0(5) 	 
224:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
225:    LDA  1,-5(1) 	Load address of new frame 
226:    LDA  3,1(7) 	Return address in ac 
227:    LDA  7,-210(7) 	CALL outputb
228:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
229:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
230:     LD  3,-2(1) 	Load variable x
231:    LDA  3,1(5) 	Not load address 
232:    SUB  3,4,3 	Op Not 
233:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
234:     LD  3,-3(1) 	Load variable y
235:     LD  4,-7(1) 	Load left into ac1 
236:    JEQ  3,1(7) 	Op AND 
237:    LDA  3,0(5) 	 
238:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
239:     LD  3,-4(1) 	Load variable z
240:     LD  4,-7(1) 	Load left into ac1 
241:    JEQ  3,1(7) 	Op OR 
242:    LDA  3,0(5) 	 
243:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
244:    LDA  1,-5(1) 	Load address of new frame 
245:    LDA  3,1(7) 	Return address in ac 
246:    LDA  7,-229(7) 	CALL outputb
247:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
248:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to outnl
249:    LDA  1,-5(1) 	Load address of new frame 
250:    LDA  3,1(7) 	Return address in ac 
251:    LDA  7,-215(7) 	CALL outnl
252:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
253:    LDC  2,0(6) 	Set return value to 0 
254:     LD  3,-1(1) 	Load return address 
255:     LD  1,0(1) 	Adjust fp 
256:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,256(7) 	Jump to init [backpatch] 
* BEGIN Init
257:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
258:    LDA  1,0(0) 	set first frame at end of globals 
259:     ST  1,0(1) 	store old fp (point to self) 
260:    LDA  3,1(7) 	Return address in ac 
261:    LDA  7,-220(7) 	Jump to main 
262:   HALT  0,0,0 	DONE! 
* END Init
