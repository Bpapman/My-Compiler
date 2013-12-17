* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  d05.tm
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
 43:    LDC  3,213(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
 45:    LDC  3,11(6) 	Load constant 
 46:     ST  3,-3(1) 	Store variable b
* EXPRESSION STMT
 47:    LDC  3,4133(6) 	Load constant 
 48:     ST  3,-4(1) 	Store variable c
* EXPRESSION STMT
* 			Begin call to  outputb
 49:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
 50:     LD  3,-2(1) 	Load variable a
 51:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 52:     LD  3,-3(1) 	Load variable b
 53:     LD  4,-7(1) 	Load left into ac1 
 54:    SUB  4,4,3 	Op < 
 55:    LDC  3,1(6) 	True case 
 56:    JGT  4,1(7) 	Jump if true 
 57:    LDC  3,0(6) 	False case 
 58:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 59:     LD  3,-3(1) 	Load variable b
 60:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
 61:     LD  3,-4(1) 	Load variable c
 62:     LD  4,-8(1) 	Load left into ac1 
 63:    SUB  4,4,3 	Op <= 
 64:    LDC  3,1(6) 	True case 
 65:    JLE  4,1(7) 	Jump if true 
 66:    LDC  3,0(6) 	False case 
 67:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
 68:     LD  3,-4(1) 	Load variable c
 69:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
 70:     LD  3,-2(1) 	Load variable a
 71:     LD  4,-9(1) 	Load left into ac1 
 72:    SUB  4,4,3 	Op >= 
 73:    LDC  3,1(6) 	True case 
 74:    JTE  4,1(7) 	Jump if true 
 75:    LDC  3,0(6) 	False case 
 76:     LD  4,-8(1) 	Load left into ac1 
 77:    JEQ  3,1(7) 	Op AND 
 78:    LDA  3,0(5) 	 
 79:     LD  4,-7(1) 	Load left into ac1 
 80:    JEQ  3,1(7) 	Op OR 
 81:    LDA  3,0(5) 	 
 82:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
 83:    LDA  1,-5(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-68(7) 	CALL outputb
 86:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
 87:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
 88:     LD  3,-2(1) 	Load variable a
 89:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 90:     LD  3,-3(1) 	Load variable b
 91:     LD  4,-7(1) 	Load left into ac1 
 92:    SUB  4,4,3 	Op < 
 93:    LDC  3,1(6) 	True case 
 94:    JGT  4,1(7) 	Jump if true 
 95:    LDC  3,0(6) 	False case 
 96:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 97:     LD  3,-3(1) 	Load variable b
 98:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
 99:     LD  3,-4(1) 	Load variable c
100:     LD  4,-8(1) 	Load left into ac1 
101:    SUB  4,4,3 	Op <= 
102:    LDC  3,1(6) 	True case 
103:    JLE  4,1(7) 	Jump if true 
104:    LDC  3,0(6) 	False case 
105:     LD  4,-7(1) 	Load left into ac1 
106:    JEQ  3,1(7) 	Op AND 
107:    LDA  3,0(5) 	 
108:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
109:     LD  3,-4(1) 	Load variable c
110:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
111:     LD  3,-2(1) 	Load variable a
112:     LD  4,-8(1) 	Load left into ac1 
113:    SUB  4,4,3 	Op >= 
114:    LDC  3,1(6) 	True case 
115:    JTE  4,1(7) 	Jump if true 
116:    LDC  3,0(6) 	False case 
117:     LD  4,-7(1) 	Load left into ac1 
118:    JEQ  3,1(7) 	Op OR 
119:    LDA  3,0(5) 	 
120:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
121:    LDA  1,-5(1) 	Load address of new frame 
122:    LDA  3,1(7) 	Return address in ac 
123:    LDA  7,-106(7) 	CALL outputb
124:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
125:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
126:     LD  3,-2(1) 	Load variable a
127:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
128:     LD  3,-3(1) 	Load variable b
129:     LD  4,-7(1) 	Load left into ac1 
130:    SUB  4,4,3 	Op < 
131:    LDC  3,1(6) 	True case 
132:    JGT  4,1(7) 	Jump if true 
133:    LDC  3,0(6) 	False case 
134:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
135:     LD  3,-3(1) 	Load variable b
136:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
137:     LD  3,-4(1) 	Load variable c
138:     LD  4,-8(1) 	Load left into ac1 
139:    SUB  4,4,3 	Op <= 
140:    LDC  3,1(6) 	True case 
141:    JLE  4,1(7) 	Jump if true 
142:    LDC  3,0(6) 	False case 
143:     LD  4,-7(1) 	Load left into ac1 
144:    JEQ  3,1(7) 	Op AND 
145:    LDA  3,0(5) 	 
146:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
147:     LD  3,-4(1) 	Load variable c
148:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
149:     LD  3,-2(1) 	Load variable a
150:     LD  4,-8(1) 	Load left into ac1 
151:    SUB  4,4,3 	Op >= 
152:    LDC  3,1(6) 	True case 
153:    JTE  4,1(7) 	Jump if true 
154:    LDC  3,0(6) 	False case 
155:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
156:     LD  3,-4(1) 	Load variable c
157:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
158:     LD  3,-2(1) 	Load variable a
159:     LD  4,-9(1) 	Load left into ac1 
160:    SUB  4,4,3 	Op >= 
161:    LDC  3,1(6) 	True case 
162:    JTE  4,1(7) 	Jump if true 
163:    LDC  3,0(6) 	False case 
164:     LD  4,-8(1) 	Load left into ac1 
165:    JEQ  3,1(7) 	Op AND 
166:    LDA  3,0(5) 	 
167:     LD  4,-7(1) 	Load left into ac1 
168:    JEQ  3,1(7) 	Op OR 
169:    LDA  3,0(5) 	 
170:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
171:    LDA  1,-5(1) 	Load address of new frame 
172:    LDA  3,1(7) 	Return address in ac 
173:    LDA  7,-156(7) 	CALL outputb
174:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
175:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
176:     LD  3,-2(1) 	Load variable a
177:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
178:     LD  3,-3(1) 	Load variable b
179:     LD  4,-7(1) 	Load left into ac1 
180:    SUB  4,4,3 	Op < 
181:    LDC  3,1(6) 	True case 
182:    JGT  4,1(7) 	Jump if true 
183:    LDC  3,0(6) 	False case 
184:    LDA  3,1(5) 	Not load address 
185:    SUB  3,4,3 	Op Not 
186:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
187:     LD  3,-3(1) 	Load variable b
188:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
189:     LD  3,-4(1) 	Load variable c
190:     LD  4,-8(1) 	Load left into ac1 
191:    SUB  4,4,3 	Op <= 
192:    LDC  3,1(6) 	True case 
193:    JLE  4,1(7) 	Jump if true 
194:    LDC  3,0(6) 	False case 
195:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
196:     LD  3,-4(1) 	Load variable c
197:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
198:     LD  3,-2(1) 	Load variable a
199:     LD  4,-9(1) 	Load left into ac1 
200:    SUB  4,4,3 	Op >= 
201:    LDC  3,1(6) 	True case 
202:    JTE  4,1(7) 	Jump if true 
203:    LDC  3,0(6) 	False case 
204:     LD  4,-8(1) 	Load left into ac1 
205:    JEQ  3,1(7) 	Op AND 
206:    LDA  3,0(5) 	 
207:     LD  4,-7(1) 	Load left into ac1 
208:    JEQ  3,1(7) 	Op OR 
209:    LDA  3,0(5) 	 
210:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
211:    LDA  1,-5(1) 	Load address of new frame 
212:    LDA  3,1(7) 	Return address in ac 
213:    LDA  7,-196(7) 	CALL outputb
214:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
215:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
216:     LD  3,-2(1) 	Load variable a
217:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
218:     LD  3,-3(1) 	Load variable b
219:     LD  4,-7(1) 	Load left into ac1 
220:    SUB  4,4,3 	Op < 
221:    LDC  3,1(6) 	True case 
222:    JGT  4,1(7) 	Jump if true 
223:    LDC  3,0(6) 	False case 
224:    LDA  3,1(5) 	Not load address 
225:    SUB  3,4,3 	Op Not 
226:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
227:     LD  3,-3(1) 	Load variable b
228:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
229:     LD  3,-4(1) 	Load variable c
230:     LD  4,-8(1) 	Load left into ac1 
231:    SUB  4,4,3 	Op <= 
232:    LDC  3,1(6) 	True case 
233:    JLE  4,1(7) 	Jump if true 
234:    LDC  3,0(6) 	False case 
235:     LD  4,-7(1) 	Load left into ac1 
236:    JEQ  3,1(7) 	Op AND 
237:    LDA  3,0(5) 	 
238:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
239:     LD  3,-4(1) 	Load variable c
240:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
241:     LD  3,-2(1) 	Load variable a
242:     LD  4,-8(1) 	Load left into ac1 
243:    SUB  4,4,3 	Op >= 
244:    LDC  3,1(6) 	True case 
245:    JTE  4,1(7) 	Jump if true 
246:    LDC  3,0(6) 	False case 
247:     LD  4,-7(1) 	Load left into ac1 
248:    JEQ  3,1(7) 	Op OR 
249:    LDA  3,0(5) 	 
250:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
251:    LDA  1,-5(1) 	Load address of new frame 
252:    LDA  3,1(7) 	Return address in ac 
253:    LDA  7,-236(7) 	CALL outputb
254:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
255:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to outnl
256:    LDA  1,-5(1) 	Load address of new frame 
257:    LDA  3,1(7) 	Return address in ac 
258:    LDA  7,-222(7) 	CALL outnl
259:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
260:    LDC  3,213(6) 	Load constant 
261:     ST  3,-3(1) 	Store variable b
* EXPRESSION STMT
262:    LDC  3,11(6) 	Load constant 
263:     ST  3,-4(1) 	Store variable c
* EXPRESSION STMT
264:    LDC  3,4133(6) 	Load constant 
265:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
* 			Begin call to  outputb
266:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
267:     LD  3,-2(1) 	Load variable a
268:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
269:     LD  3,-3(1) 	Load variable b
270:     LD  4,-7(1) 	Load left into ac1 
271:    SUB  4,4,3 	Op < 
272:    LDC  3,1(6) 	True case 
273:    JGT  4,1(7) 	Jump if true 
274:    LDC  3,0(6) 	False case 
275:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
276:     LD  3,-3(1) 	Load variable b
277:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
278:     LD  3,-4(1) 	Load variable c
279:     LD  4,-8(1) 	Load left into ac1 
280:    SUB  4,4,3 	Op <= 
281:    LDC  3,1(6) 	True case 
282:    JLE  4,1(7) 	Jump if true 
283:    LDC  3,0(6) 	False case 
284:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
285:     LD  3,-4(1) 	Load variable c
286:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
287:     LD  3,-2(1) 	Load variable a
288:     LD  4,-9(1) 	Load left into ac1 
289:    SUB  4,4,3 	Op >= 
290:    LDC  3,1(6) 	True case 
291:    JTE  4,1(7) 	Jump if true 
292:    LDC  3,0(6) 	False case 
293:     LD  4,-8(1) 	Load left into ac1 
294:    JEQ  3,1(7) 	Op AND 
295:    LDA  3,0(5) 	 
296:     LD  4,-7(1) 	Load left into ac1 
297:    JEQ  3,1(7) 	Op OR 
298:    LDA  3,0(5) 	 
299:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
300:    LDA  1,-5(1) 	Load address of new frame 
301:    LDA  3,1(7) 	Return address in ac 
302:    LDA  7,-285(7) 	CALL outputb
303:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
304:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
305:     LD  3,-2(1) 	Load variable a
306:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
307:     LD  3,-3(1) 	Load variable b
308:     LD  4,-7(1) 	Load left into ac1 
309:    SUB  4,4,3 	Op < 
310:    LDC  3,1(6) 	True case 
311:    JGT  4,1(7) 	Jump if true 
312:    LDC  3,0(6) 	False case 
313:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
314:     LD  3,-3(1) 	Load variable b
315:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
316:     LD  3,-4(1) 	Load variable c
317:     LD  4,-8(1) 	Load left into ac1 
318:    SUB  4,4,3 	Op <= 
319:    LDC  3,1(6) 	True case 
320:    JLE  4,1(7) 	Jump if true 
321:    LDC  3,0(6) 	False case 
322:     LD  4,-7(1) 	Load left into ac1 
323:    JEQ  3,1(7) 	Op AND 
324:    LDA  3,0(5) 	 
325:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
326:     LD  3,-4(1) 	Load variable c
327:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
328:     LD  3,-2(1) 	Load variable a
329:     LD  4,-8(1) 	Load left into ac1 
330:    SUB  4,4,3 	Op >= 
331:    LDC  3,1(6) 	True case 
332:    JTE  4,1(7) 	Jump if true 
333:    LDC  3,0(6) 	False case 
334:     LD  4,-7(1) 	Load left into ac1 
335:    JEQ  3,1(7) 	Op OR 
336:    LDA  3,0(5) 	 
337:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
338:    LDA  1,-5(1) 	Load address of new frame 
339:    LDA  3,1(7) 	Return address in ac 
340:    LDA  7,-323(7) 	CALL outputb
341:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
342:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
343:     LD  3,-2(1) 	Load variable a
344:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
345:     LD  3,-3(1) 	Load variable b
346:     LD  4,-7(1) 	Load left into ac1 
347:    SUB  4,4,3 	Op < 
348:    LDC  3,1(6) 	True case 
349:    JGT  4,1(7) 	Jump if true 
350:    LDC  3,0(6) 	False case 
351:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
352:     LD  3,-3(1) 	Load variable b
353:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
354:     LD  3,-4(1) 	Load variable c
355:     LD  4,-8(1) 	Load left into ac1 
356:    SUB  4,4,3 	Op <= 
357:    LDC  3,1(6) 	True case 
358:    JLE  4,1(7) 	Jump if true 
359:    LDC  3,0(6) 	False case 
360:     LD  4,-7(1) 	Load left into ac1 
361:    JEQ  3,1(7) 	Op AND 
362:    LDA  3,0(5) 	 
363:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
364:     LD  3,-4(1) 	Load variable c
365:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
366:     LD  3,-2(1) 	Load variable a
367:     LD  4,-8(1) 	Load left into ac1 
368:    SUB  4,4,3 	Op >= 
369:    LDC  3,1(6) 	True case 
370:    JTE  4,1(7) 	Jump if true 
371:    LDC  3,0(6) 	False case 
372:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
373:     LD  3,-4(1) 	Load variable c
374:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
375:     LD  3,-2(1) 	Load variable a
376:     LD  4,-9(1) 	Load left into ac1 
377:    SUB  4,4,3 	Op >= 
378:    LDC  3,1(6) 	True case 
379:    JTE  4,1(7) 	Jump if true 
380:    LDC  3,0(6) 	False case 
381:     LD  4,-8(1) 	Load left into ac1 
382:    JEQ  3,1(7) 	Op AND 
383:    LDA  3,0(5) 	 
384:     LD  4,-7(1) 	Load left into ac1 
385:    JEQ  3,1(7) 	Op OR 
386:    LDA  3,0(5) 	 
387:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
388:    LDA  1,-5(1) 	Load address of new frame 
389:    LDA  3,1(7) 	Return address in ac 
390:    LDA  7,-373(7) 	CALL outputb
391:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
392:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
393:     LD  3,-2(1) 	Load variable a
394:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
395:     LD  3,-3(1) 	Load variable b
396:     LD  4,-7(1) 	Load left into ac1 
397:    SUB  4,4,3 	Op < 
398:    LDC  3,1(6) 	True case 
399:    JGT  4,1(7) 	Jump if true 
400:    LDC  3,0(6) 	False case 
401:    LDA  3,1(5) 	Not load address 
402:    SUB  3,4,3 	Op Not 
403:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
404:     LD  3,-3(1) 	Load variable b
405:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
406:     LD  3,-4(1) 	Load variable c
407:     LD  4,-8(1) 	Load left into ac1 
408:    SUB  4,4,3 	Op <= 
409:    LDC  3,1(6) 	True case 
410:    JLE  4,1(7) 	Jump if true 
411:    LDC  3,0(6) 	False case 
412:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
413:     LD  3,-4(1) 	Load variable c
414:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
415:     LD  3,-2(1) 	Load variable a
416:     LD  4,-9(1) 	Load left into ac1 
417:    SUB  4,4,3 	Op >= 
418:    LDC  3,1(6) 	True case 
419:    JTE  4,1(7) 	Jump if true 
420:    LDC  3,0(6) 	False case 
421:     LD  4,-8(1) 	Load left into ac1 
422:    JEQ  3,1(7) 	Op AND 
423:    LDA  3,0(5) 	 
424:     LD  4,-7(1) 	Load left into ac1 
425:    JEQ  3,1(7) 	Op OR 
426:    LDA  3,0(5) 	 
427:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
428:    LDA  1,-5(1) 	Load address of new frame 
429:    LDA  3,1(7) 	Return address in ac 
430:    LDA  7,-413(7) 	CALL outputb
431:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
432:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
433:     LD  3,-2(1) 	Load variable a
434:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
435:     LD  3,-3(1) 	Load variable b
436:     LD  4,-7(1) 	Load left into ac1 
437:    SUB  4,4,3 	Op < 
438:    LDC  3,1(6) 	True case 
439:    JGT  4,1(7) 	Jump if true 
440:    LDC  3,0(6) 	False case 
441:    LDA  3,1(5) 	Not load address 
442:    SUB  3,4,3 	Op Not 
443:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
444:     LD  3,-3(1) 	Load variable b
445:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
446:     LD  3,-4(1) 	Load variable c
447:     LD  4,-8(1) 	Load left into ac1 
448:    SUB  4,4,3 	Op <= 
449:    LDC  3,1(6) 	True case 
450:    JLE  4,1(7) 	Jump if true 
451:    LDC  3,0(6) 	False case 
452:     LD  4,-7(1) 	Load left into ac1 
453:    JEQ  3,1(7) 	Op AND 
454:    LDA  3,0(5) 	 
455:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
456:     LD  3,-4(1) 	Load variable c
457:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
458:     LD  3,-2(1) 	Load variable a
459:     LD  4,-8(1) 	Load left into ac1 
460:    SUB  4,4,3 	Op >= 
461:    LDC  3,1(6) 	True case 
462:    JTE  4,1(7) 	Jump if true 
463:    LDC  3,0(6) 	False case 
464:     LD  4,-7(1) 	Load left into ac1 
465:    JEQ  3,1(7) 	Op OR 
466:    LDA  3,0(5) 	 
467:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
468:    LDA  1,-5(1) 	Load address of new frame 
469:    LDA  3,1(7) 	Return address in ac 
470:    LDA  7,-453(7) 	CALL outputb
471:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
472:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to outnl
473:    LDA  1,-5(1) 	Load address of new frame 
474:    LDA  3,1(7) 	Return address in ac 
475:    LDA  7,-439(7) 	CALL outnl
476:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
477:    LDC  3,11(6) 	Load constant 
478:     ST  3,-3(1) 	Store variable b
* EXPRESSION STMT
479:    LDC  3,213(6) 	Load constant 
480:     ST  3,-4(1) 	Store variable c
* EXPRESSION STMT
481:    LDC  3,4133(6) 	Load constant 
482:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
* 			Begin call to  outputb
483:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
484:     LD  3,-2(1) 	Load variable a
485:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
486:     LD  3,-3(1) 	Load variable b
487:     LD  4,-7(1) 	Load left into ac1 
488:    SUB  4,4,3 	Op < 
489:    LDC  3,1(6) 	True case 
490:    JGT  4,1(7) 	Jump if true 
491:    LDC  3,0(6) 	False case 
492:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
493:     LD  3,-3(1) 	Load variable b
494:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
495:     LD  3,-4(1) 	Load variable c
496:     LD  4,-8(1) 	Load left into ac1 
497:    SUB  4,4,3 	Op <= 
498:    LDC  3,1(6) 	True case 
499:    JLE  4,1(7) 	Jump if true 
500:    LDC  3,0(6) 	False case 
501:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
502:     LD  3,-4(1) 	Load variable c
503:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
504:     LD  3,-2(1) 	Load variable a
505:     LD  4,-9(1) 	Load left into ac1 
506:    SUB  4,4,3 	Op >= 
507:    LDC  3,1(6) 	True case 
508:    JTE  4,1(7) 	Jump if true 
509:    LDC  3,0(6) 	False case 
510:     LD  4,-8(1) 	Load left into ac1 
511:    JEQ  3,1(7) 	Op AND 
512:    LDA  3,0(5) 	 
513:     LD  4,-7(1) 	Load left into ac1 
514:    JEQ  3,1(7) 	Op OR 
515:    LDA  3,0(5) 	 
516:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
517:    LDA  1,-5(1) 	Load address of new frame 
518:    LDA  3,1(7) 	Return address in ac 
519:    LDA  7,-502(7) 	CALL outputb
520:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
521:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
522:     LD  3,-2(1) 	Load variable a
523:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
524:     LD  3,-3(1) 	Load variable b
525:     LD  4,-7(1) 	Load left into ac1 
526:    SUB  4,4,3 	Op < 
527:    LDC  3,1(6) 	True case 
528:    JGT  4,1(7) 	Jump if true 
529:    LDC  3,0(6) 	False case 
530:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
531:     LD  3,-3(1) 	Load variable b
532:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
533:     LD  3,-4(1) 	Load variable c
534:     LD  4,-8(1) 	Load left into ac1 
535:    SUB  4,4,3 	Op <= 
536:    LDC  3,1(6) 	True case 
537:    JLE  4,1(7) 	Jump if true 
538:    LDC  3,0(6) 	False case 
539:     LD  4,-7(1) 	Load left into ac1 
540:    JEQ  3,1(7) 	Op AND 
541:    LDA  3,0(5) 	 
542:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
543:     LD  3,-4(1) 	Load variable c
544:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
545:     LD  3,-2(1) 	Load variable a
546:     LD  4,-8(1) 	Load left into ac1 
547:    SUB  4,4,3 	Op >= 
548:    LDC  3,1(6) 	True case 
549:    JTE  4,1(7) 	Jump if true 
550:    LDC  3,0(6) 	False case 
551:     LD  4,-7(1) 	Load left into ac1 
552:    JEQ  3,1(7) 	Op OR 
553:    LDA  3,0(5) 	 
554:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
555:    LDA  1,-5(1) 	Load address of new frame 
556:    LDA  3,1(7) 	Return address in ac 
557:    LDA  7,-540(7) 	CALL outputb
558:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
559:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
560:     LD  3,-2(1) 	Load variable a
561:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
562:     LD  3,-3(1) 	Load variable b
563:     LD  4,-7(1) 	Load left into ac1 
564:    SUB  4,4,3 	Op < 
565:    LDC  3,1(6) 	True case 
566:    JGT  4,1(7) 	Jump if true 
567:    LDC  3,0(6) 	False case 
568:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
569:     LD  3,-3(1) 	Load variable b
570:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
571:     LD  3,-4(1) 	Load variable c
572:     LD  4,-8(1) 	Load left into ac1 
573:    SUB  4,4,3 	Op <= 
574:    LDC  3,1(6) 	True case 
575:    JLE  4,1(7) 	Jump if true 
576:    LDC  3,0(6) 	False case 
577:     LD  4,-7(1) 	Load left into ac1 
578:    JEQ  3,1(7) 	Op AND 
579:    LDA  3,0(5) 	 
580:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
581:     LD  3,-4(1) 	Load variable c
582:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
583:     LD  3,-2(1) 	Load variable a
584:     LD  4,-8(1) 	Load left into ac1 
585:    SUB  4,4,3 	Op >= 
586:    LDC  3,1(6) 	True case 
587:    JTE  4,1(7) 	Jump if true 
588:    LDC  3,0(6) 	False case 
589:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
590:     LD  3,-4(1) 	Load variable c
591:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
592:     LD  3,-2(1) 	Load variable a
593:     LD  4,-9(1) 	Load left into ac1 
594:    SUB  4,4,3 	Op >= 
595:    LDC  3,1(6) 	True case 
596:    JTE  4,1(7) 	Jump if true 
597:    LDC  3,0(6) 	False case 
598:     LD  4,-8(1) 	Load left into ac1 
599:    JEQ  3,1(7) 	Op AND 
600:    LDA  3,0(5) 	 
601:     LD  4,-7(1) 	Load left into ac1 
602:    JEQ  3,1(7) 	Op OR 
603:    LDA  3,0(5) 	 
604:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
605:    LDA  1,-5(1) 	Load address of new frame 
606:    LDA  3,1(7) 	Return address in ac 
607:    LDA  7,-590(7) 	CALL outputb
608:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
609:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
610:     LD  3,-2(1) 	Load variable a
611:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
612:     LD  3,-3(1) 	Load variable b
613:     LD  4,-7(1) 	Load left into ac1 
614:    SUB  4,4,3 	Op < 
615:    LDC  3,1(6) 	True case 
616:    JGT  4,1(7) 	Jump if true 
617:    LDC  3,0(6) 	False case 
618:    LDA  3,1(5) 	Not load address 
619:    SUB  3,4,3 	Op Not 
620:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
621:     LD  3,-3(1) 	Load variable b
622:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
623:     LD  3,-4(1) 	Load variable c
624:     LD  4,-8(1) 	Load left into ac1 
625:    SUB  4,4,3 	Op <= 
626:    LDC  3,1(6) 	True case 
627:    JLE  4,1(7) 	Jump if true 
628:    LDC  3,0(6) 	False case 
629:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
630:     LD  3,-4(1) 	Load variable c
631:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
632:     LD  3,-2(1) 	Load variable a
633:     LD  4,-9(1) 	Load left into ac1 
634:    SUB  4,4,3 	Op >= 
635:    LDC  3,1(6) 	True case 
636:    JTE  4,1(7) 	Jump if true 
637:    LDC  3,0(6) 	False case 
638:     LD  4,-8(1) 	Load left into ac1 
639:    JEQ  3,1(7) 	Op AND 
640:    LDA  3,0(5) 	 
641:     LD  4,-7(1) 	Load left into ac1 
642:    JEQ  3,1(7) 	Op OR 
643:    LDA  3,0(5) 	 
644:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
645:    LDA  1,-5(1) 	Load address of new frame 
646:    LDA  3,1(7) 	Return address in ac 
647:    LDA  7,-630(7) 	CALL outputb
648:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outputb
649:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
650:     LD  3,-2(1) 	Load variable a
651:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
652:     LD  3,-3(1) 	Load variable b
653:     LD  4,-7(1) 	Load left into ac1 
654:    SUB  4,4,3 	Op < 
655:    LDC  3,1(6) 	True case 
656:    JGT  4,1(7) 	Jump if true 
657:    LDC  3,0(6) 	False case 
658:    LDA  3,1(5) 	Not load address 
659:    SUB  3,4,3 	Op Not 
660:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
661:     LD  3,-3(1) 	Load variable b
662:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
663:     LD  3,-4(1) 	Load variable c
664:     LD  4,-8(1) 	Load left into ac1 
665:    SUB  4,4,3 	Op <= 
666:    LDC  3,1(6) 	True case 
667:    JLE  4,1(7) 	Jump if true 
668:    LDC  3,0(6) 	False case 
669:     LD  4,-7(1) 	Load left into ac1 
670:    JEQ  3,1(7) 	Op AND 
671:    LDA  3,0(5) 	 
672:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
673:     LD  3,-4(1) 	Load variable c
674:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
675:     LD  3,-2(1) 	Load variable a
676:     LD  4,-8(1) 	Load left into ac1 
677:    SUB  4,4,3 	Op >= 
678:    LDC  3,1(6) 	True case 
679:    JTE  4,1(7) 	Jump if true 
680:    LDC  3,0(6) 	False case 
681:     LD  4,-7(1) 	Load left into ac1 
682:    JEQ  3,1(7) 	Op OR 
683:    LDA  3,0(5) 	 
684:     ST  3,-7(1) 	Store parameter 
* 			Jump to outputb
685:    LDA  1,-5(1) 	Load address of new frame 
686:    LDA  3,1(7) 	Return address in ac 
687:    LDA  7,-670(7) 	CALL outputb
688:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
689:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to outnl
690:    LDA  1,-5(1) 	Load address of new frame 
691:    LDA  3,1(7) 	Return address in ac 
692:    LDA  7,-656(7) 	CALL outnl
693:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
694:    LDC  2,0(6) 	Set return value to 0 
695:     LD  3,-1(1) 	Load return address 
696:     LD  1,0(1) 	Adjust fp 
697:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,697(7) 	Jump to init [backpatch] 
* BEGIN Init
698:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
699:    LDA  1,0(0) 	set first frame at end of globals 
700:     ST  1,0(1) 	store old fp (point to self) 
701:    LDA  3,1(7) 	Return address in ac 
702:    LDA  7,-661(7) 	Jump to main 
703:   HALT  0,0,0 	DONE! 
* END Init
