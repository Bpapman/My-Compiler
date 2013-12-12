* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  minesweeper.c-
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
* BEGIN function Random
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:     LD  3,0(0) 	Load variable seed
 44:     ST  3,-3(1) 	Save left side 
 45:    LDC  3,333331(6) 	Load constant 
 46:     LD  4,-3(1) 	Load left into ac1 
 47:    MUL  3,4,3 	Op * 
 48:     ST  3,-3(1) 	Save left side 
 49:    LDC  3,3331(6) 	Load constant 
 50:     LD  4,-3(1) 	Load left into ac1 
 51:    ADD  3,4,3 	Op + 
 52:     ST  3,0(0) 	Store variable seed
* IF
 53:     LD  3,0(0) 	Load variable seed
 54:     ST  3,-3(1) 	Save left side 
 55:    LDC  3,0(6) 	Load constant 
 56:     LD  4,-3(1) 	Load left into ac1 
 57:    SUB  4,4,3 	Op < 
 58:    LDC  3,1(6) 	True case 
 59:    JLT  4,1(7) 	Jump if true 
 60:    LDC  3,0(6) 	False case 
 61:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 63:     LD  3,0(0) 	Load variable seed
 64:    LDC  4,0(6) 	Load 0 
 65:    SUB  3,4,3 	Op unary - 
 66:     ST  3,-3(1) 	Save left side 
 67:    LDC  3,100(6) 	Load constant 
 68:     LD  4,-3(1) 	Load left into ac1 
 69:    DIV  5,4,3 	Op % 
 70:    MUL  5,5,3 	 
 71:    SUB  3,4,5 	 
 72:    LDA  2,0(3) 	Copy result to rt register 
 73:     LD  3,-1(1) 	Load return address 
 74:     LD  1,0(1) 	Adjust fp 
 75:    LDA  7,0(3) 	Return 
* ELSE
 62:    LDA  7,14(7) 	Jump around the THEN [backpatch] 
