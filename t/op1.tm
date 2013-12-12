* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  op1.c-
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
 44:    LDC  3,111(6) 	Load constant 
 45:     ST  3,-4(1) 	Save left side 
 46:    LDC  3,222(6) 	Load constant 
 47:     LD  4,-4(1) 	Load left into ac1 
 48:    SUB  4,4,3 	Op <= 
 49:    LDC  3,1(6) 	True case 
 50:    JLE  4,1(7) 	Jump if true 
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
 58:    LDC  3,222(6) 	Load constant 
 59:     ST  3,-4(1) 	Save left side 
 60:    LDC  3,111(6) 	Load constant 
 61:     LD  4,-4(1) 	Load left into ac1 
 62:    SUB  4,4,3 	Op <= 
 63:    LDC  3,1(6) 	True case 
 64:    JLE  4,1(7) 	Jump if true 
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
 72:    LDC  3,111(6) 	Load constant 
 73:     ST  3,-4(1) 	Save left side 
 74:    LDC  3,111(6) 	Load constant 
 75:     LD  4,-4(1) 	Load left into ac1 
 76:    SUB  4,4,3 	Op <= 
 77:    LDC  3,1(6) 	True case 
 78:    JLE  4,1(7) 	Jump if true 
 79:    LDC  3,0(6) 	False case 
 80:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
 81:    LDA  1,-2(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-66(7) 	CALL outputb
 84:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
 85:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 86:    LDA  1,-2(1) 	Load address of new frame 
 87:    LDA  3,1(7) 	Return address in ac 
 88:    LDA  7,-52(7) 	CALL outnl
 89:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
 90:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
 91:    LDC  3,111(6) 	Load constant 
 92:     ST  3,-4(1) 	Save left side 
 93:    LDC  3,222(6) 	Load constant 
 94:     LD  4,-4(1) 	Load left into ac1 
 95:    SUB  4,4,3 	Op < 
 96:    LDC  3,1(6) 	True case 
 97:    JLT  4,1(7) 	Jump if true 
 98:    LDC  3,0(6) 	False case 
 99:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
100:    LDA  1,-2(1) 	Load address of new frame 
101:    LDA  3,1(7) 	Return address in ac 
102:    LDA  7,-85(7) 	CALL outputb
103:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
104:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
105:    LDC  3,222(6) 	Load constant 
106:     ST  3,-4(1) 	Save left side 
107:    LDC  3,111(6) 	Load constant 
108:     LD  4,-4(1) 	Load left into ac1 
109:    SUB  4,4,3 	Op < 
110:    LDC  3,1(6) 	True case 
111:    JLT  4,1(7) 	Jump if true 
112:    LDC  3,0(6) 	False case 
113:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
114:    LDA  1,-2(1) 	Load address of new frame 
115:    LDA  3,1(7) 	Return address in ac 
116:    LDA  7,-99(7) 	CALL outputb
117:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
118:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
119:    LDC  3,111(6) 	Load constant 
120:     ST  3,-4(1) 	Save left side 
121:    LDC  3,111(6) 	Load constant 
122:     LD  4,-4(1) 	Load left into ac1 
123:    SUB  4,4,3 	Op < 
124:    LDC  3,1(6) 	True case 
125:    JLT  4,1(7) 	Jump if true 
126:    LDC  3,0(6) 	False case 
127:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
128:    LDA  1,-2(1) 	Load address of new frame 
129:    LDA  3,1(7) 	Return address in ac 
130:    LDA  7,-113(7) 	CALL outputb
131:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
132:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
133:    LDA  1,-2(1) 	Load address of new frame 
134:    LDA  3,1(7) 	Return address in ac 
135:    LDA  7,-99(7) 	CALL outnl
136:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
137:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
138:    LDC  3,111(6) 	Load constant 
139:     ST  3,-4(1) 	Save left side 
140:    LDC  3,222(6) 	Load constant 
141:     LD  4,-4(1) 	Load left into ac1 
142:    SUB  4,4,3 	Op > 
143:    LDC  3,1(6) 	True case 
144:    JGT  4,1(7) 	Jump if true 
145:    LDC  3,0(6) 	False case 
146:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
147:    LDA  1,-2(1) 	Load address of new frame 
148:    LDA  3,1(7) 	Return address in ac 
149:    LDA  7,-132(7) 	CALL outputb
150:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
151:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
152:    LDC  3,222(6) 	Load constant 
153:     ST  3,-4(1) 	Save left side 
154:    LDC  3,111(6) 	Load constant 
155:     LD  4,-4(1) 	Load left into ac1 
156:    SUB  4,4,3 	Op > 
157:    LDC  3,1(6) 	True case 
158:    JGT  4,1(7) 	Jump if true 
159:    LDC  3,0(6) 	False case 
160:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
161:    LDA  1,-2(1) 	Load address of new frame 
162:    LDA  3,1(7) 	Return address in ac 
163:    LDA  7,-146(7) 	CALL outputb
164:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
165:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
166:    LDC  3,111(6) 	Load constant 
167:     ST  3,-4(1) 	Save left side 
168:    LDC  3,111(6) 	Load constant 
169:     LD  4,-4(1) 	Load left into ac1 
170:    SUB  4,4,3 	Op > 
171:    LDC  3,1(6) 	True case 
172:    JGT  4,1(7) 	Jump if true 
173:    LDC  3,0(6) 	False case 
174:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
175:    LDA  1,-2(1) 	Load address of new frame 
176:    LDA  3,1(7) 	Return address in ac 
177:    LDA  7,-160(7) 	CALL outputb
178:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
179:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
180:    LDA  1,-2(1) 	Load address of new frame 
181:    LDA  3,1(7) 	Return address in ac 
182:    LDA  7,-146(7) 	CALL outnl
183:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
184:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
185:    LDC  3,111(6) 	Load constant 
186:     ST  3,-4(1) 	Save left side 
187:    LDC  3,222(6) 	Load constant 
188:     LD  4,-4(1) 	Load left into ac1 
189:    SUB  4,4,3 	Op >= 
190:    LDC  3,1(6) 	True case 
191:    JGE  4,1(7) 	Jump if true 
192:    LDC  3,0(6) 	False case 
193:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
194:    LDA  1,-2(1) 	Load address of new frame 
195:    LDA  3,1(7) 	Return address in ac 
196:    LDA  7,-179(7) 	CALL outputb
197:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
198:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
199:    LDC  3,222(6) 	Load constant 
200:     ST  3,-4(1) 	Save left side 
201:    LDC  3,111(6) 	Load constant 
202:     LD  4,-4(1) 	Load left into ac1 
203:    SUB  4,4,3 	Op >= 
204:    LDC  3,1(6) 	True case 
205:    JGE  4,1(7) 	Jump if true 
206:    LDC  3,0(6) 	False case 
207:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
208:    LDA  1,-2(1) 	Load address of new frame 
209:    LDA  3,1(7) 	Return address in ac 
210:    LDA  7,-193(7) 	CALL outputb
211:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
212:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
213:    LDC  3,111(6) 	Load constant 
214:     ST  3,-4(1) 	Save left side 
215:    LDC  3,111(6) 	Load constant 
216:     LD  4,-4(1) 	Load left into ac1 
217:    SUB  4,4,3 	Op >= 
218:    LDC  3,1(6) 	True case 
219:    JGE  4,1(7) 	Jump if true 
220:    LDC  3,0(6) 	False case 
221:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
222:    LDA  1,-2(1) 	Load address of new frame 
223:    LDA  3,1(7) 	Return address in ac 
224:    LDA  7,-207(7) 	CALL outputb
225:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
226:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
227:    LDA  1,-2(1) 	Load address of new frame 
228:    LDA  3,1(7) 	Return address in ac 
229:    LDA  7,-193(7) 	CALL outnl
230:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
231:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
232:    LDC  3,111(6) 	Load constant 
233:     ST  3,-4(1) 	Save left side 
234:    LDC  3,222(6) 	Load constant 
235:     LD  4,-4(1) 	Load left into ac1 
236:    SUB  4,4,3 	Op == 
237:    LDC  3,1(6) 	True case 
238:    JEQ  4,1(7) 	Jump if true 
239:    LDC  3,0(6) 	False case 
240:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
241:    LDA  1,-2(1) 	Load address of new frame 
242:    LDA  3,1(7) 	Return address in ac 
243:    LDA  7,-226(7) 	CALL outputb
244:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
245:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
246:    LDC  3,222(6) 	Load constant 
247:     ST  3,-4(1) 	Save left side 
248:    LDC  3,111(6) 	Load constant 
249:     LD  4,-4(1) 	Load left into ac1 
250:    SUB  4,4,3 	Op == 
251:    LDC  3,1(6) 	True case 
252:    JEQ  4,1(7) 	Jump if true 
253:    LDC  3,0(6) 	False case 
254:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
255:    LDA  1,-2(1) 	Load address of new frame 
256:    LDA  3,1(7) 	Return address in ac 
257:    LDA  7,-240(7) 	CALL outputb
258:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
259:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
260:    LDC  3,111(6) 	Load constant 
261:     ST  3,-4(1) 	Save left side 
262:    LDC  3,111(6) 	Load constant 
263:     LD  4,-4(1) 	Load left into ac1 
264:    SUB  4,4,3 	Op == 
265:    LDC  3,1(6) 	True case 
266:    JEQ  4,1(7) 	Jump if true 
267:    LDC  3,0(6) 	False case 
268:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
269:    LDA  1,-2(1) 	Load address of new frame 
270:    LDA  3,1(7) 	Return address in ac 
271:    LDA  7,-254(7) 	CALL outputb
272:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
273:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
274:    LDA  1,-2(1) 	Load address of new frame 
275:    LDA  3,1(7) 	Return address in ac 
276:    LDA  7,-240(7) 	CALL outnl
277:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
278:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
279:    LDC  3,111(6) 	Load constant 
280:     ST  3,-4(1) 	Save left side 
281:    LDC  3,222(6) 	Load constant 
282:     LD  4,-4(1) 	Load left into ac1 
283:    SUB  3,4,3 	Op != 
284:    JEQ  3,1(7) 	Jump if true 
285:    LDC  3,1(6) 	True case 
286:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
287:    LDA  1,-2(1) 	Load address of new frame 
288:    LDA  3,1(7) 	Return address in ac 
289:    LDA  7,-272(7) 	CALL outputb
290:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
291:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
292:    LDC  3,222(6) 	Load constant 
293:     ST  3,-4(1) 	Save left side 
294:    LDC  3,111(6) 	Load constant 
295:     LD  4,-4(1) 	Load left into ac1 
296:    SUB  3,4,3 	Op != 
297:    JEQ  3,1(7) 	Jump if true 
298:    LDC  3,1(6) 	True case 
299:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
300:    LDA  1,-2(1) 	Load address of new frame 
301:    LDA  3,1(7) 	Return address in ac 
302:    LDA  7,-285(7) 	CALL outputb
303:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
304:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
305:    LDC  3,111(6) 	Load constant 
306:     ST  3,-4(1) 	Save left side 
307:    LDC  3,111(6) 	Load constant 
308:     LD  4,-4(1) 	Load left into ac1 
309:    SUB  3,4,3 	Op != 
310:    JEQ  3,1(7) 	Jump if true 
311:    LDC  3,1(6) 	True case 
312:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
313:    LDA  1,-2(1) 	Load address of new frame 
314:    LDA  3,1(7) 	Return address in ac 
315:    LDA  7,-298(7) 	CALL outputb
316:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
317:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
318:    LDA  1,-2(1) 	Load address of new frame 
319:    LDA  3,1(7) 	Return address in ac 
320:    LDA  7,-284(7) 	CALL outnl
321:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
322:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
323:    LDC  3,111(6) 	Load constant 
324:     ST  3,-4(1) 	Save left side 
325:    LDC  3,222(6) 	Load constant 
326:     LD  4,-4(1) 	Load left into ac1 
327:    SUB  3,4,3 	Op != 
328:    JEQ  3,1(7) 	Jump if true 
329:    LDC  3,1(6) 	True case 
330:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
331:    LDA  1,-2(1) 	Load address of new frame 
332:    LDA  3,1(7) 	Return address in ac 
333:    LDA  7,-316(7) 	CALL outputb
334:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
335:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
336:    LDC  3,222(6) 	Load constant 
337:     ST  3,-4(1) 	Save left side 
338:    LDC  3,111(6) 	Load constant 
339:     LD  4,-4(1) 	Load left into ac1 
340:    SUB  3,4,3 	Op != 
341:    JEQ  3,1(7) 	Jump if true 
342:    LDC  3,1(6) 	True case 
343:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
344:    LDA  1,-2(1) 	Load address of new frame 
345:    LDA  3,1(7) 	Return address in ac 
346:    LDA  7,-329(7) 	CALL outputb
347:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
348:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
349:    LDC  3,111(6) 	Load constant 
350:     ST  3,-4(1) 	Save left side 
351:    LDC  3,111(6) 	Load constant 
352:     LD  4,-4(1) 	Load left into ac1 
353:    SUB  3,4,3 	Op != 
354:    JEQ  3,1(7) 	Jump if true 
355:    LDC  3,1(6) 	True case 
356:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
357:    LDA  1,-2(1) 	Load address of new frame 
358:    LDA  3,1(7) 	Return address in ac 
359:    LDA  7,-342(7) 	CALL outputb
360:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
361:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
362:    LDA  1,-2(1) 	Load address of new frame 
363:    LDA  3,1(7) 	Return address in ac 
364:    LDA  7,-328(7) 	CALL outnl
365:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
366:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
367:    LDC  3,0(6) 	Load constant 
368:     ST  3,-4(1) 	Save left side 
369:    LDC  3,0(6) 	Load constant 
370:     LD  4,-4(1) 	Load left into ac1 
371:    JEQ  3,1(7) 	Op AND 
372:    LDA  3,0(4) 	 
373:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
374:    LDA  1,-2(1) 	Load address of new frame 
375:    LDA  3,1(7) 	Return address in ac 
376:    LDA  7,-359(7) 	CALL outputb
377:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
378:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
379:    LDC  3,0(6) 	Load constant 
380:     ST  3,-4(1) 	Save left side 
381:    LDC  3,1(6) 	Load constant 
382:     LD  4,-4(1) 	Load left into ac1 
383:    JEQ  3,1(7) 	Op AND 
384:    LDA  3,0(4) 	 
385:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
386:    LDA  1,-2(1) 	Load address of new frame 
387:    LDA  3,1(7) 	Return address in ac 
388:    LDA  7,-371(7) 	CALL outputb
389:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
390:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
391:    LDC  3,1(6) 	Load constant 
392:     ST  3,-4(1) 	Save left side 
393:    LDC  3,0(6) 	Load constant 
394:     LD  4,-4(1) 	Load left into ac1 
395:    JEQ  3,1(7) 	Op AND 
396:    LDA  3,0(4) 	 
397:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
398:    LDA  1,-2(1) 	Load address of new frame 
399:    LDA  3,1(7) 	Return address in ac 
400:    LDA  7,-383(7) 	CALL outputb
401:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
402:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
403:    LDC  3,1(6) 	Load constant 
404:     ST  3,-4(1) 	Save left side 
405:    LDC  3,1(6) 	Load constant 
406:     LD  4,-4(1) 	Load left into ac1 
407:    JEQ  3,1(7) 	Op AND 
408:    LDA  3,0(4) 	 
409:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
410:    LDA  1,-2(1) 	Load address of new frame 
411:    LDA  3,1(7) 	Return address in ac 
412:    LDA  7,-395(7) 	CALL outputb
413:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
414:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
415:    LDA  1,-2(1) 	Load address of new frame 
416:    LDA  3,1(7) 	Return address in ac 
417:    LDA  7,-381(7) 	CALL outnl
418:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
419:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
420:    LDC  3,0(6) 	Load constant 
421:     ST  3,-4(1) 	Save left side 
422:    LDC  3,0(6) 	Load constant 
423:     LD  4,-4(1) 	Load left into ac1 
424:    JGT  3,1(7) 	Op OR 
425:    LDA  3,0(4) 	 
426:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
427:    LDA  1,-2(1) 	Load address of new frame 
428:    LDA  3,1(7) 	Return address in ac 
429:    LDA  7,-412(7) 	CALL outputb
430:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
431:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
432:    LDC  3,0(6) 	Load constant 
433:     ST  3,-4(1) 	Save left side 
434:    LDC  3,1(6) 	Load constant 
435:     LD  4,-4(1) 	Load left into ac1 
436:    JGT  3,1(7) 	Op OR 
437:    LDA  3,0(4) 	 
438:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
439:    LDA  1,-2(1) 	Load address of new frame 
440:    LDA  3,1(7) 	Return address in ac 
441:    LDA  7,-424(7) 	CALL outputb
442:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
443:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
444:    LDC  3,1(6) 	Load constant 
445:     ST  3,-4(1) 	Save left side 
446:    LDC  3,0(6) 	Load constant 
447:     LD  4,-4(1) 	Load left into ac1 
448:    JGT  3,1(7) 	Op OR 
449:    LDA  3,0(4) 	 
450:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
451:    LDA  1,-2(1) 	Load address of new frame 
452:    LDA  3,1(7) 	Return address in ac 
453:    LDA  7,-436(7) 	CALL outputb
454:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
455:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
456:    LDC  3,1(6) 	Load constant 
457:     ST  3,-4(1) 	Save left side 
458:    LDC  3,1(6) 	Load constant 
459:     LD  4,-4(1) 	Load left into ac1 
460:    JGT  3,1(7) 	Op OR 
461:    LDA  3,0(4) 	 
462:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
463:    LDA  1,-2(1) 	Load address of new frame 
464:    LDA  3,1(7) 	Return address in ac 
465:    LDA  7,-448(7) 	CALL outputb
466:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
467:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
468:    LDA  1,-2(1) 	Load address of new frame 
469:    LDA  3,1(7) 	Return address in ac 
470:    LDA  7,-434(7) 	CALL outnl
471:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
472:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
473:    LDC  3,0(6) 	Load constant 
474:    LDC  4,1(6) 	Load 1 
475:    SUB  3,4,3 	Op NOT 
476:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
477:    LDA  1,-2(1) 	Load address of new frame 
478:    LDA  3,1(7) 	Return address in ac 
479:    LDA  7,-462(7) 	CALL outputb
480:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
481:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
482:    LDC  3,1(6) 	Load constant 
483:    LDC  4,1(6) 	Load 1 
484:    SUB  3,4,3 	Op NOT 
485:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
486:    LDA  1,-2(1) 	Load address of new frame 
487:    LDA  3,1(7) 	Return address in ac 
488:    LDA  7,-471(7) 	CALL outputb
489:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
490:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
491:    LDA  1,-2(1) 	Load address of new frame 
492:    LDA  3,1(7) 	Return address in ac 
493:    LDA  7,-457(7) 	CALL outnl
494:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
495:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
496:    LDC  3,333(6) 	Load constant 
497:     ST  3,-4(1) 	Save left side 
498:    LDC  3,444(6) 	Load constant 
499:     LD  4,-4(1) 	Load left into ac1 
500:    ADD  3,4,3 	Op + 
501:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
502:    LDA  1,-2(1) 	Load address of new frame 
503:    LDA  3,1(7) 	Return address in ac 
504:    LDA  7,-499(7) 	CALL output
505:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
506:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
507:    LDC  3,333(6) 	Load constant 
508:     ST  3,-4(1) 	Save left side 
509:    LDC  3,444(6) 	Load constant 
510:     LD  4,-4(1) 	Load left into ac1 
511:    SUB  3,4,3 	Op - 
512:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
513:    LDA  1,-2(1) 	Load address of new frame 
514:    LDA  3,1(7) 	Return address in ac 
515:    LDA  7,-510(7) 	CALL output
516:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
517:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
518:    LDC  3,333(6) 	Load constant 
519:     ST  3,-4(1) 	Save left side 
520:    LDC  3,444(6) 	Load constant 
521:     LD  4,-4(1) 	Load left into ac1 
522:    MUL  3,4,3 	Op * 
523:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
524:    LDA  1,-2(1) 	Load address of new frame 
525:    LDA  3,1(7) 	Return address in ac 
526:    LDA  7,-521(7) 	CALL output
527:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
528:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
529:    LDC  3,333(6) 	Load constant 
530:     ST  3,-4(1) 	Save left side 
531:    LDC  3,444(6) 	Load constant 
532:     LD  4,-4(1) 	Load left into ac1 
533:    DIV  3,4,3 	Op / 
534:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
535:    LDA  1,-2(1) 	Load address of new frame 
536:    LDA  3,1(7) 	Return address in ac 
537:    LDA  7,-532(7) 	CALL output
538:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
539:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
540:    LDC  3,3333(6) 	Load constant 
541:     ST  3,-4(1) 	Save left side 
542:    LDC  3,444(6) 	Load constant 
543:     LD  4,-4(1) 	Load left into ac1 
544:    DIV  5,4,3 	Op % 
545:    MUL  5,5,3 	 
546:    SUB  3,4,5 	 
547:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
548:    LDA  1,-2(1) 	Load address of new frame 
549:    LDA  3,1(7) 	Return address in ac 
550:    LDA  7,-545(7) 	CALL output
551:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
552:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
553:    LDC  3,444(6) 	Load constant 
554:    LDC  4,0(6) 	Load 0 
555:    SUB  3,4,3 	Op unary - 
556:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
557:    LDA  1,-2(1) 	Load address of new frame 
558:    LDA  3,1(7) 	Return address in ac 
559:    LDA  7,-554(7) 	CALL output
560:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* RETURN
561:     LD  3,-1(1) 	Load return address 
562:     LD  1,0(1) 	Adjust fp 
563:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
564:    LDC  2,0(6) 	Set return value to 0 
565:     LD  3,-1(1) 	Load return address 
566:     LD  1,0(1) 	Adjust fp 
567:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,567(7) 	Jump to init [backpatch] 
* BEGIN Init
568:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
569:    LDA  1,0(0) 	set first frame at end of globals 
570:     ST  1,0(1) 	store old fp (point to self) 
571:    LDA  3,1(7) 	Return address in ac 
572:    LDA  7,-531(7) 	Jump to main 
573:   HALT  0,0,0 	DONE! 
* END Init
