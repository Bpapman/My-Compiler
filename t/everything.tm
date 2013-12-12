* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  everything.c-
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
* BEGIN function wallace
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:     LD  3,-4(1) 	Load variable close
* EXPRESSION STMT
 44:     LD  3,-5(1) 	Load variable shave
 45:     ST  3,-4(1) 	Store variable close
* EXPRESSION STMT
 46:     LD  3,-3(1) 	Load variable trousers
 47:     ST  3,-26(1) 	Save left side 
 48:    LDC  3,666(6) 	Load constant 
 49:     ST  3,-27(1) 	Save left side 
 50:     LD  3,-2(1) 	Load variable wrong
 51:     LD  4,-27(1) 	Load left into ac1 
 52:    DIV  3,4,3 	Op / 
 53:     LD  4,-26(1) 	Load left into ac1 
 54:    DIV  5,4,3 	Op % 
 55:    MUL  5,5,3 	 
 56:    SUB  3,4,5 	 
 57:     ST  3,-2(1) 	Store variable wrong
* EXPRESSION STMT
 58:     LD  3,-2(1) 	Load variable wrong
 59:     ST  3,-26(1) 	Save left side 
 60:     LD  3,-3(1) 	Load variable trousers
 61:     LD  4,-26(1) 	Load left into ac1 
 62:    MUL  3,4,3 	Op * 
 63:     ST  3,-26(1) 	Save left side 
 64:     LD  3,0(0) 	Load variable gromit
 65:     LD  4,-26(1) 	Load left into ac1 
 66:    SUB  3,4,3 	Op - 
 67:     ST  3,-26(1) 	Save left side 
 68:    LDC  3,42(6) 	Load constant 
 69:    LDC  4,0(6) 	Load 0 
 70:    SUB  3,4,3 	Op unary - 
 71:     LD  4,-26(1) 	Load left into ac1 
 72:    ADD  3,4,3 	Op + 
 73:     ST  3,0(0) 	Store variable gromit
* EXPRESSION STMT
 74:    LDC  3,27182818(6) 	Load constant 
 75:     LD  4,0(0) 	load lhs variable gromit
 76:    ADD  3,4,3 	op += 
 77:     ST  3,0(0) 	Store variable gromit
* EXPRESSION STMT
 78:    LDC  3,31415927(6) 	Load constant 
 79:     LD  4,0(0) 	load lhs variable gromit
 80:    SUB  3,4,3 	op -= 
 81:     ST  3,0(0) 	Store variable gromit
* EXPRESSION STMT
 82:     LD  3,-2(1) 	Load variable wrong
 83:     ST  3,-26(1) 	Save left side 
 84:     LD  3,-3(1) 	Load variable trousers
 85:     LD  4,-26(1) 	Load left into ac1 
 86:    SUB  4,4,3 	Op < 
 87:    LDC  3,1(6) 	True case 
 88:    JLT  4,1(7) 	Jump if true 
 89:    LDC  3,0(6) 	False case 
 90:     ST  3,-26(1) 	Save left side 
 91:     LD  3,-3(1) 	Load variable trousers
 92:     ST  3,-27(1) 	Save left side 
 93:     LD  3,0(0) 	Load variable gromit
 94:     LD  4,-27(1) 	Load left into ac1 
 95:    SUB  4,4,3 	Op <= 
 96:    LDC  3,1(6) 	True case 
 97:    JLE  4,1(7) 	Jump if true 
 98:    LDC  3,0(6) 	False case 
 99:     LD  4,-26(1) 	Load left into ac1 
