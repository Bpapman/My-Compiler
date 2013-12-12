* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  fractal.c-
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
* BEGIN function Mandelbrot
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* WHILE
 43:     LD  3,0(0) 	Load variable TOP
 44:     ST  3,-8(1) 	Save left side 
 45:     LD  3,-7(0) 	Load variable YMax
 46:     LD  4,-8(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op < 
 48:    LDC  3,1(6) 	True case 
 49:    JLT  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 53:    LDC  3,512(6) 	Load constant 
 54:    LDC  4,0(6) 	Load 0 
 55:    SUB  3,4,3 	Op unary - 
 56:     ST  3,-1(0) 	Store variable LEFT
* WHILE
 57:     LD  3,-1(0) 	Load variable LEFT
 58:     ST  3,-8(1) 	Save left side 
 59:     LD  3,-6(0) 	Load variable XMax
 60:     LD  4,-8(1) 	Load left into ac1 
 61:    SUB  4,4,3 	Op < 
 62:    LDC  3,1(6) 	True case 
 63:    JLT  4,1(7) 	Jump if true 
 64:    LDC  3,0(6) 	False case 
 65:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 67:     LD  3,-1(0) 	Load variable LEFT
 68:     ST  3,-5(1) 	Store variable A
* EXPRESSION STMT
 69:     LD  3,0(0) 	Load variable TOP
 70:     ST  3,-4(1) 	Store variable Bi
* EXPRESSION STMT
 71:     LD  3,-5(1) 	Load variable A
 72:     ST  3,-8(1) 	Save left side 
 73:     LD  3,-5(1) 	Load variable A
 74:     LD  4,-8(1) 	Load left into ac1 
 75:    MUL  3,4,3 	Op * 
 76:     ST  3,-8(1) 	Save left side 
 77:    LDC  3,256(6) 	Load constant 
 78:     LD  4,-8(1) 	Load left into ac1 
 79:    DIV  3,4,3 	Op / 
 80:     ST  3,-6(1) 	Store variable NextA
* EXPRESSION STMT
 81:     LD  3,-4(1) 	Load variable Bi
 82:     ST  3,-8(1) 	Save left side 
 83:     LD  3,-4(1) 	Load variable Bi
 84:     LD  4,-8(1) 	Load left into ac1 
 85:    MUL  3,4,3 	Op * 
 86:     ST  3,-8(1) 	Save left side 
 87:    LDC  3,256(6) 	Load constant 
 88:     LD  4,-8(1) 	Load left into ac1 
 89:    DIV  3,4,3 	Op / 
 90:     ST  3,-7(1) 	Store variable NextBi
* EXPRESSION STMT
 91:     LD  3,-6(1) 	Load variable NextA
 92:     ST  3,-8(1) 	Save left side 
 93:     LD  3,-7(1) 	Load variable NextBi
 94:     LD  4,-8(1) 	Load left into ac1 
 95:    ADD  3,4,3 	Op + 
 96:     ST  3,-3(1) 	Store variable Len
* EXPRESSION STMT
 97:    LDC  3,0(6) 	Load constant 
 98:     ST  3,-8(0) 	Store variable iter
* WHILE
 99:     LD  3,-3(1) 	Load variable Len
100:     ST  3,-8(1) 	Save left side 
101:    LDC  3,1024(6) 	Load constant 
102:     LD  4,-8(1) 	Load left into ac1 
103:    SUB  4,4,3 	Op <= 
104:    LDC  3,1(6) 	True case 
105:    JLE  4,1(7) 	Jump if true 
106:    LDC  3,0(6) 	False case 
107:     ST  3,-8(1) 	Save left side 
108:     LD  3,-8(0) 	Load variable iter
109:     ST  3,-9(1) 	Save left side 
110:    LDC  3,11(6) 	Load constant 
111:     LD  4,-9(1) 	Load left into ac1 
112:    SUB  4,4,3 	Op < 
113:    LDC  3,1(6) 	True case 
114:    JLT  4,1(7) 	Jump if true 
115:    LDC  3,0(6) 	False case 
116:     LD  4,-8(1) 	Load left into ac1 
117:    JEQ  3,1(7) 	Op AND 
118:    LDA  3,0(4) 	 
119:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
121:    LDC  3,2(6) 	Load constant 
122:     ST  3,-8(1) 	Save left side 
123:     LD  3,-5(1) 	Load variable A
124:     ST  3,-9(1) 	Save left side 
125:     LD  3,-4(1) 	Load variable Bi
126:     LD  4,-9(1) 	Load left into ac1 
127:    MUL  3,4,3 	Op * 
128:     LD  4,-8(1) 	Load left into ac1 
129:    MUL  3,4,3 	Op * 
130:     ST  3,-8(1) 	Save left side 
131:    LDC  3,256(6) 	Load constant 
132:     LD  4,-8(1) 	Load left into ac1 
133:    DIV  3,4,3 	Op / 
134:     ST  3,-8(1) 	Save left side 
135:     LD  3,0(0) 	Load variable TOP
136:     LD  4,-8(1) 	Load left into ac1 
137:    ADD  3,4,3 	Op + 
138:     ST  3,-4(1) 	Store variable Bi
* EXPRESSION STMT
139:     LD  3,-6(1) 	Load variable NextA
140:     ST  3,-8(1) 	Save left side 
141:     LD  3,-7(1) 	Load variable NextBi
142:     LD  4,-8(1) 	Load left into ac1 
143:    SUB  3,4,3 	Op - 
144:     ST  3,-8(1) 	Save left side 
145:     LD  3,-1(0) 	Load variable LEFT
146:     LD  4,-8(1) 	Load left into ac1 
147:    ADD  3,4,3 	Op + 
148:     ST  3,-5(1) 	Store variable A
* EXPRESSION STMT
149:     LD  3,-5(1) 	Load variable A
150:     ST  3,-8(1) 	Save left side 
151:     LD  3,-5(1) 	Load variable A
152:     LD  4,-8(1) 	Load left into ac1 
153:    MUL  3,4,3 	Op * 
154:     ST  3,-8(1) 	Save left side 
155:    LDC  3,256(6) 	Load constant 
156:     LD  4,-8(1) 	Load left into ac1 
157:    DIV  3,4,3 	Op / 
158:     ST  3,-6(1) 	Store variable NextA
* EXPRESSION STMT
159:     LD  3,-4(1) 	Load variable Bi
160:     ST  3,-8(1) 	Save left side 
161:     LD  3,-4(1) 	Load variable Bi
162:     LD  4,-8(1) 	Load left into ac1 
163:    MUL  3,4,3 	Op * 
164:     ST  3,-8(1) 	Save left side 
165:    LDC  3,256(6) 	Load constant 
166:     LD  4,-8(1) 	Load left into ac1 
167:    DIV  3,4,3 	Op / 
168:     ST  3,-7(1) 	Store variable NextBi
* EXPRESSION STMT
169:     LD  3,-6(1) 	Load variable NextA
170:     ST  3,-8(1) 	Save left side 
171:     LD  3,-7(1) 	Load variable NextBi
172:     LD  4,-8(1) 	Load left into ac1 
173:    ADD  3,4,3 	Op + 
174:     ST  3,-3(1) 	Store variable Len
* EXPRESSION STMT
175:     LD  3,-8(0) 	load lhs variable iter
176:    LDA  3,1(3) 	increment value of iter
177:     ST  3,-8(0) 	Store variable iter
* END compound statement
178:    LDA  7,-80(7) 	go to beginning of loop 
120:    LDA  7,58(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
179:     LD  3,-8(0) 	Load variable iter
180:     ST  3,-8(1) 	Save left side 
181:    LDC  3,10(6) 	Load constant 
182:     LD  4,-8(1) 	Load left into ac1 
183:    SUB  4,4,3 	Op < 
184:    LDC  3,1(6) 	True case 
185:    JLT  4,1(7) 	Jump if true 
186:    LDC  3,0(6) 	False case 
187:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  output
189:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
190:     LD  3,-8(0) 	Load variable iter
191:     ST  3,-10(1) 	Store parameter 
*                       Jump to output
192:    LDA  1,-8(1) 	Load address of new frame 
193:    LDA  3,1(7) 	Return address in ac 
194:    LDA  7,-189(7) 	CALL output
195:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* ELSE
188:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  outputb
197:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
198:     LD  3,-8(0) 	Load variable iter
199:     ST  3,-10(1) 	Save left side 
200:    LDC  3,11(6) 	Load constant 
201:     LD  4,-10(1) 	Load left into ac1 
202:    SUB  4,4,3 	Op == 
203:    LDC  3,1(6) 	True case 
204:    JEQ  4,1(7) 	Jump if true 
205:    LDC  3,0(6) 	False case 
206:     ST  3,-10(1) 	Store parameter 
*                       Jump to outputb
207:    LDA  1,-8(1) 	Load address of new frame 
208:    LDA  3,1(7) 	Return address in ac 
209:    LDA  7,-192(7) 	CALL outputb
210:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
196:    LDA  7,14(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
211:     LD  3,-8(0) 	Load variable iter
212:     ST  3,-8(1) 	Save left side 
213:    LDC  3,11(6) 	Load constant 
214:     LD  4,-8(1) 	Load left into ac1 
215:    SUB  4,4,3 	Op == 
216:    LDC  3,1(6) 	True case 
217:    JEQ  4,1(7) 	Jump if true 
218:    LDC  3,0(6) 	False case 
219:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
221:    LDC  3,0(6) 	Load constant 
222:     ST  3,-8(1) 	Save index 
223:     LD  3,-1(0) 	Load variable LEFT
224:     LD  4,-8(1) 	Restore index 
225:     LD  5,-2(1) 	Load address of base of array JuliaVals
226:    SUB  5,5,4 	Compute offset of value 
227:     ST  3,0(5) 	Store variable JuliaVals
* EXPRESSION STMT
228:    LDC  3,1(6) 	Load constant 
229:     ST  3,-8(1) 	Save index 
230:     LD  3,0(0) 	Load variable TOP
231:     LD  4,-8(1) 	Restore index 
232:     LD  5,-2(1) 	Load address of base of array JuliaVals
233:    SUB  5,5,4 	Compute offset of value 
234:     ST  3,0(5) 	Store variable JuliaVals
* END compound statement
220:    LDA  7,14(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
235:     LD  3,-4(0) 	Load variable XStep
236:     LD  4,-1(0) 	load lhs variable LEFT
237:    ADD  3,4,3 	op += 
238:     ST  3,-1(0) 	Store variable LEFT
* END compound statement
239:    LDA  7,-183(7) 	go to beginning of loop 
 66:    LDA  7,173(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
240:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Jump to outnl
241:    LDA  1,-8(1) 	Load address of new frame 
242:    LDA  3,1(7) 	Return address in ac 
243:    LDA  7,-207(7) 	CALL outnl
244:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
245:     LD  3,-5(0) 	Load variable YStep
246:     LD  4,0(0) 	load lhs variable TOP
247:    ADD  3,4,3 	op += 
248:     ST  3,0(0) 	Store variable TOP
* END compound statement
249:    LDA  7,-207(7) 	go to beginning of loop 
 52:    LDA  7,197(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
250:    LDC  2,0(6) 	Set return value to 0 
251:     LD  3,-1(1) 	Load return address 
252:     LD  1,0(1) 	Adjust fp 
253:    LDA  7,0(3) 	Return 
* END of function Mandelbrot
* BEGIN function Julia
254:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* WHILE
255:     LD  3,0(0) 	Load variable TOP
256:     ST  3,-9(1) 	Save left side 
257:     LD  3,-7(0) 	Load variable YMax
258:     LD  4,-9(1) 	Load left into ac1 
259:    SUB  4,4,3 	Op < 
260:    LDC  3,1(6) 	True case 
261:    JLT  4,1(7) 	Jump if true 
262:    LDC  3,0(6) 	False case 
263:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
265:    LDC  3,512(6) 	Load constant 
266:    LDC  4,0(6) 	Load 0 
267:    SUB  3,4,3 	Op unary - 
268:     ST  3,-1(0) 	Store variable LEFT
* WHILE
269:     LD  3,-1(0) 	Load variable LEFT
270:     ST  3,-9(1) 	Save left side 
271:     LD  3,-6(0) 	Load variable XMax
272:     LD  4,-9(1) 	Load left into ac1 
273:    SUB  4,4,3 	Op < 
274:    LDC  3,1(6) 	True case 
275:    JLT  4,1(7) 	Jump if true 
276:    LDC  3,0(6) 	False case 
277:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
279:     LD  3,-1(0) 	Load variable LEFT
280:     ST  3,-6(1) 	Store variable A
* EXPRESSION STMT
281:     LD  3,0(0) 	Load variable TOP
282:     ST  3,-5(1) 	Store variable Bi
* EXPRESSION STMT
283:     LD  3,-6(1) 	Load variable A
284:     ST  3,-9(1) 	Save left side 
285:     LD  3,-6(1) 	Load variable A
286:     LD  4,-9(1) 	Load left into ac1 
287:    MUL  3,4,3 	Op * 
288:     ST  3,-9(1) 	Save left side 
289:    LDC  3,256(6) 	Load constant 
290:     LD  4,-9(1) 	Load left into ac1 
291:    DIV  3,4,3 	Op / 
292:     ST  3,-7(1) 	Store variable NextA
* EXPRESSION STMT
293:     LD  3,-5(1) 	Load variable Bi
294:     ST  3,-9(1) 	Save left side 
295:     LD  3,-5(1) 	Load variable Bi
296:     LD  4,-9(1) 	Load left into ac1 
297:    MUL  3,4,3 	Op * 
298:     ST  3,-9(1) 	Save left side 
299:    LDC  3,256(6) 	Load constant 
300:     LD  4,-9(1) 	Load left into ac1 
301:    DIV  3,4,3 	Op / 
302:     ST  3,-8(1) 	Store variable NextBi
* EXPRESSION STMT
303:     LD  3,-7(1) 	Load variable NextA
304:     ST  3,-9(1) 	Save left side 
305:     LD  3,-8(1) 	Load variable NextBi
306:     LD  4,-9(1) 	Load left into ac1 
307:    ADD  3,4,3 	Op + 
308:     ST  3,-4(1) 	Store variable Len
* EXPRESSION STMT
309:    LDC  3,0(6) 	Load constant 
310:     ST  3,-8(0) 	Store variable iter
* WHILE
311:     LD  3,-4(1) 	Load variable Len
312:     ST  3,-9(1) 	Save left side 
313:    LDC  3,1024(6) 	Load constant 
314:     LD  4,-9(1) 	Load left into ac1 
315:    SUB  4,4,3 	Op <= 
316:    LDC  3,1(6) 	True case 
317:    JLE  4,1(7) 	Jump if true 
318:    LDC  3,0(6) 	False case 
319:     ST  3,-9(1) 	Save left side 
320:     LD  3,-8(0) 	Load variable iter
321:     ST  3,-10(1) 	Save left side 
322:    LDC  3,11(6) 	Load constant 
323:     LD  4,-10(1) 	Load left into ac1 
324:    SUB  4,4,3 	Op < 
325:    LDC  3,1(6) 	True case 
326:    JLT  4,1(7) 	Jump if true 
327:    LDC  3,0(6) 	False case 
328:     LD  4,-9(1) 	Load left into ac1 
329:    JEQ  3,1(7) 	Op AND 
330:    LDA  3,0(4) 	 
331:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
333:    LDC  3,2(6) 	Load constant 
334:     ST  3,-9(1) 	Save left side 
335:     LD  3,-6(1) 	Load variable A
336:     ST  3,-10(1) 	Save left side 
337:     LD  3,-5(1) 	Load variable Bi
338:     LD  4,-10(1) 	Load left into ac1 
339:    MUL  3,4,3 	Op * 
340:     LD  4,-9(1) 	Load left into ac1 
341:    MUL  3,4,3 	Op * 
342:     ST  3,-9(1) 	Save left side 
343:    LDC  3,256(6) 	Load constant 
344:     LD  4,-9(1) 	Load left into ac1 
345:    DIV  3,4,3 	Op / 
346:     ST  3,-9(1) 	Save left side 
347:     LD  3,-3(1) 	Load variable CBi
348:     LD  4,-9(1) 	Load left into ac1 
349:    ADD  3,4,3 	Op + 
350:     ST  3,-5(1) 	Store variable Bi
* EXPRESSION STMT
351:     LD  3,-7(1) 	Load variable NextA
352:     ST  3,-9(1) 	Save left side 
353:     LD  3,-8(1) 	Load variable NextBi
354:     LD  4,-9(1) 	Load left into ac1 
355:    SUB  3,4,3 	Op - 
356:     ST  3,-9(1) 	Save left side 
357:     LD  3,-2(1) 	Load variable CA
358:     LD  4,-9(1) 	Load left into ac1 
359:    ADD  3,4,3 	Op + 
360:     ST  3,-6(1) 	Store variable A
* EXPRESSION STMT
361:     LD  3,-6(1) 	Load variable A
362:     ST  3,-9(1) 	Save left side 
363:     LD  3,-6(1) 	Load variable A
364:     LD  4,-9(1) 	Load left into ac1 
365:    MUL  3,4,3 	Op * 
366:     ST  3,-9(1) 	Save left side 
367:    LDC  3,256(6) 	Load constant 
368:     LD  4,-9(1) 	Load left into ac1 
369:    DIV  3,4,3 	Op / 
370:     ST  3,-7(1) 	Store variable NextA
* EXPRESSION STMT
371:     LD  3,-5(1) 	Load variable Bi
372:     ST  3,-9(1) 	Save left side 
373:     LD  3,-5(1) 	Load variable Bi
374:     LD  4,-9(1) 	Load left into ac1 
375:    MUL  3,4,3 	Op * 
376:     ST  3,-9(1) 	Save left side 
377:    LDC  3,256(6) 	Load constant 
378:     LD  4,-9(1) 	Load left into ac1 
379:    DIV  3,4,3 	Op / 
380:     ST  3,-8(1) 	Store variable NextBi
* EXPRESSION STMT
381:     LD  3,-7(1) 	Load variable NextA
382:     ST  3,-9(1) 	Save left side 
383:     LD  3,-8(1) 	Load variable NextBi
384:     LD  4,-9(1) 	Load left into ac1 
385:    ADD  3,4,3 	Op + 
386:     ST  3,-4(1) 	Store variable Len
* EXPRESSION STMT
387:     LD  3,-8(0) 	load lhs variable iter
388:    LDA  3,1(3) 	increment value of iter
389:     ST  3,-8(0) 	Store variable iter
* END compound statement
390:    LDA  7,-80(7) 	go to beginning of loop 
332:    LDA  7,58(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
391:     LD  3,-8(0) 	Load variable iter
392:     ST  3,-9(1) 	Save left side 
393:    LDC  3,10(6) 	Load constant 
394:     LD  4,-9(1) 	Load left into ac1 
395:    SUB  4,4,3 	Op < 
396:    LDC  3,1(6) 	True case 
397:    JLT  4,1(7) 	Jump if true 
398:    LDC  3,0(6) 	False case 
399:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  output
401:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
402:     LD  3,-8(0) 	Load variable iter
403:     ST  3,-11(1) 	Store parameter 
*                       Jump to output
404:    LDA  1,-9(1) 	Load address of new frame 
405:    LDA  3,1(7) 	Return address in ac 
406:    LDA  7,-401(7) 	CALL output
407:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* ELSE
400:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  outputb
409:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
410:     LD  3,-8(0) 	Load variable iter
411:     ST  3,-11(1) 	Save left side 
412:    LDC  3,11(6) 	Load constant 
413:     LD  4,-11(1) 	Load left into ac1 
414:    SUB  4,4,3 	Op == 
415:    LDC  3,1(6) 	True case 
416:    JEQ  4,1(7) 	Jump if true 
417:    LDC  3,0(6) 	False case 
418:     ST  3,-11(1) 	Store parameter 
*                       Jump to outputb
419:    LDA  1,-9(1) 	Load address of new frame 
420:    LDA  3,1(7) 	Return address in ac 
421:    LDA  7,-404(7) 	CALL outputb
422:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
408:    LDA  7,14(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
423:     LD  3,-4(0) 	Load variable XStep
424:     LD  4,-1(0) 	load lhs variable LEFT
425:    ADD  3,4,3 	op += 
426:     ST  3,-1(0) 	Store variable LEFT
* END compound statement
427:    LDA  7,-159(7) 	go to beginning of loop 
278:    LDA  7,149(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
428:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Jump to outnl
429:    LDA  1,-9(1) 	Load address of new frame 
430:    LDA  3,1(7) 	Return address in ac 
431:    LDA  7,-395(7) 	CALL outnl
432:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
433:     LD  3,-5(0) 	Load variable YStep
434:     LD  4,0(0) 	load lhs variable TOP
435:    ADD  3,4,3 	op += 
436:     ST  3,0(0) 	Store variable TOP
* END compound statement
437:    LDA  7,-183(7) 	go to beginning of loop 
264:    LDA  7,173(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
438:    LDC  2,0(6) 	Set return value to 0 
439:     LD  3,-1(1) 	Load return address 
440:     LD  1,0(1) 	Adjust fp 
441:    LDA  7,0(3) 	Return 
* END of function Julia
* BEGIN function main
442:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
443:    LDC  3,2(6) 	load size of array JuliaVals
444:     ST  3,-2(1) 	save size of array JuliaVals
* EXPRESSION STMT
445:    LDC  3,320(6) 	Load constant 
446:    LDC  4,0(6) 	Load 0 
447:    SUB  3,4,3 	Op unary - 
448:     ST  3,0(0) 	Store variable TOP
* EXPRESSION STMT
449:    LDC  3,512(6) 	Load constant 
450:    LDC  4,0(6) 	Load 0 
451:    SUB  3,4,3 	Op unary - 
452:     ST  3,-1(0) 	Store variable LEFT
* EXPRESSION STMT
453:    LDC  3,640(6) 	Load constant 
454:     ST  3,-2(0) 	Store variable HEIGHT
* EXPRESSION STMT
455:    LDC  3,716(6) 	Load constant 
456:     ST  3,-3(0) 	Store variable WIDTH
* EXPRESSION STMT
457:     LD  3,-3(0) 	Load variable WIDTH
458:     ST  3,-5(1) 	Save left side 
459:    LDC  3,40(6) 	Load constant 
460:     LD  4,-5(1) 	Load left into ac1 
461:    DIV  3,4,3 	Op / 
462:     ST  3,-4(0) 	Store variable XStep
* EXPRESSION STMT
463:     LD  3,-2(0) 	Load variable HEIGHT
464:     ST  3,-5(1) 	Save left side 
465:    LDC  3,36(6) 	Load constant 
466:     LD  4,-5(1) 	Load left into ac1 
467:    DIV  3,4,3 	Op / 
468:     ST  3,-5(0) 	Store variable YStep
* EXPRESSION STMT
469:     LD  3,-1(0) 	Load variable LEFT
470:     ST  3,-5(1) 	Save left side 
471:     LD  3,-3(0) 	Load variable WIDTH
472:     LD  4,-5(1) 	Load left into ac1 
473:    ADD  3,4,3 	Op + 
474:     ST  3,-6(0) 	Store variable XMax
* EXPRESSION STMT
475:     LD  3,0(0) 	Load variable TOP
476:     ST  3,-5(1) 	Save left side 
477:     LD  3,-2(0) 	Load variable HEIGHT
478:     LD  4,-5(1) 	Load left into ac1 
479:    ADD  3,4,3 	Op + 
480:     ST  3,-7(0) 	Store variable YMax
* EXPRESSION STMT
*                       Begin call to  Mandelbrot
481:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
482:    LDA  3,-3(1) 	Load address of base of array JuliaVals
483:     ST  3,-7(1) 	Store parameter 
*                       Jump to Mandelbrot
484:    LDA  1,-5(1) 	Load address of new frame 
485:    LDA  3,1(7) 	Return address in ac 
486:    LDA  7,-445(7) 	CALL Mandelbrot
487:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Mandelbrot
* EXPRESSION STMT
*                       Begin call to  outnl
488:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
489:    LDA  1,-5(1) 	Load address of new frame 
490:    LDA  3,1(7) 	Return address in ac 
491:    LDA  7,-455(7) 	CALL outnl
492:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
493:    LDC  3,320(6) 	Load constant 
494:    LDC  4,0(6) 	Load 0 
495:    SUB  3,4,3 	Op unary - 
496:     ST  3,0(0) 	Store variable TOP
* EXPRESSION STMT
497:    LDC  3,512(6) 	Load constant 
498:    LDC  4,0(6) 	Load 0 
499:    SUB  3,4,3 	Op unary - 
500:     ST  3,-1(0) 	Store variable LEFT
* EXPRESSION STMT
501:    LDC  3,640(6) 	Load constant 
502:     ST  3,-2(0) 	Store variable HEIGHT
* EXPRESSION STMT
503:    LDC  3,716(6) 	Load constant 
504:     ST  3,-3(0) 	Store variable WIDTH
* EXPRESSION STMT
505:     LD  3,-3(0) 	Load variable WIDTH
506:     ST  3,-5(1) 	Save left side 
507:    LDC  3,40(6) 	Load constant 
508:     LD  4,-5(1) 	Load left into ac1 
509:    DIV  3,4,3 	Op / 
510:     ST  3,-4(0) 	Store variable XStep
* EXPRESSION STMT
511:     LD  3,-2(0) 	Load variable HEIGHT
512:     ST  3,-5(1) 	Save left side 
513:    LDC  3,36(6) 	Load constant 
514:     LD  4,-5(1) 	Load left into ac1 
515:    DIV  3,4,3 	Op / 
516:     ST  3,-5(0) 	Store variable YStep
* EXPRESSION STMT
517:     LD  3,-1(0) 	Load variable LEFT
518:     ST  3,-5(1) 	Save left side 
519:     LD  3,-3(0) 	Load variable WIDTH
520:     LD  4,-5(1) 	Load left into ac1 
521:    ADD  3,4,3 	Op + 
522:     ST  3,-6(0) 	Store variable XMax
* EXPRESSION STMT
523:     LD  3,0(0) 	Load variable TOP
524:     ST  3,-5(1) 	Save left side 
525:     LD  3,-2(0) 	Load variable HEIGHT
526:     LD  4,-5(1) 	Load left into ac1 
527:    ADD  3,4,3 	Op + 
528:     ST  3,-7(0) 	Store variable YMax
* EXPRESSION STMT
*                       Begin call to  Julia
529:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
530:    LDC  3,0(6) 	Load constant 
531:    LDA  4,-3(1) 	Load address of base of array JuliaVals
532:    SUB  3,4,3 	Compute offset of value 
533:     LD  3,0(3) 	Load the value 
534:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
535:    LDC  3,1(6) 	Load constant 
536:    LDA  4,-3(1) 	Load address of base of array JuliaVals
537:    SUB  3,4,3 	Compute offset of value 
538:     LD  3,0(3) 	Load the value 
539:     ST  3,-8(1) 	Store parameter 
*                       Jump to Julia
540:    LDA  1,-5(1) 	Load address of new frame 
541:    LDA  3,1(7) 	Return address in ac 
542:    LDA  7,-289(7) 	CALL Julia
543:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Julia
* END compound statement
* Add standard closing in case there is no return statement
544:    LDC  2,0(6) 	Set return value to 0 
545:     LD  3,-1(1) 	Load return address 
546:     LD  1,0(1) 	Adjust fp 
547:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,547(7) 	Jump to init [backpatch] 
* BEGIN Init
548:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
549:    LDA  1,-9(0) 	set first frame at end of globals 
550:     ST  1,0(1) 	store old fp (point to self) 
551:    LDA  3,1(7) 	Return address in ac 
552:    LDA  7,-111(7) 	Jump to main 
553:   HALT  0,0,0 	DONE! 
* END Init
