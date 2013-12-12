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
 43:    LDC  3,1(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable x
 45:    LDC  3,0(6) 	Load constant 
 46:     ST  3,-3(1) 	Store variable y
 47:    LDC  3,1(6) 	Load constant 
 48:     ST  3,-4(1) 	Store variable z
* 			Begin call to  outputb
 49:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 50:     LD  3,-2(1) 	Load variable x
 51:     ST  3,-7(1) 	Store parameter 
 52:     ST  3,-5(1) 	Save left side 
 53:     LD  3,-3(1) 	Load variable y
 54:     ST  3,-8(1) 	Store parameter 
 55:     ST  3,-6(1) 	Save left side 
 56:     LD  3,-4(1) 	Load variable z
 57:     ST  3,-9(1) 	Store parameter 
 58:     LD  4,-6(1) 	Load left into ac1 
 59:    JEQ  3,1(7) 	Op AND 
 60:     ST  3,-8(1) 	Store parameter 
 61:     LD  4,-5(1) 	Load left into ac1 
 62:    JEQ  3,1(7) 	Op OR 
 63:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
 64:    LDA  1,-5(1) 	Load address of new frame 
 65:    LDA  3,1(7) 	Return address in ac 
 66:    LDA  7,-49(7) 	Call  outputb
 67:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 68:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 69:     LD  3,-2(1) 	Load variable x
 70:     ST  3,-7(1) 	Store parameter 
 71:     ST  3,-5(1) 	Save left side 
 72:     LD  3,-3(1) 	Load variable y
 73:     ST  3,-8(1) 	Store parameter 
 74:     LD  4,-5(1) 	Load left into ac1 
 75:    JEQ  3,1(7) 	Op AND 
 76:     ST  3,-7(1) 	Store parameter 
 77:     ST  3,-5(1) 	Save left side 
 78:     LD  3,-4(1) 	Load variable z
 79:     ST  3,-8(1) 	Store parameter 
 80:     LD  4,-5(1) 	Load left into ac1 
 81:    JEQ  3,1(7) 	Op OR 
 82:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
 83:    LDA  1,-5(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-68(7) 	Call  outputb
 86:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 87:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 88:     LD  3,-2(1) 	Load variable x
 89:     ST  3,-7(1) 	Store parameter 
 90:     ST  3,-5(1) 	Save left side 
 91:     LD  3,-3(1) 	Load variable y
 92:     ST  3,-8(1) 	Store parameter 
 93:     LD  4,-5(1) 	Load left into ac1 
 94:    JEQ  3,1(7) 	Op AND 
 95:     ST  3,-7(1) 	Store parameter 
 96:     ST  3,-5(1) 	Save left side 
 97:     LD  3,-4(1) 	Load variable z
 98:     ST  3,-8(1) 	Store parameter 
 99:     ST  3,-6(1) 	Save left side 
100:     LD  3,-4(1) 	Load variable z
101:     ST  3,-9(1) 	Store parameter 
102:     LD  4,-6(1) 	Load left into ac1 
103:    JEQ  3,1(7) 	Op AND 
104:     ST  3,-8(1) 	Store parameter 
105:     LD  4,-5(1) 	Load left into ac1 
106:    JEQ  3,1(7) 	Op OR 
107:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
108:    LDA  1,-5(1) 	Load address of new frame 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-93(7) 	Call  outputb
111:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
112:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
113:     LD  3,-2(1) 	Load variable x
114:     ST  3,-7(1) 	Store parameter 
115:    SUB  3,4,3 	Op = 
116:     ST  3,-7(1) 	Store parameter 
117:     ST  3,-5(1) 	Save left side 
118:     LD  3,-3(1) 	Load variable y
119:     ST  3,-8(1) 	Store parameter 
120:     ST  3,-6(1) 	Save left side 
121:     LD  3,-4(1) 	Load variable z
122:     ST  3,-9(1) 	Store parameter 
123:     LD  4,-6(1) 	Load left into ac1 
124:    JEQ  3,1(7) 	Op AND 
125:     ST  3,-8(1) 	Store parameter 
126:     LD  4,-5(1) 	Load left into ac1 
127:    JEQ  3,1(7) 	Op OR 
128:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
129:    LDA  1,-5(1) 	Load address of new frame 
130:    LDA  3,1(7) 	Return address in ac 
131:    LDA  7,-114(7) 	Call  outputb
132:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
133:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
134:     LD  3,-2(1) 	Load variable x
135:     ST  3,-7(1) 	Store parameter 
136:    SUB  3,4,3 	Op = 
137:     ST  3,-7(1) 	Store parameter 
138:     ST  3,-5(1) 	Save left side 
139:     LD  3,-3(1) 	Load variable y
140:     ST  3,-8(1) 	Store parameter 
141:     LD  4,-5(1) 	Load left into ac1 
142:    JEQ  3,1(7) 	Op AND 
143:     ST  3,-7(1) 	Store parameter 
144:     ST  3,-5(1) 	Save left side 
145:     LD  3,-4(1) 	Load variable z
146:     ST  3,-8(1) 	Store parameter 
147:     LD  4,-5(1) 	Load left into ac1 
148:    JEQ  3,1(7) 	Op OR 
149:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
150:    LDA  1,-5(1) 	Load address of new frame 
151:    LDA  3,1(7) 	Return address in ac 
152:    LDA  7,-135(7) 	Call  outputb
153:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outnl
154:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
155:    LDA  1,-5(1) 	Load address of new frame 
156:    LDA  3,1(7) 	Return address in ac 
157:    LDA  7,-121(7) 	Call  outnl
158:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
159:    LDC  3,1(6) 	Load constant 
160:     ST  3,-2(1) 	Store variable x
161:    LDC  3,1(6) 	Load constant 
162:     ST  3,-3(1) 	Store variable y
163:    LDC  3,0(6) 	Load constant 
164:     ST  3,-4(1) 	Store variable z
* 			Begin call to  outputb
165:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
166:     LD  3,-2(1) 	Load variable x
167:     ST  3,-7(1) 	Store parameter 
168:     ST  3,-5(1) 	Save left side 
169:     LD  3,-3(1) 	Load variable y
170:     ST  3,-8(1) 	Store parameter 
171:     ST  3,-6(1) 	Save left side 
172:     LD  3,-4(1) 	Load variable z
173:     ST  3,-9(1) 	Store parameter 
174:     LD  4,-6(1) 	Load left into ac1 
175:    JEQ  3,1(7) 	Op AND 
176:     ST  3,-8(1) 	Store parameter 
177:     LD  4,-5(1) 	Load left into ac1 
178:    JEQ  3,1(7) 	Op OR 
179:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
180:    LDA  1,-5(1) 	Load address of new frame 
181:    LDA  3,1(7) 	Return address in ac 
182:    LDA  7,-165(7) 	Call  outputb
183:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
184:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
185:     LD  3,-2(1) 	Load variable x
186:     ST  3,-7(1) 	Store parameter 
187:     ST  3,-5(1) 	Save left side 
188:     LD  3,-3(1) 	Load variable y
189:     ST  3,-8(1) 	Store parameter 
190:     LD  4,-5(1) 	Load left into ac1 
191:    JEQ  3,1(7) 	Op AND 
192:     ST  3,-7(1) 	Store parameter 
193:     ST  3,-5(1) 	Save left side 
194:     LD  3,-4(1) 	Load variable z
195:     ST  3,-8(1) 	Store parameter 
196:     LD  4,-5(1) 	Load left into ac1 
197:    JEQ  3,1(7) 	Op OR 
198:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
199:    LDA  1,-5(1) 	Load address of new frame 
200:    LDA  3,1(7) 	Return address in ac 
201:    LDA  7,-184(7) 	Call  outputb
202:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
203:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
204:     LD  3,-2(1) 	Load variable x
205:     ST  3,-7(1) 	Store parameter 
206:     ST  3,-5(1) 	Save left side 
207:     LD  3,-3(1) 	Load variable y
208:     ST  3,-8(1) 	Store parameter 
209:     LD  4,-5(1) 	Load left into ac1 
210:    JEQ  3,1(7) 	Op AND 
211:     ST  3,-7(1) 	Store parameter 
212:     ST  3,-5(1) 	Save left side 
213:     LD  3,-4(1) 	Load variable z
214:     ST  3,-8(1) 	Store parameter 
215:     ST  3,-6(1) 	Save left side 
216:     LD  3,-4(1) 	Load variable z
217:     ST  3,-9(1) 	Store parameter 
218:     LD  4,-6(1) 	Load left into ac1 
219:    JEQ  3,1(7) 	Op AND 
220:     ST  3,-8(1) 	Store parameter 
221:     LD  4,-5(1) 	Load left into ac1 
222:    JEQ  3,1(7) 	Op OR 
223:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
224:    LDA  1,-5(1) 	Load address of new frame 
225:    LDA  3,1(7) 	Return address in ac 
226:    LDA  7,-209(7) 	Call  outputb
227:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
228:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
229:     LD  3,-2(1) 	Load variable x
230:     ST  3,-7(1) 	Store parameter 
231:    SUB  3,4,3 	Op = 
232:     ST  3,-7(1) 	Store parameter 
233:     ST  3,-5(1) 	Save left side 
234:     LD  3,-3(1) 	Load variable y
235:     ST  3,-8(1) 	Store parameter 
236:     ST  3,-6(1) 	Save left side 
237:     LD  3,-4(1) 	Load variable z
238:     ST  3,-9(1) 	Store parameter 
239:     LD  4,-6(1) 	Load left into ac1 
240:    JEQ  3,1(7) 	Op AND 
241:     ST  3,-8(1) 	Store parameter 
242:     LD  4,-5(1) 	Load left into ac1 
243:    JEQ  3,1(7) 	Op OR 
244:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
245:    LDA  1,-5(1) 	Load address of new frame 
246:    LDA  3,1(7) 	Return address in ac 
247:    LDA  7,-230(7) 	Call  outputb
248:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
249:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
250:     LD  3,-2(1) 	Load variable x
251:     ST  3,-7(1) 	Store parameter 
252:    SUB  3,4,3 	Op = 
253:     ST  3,-7(1) 	Store parameter 
254:     ST  3,-5(1) 	Save left side 
255:     LD  3,-3(1) 	Load variable y
256:     ST  3,-8(1) 	Store parameter 
257:     LD  4,-5(1) 	Load left into ac1 
258:    JEQ  3,1(7) 	Op AND 
259:     ST  3,-7(1) 	Store parameter 
260:     ST  3,-5(1) 	Save left side 
261:     LD  3,-4(1) 	Load variable z
262:     ST  3,-8(1) 	Store parameter 
263:     LD  4,-5(1) 	Load left into ac1 
264:    JEQ  3,1(7) 	Op OR 
265:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
266:    LDA  1,-5(1) 	Load address of new frame 
267:    LDA  3,1(7) 	Return address in ac 
268:    LDA  7,-251(7) 	Call  outputb
269:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outnl
270:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
271:    LDA  1,-5(1) 	Load address of new frame 
272:    LDA  3,1(7) 	Return address in ac 
273:    LDA  7,-237(7) 	Call  outnl
274:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
275:    LDC  2,0(6) 	Set return value to 0 
276:     LD  3,-1(1) 	Load return address 
277:     LD  1,0(1) 	Adjust fp 
278:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,278(7) 	Jump to init [backpatch] 
* BEGIN Init
279:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
280:    LDA  1,0(0) 	set first frame at end of globals 
281:     ST  1,0(1) 	store old fp (point to self) 
282:    LDA  3,0(7) 	return address in ac 
283:    LDA  7,-242(7) 	Jump to main 
284:   HALT  0,0,0 	DONE 
* END init