100:    JEQ  3,1(7) 	Op AND 
101:    LDA  3,0(4) 	 
102:     ST  3,-4(1) 	Store variable close
* EXPRESSION STMT
103:     LD  3,-2(1) 	Load variable wrong
104:     ST  3,-26(1) 	Save left side 
105:     LD  3,-3(1) 	Load variable trousers
106:     LD  4,-26(1) 	Load left into ac1 
107:    SUB  4,4,3 	Op > 
108:    LDC  3,1(6) 	True case 
109:    JGT  4,1(7) 	Jump if true 
110:    LDC  3,0(6) 	False case 
111:     ST  3,-26(1) 	Save left side 
112:     LD  3,-3(1) 	Load variable trousers
113:     ST  3,-27(1) 	Save left side 
114:     LD  3,0(0) 	Load variable gromit
115:     LD  4,-27(1) 	Load left into ac1 
116:    SUB  4,4,3 	Op >= 
117:    LDC  3,1(6) 	True case 
118:    JGE  4,1(7) 	Jump if true 
119:    LDC  3,0(6) 	False case 
120:     LD  4,-26(1) 	Load left into ac1 
121:    JEQ  3,1(7) 	Op AND 
122:    LDA  3,0(4) 	 
123:     ST  3,-5(1) 	Store variable shave
* BEGIN compound statement
* EXPRESSION STMT
124:     LD  3,-9(1) 	Load variable out
125:     LD  4,-8(1) 	load lhs variable day
126:    SUB  3,4,3 	op -= 
127:     ST  3,-8(1) 	Store variable day
128:     LD  4,-7(1) 	load lhs variable grand
129:    ADD  3,4,3 	op += 
130:     ST  3,-7(1) 	Store variable grand
131:     ST  3,-6(1) 	Store variable a
* END compound statement
* EXPRESSION STMT
132:    LDC  3,1(6) 	Load constant 
133:    LDC  4,0(6) 	Load 0 
134:    SUB  3,4,3 	Op unary - 
135:     ST  3,-26(1) 	Save left side 
136:    LDC  3,2(6) 	Load constant 
137:     LD  4,-26(1) 	Load left into ac1 
138:    MUL  3,4,3 	Op * 
139:     ST  3,-26(1) 	Save left side 
140:    LDC  3,3(6) 	Load constant 
141:     LD  4,-26(1) 	Load left into ac1 
142:    ADD  3,4,3 	Op + 
143:     ST  3,-26(1) 	Save left side 
144:    LDC  3,4(6) 	Load constant 
145:     ST  3,-27(1) 	Save left side 
146:    LDC  3,5(6) 	Load constant 
147:     LD  4,-27(1) 	Load left into ac1 
148:    MUL  3,4,3 	Op * 
149:     LD  4,-26(1) 	Load left into ac1 
150:    SUB  4,4,3 	Op < 
151:    LDC  3,1(6) 	True case 
152:    JLT  4,1(7) 	Jump if true 
153:    LDC  3,0(6) 	False case 
154:     ST  3,-26(1) 	Save left side 
155:    LDC  3,6(6) 	Load constant 
156:     ST  3,-27(1) 	Save left side 
157:    LDC  3,7(6) 	Load constant 
158:     LD  4,-27(1) 	Load left into ac1 
159:    ADD  3,4,3 	Op + 
160:     ST  3,-27(1) 	Save left side 
161:    LDC  3,3(6) 	Load constant 
162:    LDC  4,0(6) 	Load 0 
163:    SUB  3,4,3 	Op unary - 
164:     LD  4,-27(1) 	Load left into ac1 
165:    SUB  4,4,3 	Op > 
166:    LDC  3,1(6) 	True case 
167:    JGT  4,1(7) 	Jump if true 
168:    LDC  3,0(6) 	False case 
169:     LD  4,-26(1) 	Load left into ac1 
170:    JEQ  3,1(7) 	Op AND 
171:    LDA  3,0(4) 	 
172:     ST  3,-4(1) 	Store variable close
* EXPRESSION STMT
173:    LDC  3,1(6) 	Load constant 
174:     ST  3,-26(1) 	Save left side 
175:    LDC  3,1(6) 	Load constant 
176:     ST  3,-27(1) 	Save left side 
177:    LDC  3,2(6) 	Load constant 
178:     ST  3,-28(1) 	Save left side 
179:    LDC  3,3(6) 	Load constant 
180:     LD  4,-28(1) 	Load left into ac1 
181:    ADD  3,4,3 	Op + 
182:     LD  4,-27(1) 	Load left into ac1 
183:    MUL  3,4,3 	Op * 
184:    LDC  4,0(6) 	Load 0 
185:    SUB  3,4,3 	Op unary - 
186:     ST  3,-27(1) 	Save left side 
187:    LDC  3,4(6) 	Load constant 
188:     ST  3,-28(1) 	Save left side 
189:    LDC  3,5(6) 	Load constant 
190:     LD  4,-28(1) 	Load left into ac1 
191:    MUL  3,4,3 	Op * 
192:     LD  4,-27(1) 	Load left into ac1 
193:    SUB  4,4,3 	Op < 
194:    LDC  3,1(6) 	True case 
195:    JLT  4,1(7) 	Jump if true 
196:    LDC  3,0(6) 	False case 
197:     ST  3,-27(1) 	Save left side 
198:    LDC  3,6(6) 	Load constant 
199:     ST  3,-28(1) 	Save left side 
200:    LDC  3,7(6) 	Load constant 
201:     LD  4,-28(1) 	Load left into ac1 
202:    ADD  3,4,3 	Op + 
203:     ST  3,-28(1) 	Save left side 
204:    LDC  3,3(6) 	Load constant 
205:    LDC  4,0(6) 	Load 0 
206:    SUB  3,4,3 	Op unary - 
207:     LD  4,-28(1) 	Load left into ac1 
208:    SUB  4,4,3 	Op > 
209:    LDC  3,1(6) 	True case 
210:    JGT  4,1(7) 	Jump if true 
211:    LDC  3,0(6) 	False case 
212:     LD  4,-27(1) 	Load left into ac1 
213:    JEQ  3,1(7) 	Op AND 
214:    LDA  3,0(4) 	 
215:     LD  4,-26(1) 	Load left into ac1 
216:    JGT  3,1(7) 	Op OR 
217:    LDA  3,0(4) 	 
218:     ST  3,-5(1) 	Store variable shave
* IF
219:     LD  3,-5(1) 	Load variable shave
220:     ST  3,-26(1) 	Save left side 
221:     LD  3,-4(1) 	Load variable close
222:     LD  4,-26(1) 	Load left into ac1 
223:    SUB  3,4,3 	Op != 
224:    JEQ  3,1(7) 	Jump if true 
225:    LDC  3,1(6) 	True case 
226:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
228:     LD  3,-4(1) 	Load variable close
229:    LDC  4,1(6) 	Load 1 
230:    SUB  3,4,3 	Op NOT 
231:     ST  3,-5(1) 	Store variable shave
227:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
232:     LD  3,-5(1) 	Load variable shave
233:     ST  3,-26(1) 	Save left side 
234:     LD  3,-4(1) 	Load variable close
235:     LD  4,-26(1) 	Load left into ac1 
236:    SUB  4,4,3 	Op == 
237:    LDC  3,1(6) 	True case 
238:    JEQ  4,1(7) 	Jump if true 
239:    LDC  3,0(6) 	False case 
240:    LDC  4,1(6) 	Load 1 
241:    SUB  3,4,3 	Op NOT 
242:     ST  3,-26(1) 	Save left side 
243:     LD  3,-4(1) 	Load variable close
244:    LDC  4,1(6) 	Load 1 
245:    SUB  3,4,3 	Op NOT 
246:     LD  4,-26(1) 	Load left into ac1 
247:    JGT  3,1(7) 	Op OR 
248:    LDA  3,0(4) 	 
249:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
251:    LDC  3,1(6) 	Load constant 
252:     ST  3,-5(1) 	Store variable shave
* ELSE
250:    LDA  7,3(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
254:    LDC  3,0(6) 	Load constant 
255:     ST  3,-4(1) 	Store variable close
253:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* WHILE
256:     LD  3,-5(1) 	Load variable shave
257:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
259:    LDC  3,10(6) 	load size of array sheep
260:     ST  3,-12(1) 	save size of array sheep
* EXPRESSION STMT
261:    LDC  3,2(6) 	Load constant 
262:     ST  3,-26(1) 	Save index 
263:    LDC  3,1618(6) 	Load constant 
264:     LD  4,-26(1) 	Restore index 
265:    LDA  5,-13(1) 	Load address of base of array sheep
266:    SUB  5,5,4 	Compute offset of value 
267:     ST  3,0(5) 	Store variable sheep
* IF
268:    LDC  3,2(6) 	Load constant 
269:    LDA  4,-13(1) 	Load address of base of array sheep
270:    SUB  3,4,3 	Compute offset of value 
271:     LD  3,0(3) 	Load the value 
272:     ST  3,-26(1) 	Save left side 
273:    LDC  3,496(6) 	Load constant 
274:     LD  4,-26(1) 	Load left into ac1 
275:    SUB  4,4,3 	Op < 
276:    LDC  3,1(6) 	True case 
277:    JLT  4,1(7) 	Jump if true 
278:    LDC  3,0(6) 	False case 
279:    JGT  3,1(7) 	Jump to then part 
* THEN
* BREAK
281:    LDA  7,-24(7) 	break 
280:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
*                       Begin call to  wallace
282:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
283:     LD  3,0(0) 	load lhs variable gromit
284:    LDA  3,-1(3) 	decrement value of gromit
285:     ST  3,0(0) 	Store variable gromit
286:     ST  3,-28(1) 	Store parameter 
*                       Load param 2
287:     LD  3,-10(1) 	Load variable were
288:     ST  3,-29(1) 	Save left side 
289:     LD  3,-11(1) 	Load variable rabbit
290:     LD  4,-29(1) 	Load left into ac1 
291:    SUB  3,4,3 	Op - 
292:     ST  3,-29(1) 	Store parameter 
*                       Jump to wallace
293:    LDA  1,-26(1) 	Load address of new frame 
294:    LDA  3,1(7) 	Return address in ac 
295:    LDA  7,-254(7) 	CALL wallace
296:    LDA  3,0(2) 	Save the result in ac 
*                       End call to wallace
* BEGIN compound statement
* EXPRESSION STMT
297:     LD  3,-25(1) 	load lhs variable trousers
298:    LDA  3,1(3) 	increment value of trousers
299:     ST  3,-25(1) 	Store variable trousers
300:     LD  4,-24(1) 	load lhs variable wrong
301:    ADD  3,4,3 	op += 
302:     ST  3,-24(1) 	Store variable wrong
303:     ST  3,-23(1) 	Store variable the
* IF
304:     LD  3,-10(1) 	Load variable were
305:     ST  3,-26(1) 	Save left side 
306:     LD  3,-11(1) 	Load variable rabbit
307:     LD  4,-26(1) 	Load left into ac1 
308:    SUB  4,4,3 	Op == 
309:    LDC  3,1(6) 	True case 
310:    JEQ  4,1(7) 	Jump if true 
311:    LDC  3,0(6) 	False case 
312:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
314:     LD  3,-24(1) 	load lhs variable wrong
315:    LDA  3,-1(3) 	decrement value of wrong
316:     ST  3,-24(1) 	Store variable wrong
317:     ST  3,-10(1) 	Store variable were
313:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* END compound statement
318:    LDA  7,-63(7) 	go to beginning of loop 
258:    LDA  7,60(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
319:     LD  3,-1(1) 	Load return address 
320:     LD  1,0(1) 	Adjust fp 
321:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
322:    LDC  2,0(6) 	Set return value to 0 
323:     LD  3,-1(1) 	Load return address 
324:     LD  1,0(1) 	Adjust fp 
325:    LDA  7,0(3) 	Return 
* END of function wallace
* BEGIN function Wendolene
326:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
327:     LD  3,-2(1) 	Load variable wool
328:     ST  3,-6(1) 	Save left side 
329:    LDC  3,0(6) 	Load constant 
330:     LD  4,-4(1) 	Load address of base of array yarn
331:    SUB  3,4,3 	Compute offset of value 
332:     LD  3,0(3) 	Load the value 
333:     LD  4,-6(1) 	Load left into ac1 
334:    ADD  3,4,3 	Op + 
335:     ST  3,-6(1) 	Save left side 
336:     LD  3,-4(1) 	Load address of base of array yarn
337:     LD  3,1(3) 	Load array size 
338:     LD  4,-6(1) 	Load left into ac1 
339:    ADD  3,4,3 	Op + 
340:     ST  3,-6(1) 	Save left side 
341:    LDC  3,7(6) 	Load constant 
342:     ST  3,-7(1) 	Save left side 
343:     LD  3,-2(1) 	Load variable wool
344:     LD  4,-7(1) 	Load left into ac1 
345:    MUL  3,4,3 	Op * 
346:     LD  4,-4(1) 	Load address of base of array yarn
347:    SUB  3,4,3 	Compute offset of value 
348:     LD  3,0(3) 	Load the value 
349:     LD  4,-6(1) 	Load left into ac1 
350:    ADD  3,4,3 	Op + 
351:    LDA  2,0(3) 	Copy result to rt register 
352:     LD  3,-1(1) 	Load return address 
353:     LD  1,0(1) 	Adjust fp 
354:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
355:    LDC  2,0(6) 	Set return value to 0 
356:     LD  3,-1(1) 	Load return address 
357:     LD  1,0(1) 	Adjust fp 
358:    LDA  7,0(3) 	Return 
* END of function Wendolene
* BEGIN function ramsBottom
359:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
360:    LDC  3,2(6) 	load size of array chicken
361:     ST  3,-2(1) 	save size of array chicken
362:    LDC  3,3(6) 	load size of array run
363:     ST  3,-5(1) 	save size of array run
364:    LDC  3,2(6) 	load size of array wallace
365:     ST  3,-9(1) 	save size of array wallace
366:    LDC  3,3(6) 	load size of array gromit
367:     ST  3,-12(1) 	save size of array gromit
* EXPRESSION STMT
368:    LDC  3,42(6) 	Load constant 
369:     ST  3,-16(1) 	Save left side 
*                       Begin call to  Wendolene
370:     ST  1,-17(1) 	Store old fp in ghost frame 
*                       Load param 1
371:    LDC  3,1(6) 	Load constant 
372:     ST  3,-19(1) 	Save left side 
373:    LDC  3,2(6) 	Load constant 
374:     LD  4,-19(1) 	Load left into ac1 
375:    ADD  3,4,3 	Op + 
376:     ST  3,-19(1) 	Save left side 
377:    LDC  3,3(6) 	Load constant 
378:     LD  4,-19(1) 	Load left into ac1 
379:    ADD  3,4,3 	Op + 
380:     ST  3,-19(1) 	Store parameter 
*                       Load param 2
381:    LDC  3,1(6) 	Load constant 
382:    LDC  4,1(6) 	Load 1 
383:    SUB  3,4,3 	Op NOT 
384:     ST  3,-20(1) 	Save left side 
385:    LDC  3,1(6) 	Load constant 
386:     ST  3,-21(1) 	Save left side 
387:    LDC  3,0(6) 	Load constant 
388:     LD  4,-21(1) 	Load left into ac1 
389:    JEQ  3,1(7) 	Op AND 
390:    LDA  3,0(4) 	 
391:     LD  4,-20(1) 	Load left into ac1 
392:    JGT  3,1(7) 	Op OR 
393:    LDA  3,0(4) 	 
394:     ST  3,-20(1) 	Store parameter 
*                       Load param 3
395:    LDA  3,-3(1) 	Load address of base of array chicken
396:     ST  3,-21(1) 	Store parameter 
*                       Load param 4
397:    LDA  3,-6(1) 	Load address of base of array run
398:     ST  3,-22(1) 	Store parameter 
*                       Jump to Wendolene
399:    LDA  1,-17(1) 	Load address of new frame 
400:    LDA  3,1(7) 	Return address in ac 
401:    LDA  7,-76(7) 	CALL Wendolene
402:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Wendolene
403:     LD  4,-16(1) 	Load left into ac1 
404:    MUL  3,4,3 	Op * 
* EXPRESSION STMT
405:    LDA  3,-6(1) 	Load address of base of array run
406:     LD  3,1(3) 	Load array size 
407:     ST  3,-16(1) 	Save left side 
408:    LDC  3,1(6) 	Load constant 
409:     LD  4,-16(1) 	Load left into ac1 
410:    SUB  3,4,3 	Op - 
411:    LDA  4,-6(1) 	Load address of base of array run
412:    SUB  3,4,3 	Compute offset of value 
413:     LD  3,0(3) 	Load the value 
* RETURN
414:    LDC  3,1(6) 	Load constant 
415:    LDA  4,-10(1) 	Load address of base of array wallace
416:    SUB  3,4,3 	Compute offset of value 
417:     LD  3,0(3) 	Load the value 
418:     ST  3,-16(1) 	Save left side 
419:    LDC  3,2(6) 	Load constant 
420:    LDA  4,-13(1) 	Load address of base of array gromit
421:    SUB  3,4,3 	Compute offset of value 
422:     LD  3,0(3) 	Load the value 
423:    LDC  4,0(6) 	Load 0 
424:    SUB  3,4,3 	Op unary - 
425:     ST  3,-17(1) 	Save left side 
426:    LDC  3,3(6) 	Load constant 
427:     LD  4,-17(1) 	Load left into ac1 
428:    MUL  3,4,3 	Op * 
429:     LD  4,-16(1) 	Load left into ac1 
430:    SUB  4,4,3 	Op >= 
431:    LDC  3,1(6) 	True case 
432:    JGE  4,1(7) 	Jump if true 
433:    LDC  3,0(6) 	False case 
434:    LDC  4,1(6) 	Load 1 
435:    SUB  3,4,3 	Op NOT 
436:    LDA  2,0(3) 	Copy result to rt register 
437:     LD  3,-1(1) 	Load return address 
438:     LD  1,0(1) 	Adjust fp 
439:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
440:    LDC  2,0(6) 	Set return value to 0 
441:     LD  3,-1(1) 	Load return address 
442:     LD  1,0(1) 	Adjust fp 
443:    LDA  7,0(3) 	Return 
* END of function ramsBottom
* BEGIN function cheese
444:     ST  3,-1(1) 	Store return address. 
* WHILE
445:     LD  3,-2(1) 	Load variable x
446:     ST  3,-4(1) 	Save left side 
447:    LDC  3,0(6) 	Load constant 
448:     LD  4,-4(1) 	Load left into ac1 
449:    SUB  4,4,3 	Op > 
450:    LDC  3,1(6) 	True case 
451:    JGT  4,1(7) 	Jump if true 
452:    LDC  3,0(6) 	False case 
453:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
455:     LD  3,-3(1) 	Load variable y
456:     ST  3,-4(1) 	Save left side 
457:    LDC  3,3(6) 	Load constant 
458:     LD  4,-4(1) 	Load left into ac1 
459:    SUB  4,4,3 	Op > 
460:    LDC  3,1(6) 	True case 
461:    JGT  4,1(7) 	Jump if true 
462:    LDC  3,0(6) 	False case 
463:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
465:     LD  3,-2(1) 	load lhs variable x
466:    LDA  3,-1(3) 	decrement value of x
467:     ST  3,-2(1) 	Store variable x
* ELSE
464:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* RETURN
469:     LD  3,-2(1) 	Load variable x
470:     ST  3,-4(1) 	Save left side 
471:     LD  3,-2(1) 	Load variable x
472:     LD  4,-4(1) 	Load left into ac1 
473:    MUL  3,4,3 	Op * 
474:     ST  3,-4(1) 	Save left side 
475:     LD  3,-3(1) 	Load variable y
476:     LD  4,-4(1) 	Load left into ac1 
477:    DIV  5,4,3 	Op % 
478:    MUL  5,5,3 	 
479:    SUB  3,4,5 	 
480:    LDA  2,0(3) 	Copy result to rt register 
481:     LD  3,-1(1) 	Load return address 
482:     LD  1,0(1) 	Adjust fp 
483:    LDA  7,0(3) 	Return 
468:    LDA  7,15(7) 	Jump around the ELSE [backpatch] 
* ENDIF
484:    LDA  7,-40(7) 	go to beginning of loop 
454:    LDA  7,30(7) 	No more loop [backpatch] 
* ENDWHILE
* Add standard closing in case there is no return statement
485:    LDC  2,0(6) 	Set return value to 0 
486:     LD  3,-1(1) 	Load return address 
487:     LD  1,0(1) 	Adjust fp 
488:    LDA  7,0(3) 	Return 
* END of function cheese
* BEGIN function Wensleydale
489:     ST  3,-1(1) 	Store return address. 
* RETURN
*                       Begin call to  cheese
490:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
491:     LD  3,-2(1) 	Load variable x
492:     ST  3,-6(1) 	Store parameter 
*                       Load param 2
493:     LD  3,0(0) 	Load variable gromit
494:     ST  3,-7(1) 	Store parameter 
*                       Jump to cheese
495:    LDA  1,-4(1) 	Load address of new frame 
496:    LDA  3,1(7) 	Return address in ac 
497:    LDA  7,-54(7) 	CALL cheese
498:    LDA  3,0(2) 	Save the result in ac 
*                       End call to cheese
499:    LDA  2,0(3) 	Copy result to rt register 
500:     LD  3,-1(1) 	Load return address 
501:     LD  1,0(1) 	Adjust fp 
502:    LDA  7,0(3) 	Return 
* Add standard closing in case there is no return statement
503:    LDC  2,0(6) 	Set return value to 0 
504:     LD  3,-1(1) 	Load return address 
505:     LD  1,0(1) 	Adjust fp 
506:    LDA  7,0(3) 	Return 
* END of function Wensleydale
* BEGIN function main
507:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
508:    LDC  3,113(6) 	load size of array yarn
509:     ST  3,-3(1) 	save size of array yarn
510:    LDC  3,22(6) 	load size of array preston
511:     ST  3,-118(1) 	save size of array preston
* EXPRESSION STMT
*                       Begin call to  wallace
512:     ST  1,-141(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  cheese
513:     ST  1,-143(1) 	Store old fp in ghost frame 
*                       Load param 1
514:    LDC  3,62(6) 	Load constant 
515:     ST  3,-145(1) 	Store parameter 
*                       Load param 2
516:    LDC  3,62(6) 	Load constant 
517:     ST  3,-146(1) 	Store parameter 
*                       Jump to cheese
518:    LDA  1,-143(1) 	Load address of new frame 
519:    LDA  3,1(7) 	Return address in ac 
520:    LDA  7,-77(7) 	CALL cheese
521:    LDA  3,0(2) 	Save the result in ac 
*                       End call to cheese
522:     ST  3,-143(1) 	Store parameter 
*                       Load param 2
523:     LD  3,0(0) 	Load variable gromit
524:     ST  3,-144(1) 	Store parameter 
*                       Jump to wallace
525:    LDA  1,-141(1) 	Load address of new frame 
526:    LDA  3,1(7) 	Return address in ac 
527:    LDA  7,-486(7) 	CALL wallace
528:    LDA  3,0(2) 	Save the result in ac 
*                       End call to wallace
* RETURN
*                       Begin call to  Wendolene
529:     ST  1,-141(1) 	Store old fp in ghost frame 
*                       Load param 1
530:    LDA  3,-119(1) 	Load address of base of array preston
531:     LD  3,1(3) 	Load array size 
532:     ST  3,-143(1) 	Save left side 
533:    LDA  3,-4(1) 	Load address of base of array yarn
534:     LD  3,1(3) 	Load array size 
535:     LD  4,-143(1) 	Load left into ac1 
536:    MUL  3,4,3 	Op * 
537:     ST  3,-143(1) 	Store parameter 
*                       Load param 2
538:     LD  3,-117(1) 	Load variable shawn
539:     ST  3,-144(1) 	Store parameter 
*                       Load param 3
540:    LDA  3,-4(1) 	Load address of base of array yarn
541:     ST  3,-145(1) 	Store parameter 
*                       Load param 4
542:    LDA  3,-119(1) 	Load address of base of array preston
543:     ST  3,-146(1) 	Store parameter 
*                       Jump to Wendolene
544:    LDA  1,-141(1) 	Load address of new frame 
545:    LDA  3,1(7) 	Return address in ac 
546:    LDA  7,-221(7) 	CALL Wendolene
547:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Wendolene
548:    LDA  2,0(3) 	Copy result to rt register 
549:     LD  3,-1(1) 	Load return address 
550:     LD  1,0(1) 	Adjust fp 
551:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
552:    LDC  2,0(6) 	Set return value to 0 
553:     LD  3,-1(1) 	Load return address 
554:     LD  1,0(1) 	Adjust fp 
555:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,555(7) 	Jump to init [backpatch] 
* BEGIN Init
556:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
557:    LDA  1,-1(0) 	set first frame at end of globals 
558:     ST  1,0(1) 	store old fp (point to self) 
559:    LDA  3,1(7) 	Return address in ac 
560:    LDA  7,-54(7) 	Jump to main 
561:   HALT  0,0,0 	DONE! 
* END Init