* RETURN
 77:     LD  3,0(0) 	Load variable seed
 78:     ST  3,-3(1) 	Save left side 
 79:    LDC  3,100(6) 	Load constant 
 80:     LD  4,-3(1) 	Load left into ac1 
 81:    DIV  5,4,3 	Op % 
 82:    MUL  5,5,3 	 
 83:    SUB  3,4,5 	 
 84:    LDA  2,0(3) 	Copy result to rt register 
 85:     LD  3,-1(1) 	Load return address 
 86:     LD  1,0(1) 	Adjust fp 
 87:    LDA  7,0(3) 	Return 
 76:    LDA  7,11(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 88:    LDC  2,0(6) 	Set return value to 0 
 89:     LD  3,-1(1) 	Load return address 
 90:     LD  1,0(1) 	Adjust fp 
 91:    LDA  7,0(3) 	Return 
* END of function Random
* BEGIN function CreateBoard
 92:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 93:    LDC  3,0(6) 	Load constant 
 94:     ST  3,-2(1) 	Store variable i
* WHILE
 95:     LD  3,-2(1) 	Load variable i
 96:     ST  3,-5(1) 	Save left side 
 97:    LDC  3,100(6) 	Load constant 
 98:     LD  4,-5(1) 	Load left into ac1 
 99:    SUB  4,4,3 	Op < 
100:    LDC  3,1(6) 	True case 
101:    JLT  4,1(7) 	Jump if true 
102:    LDC  3,0(6) 	False case 
103:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
105:     LD  3,-2(1) 	Load variable i
106:     ST  3,-5(1) 	Save index 
107:    LDC  3,0(6) 	Load constant 
108:     LD  4,-5(1) 	Restore index 
109:    LDA  5,-103(0) 	Load address of base of array guess
110:    SUB  5,5,4 	Compute offset of value 
111:     ST  3,0(5) 	Store variable guess
* EXPRESSION STMT
112:    LDC  3,1(6) 	Load constant 
113:     LD  4,-2(1) 	load lhs variable i
114:    ADD  3,4,3 	op += 
115:     ST  3,-2(1) 	Store variable i
* END compound statement
116:    LDA  7,-22(7) 	go to beginning of loop 
104:    LDA  7,12(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
117:    LDC  3,0(6) 	Load constant 
118:     ST  3,-2(1) 	Store variable i
* WHILE
119:     LD  3,-2(1) 	Load variable i
120:     ST  3,-5(1) 	Save left side 
121:    LDC  3,100(6) 	Load constant 
122:     LD  4,-5(1) 	Load left into ac1 
123:    SUB  4,4,3 	Op < 
124:    LDC  3,1(6) 	True case 
125:    JLT  4,1(7) 	Jump if true 
126:    LDC  3,0(6) 	False case 
127:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
129:     LD  3,-2(1) 	Load variable i
130:     ST  3,-5(1) 	Save index 
131:    LDC  3,0(6) 	Load constant 
132:     LD  4,-5(1) 	Restore index 
133:    LDA  5,-2(0) 	Load address of base of array board
134:    SUB  5,5,4 	Compute offset of value 
135:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
136:    LDC  3,1(6) 	Load constant 
137:     LD  4,-2(1) 	load lhs variable i
138:    ADD  3,4,3 	op += 
139:     ST  3,-2(1) 	Store variable i
* END compound statement
140:    LDA  7,-22(7) 	go to beginning of loop 
128:    LDA  7,12(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
141:    LDC  3,0(6) 	Load constant 
142:     ST  3,-2(1) 	Store variable i
* WHILE
143:     LD  3,-2(1) 	Load variable i
144:     ST  3,-5(1) 	Save left side 
145:    LDC  3,15(6) 	Load constant 
146:     LD  4,-5(1) 	Load left into ac1 
147:    SUB  4,4,3 	Op <= 
148:    LDC  3,1(6) 	True case 
149:    JLE  4,1(7) 	Jump if true 
150:    LDC  3,0(6) 	False case 
151:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* WHILE
153:    LDC  3,1(6) 	Load constant 
154:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  Random
156:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to Random
157:    LDA  1,-5(1) 	Load address of new frame 
158:    LDA  3,1(7) 	Return address in ac 
159:    LDA  7,-118(7) 	CALL Random
160:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Random
161:     ST  3,-4(1) 	Store variable rand
* IF
162:     LD  3,-4(1) 	Load variable rand
163:    LDA  4,-2(0) 	Load address of base of array board
164:    SUB  3,4,3 	Compute offset of value 
165:     LD  3,0(3) 	Load the value 
166:     ST  3,-5(1) 	Save left side 
167:    LDC  3,1(6) 	Load constant 
168:    LDC  4,0(6) 	Load 0 
169:    SUB  3,4,3 	Op unary - 
170:     LD  4,-5(1) 	Load left into ac1 
171:    SUB  3,4,3 	Op != 
172:    JEQ  3,1(7) 	Jump if true 
173:    LDC  3,1(6) 	True case 
174:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
176:     LD  3,-4(1) 	Load variable rand
177:     ST  3,-5(1) 	Save index 
178:    LDC  3,1(6) 	Load constant 
179:    LDC  4,0(6) 	Load 0 
180:    SUB  3,4,3 	Op unary - 
181:     LD  4,-5(1) 	Restore index 
182:    LDA  5,-2(0) 	Load address of base of array board
183:    SUB  5,5,4 	Compute offset of value 
184:     ST  3,0(5) 	Store variable board
* IF
185:     LD  3,-4(1) 	Load variable rand
186:     ST  3,-5(1) 	Save left side 
187:    LDC  3,10(6) 	Load constant 
188:     LD  4,-5(1) 	Load left into ac1 
189:    DIV  5,4,3 	Op % 
190:    MUL  5,5,3 	 
191:    SUB  3,4,5 	 
192:     ST  3,-5(1) 	Save left side 
193:    LDC  3,0(6) 	Load constant 
194:     LD  4,-5(1) 	Load left into ac1 
195:    SUB  3,4,3 	Op != 
196:    JEQ  3,1(7) 	Jump if true 
197:    LDC  3,1(6) 	True case 
198:     ST  3,-5(1) 	Save left side 
199:     LD  3,-4(1) 	Load variable rand
200:     ST  3,-6(1) 	Save left side 
201:    LDC  3,9(6) 	Load constant 
202:     LD  4,-6(1) 	Load left into ac1 
203:    SUB  4,4,3 	Op > 
204:    LDC  3,1(6) 	True case 
205:    JGT  4,1(7) 	Jump if true 
206:    LDC  3,0(6) 	False case 
207:     LD  4,-5(1) 	Load left into ac1 
208:    JEQ  3,1(7) 	Op AND 
209:    LDA  3,0(4) 	 
210:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
212:     LD  3,-4(1) 	Load variable rand
213:     ST  3,-5(1) 	Save left side 
214:    LDC  3,11(6) 	Load constant 
215:     LD  4,-5(1) 	Load left into ac1 
216:    SUB  3,4,3 	Op - 
217:    LDA  4,-2(0) 	Load address of base of array board
218:    SUB  3,4,3 	Compute offset of value 
219:     LD  3,0(3) 	Load the value 
220:     ST  3,-5(1) 	Save left side 
221:    LDC  3,1(6) 	Load constant 
222:    LDC  4,0(6) 	Load 0 
223:    SUB  3,4,3 	Op unary - 
224:     LD  4,-5(1) 	Load left into ac1 
225:    SUB  3,4,3 	Op != 
226:    JEQ  3,1(7) 	Jump if true 
227:    LDC  3,1(6) 	True case 
228:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
230:     LD  3,-4(1) 	Load variable rand
231:     ST  3,-5(1) 	Save left side 
232:    LDC  3,11(6) 	Load constant 
233:     LD  4,-5(1) 	Load left into ac1 
234:    SUB  3,4,3 	Op - 
235:     ST  3,-5(1) 	Save index 
236:    LDC  3,1(6) 	Load constant 
237:     LD  4,-5(1) 	Restore index 
238:    LDA  5,-2(0) 	Load address of base of array board
239:    SUB  5,5,4 	Compute offset of value 
240:     LD  4,0(5) 	load lhs variable board
241:    ADD  3,4,3 	op += 
242:     ST  3,0(5) 	Store variable board
229:    LDA  7,13(7) 	Jump around the THEN [backpatch] 
* ENDIF
211:    LDA  7,31(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
243:     LD  3,-4(1) 	Load variable rand
244:     ST  3,-5(1) 	Save left side 
245:    LDC  3,9(6) 	Load constant 
246:     LD  4,-5(1) 	Load left into ac1 
247:    SUB  4,4,3 	Op > 
248:    LDC  3,1(6) 	True case 
249:    JGT  4,1(7) 	Jump if true 
250:    LDC  3,0(6) 	False case 
251:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
253:     LD  3,-4(1) 	Load variable rand
254:     ST  3,-5(1) 	Save left side 
255:    LDC  3,10(6) 	Load constant 
256:     LD  4,-5(1) 	Load left into ac1 
257:    SUB  3,4,3 	Op - 
258:    LDA  4,-2(0) 	Load address of base of array board
259:    SUB  3,4,3 	Compute offset of value 
260:     LD  3,0(3) 	Load the value 
261:     ST  3,-5(1) 	Save left side 
262:    LDC  3,1(6) 	Load constant 
263:    LDC  4,0(6) 	Load 0 
264:    SUB  3,4,3 	Op unary - 
265:     LD  4,-5(1) 	Load left into ac1 
266:    SUB  3,4,3 	Op != 
267:    JEQ  3,1(7) 	Jump if true 
268:    LDC  3,1(6) 	True case 
269:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
271:     LD  3,-4(1) 	Load variable rand
272:     ST  3,-5(1) 	Save left side 
273:    LDC  3,10(6) 	Load constant 
274:     LD  4,-5(1) 	Load left into ac1 
275:    SUB  3,4,3 	Op - 
276:     ST  3,-5(1) 	Save index 
277:    LDC  3,1(6) 	Load constant 
278:     LD  4,-5(1) 	Restore index 
279:    LDA  5,-2(0) 	Load address of base of array board
280:    SUB  5,5,4 	Compute offset of value 
281:     LD  4,0(5) 	load lhs variable board
282:    ADD  3,4,3 	op += 
283:     ST  3,0(5) 	Store variable board
270:    LDA  7,13(7) 	Jump around the THEN [backpatch] 
* ENDIF
252:    LDA  7,31(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
284:     LD  3,-4(1) 	Load variable rand
285:     ST  3,-5(1) 	Save left side 
286:    LDC  3,9(6) 	Load constant 
287:     LD  4,-5(1) 	Load left into ac1 
288:    DIV  5,4,3 	Op % 
289:    MUL  5,5,3 	 
290:    SUB  3,4,5 	 
291:     ST  3,-5(1) 	Save left side 
292:    LDC  3,0(6) 	Load constant 
293:     LD  4,-5(1) 	Load left into ac1 
294:    SUB  3,4,3 	Op != 
295:    JEQ  3,1(7) 	Jump if true 
296:    LDC  3,1(6) 	True case 
297:     ST  3,-5(1) 	Save left side 
298:     LD  3,-4(1) 	Load variable rand
299:     ST  3,-6(1) 	Save left side 
300:    LDC  3,9(6) 	Load constant 
301:     LD  4,-6(1) 	Load left into ac1 
302:    SUB  4,4,3 	Op > 
303:    LDC  3,1(6) 	True case 
304:    JGT  4,1(7) 	Jump if true 
305:    LDC  3,0(6) 	False case 
306:     LD  4,-5(1) 	Load left into ac1 
307:    JEQ  3,1(7) 	Op AND 
308:    LDA  3,0(4) 	 
309:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
311:     LD  3,-4(1) 	Load variable rand
312:     ST  3,-5(1) 	Save left side 
313:    LDC  3,9(6) 	Load constant 
314:     LD  4,-5(1) 	Load left into ac1 
315:    SUB  3,4,3 	Op - 
316:    LDA  4,-2(0) 	Load address of base of array board
317:    SUB  3,4,3 	Compute offset of value 
318:     LD  3,0(3) 	Load the value 
319:     ST  3,-5(1) 	Save left side 
320:    LDC  3,1(6) 	Load constant 
321:    LDC  4,0(6) 	Load 0 
322:    SUB  3,4,3 	Op unary - 
323:     LD  4,-5(1) 	Load left into ac1 
324:    SUB  3,4,3 	Op != 
325:    JEQ  3,1(7) 	Jump if true 
326:    LDC  3,1(6) 	True case 
327:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
329:     LD  3,-4(1) 	Load variable rand
330:     ST  3,-5(1) 	Save left side 
331:    LDC  3,9(6) 	Load constant 
332:     LD  4,-5(1) 	Load left into ac1 
333:    SUB  3,4,3 	Op - 
334:     ST  3,-5(1) 	Save index 
335:    LDC  3,1(6) 	Load constant 
336:     LD  4,-5(1) 	Restore index 
337:    LDA  5,-2(0) 	Load address of base of array board
338:    SUB  5,5,4 	Compute offset of value 
339:     LD  4,0(5) 	load lhs variable board
340:    ADD  3,4,3 	op += 
341:     ST  3,0(5) 	Store variable board
328:    LDA  7,13(7) 	Jump around the THEN [backpatch] 
* ENDIF
310:    LDA  7,31(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
342:     LD  3,-4(1) 	Load variable rand
343:     ST  3,-5(1) 	Save left side 
344:    LDC  3,10(6) 	Load constant 
345:     LD  4,-5(1) 	Load left into ac1 
346:    DIV  5,4,3 	Op % 
347:    MUL  5,5,3 	 
348:    SUB  3,4,5 	 
349:     ST  3,-5(1) 	Save left side 
350:    LDC  3,0(6) 	Load constant 
351:     LD  4,-5(1) 	Load left into ac1 
352:    SUB  3,4,3 	Op != 
353:    JEQ  3,1(7) 	Jump if true 
354:    LDC  3,1(6) 	True case 
355:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
357:     LD  3,-4(1) 	Load variable rand
358:     ST  3,-5(1) 	Save left side 
359:    LDC  3,1(6) 	Load constant 
360:     LD  4,-5(1) 	Load left into ac1 
361:    SUB  3,4,3 	Op - 
362:    LDA  4,-2(0) 	Load address of base of array board
363:    SUB  3,4,3 	Compute offset of value 
364:     LD  3,0(3) 	Load the value 
365:     ST  3,-5(1) 	Save left side 
366:    LDC  3,1(6) 	Load constant 
367:    LDC  4,0(6) 	Load 0 
368:    SUB  3,4,3 	Op unary - 
369:     LD  4,-5(1) 	Load left into ac1 
370:    SUB  3,4,3 	Op != 
371:    JEQ  3,1(7) 	Jump if true 
372:    LDC  3,1(6) 	True case 
373:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
375:     LD  3,-4(1) 	Load variable rand
376:     ST  3,-5(1) 	Save left side 
377:    LDC  3,1(6) 	Load constant 
378:     LD  4,-5(1) 	Load left into ac1 
379:    SUB  3,4,3 	Op - 
380:     ST  3,-5(1) 	Save index 
381:    LDC  3,1(6) 	Load constant 
382:     LD  4,-5(1) 	Restore index 
383:    LDA  5,-2(0) 	Load address of base of array board
384:    SUB  5,5,4 	Compute offset of value 
385:     LD  4,0(5) 	load lhs variable board
386:    ADD  3,4,3 	op += 
387:     ST  3,0(5) 	Store variable board
374:    LDA  7,13(7) 	Jump around the THEN [backpatch] 
* ENDIF
356:    LDA  7,31(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
388:     LD  3,-4(1) 	Load variable rand
389:     ST  3,-5(1) 	Save left side 
390:    LDC  3,9(6) 	Load constant 
391:     LD  4,-5(1) 	Load left into ac1 
392:    DIV  5,4,3 	Op % 
393:    MUL  5,5,3 	 
394:    SUB  3,4,5 	 
395:     ST  3,-5(1) 	Save left side 
396:    LDC  3,0(6) 	Load constant 
397:     LD  4,-5(1) 	Load left into ac1 
398:    SUB  3,4,3 	Op != 
399:    JEQ  3,1(7) 	Jump if true 
400:    LDC  3,1(6) 	True case 
401:     ST  3,-5(1) 	Save left side 
402:     LD  3,-4(1) 	Load variable rand
403:     ST  3,-6(1) 	Save left side 
404:    LDC  3,0(6) 	Load constant 
405:     LD  4,-6(1) 	Load left into ac1 
406:    SUB  4,4,3 	Op == 
407:    LDC  3,1(6) 	True case 
408:    JEQ  4,1(7) 	Jump if true 
409:    LDC  3,0(6) 	False case 
410:     LD  4,-5(1) 	Load left into ac1 
411:    JGT  3,1(7) 	Op OR 
412:    LDA  3,0(4) 	 
413:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
415:     LD  3,-4(1) 	Load variable rand
416:     ST  3,-5(1) 	Save left side 
417:    LDC  3,1(6) 	Load constant 
418:     LD  4,-5(1) 	Load left into ac1 
419:    ADD  3,4,3 	Op + 
420:    LDA  4,-2(0) 	Load address of base of array board
421:    SUB  3,4,3 	Compute offset of value 
422:     LD  3,0(3) 	Load the value 
423:     ST  3,-5(1) 	Save left side 
424:    LDC  3,1(6) 	Load constant 
425:    LDC  4,0(6) 	Load 0 
426:    SUB  3,4,3 	Op unary - 
427:     LD  4,-5(1) 	Load left into ac1 
428:    SUB  3,4,3 	Op != 
429:    JEQ  3,1(7) 	Jump if true 
430:    LDC  3,1(6) 	True case 
431:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
433:     LD  3,-4(1) 	Load variable rand
434:     ST  3,-5(1) 	Save left side 
435:    LDC  3,1(6) 	Load constant 
436:     LD  4,-5(1) 	Load left into ac1 
437:    ADD  3,4,3 	Op + 
438:     ST  3,-5(1) 	Save index 
439:    LDC  3,1(6) 	Load constant 
440:     LD  4,-5(1) 	Restore index 
441:    LDA  5,-2(0) 	Load address of base of array board
442:    SUB  5,5,4 	Compute offset of value 
443:     LD  4,0(5) 	load lhs variable board
444:    ADD  3,4,3 	op += 
445:     ST  3,0(5) 	Store variable board
432:    LDA  7,13(7) 	Jump around the THEN [backpatch] 
* ENDIF
414:    LDA  7,31(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
446:     LD  3,-4(1) 	Load variable rand
447:     ST  3,-5(1) 	Save left side 
448:    LDC  3,10(6) 	Load constant 
449:     LD  4,-5(1) 	Load left into ac1 
450:    DIV  5,4,3 	Op % 
451:    MUL  5,5,3 	 
452:    SUB  3,4,5 	 
453:     ST  3,-5(1) 	Save left side 
454:    LDC  3,0(6) 	Load constant 
455:     LD  4,-5(1) 	Load left into ac1 
456:    SUB  3,4,3 	Op != 
457:    JEQ  3,1(7) 	Jump if true 
458:    LDC  3,1(6) 	True case 
459:     ST  3,-5(1) 	Save left side 
460:     LD  3,-4(1) 	Load variable rand
461:     ST  3,-6(1) 	Save left side 
462:    LDC  3,90(6) 	Load constant 
463:     LD  4,-6(1) 	Load left into ac1 
464:    SUB  4,4,3 	Op < 
465:    LDC  3,1(6) 	True case 
466:    JLT  4,1(7) 	Jump if true 
467:    LDC  3,0(6) 	False case 
468:     LD  4,-5(1) 	Load left into ac1 
469:    JEQ  3,1(7) 	Op AND 
470:    LDA  3,0(4) 	 
471:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
473:     LD  3,-4(1) 	Load variable rand
474:     ST  3,-5(1) 	Save left side 
475:    LDC  3,9(6) 	Load constant 
476:     LD  4,-5(1) 	Load left into ac1 
477:    ADD  3,4,3 	Op + 
478:    LDA  4,-2(0) 	Load address of base of array board
479:    SUB  3,4,3 	Compute offset of value 
480:     LD  3,0(3) 	Load the value 
481:     ST  3,-5(1) 	Save left side 
482:    LDC  3,1(6) 	Load constant 
483:    LDC  4,0(6) 	Load 0 
484:    SUB  3,4,3 	Op unary - 
485:     LD  4,-5(1) 	Load left into ac1 
486:    SUB  3,4,3 	Op != 
487:    JEQ  3,1(7) 	Jump if true 
488:    LDC  3,1(6) 	True case 
489:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
491:     LD  3,-4(1) 	Load variable rand
492:     ST  3,-5(1) 	Save left side 
493:    LDC  3,9(6) 	Load constant 
494:     LD  4,-5(1) 	Load left into ac1 
495:    ADD  3,4,3 	Op + 
496:     ST  3,-5(1) 	Save index 
497:    LDC  3,1(6) 	Load constant 
498:     LD  4,-5(1) 	Restore index 
499:    LDA  5,-2(0) 	Load address of base of array board
500:    SUB  5,5,4 	Compute offset of value 
501:     LD  4,0(5) 	load lhs variable board
502:    ADD  3,4,3 	op += 
503:     ST  3,0(5) 	Store variable board
490:    LDA  7,13(7) 	Jump around the THEN [backpatch] 
* ENDIF
472:    LDA  7,31(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
504:     LD  3,-4(1) 	Load variable rand
505:     ST  3,-5(1) 	Save left side 
506:    LDC  3,90(6) 	Load constant 
507:     LD  4,-5(1) 	Load left into ac1 
508:    SUB  4,4,3 	Op < 
509:    LDC  3,1(6) 	True case 
510:    JLT  4,1(7) 	Jump if true 
511:    LDC  3,0(6) 	False case 
512:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
514:     LD  3,-4(1) 	Load variable rand
515:     ST  3,-5(1) 	Save left side 
516:    LDC  3,10(6) 	Load constant 
517:     LD  4,-5(1) 	Load left into ac1 
518:    ADD  3,4,3 	Op + 
519:    LDA  4,-2(0) 	Load address of base of array board
520:    SUB  3,4,3 	Compute offset of value 
521:     LD  3,0(3) 	Load the value 
522:     ST  3,-5(1) 	Save left side 
523:    LDC  3,1(6) 	Load constant 
524:    LDC  4,0(6) 	Load 0 
525:    SUB  3,4,3 	Op unary - 
526:     LD  4,-5(1) 	Load left into ac1 
527:    SUB  3,4,3 	Op != 
528:    JEQ  3,1(7) 	Jump if true 
529:    LDC  3,1(6) 	True case 
530:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
532:     LD  3,-4(1) 	Load variable rand
533:     ST  3,-5(1) 	Save left side 
534:    LDC  3,10(6) 	Load constant 
535:     LD  4,-5(1) 	Load left into ac1 
536:    ADD  3,4,3 	Op + 
537:     ST  3,-5(1) 	Save index 
538:    LDC  3,1(6) 	Load constant 
539:     LD  4,-5(1) 	Restore index 
540:    LDA  5,-2(0) 	Load address of base of array board
541:    SUB  5,5,4 	Compute offset of value 
542:     LD  4,0(5) 	load lhs variable board
543:    ADD  3,4,3 	op += 
544:     ST  3,0(5) 	Store variable board
531:    LDA  7,13(7) 	Jump around the THEN [backpatch] 
* ENDIF
513:    LDA  7,31(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
545:     LD  3,-4(1) 	Load variable rand
546:     ST  3,-5(1) 	Save left side 
547:    LDC  3,9(6) 	Load constant 
548:     LD  4,-5(1) 	Load left into ac1 
549:    DIV  5,4,3 	Op % 
550:    MUL  5,5,3 	 
551:    SUB  3,4,5 	 
552:     ST  3,-5(1) 	Save left side 
553:    LDC  3,0(6) 	Load constant 
554:     LD  4,-5(1) 	Load left into ac1 
555:    SUB  3,4,3 	Op != 
556:    JEQ  3,1(7) 	Jump if true 
557:    LDC  3,1(6) 	True case 
558:     ST  3,-5(1) 	Save left side 
559:     LD  3,-4(1) 	Load variable rand
560:     ST  3,-6(1) 	Save left side 
561:    LDC  3,90(6) 	Load constant 
562:     LD  4,-6(1) 	Load left into ac1 
563:    SUB  4,4,3 	Op < 
564:    LDC  3,1(6) 	True case 
565:    JLT  4,1(7) 	Jump if true 
566:    LDC  3,0(6) 	False case 
567:     LD  4,-5(1) 	Load left into ac1 
568:    JEQ  3,1(7) 	Op AND 
569:    LDA  3,0(4) 	 
570:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
572:     LD  3,-4(1) 	Load variable rand
573:     ST  3,-5(1) 	Save left side 
574:    LDC  3,11(6) 	Load constant 
575:     LD  4,-5(1) 	Load left into ac1 
576:    ADD  3,4,3 	Op + 
577:    LDA  4,-2(0) 	Load address of base of array board
578:    SUB  3,4,3 	Compute offset of value 
579:     LD  3,0(3) 	Load the value 
580:     ST  3,-5(1) 	Save left side 
581:    LDC  3,1(6) 	Load constant 
582:    LDC  4,0(6) 	Load 0 
583:    SUB  3,4,3 	Op unary - 
584:     LD  4,-5(1) 	Load left into ac1 
585:    SUB  3,4,3 	Op != 
586:    JEQ  3,1(7) 	Jump if true 
587:    LDC  3,1(6) 	True case 
588:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
590:     LD  3,-4(1) 	Load variable rand
591:     ST  3,-5(1) 	Save left side 
592:    LDC  3,11(6) 	Load constant 
593:     LD  4,-5(1) 	Load left into ac1 
594:    ADD  3,4,3 	Op + 
595:     ST  3,-5(1) 	Save index 
596:    LDC  3,1(6) 	Load constant 
597:     LD  4,-5(1) 	Restore index 
598:    LDA  5,-2(0) 	Load address of base of array board
599:    SUB  5,5,4 	Compute offset of value 
600:     LD  4,0(5) 	load lhs variable board
601:    ADD  3,4,3 	op += 
602:     ST  3,0(5) 	Store variable board
589:    LDA  7,13(7) 	Jump around the THEN [backpatch] 
* ENDIF
571:    LDA  7,31(7) 	Jump around the THEN [backpatch] 
* ENDIF
* BREAK
603:    LDA  7,-449(7) 	break 
* END compound statement
175:    LDA  7,428(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
604:    LDA  7,-452(7) 	go to beginning of loop 
155:    LDA  7,449(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
605:    LDC  3,1(6) 	Load constant 
606:     LD  4,-2(1) 	load lhs variable i
607:    ADD  3,4,3 	op += 
608:     ST  3,-2(1) 	Store variable i
* END compound statement
609:    LDA  7,-467(7) 	go to beginning of loop 
152:    LDA  7,457(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
610:    LDC  2,0(6) 	Set return value to 0 
611:     LD  3,-1(1) 	Load return address 
612:     LD  1,0(1) 	Adjust fp 
613:    LDA  7,0(3) 	Return 
* END of function CreateBoard
* BEGIN function PrintBoard
614:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
615:    LDC  3,1(6) 	Load constant 
616:     ST  3,-2(1) 	Store variable i
* EXPRESSION STMT
*                       Begin call to  outnl
617:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
618:    LDA  1,-3(1) 	Load address of new frame 
619:    LDA  3,1(7) 	Return address in ac 
620:    LDA  7,-584(7) 	CALL outnl
621:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* WHILE
622:     LD  3,-2(1) 	Load variable i
623:     ST  3,-3(1) 	Save left side 
624:    LDC  3,101(6) 	Load constant 
625:     LD  4,-3(1) 	Load left into ac1 
626:    SUB  4,4,3 	Op < 
627:    LDC  3,1(6) 	True case 
628:    JLT  4,1(7) 	Jump if true 
629:    LDC  3,0(6) 	False case 
630:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
632:     LD  3,-2(1) 	Load variable i
633:     ST  3,-3(1) 	Save left side 
634:    LDC  3,1(6) 	Load constant 
635:     LD  4,-3(1) 	Load left into ac1 
636:    SUB  3,4,3 	Op - 
637:    LDA  4,-103(0) 	Load address of base of array guess
638:    SUB  3,4,3 	Compute offset of value 
639:     LD  3,0(3) 	Load the value 
640:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* IF
642:     LD  3,-2(1) 	Load variable i
643:     ST  3,-3(1) 	Save left side 
644:    LDC  3,1(6) 	Load constant 
645:     LD  4,-3(1) 	Load left into ac1 
646:    SUB  3,4,3 	Op - 
647:    LDA  4,-2(0) 	Load address of base of array board
648:    SUB  3,4,3 	Compute offset of value 
649:     LD  3,0(3) 	Load the value 
650:     ST  3,-3(1) 	Save left side 
651:    LDC  3,1(6) 	Load constant 
652:    LDC  4,0(6) 	Load 0 
653:    SUB  3,4,3 	Op unary - 
654:     LD  4,-3(1) 	Load left into ac1 
655:    SUB  4,4,3 	Op == 
656:    LDC  3,1(6) 	True case 
657:    JEQ  4,1(7) 	Jump if true 
658:    LDC  3,0(6) 	False case 
659:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  outputb
661:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
662:    LDC  3,1(6) 	Load constant 
663:     ST  3,-5(1) 	Store parameter 
*                       Jump to outputb
664:    LDA  1,-3(1) 	Load address of new frame 
665:    LDA  3,1(7) 	Return address in ac 
666:    LDA  7,-649(7) 	CALL outputb
667:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* ELSE
660:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  output
669:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
670:     LD  3,-2(1) 	Load variable i
671:     ST  3,-5(1) 	Save left side 
672:    LDC  3,1(6) 	Load constant 
673:     LD  4,-5(1) 	Load left into ac1 
674:    SUB  3,4,3 	Op - 
675:    LDA  4,-2(0) 	Load address of base of array board
676:    SUB  3,4,3 	Compute offset of value 
677:     LD  3,0(3) 	Load the value 
678:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
679:    LDA  1,-3(1) 	Load address of new frame 
680:    LDA  3,1(7) 	Return address in ac 
681:    LDA  7,-676(7) 	CALL output
682:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
668:    LDA  7,14(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* ELSE
641:    LDA  7,42(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  outputb
684:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
685:    LDC  3,0(6) 	Load constant 
686:     ST  3,-5(1) 	Store parameter 
*                       Jump to outputb
687:    LDA  1,-3(1) 	Load address of new frame 
688:    LDA  3,1(7) 	Return address in ac 
689:    LDA  7,-672(7) 	CALL outputb
690:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
683:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
691:     LD  3,-2(1) 	Load variable i
692:     ST  3,-3(1) 	Save left side 
693:    LDC  3,10(6) 	Load constant 
694:     LD  4,-3(1) 	Load left into ac1 
695:    DIV  5,4,3 	Op % 
696:    MUL  5,5,3 	 
697:    SUB  3,4,5 	 
698:     ST  3,-3(1) 	Save left side 
699:    LDC  3,0(6) 	Load constant 
700:     LD  4,-3(1) 	Load left into ac1 
701:    SUB  4,4,3 	Op == 
702:    LDC  3,1(6) 	True case 
703:    JEQ  4,1(7) 	Jump if true 
704:    LDC  3,0(6) 	False case 
705:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  outnl
707:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
708:    LDA  1,-3(1) 	Load address of new frame 
709:    LDA  3,1(7) 	Return address in ac 
710:    LDA  7,-674(7) 	CALL outnl
711:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
706:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
712:    LDC  3,1(6) 	Load constant 
713:     LD  4,-2(1) 	load lhs variable i
714:    ADD  3,4,3 	op += 
715:     ST  3,-2(1) 	Store variable i
* END compound statement
716:    LDA  7,-95(7) 	go to beginning of loop 
631:    LDA  7,85(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
717:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
718:    LDA  1,-3(1) 	Load address of new frame 
719:    LDA  3,1(7) 	Return address in ac 
720:    LDA  7,-684(7) 	CALL outnl
721:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
722:    LDC  2,0(6) 	Set return value to 0 
723:     LD  3,-1(1) 	Load return address 
724:     LD  1,0(1) 	Adjust fp 
725:    LDA  7,0(3) 	Return 
* END of function PrintBoard
* BEGIN function Move
726:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
727:     LD  3,-2(1) 	Load variable m
728:     ST  3,-3(1) 	Save index 
729:    LDC  3,1(6) 	Load constant 
730:     LD  4,-3(1) 	Restore index 
731:    LDA  5,-103(0) 	Load address of base of array guess
732:    SUB  5,5,4 	Compute offset of value 
733:     ST  3,0(5) 	Store variable guess
* IF
734:     LD  3,-2(1) 	Load variable m
735:    LDA  4,-2(0) 	Load address of base of array board
736:    SUB  3,4,3 	Compute offset of value 
737:     LD  3,0(3) 	Load the value 
738:     ST  3,-3(1) 	Save left side 
739:    LDC  3,0(6) 	Load constant 
740:     LD  4,-3(1) 	Load left into ac1 
741:    SUB  4,4,3 	Op == 
742:    LDC  3,1(6) 	True case 
743:    JEQ  4,1(7) 	Jump if true 
744:    LDC  3,0(6) 	False case 
745:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* IF
747:     LD  3,-2(1) 	Load variable m
748:     ST  3,-3(1) 	Save left side 
749:    LDC  3,9(6) 	Load constant 
750:     LD  4,-3(1) 	Load left into ac1 
751:    SUB  4,4,3 	Op > 
752:    LDC  3,1(6) 	True case 
753:    JGT  4,1(7) 	Jump if true 
754:    LDC  3,0(6) 	False case 
755:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
757:     LD  3,-2(1) 	Load variable m
758:     ST  3,-3(1) 	Save left side 
759:    LDC  3,10(6) 	Load constant 
760:     LD  4,-3(1) 	Load left into ac1 
761:    SUB  3,4,3 	Op - 
762:    LDA  4,-2(0) 	Load address of base of array board
763:    SUB  3,4,3 	Compute offset of value 
764:     LD  3,0(3) 	Load the value 
765:     ST  3,-3(1) 	Save left side 
766:    LDC  3,0(6) 	Load constant 
767:     LD  4,-3(1) 	Load left into ac1 
768:    SUB  4,4,3 	Op == 
769:    LDC  3,1(6) 	True case 
770:    JEQ  4,1(7) 	Jump if true 
771:    LDC  3,0(6) 	False case 
772:     ST  3,-3(1) 	Save left side 
773:     LD  3,-2(1) 	Load variable m
774:     ST  3,-4(1) 	Save left side 
775:    LDC  3,10(6) 	Load constant 
776:     LD  4,-4(1) 	Load left into ac1 
777:    SUB  3,4,3 	Op - 
778:    LDA  4,-103(0) 	Load address of base of array guess
779:    SUB  3,4,3 	Compute offset of value 
780:     LD  3,0(3) 	Load the value 
781:    LDC  4,1(6) 	Load 1 
782:    SUB  3,4,3 	Op NOT 
783:     LD  4,-3(1) 	Load left into ac1 
784:    JEQ  3,1(7) 	Op AND 
785:    LDA  3,0(4) 	 
786:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  Move
788:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
789:     LD  3,-2(1) 	Load variable m
790:     ST  3,-5(1) 	Save left side 
791:    LDC  3,10(6) 	Load constant 
792:     LD  4,-5(1) 	Load left into ac1 
793:    SUB  3,4,3 	Op - 
794:     ST  3,-5(1) 	Store parameter 
*                       Jump to Move
795:    LDA  1,-3(1) 	Load address of new frame 
796:    LDA  3,1(7) 	Return address in ac 
797:    LDA  7,-72(7) 	CALL Move
798:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Move
787:    LDA  7,11(7) 	Jump around the THEN [backpatch] 
* ENDIF
756:    LDA  7,42(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
799:     LD  3,-2(1) 	Load variable m
800:     ST  3,-3(1) 	Save left side 
801:    LDC  3,10(6) 	Load constant 
802:     LD  4,-3(1) 	Load left into ac1 
803:    DIV  5,4,3 	Op % 
804:    MUL  5,5,3 	 
805:    SUB  3,4,5 	 
806:     ST  3,-3(1) 	Save left side 
807:    LDC  3,0(6) 	Load constant 
808:     LD  4,-3(1) 	Load left into ac1 
809:    SUB  3,4,3 	Op != 
810:    JEQ  3,1(7) 	Jump if true 
811:    LDC  3,1(6) 	True case 
812:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
814:     LD  3,-2(1) 	Load variable m
815:     ST  3,-3(1) 	Save left side 
816:    LDC  3,1(6) 	Load constant 
817:     LD  4,-3(1) 	Load left into ac1 
818:    SUB  3,4,3 	Op - 
819:    LDA  4,-2(0) 	Load address of base of array board
820:    SUB  3,4,3 	Compute offset of value 
821:     LD  3,0(3) 	Load the value 
822:     ST  3,-3(1) 	Save left side 
823:    LDC  3,0(6) 	Load constant 
824:     LD  4,-3(1) 	Load left into ac1 
825:    SUB  4,4,3 	Op == 
826:    LDC  3,1(6) 	True case 
827:    JEQ  4,1(7) 	Jump if true 
828:    LDC  3,0(6) 	False case 
829:     ST  3,-3(1) 	Save left side 
830:     LD  3,-2(1) 	Load variable m
831:     ST  3,-4(1) 	Save left side 
832:    LDC  3,1(6) 	Load constant 
833:     LD  4,-4(1) 	Load left into ac1 
834:    SUB  3,4,3 	Op - 
835:    LDA  4,-103(0) 	Load address of base of array guess
836:    SUB  3,4,3 	Compute offset of value 
837:     LD  3,0(3) 	Load the value 
838:    LDC  4,1(6) 	Load 1 
839:    SUB  3,4,3 	Op NOT 
840:     LD  4,-3(1) 	Load left into ac1 
841:    JEQ  3,1(7) 	Op AND 
842:    LDA  3,0(4) 	 
843:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  Move
845:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
846:     LD  3,-2(1) 	Load variable m
847:     ST  3,-5(1) 	Save left side 
848:    LDC  3,1(6) 	Load constant 
849:     LD  4,-5(1) 	Load left into ac1 
850:    SUB  3,4,3 	Op - 
851:     ST  3,-5(1) 	Store parameter 
*                       Jump to Move
852:    LDA  1,-3(1) 	Load address of new frame 
853:    LDA  3,1(7) 	Return address in ac 
854:    LDA  7,-129(7) 	CALL Move
855:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Move
844:    LDA  7,11(7) 	Jump around the THEN [backpatch] 
* ENDIF
813:    LDA  7,42(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
856:     LD  3,-2(1) 	Load variable m
857:     ST  3,-3(1) 	Save left side 
858:    LDC  3,9(6) 	Load constant 
859:     LD  4,-3(1) 	Load left into ac1 
860:    DIV  5,4,3 	Op % 
861:    MUL  5,5,3 	 
862:    SUB  3,4,5 	 
863:     ST  3,-3(1) 	Save left side 
864:    LDC  3,0(6) 	Load constant 
865:     LD  4,-3(1) 	Load left into ac1 
866:    SUB  3,4,3 	Op != 
867:    JEQ  3,1(7) 	Jump if true 
868:    LDC  3,1(6) 	True case 
869:     ST  3,-3(1) 	Save left side 
870:     LD  3,-2(1) 	Load variable m
871:     ST  3,-4(1) 	Save left side 
872:    LDC  3,0(6) 	Load constant 
873:     LD  4,-4(1) 	Load left into ac1 
874:    SUB  4,4,3 	Op == 
875:    LDC  3,1(6) 	True case 
876:    JEQ  4,1(7) 	Jump if true 
877:    LDC  3,0(6) 	False case 
878:     LD  4,-3(1) 	Load left into ac1 
879:    JGT  3,1(7) 	Op OR 
880:    LDA  3,0(4) 	 
881:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
883:     LD  3,-2(1) 	Load variable m
884:     ST  3,-3(1) 	Save left side 
885:    LDC  3,1(6) 	Load constant 
886:     LD  4,-3(1) 	Load left into ac1 
887:    ADD  3,4,3 	Op + 
888:    LDA  4,-2(0) 	Load address of base of array board
889:    SUB  3,4,3 	Compute offset of value 
890:     LD  3,0(3) 	Load the value 
891:     ST  3,-3(1) 	Save left side 
892:    LDC  3,0(6) 	Load constant 
893:     LD  4,-3(1) 	Load left into ac1 
894:    SUB  4,4,3 	Op == 
895:    LDC  3,1(6) 	True case 
896:    JEQ  4,1(7) 	Jump if true 
897:    LDC  3,0(6) 	False case 
898:     ST  3,-3(1) 	Save left side 
899:     LD  3,-2(1) 	Load variable m
900:     ST  3,-4(1) 	Save left side 
901:    LDC  3,1(6) 	Load constant 
902:     LD  4,-4(1) 	Load left into ac1 
903:    ADD  3,4,3 	Op + 
904:    LDA  4,-103(0) 	Load address of base of array guess
905:    SUB  3,4,3 	Compute offset of value 
906:     LD  3,0(3) 	Load the value 
907:    LDC  4,1(6) 	Load 1 
908:    SUB  3,4,3 	Op NOT 
909:     LD  4,-3(1) 	Load left into ac1 
910:    JEQ  3,1(7) 	Op AND 
911:    LDA  3,0(4) 	 
912:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  Move
914:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
915:     LD  3,-2(1) 	Load variable m
916:     ST  3,-5(1) 	Save left side 
917:    LDC  3,1(6) 	Load constant 
918:     LD  4,-5(1) 	Load left into ac1 
919:    ADD  3,4,3 	Op + 
920:     ST  3,-5(1) 	Store parameter 
*                       Jump to Move
921:    LDA  1,-3(1) 	Load address of new frame 
922:    LDA  3,1(7) 	Return address in ac 
923:    LDA  7,-198(7) 	CALL Move
924:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Move
913:    LDA  7,11(7) 	Jump around the THEN [backpatch] 
* ENDIF
882:    LDA  7,42(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
925:     LD  3,-2(1) 	Load variable m
926:     ST  3,-3(1) 	Save left side 
927:    LDC  3,90(6) 	Load constant 
928:     LD  4,-3(1) 	Load left into ac1 
929:    SUB  4,4,3 	Op < 
930:    LDC  3,1(6) 	True case 
931:    JLT  4,1(7) 	Jump if true 
932:    LDC  3,0(6) 	False case 
933:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
935:     LD  3,-2(1) 	Load variable m
936:     ST  3,-3(1) 	Save left side 
937:    LDC  3,10(6) 	Load constant 
938:     LD  4,-3(1) 	Load left into ac1 
939:    ADD  3,4,3 	Op + 
940:    LDA  4,-2(0) 	Load address of base of array board
941:    SUB  3,4,3 	Compute offset of value 
942:     LD  3,0(3) 	Load the value 
943:     ST  3,-3(1) 	Save left side 
944:    LDC  3,0(6) 	Load constant 
945:     LD  4,-3(1) 	Load left into ac1 
946:    SUB  4,4,3 	Op == 
947:    LDC  3,1(6) 	True case 
948:    JEQ  4,1(7) 	Jump if true 
949:    LDC  3,0(6) 	False case 
950:     ST  3,-3(1) 	Save left side 
951:     LD  3,-2(1) 	Load variable m
952:     ST  3,-4(1) 	Save left side 
953:    LDC  3,10(6) 	Load constant 
954:     LD  4,-4(1) 	Load left into ac1 
955:    ADD  3,4,3 	Op + 
956:    LDA  4,-103(0) 	Load address of base of array guess
957:    SUB  3,4,3 	Compute offset of value 
958:     LD  3,0(3) 	Load the value 
959:    LDC  4,1(6) 	Load 1 
960:    SUB  3,4,3 	Op NOT 
961:     LD  4,-3(1) 	Load left into ac1 
962:    JEQ  3,1(7) 	Op AND 
963:    LDA  3,0(4) 	 
964:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  Move
966:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
967:     LD  3,-2(1) 	Load variable m
968:     ST  3,-5(1) 	Save left side 
969:    LDC  3,10(6) 	Load constant 
970:     LD  4,-5(1) 	Load left into ac1 
971:    ADD  3,4,3 	Op + 
972:     ST  3,-5(1) 	Store parameter 
*                       Jump to Move
973:    LDA  1,-3(1) 	Load address of new frame 
974:    LDA  3,1(7) 	Return address in ac 
975:    LDA  7,-250(7) 	CALL Move
976:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Move
965:    LDA  7,11(7) 	Jump around the THEN [backpatch] 
* ENDIF
934:    LDA  7,42(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
746:    LDA  7,230(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
977:    LDC  2,0(6) 	Set return value to 0 
978:     LD  3,-1(1) 	Load return address 
979:     LD  1,0(1) 	Adjust fp 
980:    LDA  7,0(3) 	Return 
* END of function Move
* BEGIN function main
981:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  input
982:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to input
983:    LDA  1,-5(1) 	Load address of new frame 
984:    LDA  3,1(7) 	Return address in ac 
985:    LDA  7,-985(7) 	CALL input
986:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
987:     ST  3,0(0) 	Store variable seed
* EXPRESSION STMT
*                       Begin call to  CreateBoard
988:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to CreateBoard
989:    LDA  1,-5(1) 	Load address of new frame 
990:    LDA  3,1(7) 	Return address in ac 
991:    LDA  7,-900(7) 	CALL CreateBoard
992:    LDA  3,0(2) 	Save the result in ac 
*                       End call to CreateBoard
* WHILE
993:    LDC  3,1(6) 	Load constant 
994:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  PrintBoard
996:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to PrintBoard
997:    LDA  1,-5(1) 	Load address of new frame 
998:    LDA  3,1(7) 	Return address in ac 
999:    LDA  7,-386(7) 	CALL PrintBoard
1000:    LDA  3,0(2) 	Save the result in ac 
*                       End call to PrintBoard
* EXPRESSION STMT
*                       Begin call to  input
1001:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to input
1002:    LDA  1,-5(1) 	Load address of new frame 
1003:    LDA  3,1(7) 	Return address in ac 
1004:    LDA  7,-1004(7) 	CALL input
1005:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
1006:     ST  3,-5(1) 	Save left side 
1007:    LDC  3,1(6) 	Load constant 
1008:     LD  4,-5(1) 	Load left into ac1 
1009:    SUB  3,4,3 	Op - 
1010:     ST  3,-3(1) 	Store variable x
* EXPRESSION STMT
*                       Begin call to  input
1011:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to input
1012:    LDA  1,-5(1) 	Load address of new frame 
1013:    LDA  3,1(7) 	Return address in ac 
1014:    LDA  7,-1014(7) 	CALL input
1015:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
1016:     ST  3,-5(1) 	Save left side 
1017:    LDC  3,1(6) 	Load constant 
1018:     LD  4,-5(1) 	Load left into ac1 
1019:    SUB  3,4,3 	Op - 
1020:     ST  3,-4(1) 	Store variable y
* IF
1021:     LD  3,-3(1) 	Load variable x
1022:     ST  3,-5(1) 	Save left side 
1023:    LDC  3,9(6) 	Load constant 
1024:     LD  4,-5(1) 	Load left into ac1 
1025:    SUB  4,4,3 	Op > 
1026:    LDC  3,1(6) 	True case 
1027:    JGT  4,1(7) 	Jump if true 
1028:    LDC  3,0(6) 	False case 
1029:     ST  3,-5(1) 	Save left side 
1030:     LD  3,-4(1) 	Load variable y
1031:     ST  3,-6(1) 	Save left side 
1032:    LDC  3,9(6) 	Load constant 
1033:     LD  4,-6(1) 	Load left into ac1 
1034:    SUB  4,4,3 	Op > 
1035:    LDC  3,1(6) 	True case 
1036:    JGT  4,1(7) 	Jump if true 
1037:    LDC  3,0(6) 	False case 
1038:     LD  4,-5(1) 	Load left into ac1 
1039:    JGT  3,1(7) 	Op OR 
1040:    LDA  3,0(4) 	 
1041:     ST  3,-5(1) 	Save left side 
1042:     LD  3,-3(1) 	Load variable x
1043:     ST  3,-6(1) 	Save left side 
1044:    LDC  3,0(6) 	Load constant 
1045:     LD  4,-6(1) 	Load left into ac1 
1046:    SUB  4,4,3 	Op < 
1047:    LDC  3,1(6) 	True case 
1048:    JLT  4,1(7) 	Jump if true 
1049:    LDC  3,0(6) 	False case 
1050:     LD  4,-5(1) 	Load left into ac1 
1051:    JGT  3,1(7) 	Op OR 
1052:    LDA  3,0(4) 	 
1053:     ST  3,-5(1) 	Save left side 
1054:     LD  3,-4(1) 	Load variable y
1055:     ST  3,-6(1) 	Save left side 
1056:    LDC  3,0(6) 	Load constant 
1057:     LD  4,-6(1) 	Load left into ac1 
1058:    SUB  4,4,3 	Op < 
1059:    LDC  3,1(6) 	True case 
1060:    JLT  4,1(7) 	Jump if true 
1061:    LDC  3,0(6) 	False case 
1062:     LD  4,-5(1) 	Load left into ac1 
1063:    JGT  3,1(7) 	Op OR 
1064:    LDA  3,0(4) 	 
1065:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outputc
1067:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1068:    LDC  3,66(6) 	Load constant 
1069:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1070:    LDA  1,-5(1) 	Load address of new frame 
1071:    LDA  3,1(7) 	Return address in ac 
1072:    LDA  7,-1043(7) 	CALL outputc
1073:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outputc
1074:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1075:    LDC  3,89(6) 	Load constant 
1076:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1077:    LDA  1,-5(1) 	Load address of new frame 
1078:    LDA  3,1(7) 	Return address in ac 
1079:    LDA  7,-1050(7) 	CALL outputc
1080:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outputc
1081:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1082:    LDC  3,69(6) 	Load constant 
1083:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1084:    LDA  1,-5(1) 	Load address of new frame 
1085:    LDA  3,1(7) 	Return address in ac 
1086:    LDA  7,-1057(7) 	CALL outputc
1087:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outnl
1088:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
1089:    LDA  1,-5(1) 	Load address of new frame 
1090:    LDA  3,1(7) 	Return address in ac 
1091:    LDA  7,-1055(7) 	CALL outnl
1092:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* BREAK
1093:    LDA  7,-99(7) 	break 
* END compound statement
1066:    LDA  7,27(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
1094:     LD  3,-3(1) 	Load variable x
1095:     ST  3,-5(1) 	Save left side 
1096:    LDC  3,10(6) 	Load constant 
1097:     LD  4,-5(1) 	Load left into ac1 
1098:    MUL  3,4,3 	Op * 
1099:     ST  3,-5(1) 	Save left side 
1100:     LD  3,-4(1) 	Load variable y
1101:     LD  4,-5(1) 	Load left into ac1 
1102:    ADD  3,4,3 	Op + 
1103:    LDA  4,-2(0) 	Load address of base of array board
1104:    SUB  3,4,3 	Compute offset of value 
1105:     LD  3,0(3) 	Load the value 
1106:     ST  3,-5(1) 	Save left side 
1107:    LDC  3,1(6) 	Load constant 
1108:    LDC  4,0(6) 	Load 0 
1109:    SUB  3,4,3 	Op unary - 
1110:     LD  4,-5(1) 	Load left into ac1 
1111:    SUB  4,4,3 	Op == 
1112:    LDC  3,1(6) 	True case 
1113:    JEQ  4,1(7) 	Jump if true 
1114:    LDC  3,0(6) 	False case 
1115:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1117:    LDC  3,0(6) 	Load constant 
1118:     ST  3,-2(1) 	Store variable i
* WHILE
1119:     LD  3,-2(1) 	Load variable i
1120:     ST  3,-5(1) 	Save left side 
1121:    LDC  3,100(6) 	Load constant 
1122:     LD  4,-5(1) 	Load left into ac1 
1123:    SUB  4,4,3 	Op < 
1124:    LDC  3,1(6) 	True case 
1125:    JLT  4,1(7) 	Jump if true 
1126:    LDC  3,0(6) 	False case 
1127:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
1129:     LD  3,-2(1) 	Load variable i
1130:     ST  3,-5(1) 	Save index 
1131:    LDC  3,1(6) 	Load constant 
1132:     LD  4,-5(1) 	Restore index 
1133:    LDA  5,-103(0) 	Load address of base of array guess
1134:    SUB  5,5,4 	Compute offset of value 
1135:     ST  3,0(5) 	Store variable guess
* EXPRESSION STMT
1136:    LDC  3,1(6) 	Load constant 
1137:     LD  4,-2(1) 	load lhs variable i
1138:    ADD  3,4,3 	op += 
1139:     ST  3,-2(1) 	Store variable i
* END compound statement
1140:    LDA  7,-22(7) 	go to beginning of loop 
1128:    LDA  7,12(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  PrintBoard
1141:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to PrintBoard
1142:    LDA  1,-5(1) 	Load address of new frame 
1143:    LDA  3,1(7) 	Return address in ac 
1144:    LDA  7,-531(7) 	CALL PrintBoard
1145:    LDA  3,0(2) 	Save the result in ac 
*                       End call to PrintBoard
* EXPRESSION STMT
*                       Begin call to  outputc
1146:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1147:    LDC  3,66(6) 	Load constant 
1148:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1149:    LDA  1,-5(1) 	Load address of new frame 
1150:    LDA  3,1(7) 	Return address in ac 
1151:    LDA  7,-1122(7) 	CALL outputc
1152:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outputc
1153:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1154:    LDC  3,79(6) 	Load constant 
1155:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1156:    LDA  1,-5(1) 	Load address of new frame 
1157:    LDA  3,1(7) 	Return address in ac 
1158:    LDA  7,-1129(7) 	CALL outputc
1159:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outputc
1160:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1161:    LDC  3,79(6) 	Load constant 
1162:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1163:    LDA  1,-5(1) 	Load address of new frame 
1164:    LDA  3,1(7) 	Return address in ac 
1165:    LDA  7,-1136(7) 	CALL outputc
1166:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outputc
1167:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1168:    LDC  3,77(6) 	Load constant 
1169:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1170:    LDA  1,-5(1) 	Load address of new frame 
1171:    LDA  3,1(7) 	Return address in ac 
1172:    LDA  7,-1143(7) 	CALL outputc
1173:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outputc
1174:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1175:    LDC  3,33(6) 	Load constant 
1176:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1177:    LDA  1,-5(1) 	Load address of new frame 
1178:    LDA  3,1(7) 	Return address in ac 
1179:    LDA  7,-1150(7) 	CALL outputc
1180:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outnl
1181:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
1182:    LDA  1,-5(1) 	Load address of new frame 
1183:    LDA  3,1(7) 	Return address in ac 
1184:    LDA  7,-1148(7) 	CALL outnl
1185:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* BREAK
1186:    LDA  7,-192(7) 	break 
* END compound statement
1116:    LDA  7,70(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
1187:    LDC  3,0(6) 	Load constant 
1188:     ST  3,-2(1) 	Store variable i
* WHILE
1189:     LD  3,-2(1) 	Load variable i
1190:    LDA  4,-103(0) 	Load address of base of array guess
1191:    SUB  3,4,3 	Compute offset of value 
1192:     LD  3,0(3) 	Load the value 
1193:     ST  3,-5(1) 	Save left side 
1194:    LDC  3,1(6) 	Load constant 
1195:     LD  4,-5(1) 	Load left into ac1 
1196:    SUB  4,4,3 	Op == 
1197:    LDC  3,1(6) 	True case 
1198:    JEQ  4,1(7) 	Jump if true 
1199:    LDC  3,0(6) 	False case 
1200:     ST  3,-5(1) 	Save left side 
1201:     LD  3,-2(1) 	Load variable i
1202:     ST  3,-6(1) 	Save left side 
1203:    LDC  3,100(6) 	Load constant 
1204:     LD  4,-6(1) 	Load left into ac1 
1205:    SUB  4,4,3 	Op < 
1206:    LDC  3,1(6) 	True case 
1207:    JLT  4,1(7) 	Jump if true 
1208:    LDC  3,0(6) 	False case 
1209:     LD  4,-5(1) 	Load left into ac1 
1210:    JEQ  3,1(7) 	Op AND 
1211:    LDA  3,0(4) 	 
1212:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
1214:    LDC  3,1(6) 	Load constant 
1215:     LD  4,-2(1) 	load lhs variable i
1216:    ADD  3,4,3 	op += 
1217:     ST  3,-2(1) 	Store variable i
1218:    LDA  7,-30(7) 	go to beginning of loop 
1213:    LDA  7,5(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
1219:     LD  3,-2(1) 	Load variable i
1220:     ST  3,-5(1) 	Save left side 
1221:    LDC  3,100(6) 	Load constant 
1222:     LD  4,-5(1) 	Load left into ac1 
1223:    SUB  4,4,3 	Op == 
1224:    LDC  3,1(6) 	True case 
1225:    JEQ  4,1(7) 	Jump if true 
1226:    LDC  3,0(6) 	False case 
1227:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  PrintBoard
1229:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to PrintBoard
1230:    LDA  1,-5(1) 	Load address of new frame 
1231:    LDA  3,1(7) 	Return address in ac 
1232:    LDA  7,-619(7) 	CALL PrintBoard
1233:    LDA  3,0(2) 	Save the result in ac 
*                       End call to PrintBoard
* EXPRESSION STMT
*                       Begin call to  outputc
1234:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1235:    LDC  3,89(6) 	Load constant 
1236:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1237:    LDA  1,-5(1) 	Load address of new frame 
1238:    LDA  3,1(7) 	Return address in ac 
1239:    LDA  7,-1210(7) 	CALL outputc
1240:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outputc
1241:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1242:    LDC  3,65(6) 	Load constant 
1243:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1244:    LDA  1,-5(1) 	Load address of new frame 
1245:    LDA  3,1(7) 	Return address in ac 
1246:    LDA  7,-1217(7) 	CALL outputc
1247:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outputc
1248:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1249:    LDC  3,89(6) 	Load constant 
1250:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1251:    LDA  1,-5(1) 	Load address of new frame 
1252:    LDA  3,1(7) 	Return address in ac 
1253:    LDA  7,-1224(7) 	CALL outputc
1254:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outputc
1255:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1256:    LDC  3,33(6) 	Load constant 
1257:     ST  3,-7(1) 	Store parameter 
*                       Jump to outputc
1258:    LDA  1,-5(1) 	Load address of new frame 
1259:    LDA  3,1(7) 	Return address in ac 
1260:    LDA  7,-1231(7) 	CALL outputc
1261:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outnl
1262:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
1263:    LDA  1,-5(1) 	Load address of new frame 
1264:    LDA  3,1(7) 	Return address in ac 
1265:    LDA  7,-1229(7) 	CALL outnl
1266:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* BREAK
1267:    LDA  7,-273(7) 	break 
* END compound statement
1228:    LDA  7,39(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
*                       Begin call to  Move
1268:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
1269:     LD  3,-3(1) 	Load variable x
1270:     ST  3,-7(1) 	Save left side 
1271:     LD  3,-4(1) 	Load variable y
1272:     ST  3,-8(1) 	Save left side 
1273:    LDC  3,10(6) 	Load constant 
1274:     LD  4,-8(1) 	Load left into ac1 
1275:    MUL  3,4,3 	Op * 
1276:     LD  4,-7(1) 	Load left into ac1 
1277:    ADD  3,4,3 	Op + 
1278:     ST  3,-7(1) 	Store parameter 
*                       Jump to Move
1279:    LDA  1,-5(1) 	Load address of new frame 
1280:    LDA  3,1(7) 	Return address in ac 
1281:    LDA  7,-556(7) 	CALL Move
1282:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Move
* END compound statement
1283:    LDA  7,-291(7) 	go to beginning of loop 
995:    LDA  7,288(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
1284:    LDC  2,0(6) 	Set return value to 0 
1285:     LD  3,-1(1) 	Load return address 
1286:     LD  1,0(1) 	Adjust fp 
1287:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,1287(7) 	Jump to init [backpatch] 
* BEGIN Init
1288:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
1289:    LDC  3,100(6) 	load size of array board
1290:     ST  3,-1(0) 	save size of array board
1291:    LDC  3,100(6) 	load size of array guess
1292:     ST  3,-102(0) 	save size of array guess
* END init of globals
1293:    LDA  1,-203(0) 	set first frame at end of globals 
1294:     ST  1,0(1) 	store old fp (point to self) 
1295:    LDA  3,1(7) 	Return address in ac 
1296:    LDA  7,-316(7) 	Jump to main 
1297:   HALT  0,0,0 	DONE! 
* END Init
