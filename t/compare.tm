* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  compare.c-
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
 44:    LDC  3,1(6) 	Load constant 
 45:     ST  3,-4(1) 	Save left side 
 46:    LDC  3,2(6) 	Load constant 
 47:     LD  4,-4(1) 	Load left into ac1 
 48:    SUB  4,4,3 	Op < 
 49:    LDC  3,1(6) 	True case 
 50:    JLT  4,1(7) 	Jump if true 
 51:    LDC  3,0(6) 	False case 
 52:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
 53:    LDA  1,-2(1) 	Load address of new frame 
 54:    LDA  3,1(7) 	Return address in ac 
 55:    LDA  7,-38(7) 	CALL outputb
 56:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
 57:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 58:    LDC  3,2(6) 	Load constant 
 59:     ST  3,-4(1) 	Save left side 
 60:    LDC  3,2(6) 	Load constant 
 61:     LD  4,-4(1) 	Load left into ac1 
 62:    SUB  4,4,3 	Op < 
 63:    LDC  3,1(6) 	True case 
 64:    JLT  4,1(7) 	Jump if true 
 65:    LDC  3,0(6) 	False case 
 66:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
 67:    LDA  1,-2(1) 	Load address of new frame 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-52(7) 	CALL outputb
 70:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
 71:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 72:    LDC  3,3(6) 	Load constant 
 73:     ST  3,-4(1) 	Save left side 
 74:    LDC  3,2(6) 	Load constant 
 75:     LD  4,-4(1) 	Load left into ac1 
 76:    SUB  4,4,3 	Op < 
 77:    LDC  3,1(6) 	True case 
 78:    JLT  4,1(7) 	Jump if true 
 79:    LDC  3,0(6) 	False case 
 80:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
 81:    LDA  1,-2(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-66(7) 	CALL outputb
 84:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
 85:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 86:    LDC  3,1(6) 	Load constant 
 87:     ST  3,-4(1) 	Save left side 
 88:    LDC  3,2(6) 	Load constant 
 89:     LD  4,-4(1) 	Load left into ac1 
 90:    SUB  4,4,3 	Op == 
 91:    LDC  3,1(6) 	True case 
 92:    JEQ  4,1(7) 	Jump if true 
 93:    LDC  3,0(6) 	False case 
 94:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
 95:    LDA  1,-2(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-80(7) 	CALL outputb
 98:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
 99:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
100:    LDC  3,2(6) 	Load constant 
101:     ST  3,-4(1) 	Save left side 
102:    LDC  3,2(6) 	Load constant 
103:     LD  4,-4(1) 	Load left into ac1 
104:    SUB  4,4,3 	Op == 
105:    LDC  3,1(6) 	True case 
106:    JEQ  4,1(7) 	Jump if true 
107:    LDC  3,0(6) 	False case 
108:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
109:    LDA  1,-2(1) 	Load address of new frame 
110:    LDA  3,1(7) 	Return address in ac 
111:    LDA  7,-94(7) 	CALL outputb
112:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
113:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
114:    LDC  3,3(6) 	Load constant 
115:     ST  3,-4(1) 	Save left side 
116:    LDC  3,2(6) 	Load constant 
117:     LD  4,-4(1) 	Load left into ac1 
118:    SUB  4,4,3 	Op == 
119:    LDC  3,1(6) 	True case 
120:    JEQ  4,1(7) 	Jump if true 
121:    LDC  3,0(6) 	False case 
122:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
123:    LDA  1,-2(1) 	Load address of new frame 
124:    LDA  3,1(7) 	Return address in ac 
125:    LDA  7,-108(7) 	CALL outputb
126:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
127:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
128:    LDC  3,1(6) 	Load constant 
129:     ST  3,-4(1) 	Save left side 
130:    LDC  3,2(6) 	Load constant 
131:     LD  4,-4(1) 	Load left into ac1 
132:    SUB  4,4,3 	Op > 
133:    LDC  3,1(6) 	True case 
134:    JGT  4,1(7) 	Jump if true 
135:    LDC  3,0(6) 	False case 
136:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
137:    LDA  1,-2(1) 	Load address of new frame 
138:    LDA  3,1(7) 	Return address in ac 
139:    LDA  7,-122(7) 	CALL outputb
140:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
141:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
142:    LDC  3,2(6) 	Load constant 
143:     ST  3,-4(1) 	Save left side 
144:    LDC  3,2(6) 	Load constant 
145:     LD  4,-4(1) 	Load left into ac1 
146:    SUB  4,4,3 	Op > 
147:    LDC  3,1(6) 	True case 
148:    JGT  4,1(7) 	Jump if true 
149:    LDC  3,0(6) 	False case 
150:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
151:    LDA  1,-2(1) 	Load address of new frame 
152:    LDA  3,1(7) 	Return address in ac 
153:    LDA  7,-136(7) 	CALL outputb
154:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
155:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
156:    LDC  3,3(6) 	Load constant 
157:     ST  3,-4(1) 	Save left side 
158:    LDC  3,2(6) 	Load constant 
159:     LD  4,-4(1) 	Load left into ac1 
160:    SUB  4,4,3 	Op > 
161:    LDC  3,1(6) 	True case 
162:    JGT  4,1(7) 	Jump if true 
163:    LDC  3,0(6) 	False case 
164:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
165:    LDA  1,-2(1) 	Load address of new frame 
166:    LDA  3,1(7) 	Return address in ac 
167:    LDA  7,-150(7) 	CALL outputb
168:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
169:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
170:    LDC  3,1(6) 	Load constant 
171:     ST  3,-4(1) 	Save left side 
172:    LDC  3,2(6) 	Load constant 
173:     LD  4,-4(1) 	Load left into ac1 
174:    SUB  4,4,3 	Op <= 
175:    LDC  3,1(6) 	True case 
176:    JLE  4,1(7) 	Jump if true 
177:    LDC  3,0(6) 	False case 
178:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
179:    LDA  1,-2(1) 	Load address of new frame 
180:    LDA  3,1(7) 	Return address in ac 
181:    LDA  7,-164(7) 	CALL outputb
182:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
183:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
184:    LDC  3,2(6) 	Load constant 
185:     ST  3,-4(1) 	Save left side 
186:    LDC  3,2(6) 	Load constant 
187:     LD  4,-4(1) 	Load left into ac1 
188:    SUB  4,4,3 	Op <= 
189:    LDC  3,1(6) 	True case 
190:    JLE  4,1(7) 	Jump if true 
191:    LDC  3,0(6) 	False case 
192:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
193:    LDA  1,-2(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-178(7) 	CALL outputb
196:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
197:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
198:    LDC  3,3(6) 	Load constant 
199:     ST  3,-4(1) 	Save left side 
200:    LDC  3,2(6) 	Load constant 
201:     LD  4,-4(1) 	Load left into ac1 
202:    SUB  4,4,3 	Op <= 
203:    LDC  3,1(6) 	True case 
204:    JLE  4,1(7) 	Jump if true 
205:    LDC  3,0(6) 	False case 
206:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
207:    LDA  1,-2(1) 	Load address of new frame 
208:    LDA  3,1(7) 	Return address in ac 
209:    LDA  7,-192(7) 	CALL outputb
210:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
211:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
212:    LDC  3,1(6) 	Load constant 
213:     ST  3,-4(1) 	Save left side 
214:    LDC  3,2(6) 	Load constant 
215:     LD  4,-4(1) 	Load left into ac1 
216:    SUB  4,4,3 	Op >= 
217:    LDC  3,1(6) 	True case 
218:    JGE  4,1(7) 	Jump if true 
219:    LDC  3,0(6) 	False case 
220:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
221:    LDA  1,-2(1) 	Load address of new frame 
222:    LDA  3,1(7) 	Return address in ac 
223:    LDA  7,-206(7) 	CALL outputb
224:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
225:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
226:    LDC  3,2(6) 	Load constant 
227:     ST  3,-4(1) 	Save left side 
228:    LDC  3,2(6) 	Load constant 
229:     LD  4,-4(1) 	Load left into ac1 
230:    SUB  4,4,3 	Op >= 
231:    LDC  3,1(6) 	True case 
232:    JGE  4,1(7) 	Jump if true 
233:    LDC  3,0(6) 	False case 
234:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
235:    LDA  1,-2(1) 	Load address of new frame 
236:    LDA  3,1(7) 	Return address in ac 
237:    LDA  7,-220(7) 	CALL outputb
238:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
239:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
240:    LDC  3,3(6) 	Load constant 
241:     ST  3,-4(1) 	Save left side 
242:    LDC  3,2(6) 	Load constant 
243:     LD  4,-4(1) 	Load left into ac1 
244:    SUB  4,4,3 	Op >= 
245:    LDC  3,1(6) 	True case 
246:    JGE  4,1(7) 	Jump if true 
247:    LDC  3,0(6) 	False case 
248:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
249:    LDA  1,-2(1) 	Load address of new frame 
250:    LDA  3,1(7) 	Return address in ac 
251:    LDA  7,-234(7) 	CALL outputb
252:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
253:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
254:    LDC  3,1(6) 	Load constant 
255:     ST  3,-4(1) 	Save left side 
256:    LDC  3,2(6) 	Load constant 
257:     LD  4,-4(1) 	Load left into ac1 
258:    SUB  3,4,3 	Op != 
259:    JEQ  3,1(7) 	Jump if true 
260:    LDC  3,1(6) 	True case 
261:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
262:    LDA  1,-2(1) 	Load address of new frame 
263:    LDA  3,1(7) 	Return address in ac 
264:    LDA  7,-247(7) 	CALL outputb
265:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
266:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
267:    LDC  3,2(6) 	Load constant 
268:     ST  3,-4(1) 	Save left side 
269:    LDC  3,2(6) 	Load constant 
270:     LD  4,-4(1) 	Load left into ac1 
271:    SUB  3,4,3 	Op != 
272:    JEQ  3,1(7) 	Jump if true 
273:    LDC  3,1(6) 	True case 
274:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
275:    LDA  1,-2(1) 	Load address of new frame 
276:    LDA  3,1(7) 	Return address in ac 
277:    LDA  7,-260(7) 	CALL outputb
278:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
279:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
280:    LDC  3,3(6) 	Load constant 
281:     ST  3,-4(1) 	Save left side 
282:    LDC  3,2(6) 	Load constant 
283:     LD  4,-4(1) 	Load left into ac1 
284:    SUB  3,4,3 	Op != 
285:    JEQ  3,1(7) 	Jump if true 
286:    LDC  3,1(6) 	True case 
287:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
288:    LDA  1,-2(1) 	Load address of new frame 
289:    LDA  3,1(7) 	Return address in ac 
290:    LDA  7,-273(7) 	CALL outputb
291:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* END compound statement
* Add standard closing in case there is no return statement
292:    LDC  2,0(6) 	Set return value to 0 
293:     LD  3,-1(1) 	Load return address 
294:     LD  1,0(1) 	Adjust fp 
295:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,295(7) 	Jump to init [backpatch] 
* BEGIN Init
296:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
297:    LDA  1,0(0) 	set first frame at end of globals 
298:     ST  1,0(1) 	store old fp (point to self) 
299:    LDA  3,1(7) 	Return address in ac 
300:    LDA  7,-259(7) 	Jump to main 
301:   HALT  0,0,0 	DONE! 
* END Init
