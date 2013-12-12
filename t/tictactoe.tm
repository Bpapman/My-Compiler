* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  tictactoe.c-
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
* BEGIN function move
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:    LDC  3,0(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable i
* WHILE
 45:     LD  3,-2(1) 	Load variable i
 46:     ST  3,-3(1) 	Save left side 
 47:    LDC  3,9(6) 	Load constant 
 48:     LD  4,-3(1) 	Load left into ac1 
 49:    SUB  4,4,3 	Op < 
 50:    LDC  3,1(6) 	True case 
 51:    JLT  4,1(7) 	Jump if true 
 52:    LDC  3,0(6) 	False case 
 53:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
 55:     LD  3,-2(1) 	Load variable i
 56:    LDA  4,-1(0) 	Load address of base of array board
 57:    SUB  3,4,3 	Compute offset of value 
 58:     LD  3,0(3) 	Load the value 
 59:     ST  3,-3(1) 	Save left side 
 60:    LDC  3,1(6) 	Load constant 
 61:    LDC  4,0(6) 	Load 0 
 62:    SUB  3,4,3 	Op unary - 
 63:     LD  4,-3(1) 	Load left into ac1 
 64:    SUB  4,4,3 	Op == 
 65:    LDC  3,1(6) 	True case 
 66:    JEQ  4,1(7) 	Jump if true 
 67:    LDC  3,0(6) 	False case 
 68:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* BREAK
 70:    LDA  7,-17(7) 	break 
* END compound statement
 69:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 71:     LD  3,-2(1) 	load lhs variable i
 72:    LDA  3,1(3) 	increment value of i
 73:     ST  3,-2(1) 	Store variable i
* END compound statement
 74:    LDA  7,-30(7) 	go to beginning of loop 
 54:    LDA  7,20(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
 75:     LD  3,-2(1) 	Load variable i
 76:     ST  3,-3(1) 	Save left side 
 77:    LDC  3,9(6) 	Load constant 
 78:     LD  4,-3(1) 	Load left into ac1 
 79:    SUB  4,4,3 	Op < 
 80:    LDC  3,1(6) 	True case 
 81:    JLT  4,1(7) 	Jump if true 
 82:    LDC  3,0(6) 	False case 
 83:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
 85:     LD  3,-2(1) 	Load variable i
 86:     ST  3,-3(1) 	Save index 
 87:    LDC  3,2(6) 	Load constant 
 88:     LD  4,-3(1) 	Restore index 
 89:    LDA  5,-1(0) 	Load address of base of array board
 90:    SUB  5,5,4 	Compute offset of value 
 91:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
 92:    LDC  3,1(6) 	Load constant 
 93:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
* ELSE
 84:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
 95:    LDC  3,0(6) 	Load constant 
 96:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
 94:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 97:    LDC  2,0(6) 	Set return value to 0 
 98:     LD  3,-1(1) 	Load return address 
 99:     LD  1,0(1) 	Adjust fp 
100:    LDA  7,0(3) 	Return 
* END of function move
* BEGIN function win
101:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
102:    LDC  3,0(6) 	Load constant 
103:    LDA  4,-1(0) 	Load address of base of array board
104:    SUB  3,4,3 	Compute offset of value 
105:     LD  3,0(3) 	Load the value 
106:     ST  3,-2(1) 	Save left side 
107:    LDC  3,2(6) 	Load constant 
108:     LD  4,-2(1) 	Load left into ac1 
109:    SUB  4,4,3 	Op == 
110:    LDC  3,1(6) 	True case 
111:    JEQ  4,1(7) 	Jump if true 
112:    LDC  3,0(6) 	False case 
113:     ST  3,-2(1) 	Save left side 
114:    LDC  3,1(6) 	Load constant 
115:    LDA  4,-1(0) 	Load address of base of array board
116:    SUB  3,4,3 	Compute offset of value 
117:     LD  3,0(3) 	Load the value 
118:     ST  3,-3(1) 	Save left side 
119:    LDC  3,2(6) 	Load constant 
120:     LD  4,-3(1) 	Load left into ac1 
121:    SUB  4,4,3 	Op == 
122:    LDC  3,1(6) 	True case 
123:    JEQ  4,1(7) 	Jump if true 
124:    LDC  3,0(6) 	False case 
125:     LD  4,-2(1) 	Load left into ac1 
126:    JEQ  3,1(7) 	Op AND 
127:    LDA  3,0(4) 	 
128:     ST  3,-2(1) 	Save left side 
129:    LDC  3,6(6) 	Load constant 
130:    LDA  4,-1(0) 	Load address of base of array board
131:    SUB  3,4,3 	Compute offset of value 
132:     LD  3,0(3) 	Load the value 
133:     ST  3,-3(1) 	Save left side 
134:    LDC  3,2(6) 	Load constant 
135:     LD  4,-3(1) 	Load left into ac1 
136:    SUB  4,4,3 	Op == 
137:    LDC  3,1(6) 	True case 
138:    JEQ  4,1(7) 	Jump if true 
139:    LDC  3,0(6) 	False case 
140:     ST  3,-3(1) 	Save left side 
141:    LDC  3,4(6) 	Load constant 
142:    LDA  4,-1(0) 	Load address of base of array board
143:    SUB  3,4,3 	Compute offset of value 
144:     LD  3,0(3) 	Load the value 
145:     ST  3,-4(1) 	Save left side 
146:    LDC  3,2(6) 	Load constant 
147:     LD  4,-4(1) 	Load left into ac1 
148:    SUB  4,4,3 	Op == 
149:    LDC  3,1(6) 	True case 
150:    JEQ  4,1(7) 	Jump if true 
151:    LDC  3,0(6) 	False case 
152:     LD  4,-3(1) 	Load left into ac1 
153:    JEQ  3,1(7) 	Op AND 
154:    LDA  3,0(4) 	 
155:     LD  4,-2(1) 	Load left into ac1 
156:    JGT  3,1(7) 	Op OR 
157:    LDA  3,0(4) 	 
158:     ST  3,-2(1) 	Save left side 
159:    LDC  3,8(6) 	Load constant 
160:    LDA  4,-1(0) 	Load address of base of array board
161:    SUB  3,4,3 	Compute offset of value 
162:     LD  3,0(3) 	Load the value 
163:     ST  3,-3(1) 	Save left side 
164:    LDC  3,2(6) 	Load constant 
165:     LD  4,-3(1) 	Load left into ac1 
166:    SUB  4,4,3 	Op == 
167:    LDC  3,1(6) 	True case 
168:    JEQ  4,1(7) 	Jump if true 
169:    LDC  3,0(6) 	False case 
170:     ST  3,-3(1) 	Save left side 
171:    LDC  3,5(6) 	Load constant 
172:    LDA  4,-1(0) 	Load address of base of array board
173:    SUB  3,4,3 	Compute offset of value 
174:     LD  3,0(3) 	Load the value 
175:     ST  3,-4(1) 	Save left side 
176:    LDC  3,2(6) 	Load constant 
177:     LD  4,-4(1) 	Load left into ac1 
178:    SUB  4,4,3 	Op == 
179:    LDC  3,1(6) 	True case 
180:    JEQ  4,1(7) 	Jump if true 
181:    LDC  3,0(6) 	False case 
182:     LD  4,-3(1) 	Load left into ac1 
183:    JEQ  3,1(7) 	Op AND 
184:    LDA  3,0(4) 	 
185:     LD  4,-2(1) 	Load left into ac1 
186:    JGT  3,1(7) 	Op OR 
187:    LDA  3,0(4) 	 
188:     ST  3,-2(1) 	Save left side 
189:    LDC  3,2(6) 	Load constant 
190:    LDA  4,-1(0) 	Load address of base of array board
191:    SUB  3,4,3 	Compute offset of value 
192:     LD  3,0(3) 	Load the value 
193:     ST  3,-3(1) 	Save left side 
194:    LDC  3,1(6) 	Load constant 
195:    LDC  4,0(6) 	Load 0 
196:    SUB  3,4,3 	Op unary - 
197:     LD  4,-3(1) 	Load left into ac1 
198:    SUB  4,4,3 	Op == 
199:    LDC  3,1(6) 	True case 
200:    JEQ  4,1(7) 	Jump if true 
201:    LDC  3,0(6) 	False case 
202:     LD  4,-2(1) 	Load left into ac1 
203:    JEQ  3,1(7) 	Op AND 
204:    LDA  3,0(4) 	 
205:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
207:    LDC  3,2(6) 	Load constant 
208:     ST  3,-2(1) 	Save index 
209:    LDC  3,2(6) 	Load constant 
210:     LD  4,-2(1) 	Restore index 
211:    LDA  5,-1(0) 	Load address of base of array board
212:    SUB  5,5,4 	Compute offset of value 
213:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
214:    LDC  3,0(6) 	Load constant 
215:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
* ELSE
206:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
217:    LDC  3,0(6) 	Load constant 
218:    LDA  4,-1(0) 	Load address of base of array board
219:    SUB  3,4,3 	Compute offset of value 
220:     LD  3,0(3) 	Load the value 
221:     ST  3,-2(1) 	Save left side 
222:    LDC  3,2(6) 	Load constant 
223:     LD  4,-2(1) 	Load left into ac1 
224:    SUB  4,4,3 	Op == 
225:    LDC  3,1(6) 	True case 
226:    JEQ  4,1(7) 	Jump if true 
227:    LDC  3,0(6) 	False case 
228:     ST  3,-2(1) 	Save left side 
229:    LDC  3,2(6) 	Load constant 
230:    LDA  4,-1(0) 	Load address of base of array board
231:    SUB  3,4,3 	Compute offset of value 
232:     LD  3,0(3) 	Load the value 
233:     ST  3,-3(1) 	Save left side 
234:    LDC  3,2(6) 	Load constant 
235:     LD  4,-3(1) 	Load left into ac1 
236:    SUB  4,4,3 	Op == 
237:    LDC  3,1(6) 	True case 
238:    JEQ  4,1(7) 	Jump if true 
239:    LDC  3,0(6) 	False case 
240:     LD  4,-2(1) 	Load left into ac1 
241:    JEQ  3,1(7) 	Op AND 
242:    LDA  3,0(4) 	 
243:     ST  3,-2(1) 	Save left side 
244:    LDC  3,4(6) 	Load constant 
245:    LDA  4,-1(0) 	Load address of base of array board
246:    SUB  3,4,3 	Compute offset of value 
247:     LD  3,0(3) 	Load the value 
248:     ST  3,-3(1) 	Save left side 
249:    LDC  3,2(6) 	Load constant 
250:     LD  4,-3(1) 	Load left into ac1 
251:    SUB  4,4,3 	Op == 
252:    LDC  3,1(6) 	True case 
253:    JEQ  4,1(7) 	Jump if true 
254:    LDC  3,0(6) 	False case 
255:     ST  3,-3(1) 	Save left side 
256:    LDC  3,7(6) 	Load constant 
257:    LDA  4,-1(0) 	Load address of base of array board
258:    SUB  3,4,3 	Compute offset of value 
259:     LD  3,0(3) 	Load the value 
260:     ST  3,-4(1) 	Save left side 
261:    LDC  3,2(6) 	Load constant 
262:     LD  4,-4(1) 	Load left into ac1 
263:    SUB  4,4,3 	Op == 
264:    LDC  3,1(6) 	True case 
265:    JEQ  4,1(7) 	Jump if true 
266:    LDC  3,0(6) 	False case 
267:     LD  4,-3(1) 	Load left into ac1 
268:    JEQ  3,1(7) 	Op AND 
269:    LDA  3,0(4) 	 
270:     LD  4,-2(1) 	Load left into ac1 
271:    JGT  3,1(7) 	Op OR 
272:    LDA  3,0(4) 	 
273:     ST  3,-2(1) 	Save left side 
274:    LDC  3,1(6) 	Load constant 
275:    LDA  4,-1(0) 	Load address of base of array board
276:    SUB  3,4,3 	Compute offset of value 
277:     LD  3,0(3) 	Load the value 
278:     ST  3,-3(1) 	Save left side 
279:    LDC  3,1(6) 	Load constant 
280:    LDC  4,0(6) 	Load 0 
281:    SUB  3,4,3 	Op unary - 
282:     LD  4,-3(1) 	Load left into ac1 
283:    SUB  4,4,3 	Op == 
284:    LDC  3,1(6) 	True case 
285:    JEQ  4,1(7) 	Jump if true 
286:    LDC  3,0(6) 	False case 
287:     LD  4,-2(1) 	Load left into ac1 
288:    JEQ  3,1(7) 	Op AND 
289:    LDA  3,0(4) 	 
290:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
292:    LDC  3,1(6) 	Load constant 
293:     ST  3,-2(1) 	Save index 
294:    LDC  3,2(6) 	Load constant 
295:     LD  4,-2(1) 	Restore index 
296:    LDA  5,-1(0) 	Load address of base of array board
297:    SUB  5,5,4 	Compute offset of value 
298:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
299:    LDC  3,0(6) 	Load constant 
300:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
* ELSE
291:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
302:    LDC  3,2(6) 	Load constant 
303:    LDA  4,-1(0) 	Load address of base of array board
304:    SUB  3,4,3 	Compute offset of value 
305:     LD  3,0(3) 	Load the value 
306:     ST  3,-2(1) 	Save left side 
307:    LDC  3,2(6) 	Load constant 
308:     LD  4,-2(1) 	Load left into ac1 
309:    SUB  4,4,3 	Op == 
310:    LDC  3,1(6) 	True case 
311:    JEQ  4,1(7) 	Jump if true 
312:    LDC  3,0(6) 	False case 
313:     ST  3,-2(1) 	Save left side 
314:    LDC  3,1(6) 	Load constant 
315:    LDA  4,-1(0) 	Load address of base of array board
316:    SUB  3,4,3 	Compute offset of value 
317:     LD  3,0(3) 	Load the value 
318:     ST  3,-3(1) 	Save left side 
319:    LDC  3,2(6) 	Load constant 
320:     LD  4,-3(1) 	Load left into ac1 
321:    SUB  4,4,3 	Op == 
322:    LDC  3,1(6) 	True case 
323:    JEQ  4,1(7) 	Jump if true 
324:    LDC  3,0(6) 	False case 
325:     LD  4,-2(1) 	Load left into ac1 
326:    JEQ  3,1(7) 	Op AND 
327:    LDA  3,0(4) 	 
328:     ST  3,-2(1) 	Save left side 
329:    LDC  3,6(6) 	Load constant 
330:    LDA  4,-1(0) 	Load address of base of array board
331:    SUB  3,4,3 	Compute offset of value 
332:     LD  3,0(3) 	Load the value 
333:     ST  3,-3(1) 	Save left side 
334:    LDC  3,2(6) 	Load constant 
335:     LD  4,-3(1) 	Load left into ac1 
336:    SUB  4,4,3 	Op == 
337:    LDC  3,1(6) 	True case 
338:    JEQ  4,1(7) 	Jump if true 
339:    LDC  3,0(6) 	False case 
340:     ST  3,-3(1) 	Save left side 
341:    LDC  3,3(6) 	Load constant 
342:    LDA  4,-1(0) 	Load address of base of array board
343:    SUB  3,4,3 	Compute offset of value 
344:     LD  3,0(3) 	Load the value 
345:     ST  3,-4(1) 	Save left side 
346:    LDC  3,2(6) 	Load constant 
347:     LD  4,-4(1) 	Load left into ac1 
348:    SUB  4,4,3 	Op == 
349:    LDC  3,1(6) 	True case 
350:    JEQ  4,1(7) 	Jump if true 
351:    LDC  3,0(6) 	False case 
352:     LD  4,-3(1) 	Load left into ac1 
353:    JEQ  3,1(7) 	Op AND 
354:    LDA  3,0(4) 	 
355:     LD  4,-2(1) 	Load left into ac1 
356:    JGT  3,1(7) 	Op OR 
357:    LDA  3,0(4) 	 
358:     ST  3,-2(1) 	Save left side 
359:    LDC  3,4(6) 	Load constant 
360:    LDA  4,-1(0) 	Load address of base of array board
361:    SUB  3,4,3 	Compute offset of value 
362:     LD  3,0(3) 	Load the value 
363:     ST  3,-3(1) 	Save left side 
364:    LDC  3,2(6) 	Load constant 
365:     LD  4,-3(1) 	Load left into ac1 
366:    SUB  4,4,3 	Op == 
367:    LDC  3,1(6) 	True case 
368:    JEQ  4,1(7) 	Jump if true 
369:    LDC  3,0(6) 	False case 
370:     ST  3,-3(1) 	Save left side 
371:    LDC  3,8(6) 	Load constant 
372:    LDA  4,-1(0) 	Load address of base of array board
373:    SUB  3,4,3 	Compute offset of value 
374:     LD  3,0(3) 	Load the value 
375:     ST  3,-4(1) 	Save left side 
376:    LDC  3,2(6) 	Load constant 
377:     LD  4,-4(1) 	Load left into ac1 
378:    SUB  4,4,3 	Op == 
379:    LDC  3,1(6) 	True case 
380:    JEQ  4,1(7) 	Jump if true 
381:    LDC  3,0(6) 	False case 
382:     LD  4,-3(1) 	Load left into ac1 
383:    JEQ  3,1(7) 	Op AND 
384:    LDA  3,0(4) 	 
385:     LD  4,-2(1) 	Load left into ac1 
386:    JGT  3,1(7) 	Op OR 
387:    LDA  3,0(4) 	 
388:     ST  3,-2(1) 	Save left side 
389:    LDC  3,0(6) 	Load constant 
390:    LDA  4,-1(0) 	Load address of base of array board
391:    SUB  3,4,3 	Compute offset of value 
392:     LD  3,0(3) 	Load the value 
393:     ST  3,-3(1) 	Save left side 
394:    LDC  3,1(6) 	Load constant 
395:    LDC  4,0(6) 	Load 0 
396:    SUB  3,4,3 	Op unary - 
397:     LD  4,-3(1) 	Load left into ac1 
398:    SUB  4,4,3 	Op == 
399:    LDC  3,1(6) 	True case 
400:    JEQ  4,1(7) 	Jump if true 
401:    LDC  3,0(6) 	False case 
402:     LD  4,-2(1) 	Load left into ac1 
403:    JEQ  3,1(7) 	Op AND 
404:    LDA  3,0(4) 	 
405:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
407:    LDC  3,0(6) 	Load constant 
408:     ST  3,-2(1) 	Save index 
409:    LDC  3,2(6) 	Load constant 
410:     LD  4,-2(1) 	Restore index 
411:    LDA  5,-1(0) 	Load address of base of array board
412:    SUB  5,5,4 	Compute offset of value 
413:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
414:    LDC  3,0(6) 	Load constant 
415:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
* ELSE
406:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
417:    LDC  3,3(6) 	Load constant 
418:    LDA  4,-1(0) 	Load address of base of array board
419:    SUB  3,4,3 	Compute offset of value 
420:     LD  3,0(3) 	Load the value 
421:     ST  3,-2(1) 	Save left side 
422:    LDC  3,2(6) 	Load constant 
423:     LD  4,-2(1) 	Load left into ac1 
424:    SUB  4,4,3 	Op == 
425:    LDC  3,1(6) 	True case 
426:    JEQ  4,1(7) 	Jump if true 
427:    LDC  3,0(6) 	False case 
428:     ST  3,-2(1) 	Save left side 
429:    LDC  3,4(6) 	Load constant 
430:    LDA  4,-1(0) 	Load address of base of array board
431:    SUB  3,4,3 	Compute offset of value 
432:     LD  3,0(3) 	Load the value 
433:     ST  3,-3(1) 	Save left side 
434:    LDC  3,2(6) 	Load constant 
435:     LD  4,-3(1) 	Load left into ac1 
436:    SUB  4,4,3 	Op == 
437:    LDC  3,1(6) 	True case 
438:    JEQ  4,1(7) 	Jump if true 
439:    LDC  3,0(6) 	False case 
440:     LD  4,-2(1) 	Load left into ac1 
441:    JEQ  3,1(7) 	Op AND 
442:    LDA  3,0(4) 	 
443:     ST  3,-2(1) 	Save left side 
444:    LDC  3,2(6) 	Load constant 
445:    LDA  4,-1(0) 	Load address of base of array board
446:    SUB  3,4,3 	Compute offset of value 
447:     LD  3,0(3) 	Load the value 
448:     ST  3,-3(1) 	Save left side 
449:    LDC  3,2(6) 	Load constant 
450:     LD  4,-3(1) 	Load left into ac1 
451:    SUB  4,4,3 	Op == 
452:    LDC  3,1(6) 	True case 
453:    JEQ  4,1(7) 	Jump if true 
454:    LDC  3,0(6) 	False case 
455:     ST  3,-3(1) 	Save left side 
456:    LDC  3,8(6) 	Load constant 
457:    LDA  4,-1(0) 	Load address of base of array board
458:    SUB  3,4,3 	Compute offset of value 
459:     LD  3,0(3) 	Load the value 
460:     ST  3,-4(1) 	Save left side 
461:    LDC  3,2(6) 	Load constant 
462:     LD  4,-4(1) 	Load left into ac1 
463:    SUB  4,4,3 	Op == 
464:    LDC  3,1(6) 	True case 
465:    JEQ  4,1(7) 	Jump if true 
466:    LDC  3,0(6) 	False case 
467:     LD  4,-3(1) 	Load left into ac1 
468:    JEQ  3,1(7) 	Op AND 
469:    LDA  3,0(4) 	 
470:     LD  4,-2(1) 	Load left into ac1 
471:    JGT  3,1(7) 	Op OR 
472:    LDA  3,0(4) 	 
473:     ST  3,-2(1) 	Save left side 
474:    LDC  3,5(6) 	Load constant 
475:    LDA  4,-1(0) 	Load address of base of array board
476:    SUB  3,4,3 	Compute offset of value 
477:     LD  3,0(3) 	Load the value 
478:     ST  3,-3(1) 	Save left side 
479:    LDC  3,1(6) 	Load constant 
480:    LDC  4,0(6) 	Load 0 
481:    SUB  3,4,3 	Op unary - 
482:     LD  4,-3(1) 	Load left into ac1 
483:    SUB  4,4,3 	Op == 
484:    LDC  3,1(6) 	True case 
485:    JEQ  4,1(7) 	Jump if true 
486:    LDC  3,0(6) 	False case 
487:     LD  4,-2(1) 	Load left into ac1 
488:    JEQ  3,1(7) 	Op AND 
489:    LDA  3,0(4) 	 
490:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
492:    LDC  3,5(6) 	Load constant 
493:     ST  3,-2(1) 	Save index 
494:    LDC  3,2(6) 	Load constant 
495:     LD  4,-2(1) 	Restore index 
496:    LDA  5,-1(0) 	Load address of base of array board
497:    SUB  5,5,4 	Compute offset of value 
498:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
499:    LDC  3,0(6) 	Load constant 
500:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
* ELSE
491:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
502:    LDC  3,3(6) 	Load constant 
503:    LDA  4,-1(0) 	Load address of base of array board
504:    SUB  3,4,3 	Compute offset of value 
505:     LD  3,0(3) 	Load the value 
506:     ST  3,-2(1) 	Save left side 
507:    LDC  3,2(6) 	Load constant 
508:     LD  4,-2(1) 	Load left into ac1 
509:    SUB  4,4,3 	Op == 
510:    LDC  3,1(6) 	True case 
511:    JEQ  4,1(7) 	Jump if true 
512:    LDC  3,0(6) 	False case 
513:     ST  3,-2(1) 	Save left side 
514:    LDC  3,5(6) 	Load constant 
515:    LDA  4,-1(0) 	Load address of base of array board
516:    SUB  3,4,3 	Compute offset of value 
517:     LD  3,0(3) 	Load the value 
518:     ST  3,-3(1) 	Save left side 
519:    LDC  3,2(6) 	Load constant 
520:     LD  4,-3(1) 	Load left into ac1 
521:    SUB  4,4,3 	Op == 
522:    LDC  3,1(6) 	True case 
523:    JEQ  4,1(7) 	Jump if true 
524:    LDC  3,0(6) 	False case 
525:     LD  4,-2(1) 	Load left into ac1 
526:    JEQ  3,1(7) 	Op AND 
527:    LDA  3,0(4) 	 
528:     ST  3,-2(1) 	Save left side 
529:    LDC  3,0(6) 	Load constant 
530:    LDA  4,-1(0) 	Load address of base of array board
531:    SUB  3,4,3 	Compute offset of value 
532:     LD  3,0(3) 	Load the value 
533:     ST  3,-3(1) 	Save left side 
534:    LDC  3,2(6) 	Load constant 
535:     LD  4,-3(1) 	Load left into ac1 
536:    SUB  4,4,3 	Op == 
537:    LDC  3,1(6) 	True case 
538:    JEQ  4,1(7) 	Jump if true 
539:    LDC  3,0(6) 	False case 
540:     ST  3,-3(1) 	Save left side 
541:    LDC  3,8(6) 	Load constant 
542:    LDA  4,-1(0) 	Load address of base of array board
543:    SUB  3,4,3 	Compute offset of value 
544:     LD  3,0(3) 	Load the value 
545:     ST  3,-4(1) 	Save left side 
546:    LDC  3,2(6) 	Load constant 
547:     LD  4,-4(1) 	Load left into ac1 
548:    SUB  4,4,3 	Op == 
549:    LDC  3,1(6) 	True case 
550:    JEQ  4,1(7) 	Jump if true 
551:    LDC  3,0(6) 	False case 
552:     LD  4,-3(1) 	Load left into ac1 
553:    JEQ  3,1(7) 	Op AND 
554:    LDA  3,0(4) 	 
555:     LD  4,-2(1) 	Load left into ac1 
556:    JGT  3,1(7) 	Op OR 
557:    LDA  3,0(4) 	 
558:     ST  3,-2(1) 	Save left side 
559:    LDC  3,2(6) 	Load constant 
560:    LDA  4,-1(0) 	Load address of base of array board
561:    SUB  3,4,3 	Compute offset of value 
562:     LD  3,0(3) 	Load the value 
563:     ST  3,-3(1) 	Save left side 
564:    LDC  3,2(6) 	Load constant 
565:     LD  4,-3(1) 	Load left into ac1 
566:    SUB  4,4,3 	Op == 
567:    LDC  3,1(6) 	True case 
568:    JEQ  4,1(7) 	Jump if true 
569:    LDC  3,0(6) 	False case 
570:     ST  3,-3(1) 	Save left side 
571:    LDC  3,6(6) 	Load constant 
572:    LDA  4,-1(0) 	Load address of base of array board
573:    SUB  3,4,3 	Compute offset of value 
574:     LD  3,0(3) 	Load the value 
575:     ST  3,-4(1) 	Save left side 
576:    LDC  3,2(6) 	Load constant 
577:     LD  4,-4(1) 	Load left into ac1 
578:    SUB  4,4,3 	Op == 
579:    LDC  3,1(6) 	True case 
580:    JEQ  4,1(7) 	Jump if true 
581:    LDC  3,0(6) 	False case 
582:     LD  4,-3(1) 	Load left into ac1 
583:    JEQ  3,1(7) 	Op AND 
584:    LDA  3,0(4) 	 
585:     LD  4,-2(1) 	Load left into ac1 
586:    JGT  3,1(7) 	Op OR 
587:    LDA  3,0(4) 	 
588:     ST  3,-2(1) 	Save left side 
589:    LDC  3,1(6) 	Load constant 
590:    LDA  4,-1(0) 	Load address of base of array board
591:    SUB  3,4,3 	Compute offset of value 
592:     LD  3,0(3) 	Load the value 
593:     ST  3,-3(1) 	Save left side 
594:    LDC  3,2(6) 	Load constant 
595:     LD  4,-3(1) 	Load left into ac1 
596:    SUB  4,4,3 	Op == 
597:    LDC  3,1(6) 	True case 
598:    JEQ  4,1(7) 	Jump if true 
599:    LDC  3,0(6) 	False case 
600:     ST  3,-3(1) 	Save left side 
601:    LDC  3,7(6) 	Load constant 
602:    LDA  4,-1(0) 	Load address of base of array board
603:    SUB  3,4,3 	Compute offset of value 
604:     LD  3,0(3) 	Load the value 
605:     ST  3,-4(1) 	Save left side 
606:    LDC  3,2(6) 	Load constant 
607:     LD  4,-4(1) 	Load left into ac1 
608:    SUB  4,4,3 	Op == 
609:    LDC  3,1(6) 	True case 
610:    JEQ  4,1(7) 	Jump if true 
611:    LDC  3,0(6) 	False case 
612:     LD  4,-3(1) 	Load left into ac1 
613:    JEQ  3,1(7) 	Op AND 
614:    LDA  3,0(4) 	 
615:     LD  4,-2(1) 	Load left into ac1 
616:    JGT  3,1(7) 	Op OR 
617:    LDA  3,0(4) 	 
618:     ST  3,-2(1) 	Save left side 
619:    LDC  3,4(6) 	Load constant 
620:    LDA  4,-1(0) 	Load address of base of array board
621:    SUB  3,4,3 	Compute offset of value 
622:     LD  3,0(3) 	Load the value 
623:     ST  3,-3(1) 	Save left side 
624:    LDC  3,1(6) 	Load constant 
625:    LDC  4,0(6) 	Load 0 
626:    SUB  3,4,3 	Op unary - 
627:     LD  4,-3(1) 	Load left into ac1 
628:    SUB  4,4,3 	Op == 
629:    LDC  3,1(6) 	True case 
630:    JEQ  4,1(7) 	Jump if true 
631:    LDC  3,0(6) 	False case 
632:     LD  4,-2(1) 	Load left into ac1 
633:    JEQ  3,1(7) 	Op AND 
634:    LDA  3,0(4) 	 
635:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
637:    LDC  3,4(6) 	Load constant 
638:     ST  3,-2(1) 	Save index 
639:    LDC  3,2(6) 	Load constant 
640:     LD  4,-2(1) 	Restore index 
641:    LDA  5,-1(0) 	Load address of base of array board
642:    SUB  5,5,4 	Compute offset of value 
643:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
644:    LDC  3,0(6) 	Load constant 
645:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
* ELSE
636:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
647:    LDC  3,4(6) 	Load constant 
648:    LDA  4,-1(0) 	Load address of base of array board
649:    SUB  3,4,3 	Compute offset of value 
650:     LD  3,0(3) 	Load the value 
651:     ST  3,-2(1) 	Save left side 
652:    LDC  3,2(6) 	Load constant 
653:     LD  4,-2(1) 	Load left into ac1 
654:    SUB  4,4,3 	Op == 
655:    LDC  3,1(6) 	True case 
656:    JEQ  4,1(7) 	Jump if true 
657:    LDC  3,0(6) 	False case 
658:     ST  3,-2(1) 	Save left side 
659:    LDC  3,5(6) 	Load constant 
660:    LDA  4,-1(0) 	Load address of base of array board
661:    SUB  3,4,3 	Compute offset of value 
662:     LD  3,0(3) 	Load the value 
663:     ST  3,-3(1) 	Save left side 
664:    LDC  3,2(6) 	Load constant 
665:     LD  4,-3(1) 	Load left into ac1 
666:    SUB  4,4,3 	Op == 
667:    LDC  3,1(6) 	True case 
668:    JEQ  4,1(7) 	Jump if true 
669:    LDC  3,0(6) 	False case 
670:     LD  4,-2(1) 	Load left into ac1 
671:    JEQ  3,1(7) 	Op AND 
672:    LDA  3,0(4) 	 
673:     ST  3,-2(1) 	Save left side 
674:    LDC  3,0(6) 	Load constant 
675:    LDA  4,-1(0) 	Load address of base of array board
676:    SUB  3,4,3 	Compute offset of value 
677:     LD  3,0(3) 	Load the value 
678:     ST  3,-3(1) 	Save left side 
679:    LDC  3,2(6) 	Load constant 
680:     LD  4,-3(1) 	Load left into ac1 
681:    SUB  4,4,3 	Op == 
682:    LDC  3,1(6) 	True case 
683:    JEQ  4,1(7) 	Jump if true 
684:    LDC  3,0(6) 	False case 
685:     ST  3,-3(1) 	Save left side 
686:    LDC  3,6(6) 	Load constant 
687:    LDA  4,-1(0) 	Load address of base of array board
688:    SUB  3,4,3 	Compute offset of value 
689:     LD  3,0(3) 	Load the value 
690:     ST  3,-4(1) 	Save left side 
691:    LDC  3,2(6) 	Load constant 
692:     LD  4,-4(1) 	Load left into ac1 
693:    SUB  4,4,3 	Op == 
694:    LDC  3,1(6) 	True case 
695:    JEQ  4,1(7) 	Jump if true 
696:    LDC  3,0(6) 	False case 
697:     LD  4,-3(1) 	Load left into ac1 
698:    JEQ  3,1(7) 	Op AND 
699:    LDA  3,0(4) 	 
700:     LD  4,-2(1) 	Load left into ac1 
701:    JGT  3,1(7) 	Op OR 
702:    LDA  3,0(4) 	 
703:     ST  3,-2(1) 	Save left side 
704:    LDC  3,3(6) 	Load constant 
705:    LDA  4,-1(0) 	Load address of base of array board
706:    SUB  3,4,3 	Compute offset of value 
707:     LD  3,0(3) 	Load the value 
708:     ST  3,-3(1) 	Save left side 
709:    LDC  3,1(6) 	Load constant 
710:    LDC  4,0(6) 	Load 0 
711:    SUB  3,4,3 	Op unary - 
712:     LD  4,-3(1) 	Load left into ac1 
713:    SUB  4,4,3 	Op == 
714:    LDC  3,1(6) 	True case 
715:    JEQ  4,1(7) 	Jump if true 
716:    LDC  3,0(6) 	False case 
717:     LD  4,-2(1) 	Load left into ac1 
718:    JEQ  3,1(7) 	Op AND 
719:    LDA  3,0(4) 	 
720:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
722:    LDC  3,3(6) 	Load constant 
723:     ST  3,-2(1) 	Save index 
724:    LDC  3,2(6) 	Load constant 
725:     LD  4,-2(1) 	Restore index 
726:    LDA  5,-1(0) 	Load address of base of array board
727:    SUB  5,5,4 	Compute offset of value 
728:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
729:    LDC  3,0(6) 	Load constant 
730:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
* ELSE
721:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
732:    LDC  3,6(6) 	Load constant 
733:    LDA  4,-1(0) 	Load address of base of array board
734:    SUB  3,4,3 	Compute offset of value 
735:     LD  3,0(3) 	Load the value 
736:     ST  3,-2(1) 	Save left side 
737:    LDC  3,2(6) 	Load constant 
738:     LD  4,-2(1) 	Load left into ac1 
739:    SUB  4,4,3 	Op == 
740:    LDC  3,1(6) 	True case 
741:    JEQ  4,1(7) 	Jump if true 
742:    LDC  3,0(6) 	False case 
743:     ST  3,-2(1) 	Save left side 
744:    LDC  3,7(6) 	Load constant 
745:    LDA  4,-1(0) 	Load address of base of array board
746:    SUB  3,4,3 	Compute offset of value 
747:     LD  3,0(3) 	Load the value 
748:     ST  3,-3(1) 	Save left side 
749:    LDC  3,2(6) 	Load constant 
750:     LD  4,-3(1) 	Load left into ac1 
751:    SUB  4,4,3 	Op == 
752:    LDC  3,1(6) 	True case 
753:    JEQ  4,1(7) 	Jump if true 
754:    LDC  3,0(6) 	False case 
755:     LD  4,-2(1) 	Load left into ac1 
756:    JEQ  3,1(7) 	Op AND 
757:    LDA  3,0(4) 	 
758:     ST  3,-2(1) 	Save left side 
759:    LDC  3,0(6) 	Load constant 
760:    LDA  4,-1(0) 	Load address of base of array board
761:    SUB  3,4,3 	Compute offset of value 
762:     LD  3,0(3) 	Load the value 
763:     ST  3,-3(1) 	Save left side 
764:    LDC  3,2(6) 	Load constant 
765:     LD  4,-3(1) 	Load left into ac1 
766:    SUB  4,4,3 	Op == 
767:    LDC  3,1(6) 	True case 
768:    JEQ  4,1(7) 	Jump if true 
769:    LDC  3,0(6) 	False case 
770:     ST  3,-3(1) 	Save left side 
771:    LDC  3,4(6) 	Load constant 
772:    LDA  4,-1(0) 	Load address of base of array board
773:    SUB  3,4,3 	Compute offset of value 
774:     LD  3,0(3) 	Load the value 
775:     ST  3,-4(1) 	Save left side 
776:    LDC  3,2(6) 	Load constant 
777:     LD  4,-4(1) 	Load left into ac1 
778:    SUB  4,4,3 	Op == 
779:    LDC  3,1(6) 	True case 
780:    JEQ  4,1(7) 	Jump if true 
781:    LDC  3,0(6) 	False case 
782:     LD  4,-3(1) 	Load left into ac1 
783:    JEQ  3,1(7) 	Op AND 
784:    LDA  3,0(4) 	 
785:     LD  4,-2(1) 	Load left into ac1 
786:    JGT  3,1(7) 	Op OR 
787:    LDA  3,0(4) 	 
788:     ST  3,-2(1) 	Save left side 
789:    LDC  3,2(6) 	Load constant 
790:    LDA  4,-1(0) 	Load address of base of array board
791:    SUB  3,4,3 	Compute offset of value 
792:     LD  3,0(3) 	Load the value 
793:     ST  3,-3(1) 	Save left side 
794:    LDC  3,2(6) 	Load constant 
795:     LD  4,-3(1) 	Load left into ac1 
796:    SUB  4,4,3 	Op == 
797:    LDC  3,1(6) 	True case 
798:    JEQ  4,1(7) 	Jump if true 
799:    LDC  3,0(6) 	False case 
800:     ST  3,-3(1) 	Save left side 
801:    LDC  3,5(6) 	Load constant 
802:    LDA  4,-1(0) 	Load address of base of array board
803:    SUB  3,4,3 	Compute offset of value 
804:     LD  3,0(3) 	Load the value 
805:     ST  3,-4(1) 	Save left side 
806:    LDC  3,2(6) 	Load constant 
807:     LD  4,-4(1) 	Load left into ac1 
808:    SUB  4,4,3 	Op == 
809:    LDC  3,1(6) 	True case 
810:    JEQ  4,1(7) 	Jump if true 
811:    LDC  3,0(6) 	False case 
812:     LD  4,-3(1) 	Load left into ac1 
813:    JEQ  3,1(7) 	Op AND 
814:    LDA  3,0(4) 	 
815:     LD  4,-2(1) 	Load left into ac1 
816:    JGT  3,1(7) 	Op OR 
817:    LDA  3,0(4) 	 
818:     ST  3,-2(1) 	Save left side 
819:    LDC  3,8(6) 	Load constant 
820:    LDA  4,-1(0) 	Load address of base of array board
821:    SUB  3,4,3 	Compute offset of value 
822:     LD  3,0(3) 	Load the value 
823:     ST  3,-3(1) 	Save left side 
824:    LDC  3,1(6) 	Load constant 
825:    LDC  4,0(6) 	Load 0 
826:    SUB  3,4,3 	Op unary - 
827:     LD  4,-3(1) 	Load left into ac1 
828:    SUB  4,4,3 	Op == 
829:    LDC  3,1(6) 	True case 
830:    JEQ  4,1(7) 	Jump if true 
831:    LDC  3,0(6) 	False case 
832:     LD  4,-2(1) 	Load left into ac1 
833:    JEQ  3,1(7) 	Op AND 
834:    LDA  3,0(4) 	 
835:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
837:    LDC  3,8(6) 	Load constant 
838:     ST  3,-2(1) 	Save index 
839:    LDC  3,2(6) 	Load constant 
840:     LD  4,-2(1) 	Restore index 
841:    LDA  5,-1(0) 	Load address of base of array board
842:    SUB  5,5,4 	Compute offset of value 
843:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
844:    LDC  3,0(6) 	Load constant 
845:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
* ELSE
836:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
847:    LDC  3,6(6) 	Load constant 
848:    LDA  4,-1(0) 	Load address of base of array board
849:    SUB  3,4,3 	Compute offset of value 
850:     LD  3,0(3) 	Load the value 
851:     ST  3,-2(1) 	Save left side 
852:    LDC  3,2(6) 	Load constant 
853:     LD  4,-2(1) 	Load left into ac1 
854:    SUB  4,4,3 	Op == 
855:    LDC  3,1(6) 	True case 
856:    JEQ  4,1(7) 	Jump if true 
857:    LDC  3,0(6) 	False case 
858:     ST  3,-2(1) 	Save left side 
859:    LDC  3,8(6) 	Load constant 
860:    LDA  4,-1(0) 	Load address of base of array board
861:    SUB  3,4,3 	Compute offset of value 
862:     LD  3,0(3) 	Load the value 
863:     ST  3,-3(1) 	Save left side 
864:    LDC  3,2(6) 	Load constant 
865:     LD  4,-3(1) 	Load left into ac1 
866:    SUB  4,4,3 	Op == 
867:    LDC  3,1(6) 	True case 
868:    JEQ  4,1(7) 	Jump if true 
869:    LDC  3,0(6) 	False case 
870:     LD  4,-2(1) 	Load left into ac1 
871:    JEQ  3,1(7) 	Op AND 
872:    LDA  3,0(4) 	 
873:     ST  3,-2(1) 	Save left side 
874:    LDC  3,4(6) 	Load constant 
875:    LDA  4,-1(0) 	Load address of base of array board
876:    SUB  3,4,3 	Compute offset of value 
877:     LD  3,0(3) 	Load the value 
878:     ST  3,-3(1) 	Save left side 
879:    LDC  3,2(6) 	Load constant 
880:     LD  4,-3(1) 	Load left into ac1 
881:    SUB  4,4,3 	Op == 
882:    LDC  3,1(6) 	True case 
883:    JEQ  4,1(7) 	Jump if true 
884:    LDC  3,0(6) 	False case 
885:     ST  3,-3(1) 	Save left side 
886:    LDC  3,1(6) 	Load constant 
887:    LDA  4,-1(0) 	Load address of base of array board
888:    SUB  3,4,3 	Compute offset of value 
889:     LD  3,0(3) 	Load the value 
890:     ST  3,-4(1) 	Save left side 
891:    LDC  3,2(6) 	Load constant 
892:     LD  4,-4(1) 	Load left into ac1 
893:    SUB  4,4,3 	Op == 
894:    LDC  3,1(6) 	True case 
895:    JEQ  4,1(7) 	Jump if true 
896:    LDC  3,0(6) 	False case 
897:     LD  4,-3(1) 	Load left into ac1 
898:    JEQ  3,1(7) 	Op AND 
899:    LDA  3,0(4) 	 
900:     LD  4,-2(1) 	Load left into ac1 
901:    JGT  3,1(7) 	Op OR 
902:    LDA  3,0(4) 	 
903:     ST  3,-2(1) 	Save left side 
904:    LDC  3,7(6) 	Load constant 
905:    LDA  4,-1(0) 	Load address of base of array board
906:    SUB  3,4,3 	Compute offset of value 
907:     LD  3,0(3) 	Load the value 
908:     ST  3,-3(1) 	Save left side 
909:    LDC  3,1(6) 	Load constant 
910:    LDC  4,0(6) 	Load 0 
911:    SUB  3,4,3 	Op unary - 
912:     LD  4,-3(1) 	Load left into ac1 
913:    SUB  4,4,3 	Op == 
914:    LDC  3,1(6) 	True case 
915:    JEQ  4,1(7) 	Jump if true 
916:    LDC  3,0(6) 	False case 
917:     LD  4,-2(1) 	Load left into ac1 
918:    JEQ  3,1(7) 	Op AND 
919:    LDA  3,0(4) 	 
920:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
922:    LDC  3,7(6) 	Load constant 
923:     ST  3,-2(1) 	Save index 
924:    LDC  3,2(6) 	Load constant 
925:     LD  4,-2(1) 	Restore index 
926:    LDA  5,-1(0) 	Load address of base of array board
927:    SUB  5,5,4 	Compute offset of value 
928:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
929:    LDC  3,0(6) 	Load constant 
930:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
* ELSE
921:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
932:    LDC  3,7(6) 	Load constant 
933:    LDA  4,-1(0) 	Load address of base of array board
934:    SUB  3,4,3 	Compute offset of value 
935:     LD  3,0(3) 	Load the value 
936:     ST  3,-2(1) 	Save left side 
937:    LDC  3,2(6) 	Load constant 
938:     LD  4,-2(1) 	Load left into ac1 
939:    SUB  4,4,3 	Op == 
940:    LDC  3,1(6) 	True case 
941:    JEQ  4,1(7) 	Jump if true 
942:    LDC  3,0(6) 	False case 
943:     ST  3,-2(1) 	Save left side 
944:    LDC  3,8(6) 	Load constant 
945:    LDA  4,-1(0) 	Load address of base of array board
946:    SUB  3,4,3 	Compute offset of value 
947:     LD  3,0(3) 	Load the value 
948:     ST  3,-3(1) 	Save left side 
949:    LDC  3,2(6) 	Load constant 
950:     LD  4,-3(1) 	Load left into ac1 
951:    SUB  4,4,3 	Op == 
952:    LDC  3,1(6) 	True case 
953:    JEQ  4,1(7) 	Jump if true 
954:    LDC  3,0(6) 	False case 
955:     LD  4,-2(1) 	Load left into ac1 
956:    JEQ  3,1(7) 	Op AND 
957:    LDA  3,0(4) 	 
958:     ST  3,-2(1) 	Save left side 
959:    LDC  3,4(6) 	Load constant 
960:    LDA  4,-1(0) 	Load address of base of array board
961:    SUB  3,4,3 	Compute offset of value 
962:     LD  3,0(3) 	Load the value 
963:     ST  3,-3(1) 	Save left side 
964:    LDC  3,2(6) 	Load constant 
965:     LD  4,-3(1) 	Load left into ac1 
966:    SUB  4,4,3 	Op == 
967:    LDC  3,1(6) 	True case 
968:    JEQ  4,1(7) 	Jump if true 
969:    LDC  3,0(6) 	False case 
970:     ST  3,-3(1) 	Save left side 
971:    LDC  3,2(6) 	Load constant 
972:    LDA  4,-1(0) 	Load address of base of array board
973:    SUB  3,4,3 	Compute offset of value 
974:     LD  3,0(3) 	Load the value 
975:     ST  3,-4(1) 	Save left side 
976:    LDC  3,2(6) 	Load constant 
977:     LD  4,-4(1) 	Load left into ac1 
978:    SUB  4,4,3 	Op == 
979:    LDC  3,1(6) 	True case 
980:    JEQ  4,1(7) 	Jump if true 
981:    LDC  3,0(6) 	False case 
982:     LD  4,-3(1) 	Load left into ac1 
983:    JEQ  3,1(7) 	Op AND 
984:    LDA  3,0(4) 	 
985:     LD  4,-2(1) 	Load left into ac1 
986:    JGT  3,1(7) 	Op OR 
987:    LDA  3,0(4) 	 
988:     ST  3,-2(1) 	Save left side 
989:    LDC  3,0(6) 	Load constant 
990:    LDA  4,-1(0) 	Load address of base of array board
991:    SUB  3,4,3 	Compute offset of value 
992:     LD  3,0(3) 	Load the value 
993:     ST  3,-3(1) 	Save left side 
994:    LDC  3,2(6) 	Load constant 
995:     LD  4,-3(1) 	Load left into ac1 
996:    SUB  4,4,3 	Op == 
997:    LDC  3,1(6) 	True case 
998:    JEQ  4,1(7) 	Jump if true 
999:    LDC  3,0(6) 	False case 
1000:     ST  3,-3(1) 	Save left side 
1001:    LDC  3,3(6) 	Load constant 
1002:    LDA  4,-1(0) 	Load address of base of array board
1003:    SUB  3,4,3 	Compute offset of value 
1004:     LD  3,0(3) 	Load the value 
1005:     ST  3,-4(1) 	Save left side 
1006:    LDC  3,2(6) 	Load constant 
1007:     LD  4,-4(1) 	Load left into ac1 
1008:    SUB  4,4,3 	Op == 
1009:    LDC  3,1(6) 	True case 
1010:    JEQ  4,1(7) 	Jump if true 
1011:    LDC  3,0(6) 	False case 
1012:     LD  4,-3(1) 	Load left into ac1 
1013:    JEQ  3,1(7) 	Op AND 
1014:    LDA  3,0(4) 	 
1015:     LD  4,-2(1) 	Load left into ac1 
1016:    JGT  3,1(7) 	Op OR 
1017:    LDA  3,0(4) 	 
1018:     ST  3,-2(1) 	Save left side 
1019:    LDC  3,6(6) 	Load constant 
1020:    LDA  4,-1(0) 	Load address of base of array board
1021:    SUB  3,4,3 	Compute offset of value 
1022:     LD  3,0(3) 	Load the value 
1023:     ST  3,-3(1) 	Save left side 
1024:    LDC  3,1(6) 	Load constant 
1025:    LDC  4,0(6) 	Load 0 
1026:    SUB  3,4,3 	Op unary - 
1027:     LD  4,-3(1) 	Load left into ac1 
1028:    SUB  4,4,3 	Op == 
1029:    LDC  3,1(6) 	True case 
1030:    JEQ  4,1(7) 	Jump if true 
1031:    LDC  3,0(6) 	False case 
1032:     LD  4,-2(1) 	Load left into ac1 
1033:    JEQ  3,1(7) 	Op AND 
1034:    LDA  3,0(4) 	 
1035:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1037:    LDC  3,6(6) 	Load constant 
1038:     ST  3,-2(1) 	Save index 
1039:    LDC  3,2(6) 	Load constant 
1040:     LD  4,-2(1) 	Restore index 
1041:    LDA  5,-1(0) 	Load address of base of array board
1042:    SUB  5,5,4 	Compute offset of value 
1043:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
1044:    LDC  3,0(6) 	Load constant 
1045:     ST  3,-10(0) 	Store variable gamenotdone
* END compound statement
1036:    LDA  7,9(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
931:    LDA  7,114(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
846:    LDA  7,199(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
731:    LDA  7,314(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
646:    LDA  7,399(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
501:    LDA  7,544(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
416:    LDA  7,629(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
301:    LDA  7,744(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
216:    LDA  7,829(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
1046:     LD  3,-10(0) 	Load variable gamenotdone
1047:     ST  3,-2(1) 	Save left side 
1048:    LDC  3,0(6) 	Load constant 
1049:     LD  4,-2(1) 	Load left into ac1 
1050:    SUB  3,4,3 	Op != 
1051:    JEQ  3,1(7) 	Jump if true 
1052:    LDC  3,1(6) 	True case 
1053:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* RETURN
1055:    LDC  3,0(6) 	Load constant 
1056:    LDA  2,0(3) 	Copy result to rt register 
1057:     LD  3,-1(1) 	Load return address 
1058:     LD  1,0(1) 	Adjust fp 
1059:    LDA  7,0(3) 	Return 
* END compound statement
1054:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
1060:    LDC  3,1(6) 	Load constant 
1061:    LDA  2,0(3) 	Copy result to rt register 
1062:     LD  3,-1(1) 	Load return address 
1063:     LD  1,0(1) 	Adjust fp 
1064:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
1065:    LDC  2,0(6) 	Set return value to 0 
1066:     LD  3,-1(1) 	Load return address 
1067:     LD  1,0(1) 	Adjust fp 
1068:    LDA  7,0(3) 	Return 
* END of function win
* BEGIN function blockplayer
1069:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
1070:    LDC  3,0(6) 	Load constant 
1071:     ST  3,-2(1) 	Store variable blocked
* IF
1072:    LDC  3,0(6) 	Load constant 
1073:    LDA  4,-1(0) 	Load address of base of array board
1074:    SUB  3,4,3 	Compute offset of value 
1075:     LD  3,0(3) 	Load the value 
1076:     ST  3,-3(1) 	Save left side 
1077:    LDC  3,1(6) 	Load constant 
1078:     LD  4,-3(1) 	Load left into ac1 
1079:    SUB  4,4,3 	Op == 
1080:    LDC  3,1(6) 	True case 
1081:    JEQ  4,1(7) 	Jump if true 
1082:    LDC  3,0(6) 	False case 
1083:     ST  3,-3(1) 	Save left side 
1084:    LDC  3,1(6) 	Load constant 
1085:    LDA  4,-1(0) 	Load address of base of array board
1086:    SUB  3,4,3 	Compute offset of value 
1087:     LD  3,0(3) 	Load the value 
1088:     ST  3,-4(1) 	Save left side 
1089:    LDC  3,1(6) 	Load constant 
1090:     LD  4,-4(1) 	Load left into ac1 
1091:    SUB  4,4,3 	Op == 
1092:    LDC  3,1(6) 	True case 
1093:    JEQ  4,1(7) 	Jump if true 
1094:    LDC  3,0(6) 	False case 
1095:     LD  4,-3(1) 	Load left into ac1 
1096:    JEQ  3,1(7) 	Op AND 
1097:    LDA  3,0(4) 	 
1098:     ST  3,-3(1) 	Save left side 
1099:    LDC  3,6(6) 	Load constant 
1100:    LDA  4,-1(0) 	Load address of base of array board
1101:    SUB  3,4,3 	Compute offset of value 
1102:     LD  3,0(3) 	Load the value 
1103:     ST  3,-4(1) 	Save left side 
1104:    LDC  3,1(6) 	Load constant 
1105:     LD  4,-4(1) 	Load left into ac1 
1106:    SUB  4,4,3 	Op == 
1107:    LDC  3,1(6) 	True case 
1108:    JEQ  4,1(7) 	Jump if true 
1109:    LDC  3,0(6) 	False case 
1110:     ST  3,-4(1) 	Save left side 
1111:    LDC  3,4(6) 	Load constant 
1112:    LDA  4,-1(0) 	Load address of base of array board
1113:    SUB  3,4,3 	Compute offset of value 
1114:     LD  3,0(3) 	Load the value 
1115:     ST  3,-5(1) 	Save left side 
1116:    LDC  3,1(6) 	Load constant 
1117:     LD  4,-5(1) 	Load left into ac1 
1118:    SUB  4,4,3 	Op == 
1119:    LDC  3,1(6) 	True case 
1120:    JEQ  4,1(7) 	Jump if true 
1121:    LDC  3,0(6) 	False case 
1122:     LD  4,-4(1) 	Load left into ac1 
1123:    JEQ  3,1(7) 	Op AND 
1124:    LDA  3,0(4) 	 
1125:     LD  4,-3(1) 	Load left into ac1 
1126:    JGT  3,1(7) 	Op OR 
1127:    LDA  3,0(4) 	 
1128:     ST  3,-3(1) 	Save left side 
1129:    LDC  3,8(6) 	Load constant 
1130:    LDA  4,-1(0) 	Load address of base of array board
1131:    SUB  3,4,3 	Compute offset of value 
1132:     LD  3,0(3) 	Load the value 
1133:     ST  3,-4(1) 	Save left side 
1134:    LDC  3,1(6) 	Load constant 
1135:     LD  4,-4(1) 	Load left into ac1 
1136:    SUB  4,4,3 	Op == 
1137:    LDC  3,1(6) 	True case 
1138:    JEQ  4,1(7) 	Jump if true 
1139:    LDC  3,0(6) 	False case 
1140:     ST  3,-4(1) 	Save left side 
1141:    LDC  3,5(6) 	Load constant 
1142:    LDA  4,-1(0) 	Load address of base of array board
1143:    SUB  3,4,3 	Compute offset of value 
1144:     LD  3,0(3) 	Load the value 
1145:     ST  3,-5(1) 	Save left side 
1146:    LDC  3,1(6) 	Load constant 
1147:     LD  4,-5(1) 	Load left into ac1 
1148:    SUB  4,4,3 	Op == 
1149:    LDC  3,1(6) 	True case 
1150:    JEQ  4,1(7) 	Jump if true 
1151:    LDC  3,0(6) 	False case 
1152:     LD  4,-4(1) 	Load left into ac1 
1153:    JEQ  3,1(7) 	Op AND 
1154:    LDA  3,0(4) 	 
1155:     LD  4,-3(1) 	Load left into ac1 
1156:    JGT  3,1(7) 	Op OR 
1157:    LDA  3,0(4) 	 
1158:     ST  3,-3(1) 	Save left side 
1159:    LDC  3,2(6) 	Load constant 
1160:    LDA  4,-1(0) 	Load address of base of array board
1161:    SUB  3,4,3 	Compute offset of value 
1162:     LD  3,0(3) 	Load the value 
1163:     ST  3,-4(1) 	Save left side 
1164:    LDC  3,1(6) 	Load constant 
1165:    LDC  4,0(6) 	Load 0 
1166:    SUB  3,4,3 	Op unary - 
1167:     LD  4,-4(1) 	Load left into ac1 
1168:    SUB  4,4,3 	Op == 
1169:    LDC  3,1(6) 	True case 
1170:    JEQ  4,1(7) 	Jump if true 
1171:    LDC  3,0(6) 	False case 
1172:     LD  4,-3(1) 	Load left into ac1 
1173:    JEQ  3,1(7) 	Op AND 
1174:    LDA  3,0(4) 	 
1175:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1177:    LDC  3,2(6) 	Load constant 
1178:     ST  3,-3(1) 	Save index 
1179:    LDC  3,2(6) 	Load constant 
1180:     LD  4,-3(1) 	Restore index 
1181:    LDA  5,-1(0) 	Load address of base of array board
1182:    SUB  5,5,4 	Compute offset of value 
1183:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
1184:    LDC  3,1(6) 	Load constant 
1185:     ST  3,-2(1) 	Store variable blocked
* END compound statement
* ELSE
1176:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
1187:    LDC  3,0(6) 	Load constant 
1188:    LDA  4,-1(0) 	Load address of base of array board
1189:    SUB  3,4,3 	Compute offset of value 
1190:     LD  3,0(3) 	Load the value 
1191:     ST  3,-3(1) 	Save left side 
1192:    LDC  3,1(6) 	Load constant 
1193:     LD  4,-3(1) 	Load left into ac1 
1194:    SUB  4,4,3 	Op == 
1195:    LDC  3,1(6) 	True case 
1196:    JEQ  4,1(7) 	Jump if true 
1197:    LDC  3,0(6) 	False case 
1198:     ST  3,-3(1) 	Save left side 
1199:    LDC  3,2(6) 	Load constant 
1200:    LDA  4,-1(0) 	Load address of base of array board
1201:    SUB  3,4,3 	Compute offset of value 
1202:     LD  3,0(3) 	Load the value 
1203:     ST  3,-4(1) 	Save left side 
1204:    LDC  3,1(6) 	Load constant 
1205:     LD  4,-4(1) 	Load left into ac1 
1206:    SUB  4,4,3 	Op == 
1207:    LDC  3,1(6) 	True case 
1208:    JEQ  4,1(7) 	Jump if true 
1209:    LDC  3,0(6) 	False case 
1210:     LD  4,-3(1) 	Load left into ac1 
1211:    JEQ  3,1(7) 	Op AND 
1212:    LDA  3,0(4) 	 
1213:     ST  3,-3(1) 	Save left side 
1214:    LDC  3,4(6) 	Load constant 
1215:    LDA  4,-1(0) 	Load address of base of array board
1216:    SUB  3,4,3 	Compute offset of value 
1217:     LD  3,0(3) 	Load the value 
1218:     ST  3,-4(1) 	Save left side 
1219:    LDC  3,1(6) 	Load constant 
1220:     LD  4,-4(1) 	Load left into ac1 
1221:    SUB  4,4,3 	Op == 
1222:    LDC  3,1(6) 	True case 
1223:    JEQ  4,1(7) 	Jump if true 
1224:    LDC  3,0(6) 	False case 
1225:     ST  3,-4(1) 	Save left side 
1226:    LDC  3,7(6) 	Load constant 
1227:    LDA  4,-1(0) 	Load address of base of array board
1228:    SUB  3,4,3 	Compute offset of value 
1229:     LD  3,0(3) 	Load the value 
1230:     ST  3,-5(1) 	Save left side 
1231:    LDC  3,1(6) 	Load constant 
1232:     LD  4,-5(1) 	Load left into ac1 
1233:    SUB  4,4,3 	Op == 
1234:    LDC  3,1(6) 	True case 
1235:    JEQ  4,1(7) 	Jump if true 
1236:    LDC  3,0(6) 	False case 
1237:     LD  4,-4(1) 	Load left into ac1 
1238:    JEQ  3,1(7) 	Op AND 
1239:    LDA  3,0(4) 	 
1240:     LD  4,-3(1) 	Load left into ac1 
1241:    JGT  3,1(7) 	Op OR 
1242:    LDA  3,0(4) 	 
1243:     ST  3,-3(1) 	Save left side 
1244:    LDC  3,1(6) 	Load constant 
1245:    LDA  4,-1(0) 	Load address of base of array board
1246:    SUB  3,4,3 	Compute offset of value 
1247:     LD  3,0(3) 	Load the value 
1248:     ST  3,-4(1) 	Save left side 
1249:    LDC  3,1(6) 	Load constant 
1250:    LDC  4,0(6) 	Load 0 
1251:    SUB  3,4,3 	Op unary - 
1252:     LD  4,-4(1) 	Load left into ac1 
1253:    SUB  4,4,3 	Op == 
1254:    LDC  3,1(6) 	True case 
1255:    JEQ  4,1(7) 	Jump if true 
1256:    LDC  3,0(6) 	False case 
1257:     LD  4,-3(1) 	Load left into ac1 
1258:    JEQ  3,1(7) 	Op AND 
1259:    LDA  3,0(4) 	 
1260:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1262:    LDC  3,1(6) 	Load constant 
1263:     ST  3,-3(1) 	Save index 
1264:    LDC  3,2(6) 	Load constant 
1265:     LD  4,-3(1) 	Restore index 
1266:    LDA  5,-1(0) 	Load address of base of array board
1267:    SUB  5,5,4 	Compute offset of value 
1268:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
1269:    LDC  3,1(6) 	Load constant 
1270:     ST  3,-2(1) 	Store variable blocked
* END compound statement
* ELSE
1261:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
1272:    LDC  3,2(6) 	Load constant 
1273:    LDA  4,-1(0) 	Load address of base of array board
1274:    SUB  3,4,3 	Compute offset of value 
1275:     LD  3,0(3) 	Load the value 
1276:     ST  3,-3(1) 	Save left side 
1277:    LDC  3,1(6) 	Load constant 
1278:     LD  4,-3(1) 	Load left into ac1 
1279:    SUB  4,4,3 	Op == 
1280:    LDC  3,1(6) 	True case 
1281:    JEQ  4,1(7) 	Jump if true 
1282:    LDC  3,0(6) 	False case 
1283:     ST  3,-3(1) 	Save left side 
1284:    LDC  3,1(6) 	Load constant 
1285:    LDA  4,-1(0) 	Load address of base of array board
1286:    SUB  3,4,3 	Compute offset of value 
1287:     LD  3,0(3) 	Load the value 
1288:     ST  3,-4(1) 	Save left side 
1289:    LDC  3,1(6) 	Load constant 
1290:     LD  4,-4(1) 	Load left into ac1 
1291:    SUB  4,4,3 	Op == 
1292:    LDC  3,1(6) 	True case 
1293:    JEQ  4,1(7) 	Jump if true 
1294:    LDC  3,0(6) 	False case 
1295:     LD  4,-3(1) 	Load left into ac1 
1296:    JEQ  3,1(7) 	Op AND 
1297:    LDA  3,0(4) 	 
1298:     ST  3,-3(1) 	Save left side 
1299:    LDC  3,6(6) 	Load constant 
1300:    LDA  4,-1(0) 	Load address of base of array board
1301:    SUB  3,4,3 	Compute offset of value 
1302:     LD  3,0(3) 	Load the value 
1303:     ST  3,-4(1) 	Save left side 
1304:    LDC  3,1(6) 	Load constant 
1305:     LD  4,-4(1) 	Load left into ac1 
1306:    SUB  4,4,3 	Op == 
1307:    LDC  3,1(6) 	True case 
1308:    JEQ  4,1(7) 	Jump if true 
1309:    LDC  3,0(6) 	False case 
1310:     ST  3,-4(1) 	Save left side 
1311:    LDC  3,3(6) 	Load constant 
1312:    LDA  4,-1(0) 	Load address of base of array board
1313:    SUB  3,4,3 	Compute offset of value 
1314:     LD  3,0(3) 	Load the value 
1315:     ST  3,-5(1) 	Save left side 
1316:    LDC  3,1(6) 	Load constant 
1317:     LD  4,-5(1) 	Load left into ac1 
1318:    SUB  4,4,3 	Op == 
1319:    LDC  3,1(6) 	True case 
1320:    JEQ  4,1(7) 	Jump if true 
1321:    LDC  3,0(6) 	False case 
1322:     LD  4,-4(1) 	Load left into ac1 
1323:    JEQ  3,1(7) 	Op AND 
1324:    LDA  3,0(4) 	 
1325:     LD  4,-3(1) 	Load left into ac1 
1326:    JGT  3,1(7) 	Op OR 
1327:    LDA  3,0(4) 	 
1328:     ST  3,-3(1) 	Save left side 
1329:    LDC  3,4(6) 	Load constant 
1330:    LDA  4,-1(0) 	Load address of base of array board
1331:    SUB  3,4,3 	Compute offset of value 
1332:     LD  3,0(3) 	Load the value 
1333:     ST  3,-4(1) 	Save left side 
1334:    LDC  3,1(6) 	Load constant 
1335:     LD  4,-4(1) 	Load left into ac1 
1336:    SUB  4,4,3 	Op == 
1337:    LDC  3,1(6) 	True case 
1338:    JEQ  4,1(7) 	Jump if true 
1339:    LDC  3,0(6) 	False case 
1340:     ST  3,-4(1) 	Save left side 
1341:    LDC  3,8(6) 	Load constant 
1342:    LDA  4,-1(0) 	Load address of base of array board
1343:    SUB  3,4,3 	Compute offset of value 
1344:     LD  3,0(3) 	Load the value 
1345:     ST  3,-5(1) 	Save left side 
1346:    LDC  3,1(6) 	Load constant 
1347:     LD  4,-5(1) 	Load left into ac1 
1348:    SUB  4,4,3 	Op == 
1349:    LDC  3,1(6) 	True case 
1350:    JEQ  4,1(7) 	Jump if true 
1351:    LDC  3,0(6) 	False case 
1352:     LD  4,-4(1) 	Load left into ac1 
1353:    JEQ  3,1(7) 	Op AND 
1354:    LDA  3,0(4) 	 
1355:     LD  4,-3(1) 	Load left into ac1 
1356:    JGT  3,1(7) 	Op OR 
1357:    LDA  3,0(4) 	 
1358:     ST  3,-3(1) 	Save left side 
1359:    LDC  3,0(6) 	Load constant 
1360:    LDA  4,-1(0) 	Load address of base of array board
1361:    SUB  3,4,3 	Compute offset of value 
1362:     LD  3,0(3) 	Load the value 
1363:     ST  3,-4(1) 	Save left side 
1364:    LDC  3,1(6) 	Load constant 
1365:    LDC  4,0(6) 	Load 0 
1366:    SUB  3,4,3 	Op unary - 
1367:     LD  4,-4(1) 	Load left into ac1 
1368:    SUB  4,4,3 	Op == 
1369:    LDC  3,1(6) 	True case 
1370:    JEQ  4,1(7) 	Jump if true 
1371:    LDC  3,0(6) 	False case 
1372:     LD  4,-3(1) 	Load left into ac1 
1373:    JEQ  3,1(7) 	Op AND 
1374:    LDA  3,0(4) 	 
1375:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1377:    LDC  3,0(6) 	Load constant 
1378:     ST  3,-3(1) 	Save index 
1379:    LDC  3,2(6) 	Load constant 
1380:     LD  4,-3(1) 	Restore index 
1381:    LDA  5,-1(0) 	Load address of base of array board
1382:    SUB  5,5,4 	Compute offset of value 
1383:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
1384:    LDC  3,1(6) 	Load constant 
1385:     ST  3,-2(1) 	Store variable blocked
* END compound statement
* ELSE
1376:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
1387:    LDC  3,3(6) 	Load constant 
1388:    LDA  4,-1(0) 	Load address of base of array board
1389:    SUB  3,4,3 	Compute offset of value 
1390:     LD  3,0(3) 	Load the value 
1391:     ST  3,-3(1) 	Save left side 
1392:    LDC  3,1(6) 	Load constant 
1393:     LD  4,-3(1) 	Load left into ac1 
1394:    SUB  4,4,3 	Op == 
1395:    LDC  3,1(6) 	True case 
1396:    JEQ  4,1(7) 	Jump if true 
1397:    LDC  3,0(6) 	False case 
1398:     ST  3,-3(1) 	Save left side 
1399:    LDC  3,4(6) 	Load constant 
1400:    LDA  4,-1(0) 	Load address of base of array board
1401:    SUB  3,4,3 	Compute offset of value 
1402:     LD  3,0(3) 	Load the value 
1403:     ST  3,-4(1) 	Save left side 
1404:    LDC  3,1(6) 	Load constant 
1405:     LD  4,-4(1) 	Load left into ac1 
1406:    SUB  4,4,3 	Op == 
1407:    LDC  3,1(6) 	True case 
1408:    JEQ  4,1(7) 	Jump if true 
1409:    LDC  3,0(6) 	False case 
1410:     LD  4,-3(1) 	Load left into ac1 
1411:    JEQ  3,1(7) 	Op AND 
1412:    LDA  3,0(4) 	 
1413:     ST  3,-3(1) 	Save left side 
1414:    LDC  3,2(6) 	Load constant 
1415:    LDA  4,-1(0) 	Load address of base of array board
1416:    SUB  3,4,3 	Compute offset of value 
1417:     LD  3,0(3) 	Load the value 
1418:     ST  3,-4(1) 	Save left side 
1419:    LDC  3,1(6) 	Load constant 
1420:     LD  4,-4(1) 	Load left into ac1 
1421:    SUB  4,4,3 	Op == 
1422:    LDC  3,1(6) 	True case 
1423:    JEQ  4,1(7) 	Jump if true 
1424:    LDC  3,0(6) 	False case 
1425:     ST  3,-4(1) 	Save left side 
1426:    LDC  3,8(6) 	Load constant 
1427:    LDA  4,-1(0) 	Load address of base of array board
1428:    SUB  3,4,3 	Compute offset of value 
1429:     LD  3,0(3) 	Load the value 
1430:     ST  3,-5(1) 	Save left side 
1431:    LDC  3,1(6) 	Load constant 
1432:     LD  4,-5(1) 	Load left into ac1 
1433:    SUB  4,4,3 	Op == 
1434:    LDC  3,1(6) 	True case 
1435:    JEQ  4,1(7) 	Jump if true 
1436:    LDC  3,0(6) 	False case 
1437:     LD  4,-4(1) 	Load left into ac1 
1438:    JEQ  3,1(7) 	Op AND 
1439:    LDA  3,0(4) 	 
1440:     LD  4,-3(1) 	Load left into ac1 
1441:    JGT  3,1(7) 	Op OR 
1442:    LDA  3,0(4) 	 
1443:     ST  3,-3(1) 	Save left side 
1444:    LDC  3,5(6) 	Load constant 
1445:    LDA  4,-1(0) 	Load address of base of array board
1446:    SUB  3,4,3 	Compute offset of value 
1447:     LD  3,0(3) 	Load the value 
1448:     ST  3,-4(1) 	Save left side 
1449:    LDC  3,1(6) 	Load constant 
1450:    LDC  4,0(6) 	Load 0 
1451:    SUB  3,4,3 	Op unary - 
1452:     LD  4,-4(1) 	Load left into ac1 
1453:    SUB  4,4,3 	Op == 
1454:    LDC  3,1(6) 	True case 
1455:    JEQ  4,1(7) 	Jump if true 
1456:    LDC  3,0(6) 	False case 
1457:     LD  4,-3(1) 	Load left into ac1 
1458:    JEQ  3,1(7) 	Op AND 
1459:    LDA  3,0(4) 	 
1460:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1462:    LDC  3,5(6) 	Load constant 
1463:     ST  3,-3(1) 	Save index 
1464:    LDC  3,2(6) 	Load constant 
1465:     LD  4,-3(1) 	Restore index 
1466:    LDA  5,-1(0) 	Load address of base of array board
1467:    SUB  5,5,4 	Compute offset of value 
1468:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
1469:    LDC  3,1(6) 	Load constant 
1470:     ST  3,-2(1) 	Store variable blocked
* END compound statement
* ELSE
1461:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
1472:    LDC  3,3(6) 	Load constant 
1473:    LDA  4,-1(0) 	Load address of base of array board
1474:    SUB  3,4,3 	Compute offset of value 
1475:     LD  3,0(3) 	Load the value 
1476:     ST  3,-3(1) 	Save left side 
1477:    LDC  3,1(6) 	Load constant 
1478:     LD  4,-3(1) 	Load left into ac1 
1479:    SUB  4,4,3 	Op == 
1480:    LDC  3,1(6) 	True case 
1481:    JEQ  4,1(7) 	Jump if true 
1482:    LDC  3,0(6) 	False case 
1483:     ST  3,-3(1) 	Save left side 
1484:    LDC  3,5(6) 	Load constant 
1485:    LDA  4,-1(0) 	Load address of base of array board
1486:    SUB  3,4,3 	Compute offset of value 
1487:     LD  3,0(3) 	Load the value 
1488:     ST  3,-4(1) 	Save left side 
1489:    LDC  3,1(6) 	Load constant 
1490:     LD  4,-4(1) 	Load left into ac1 
1491:    SUB  4,4,3 	Op == 
1492:    LDC  3,1(6) 	True case 
1493:    JEQ  4,1(7) 	Jump if true 
1494:    LDC  3,0(6) 	False case 
1495:     LD  4,-3(1) 	Load left into ac1 
1496:    JEQ  3,1(7) 	Op AND 
1497:    LDA  3,0(4) 	 
1498:     ST  3,-3(1) 	Save left side 
1499:    LDC  3,0(6) 	Load constant 
1500:    LDA  4,-1(0) 	Load address of base of array board
1501:    SUB  3,4,3 	Compute offset of value 
1502:     LD  3,0(3) 	Load the value 
1503:     ST  3,-4(1) 	Save left side 
1504:    LDC  3,1(6) 	Load constant 
1505:     LD  4,-4(1) 	Load left into ac1 
1506:    SUB  4,4,3 	Op == 
1507:    LDC  3,1(6) 	True case 
1508:    JEQ  4,1(7) 	Jump if true 
1509:    LDC  3,0(6) 	False case 
1510:     ST  3,-4(1) 	Save left side 
1511:    LDC  3,8(6) 	Load constant 
1512:    LDA  4,-1(0) 	Load address of base of array board
1513:    SUB  3,4,3 	Compute offset of value 
1514:     LD  3,0(3) 	Load the value 
1515:     ST  3,-5(1) 	Save left side 
1516:    LDC  3,1(6) 	Load constant 
1517:     LD  4,-5(1) 	Load left into ac1 
1518:    SUB  4,4,3 	Op == 
1519:    LDC  3,1(6) 	True case 
1520:    JEQ  4,1(7) 	Jump if true 
1521:    LDC  3,0(6) 	False case 
1522:     LD  4,-4(1) 	Load left into ac1 
1523:    JEQ  3,1(7) 	Op AND 
1524:    LDA  3,0(4) 	 
1525:     LD  4,-3(1) 	Load left into ac1 
1526:    JGT  3,1(7) 	Op OR 
1527:    LDA  3,0(4) 	 
1528:     ST  3,-3(1) 	Save left side 
1529:    LDC  3,2(6) 	Load constant 
1530:    LDA  4,-1(0) 	Load address of base of array board
1531:    SUB  3,4,3 	Compute offset of value 
1532:     LD  3,0(3) 	Load the value 
1533:     ST  3,-4(1) 	Save left side 
1534:    LDC  3,1(6) 	Load constant 
1535:     LD  4,-4(1) 	Load left into ac1 
1536:    SUB  4,4,3 	Op == 
1537:    LDC  3,1(6) 	True case 
1538:    JEQ  4,1(7) 	Jump if true 
1539:    LDC  3,0(6) 	False case 
1540:     ST  3,-4(1) 	Save left side 
1541:    LDC  3,6(6) 	Load constant 
1542:    LDA  4,-1(0) 	Load address of base of array board
1543:    SUB  3,4,3 	Compute offset of value 
1544:     LD  3,0(3) 	Load the value 
1545:     ST  3,-5(1) 	Save left side 
1546:    LDC  3,1(6) 	Load constant 
1547:     LD  4,-5(1) 	Load left into ac1 
1548:    SUB  4,4,3 	Op == 
1549:    LDC  3,1(6) 	True case 
1550:    JEQ  4,1(7) 	Jump if true 
1551:    LDC  3,0(6) 	False case 
1552:     LD  4,-4(1) 	Load left into ac1 
1553:    JEQ  3,1(7) 	Op AND 
1554:    LDA  3,0(4) 	 
1555:     LD  4,-3(1) 	Load left into ac1 
1556:    JGT  3,1(7) 	Op OR 
1557:    LDA  3,0(4) 	 
1558:     ST  3,-3(1) 	Save left side 
1559:    LDC  3,1(6) 	Load constant 
1560:    LDA  4,-1(0) 	Load address of base of array board
1561:    SUB  3,4,3 	Compute offset of value 
1562:     LD  3,0(3) 	Load the value 
1563:     ST  3,-4(1) 	Save left side 
1564:    LDC  3,1(6) 	Load constant 
1565:     LD  4,-4(1) 	Load left into ac1 
1566:    SUB  4,4,3 	Op == 
1567:    LDC  3,1(6) 	True case 
1568:    JEQ  4,1(7) 	Jump if true 
1569:    LDC  3,0(6) 	False case 
1570:     ST  3,-4(1) 	Save left side 
1571:    LDC  3,7(6) 	Load constant 
1572:    LDA  4,-1(0) 	Load address of base of array board
1573:    SUB  3,4,3 	Compute offset of value 
1574:     LD  3,0(3) 	Load the value 
1575:     ST  3,-5(1) 	Save left side 
1576:    LDC  3,1(6) 	Load constant 
1577:     LD  4,-5(1) 	Load left into ac1 
1578:    SUB  4,4,3 	Op == 
1579:    LDC  3,1(6) 	True case 
1580:    JEQ  4,1(7) 	Jump if true 
1581:    LDC  3,0(6) 	False case 
1582:     LD  4,-4(1) 	Load left into ac1 
1583:    JEQ  3,1(7) 	Op AND 
1584:    LDA  3,0(4) 	 
1585:     LD  4,-3(1) 	Load left into ac1 
1586:    JGT  3,1(7) 	Op OR 
1587:    LDA  3,0(4) 	 
1588:     ST  3,-3(1) 	Save left side 
1589:    LDC  3,4(6) 	Load constant 
1590:    LDA  4,-1(0) 	Load address of base of array board
1591:    SUB  3,4,3 	Compute offset of value 
1592:     LD  3,0(3) 	Load the value 
1593:     ST  3,-4(1) 	Save left side 
1594:    LDC  3,1(6) 	Load constant 
1595:    LDC  4,0(6) 	Load 0 
1596:    SUB  3,4,3 	Op unary - 
1597:     LD  4,-4(1) 	Load left into ac1 
1598:    SUB  4,4,3 	Op == 
1599:    LDC  3,1(6) 	True case 
1600:    JEQ  4,1(7) 	Jump if true 
1601:    LDC  3,0(6) 	False case 
1602:     LD  4,-3(1) 	Load left into ac1 
1603:    JEQ  3,1(7) 	Op AND 
1604:    LDA  3,0(4) 	 
1605:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1607:    LDC  3,4(6) 	Load constant 
1608:     ST  3,-3(1) 	Save index 
1609:    LDC  3,2(6) 	Load constant 
1610:     LD  4,-3(1) 	Restore index 
1611:    LDA  5,-1(0) 	Load address of base of array board
1612:    SUB  5,5,4 	Compute offset of value 
1613:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
1614:    LDC  3,1(6) 	Load constant 
1615:     ST  3,-2(1) 	Store variable blocked
* END compound statement
* ELSE
1606:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
1617:    LDC  3,4(6) 	Load constant 
1618:    LDA  4,-1(0) 	Load address of base of array board
1619:    SUB  3,4,3 	Compute offset of value 
1620:     LD  3,0(3) 	Load the value 
1621:     ST  3,-3(1) 	Save left side 
1622:    LDC  3,1(6) 	Load constant 
1623:     LD  4,-3(1) 	Load left into ac1 
1624:    SUB  4,4,3 	Op == 
1625:    LDC  3,1(6) 	True case 
1626:    JEQ  4,1(7) 	Jump if true 
1627:    LDC  3,0(6) 	False case 
1628:     ST  3,-3(1) 	Save left side 
1629:    LDC  3,5(6) 	Load constant 
1630:    LDA  4,-1(0) 	Load address of base of array board
1631:    SUB  3,4,3 	Compute offset of value 
1632:     LD  3,0(3) 	Load the value 
1633:     ST  3,-4(1) 	Save left side 
1634:    LDC  3,1(6) 	Load constant 
1635:     LD  4,-4(1) 	Load left into ac1 
1636:    SUB  4,4,3 	Op == 
1637:    LDC  3,1(6) 	True case 
1638:    JEQ  4,1(7) 	Jump if true 
1639:    LDC  3,0(6) 	False case 
1640:     LD  4,-3(1) 	Load left into ac1 
1641:    JEQ  3,1(7) 	Op AND 
1642:    LDA  3,0(4) 	 
1643:     ST  3,-3(1) 	Save left side 
1644:    LDC  3,0(6) 	Load constant 
1645:    LDA  4,-1(0) 	Load address of base of array board
1646:    SUB  3,4,3 	Compute offset of value 
1647:     LD  3,0(3) 	Load the value 
1648:     ST  3,-4(1) 	Save left side 
1649:    LDC  3,1(6) 	Load constant 
1650:     LD  4,-4(1) 	Load left into ac1 
1651:    SUB  4,4,3 	Op == 
1652:    LDC  3,1(6) 	True case 
1653:    JEQ  4,1(7) 	Jump if true 
1654:    LDC  3,0(6) 	False case 
1655:     ST  3,-4(1) 	Save left side 
1656:    LDC  3,6(6) 	Load constant 
1657:    LDA  4,-1(0) 	Load address of base of array board
1658:    SUB  3,4,3 	Compute offset of value 
1659:     LD  3,0(3) 	Load the value 
1660:     ST  3,-5(1) 	Save left side 
1661:    LDC  3,1(6) 	Load constant 
1662:     LD  4,-5(1) 	Load left into ac1 
1663:    SUB  4,4,3 	Op == 
1664:    LDC  3,1(6) 	True case 
1665:    JEQ  4,1(7) 	Jump if true 
1666:    LDC  3,0(6) 	False case 
1667:     LD  4,-4(1) 	Load left into ac1 
1668:    JEQ  3,1(7) 	Op AND 
1669:    LDA  3,0(4) 	 
1670:     LD  4,-3(1) 	Load left into ac1 
1671:    JGT  3,1(7) 	Op OR 
1672:    LDA  3,0(4) 	 
1673:     ST  3,-3(1) 	Save left side 
1674:    LDC  3,3(6) 	Load constant 
1675:    LDA  4,-1(0) 	Load address of base of array board
1676:    SUB  3,4,3 	Compute offset of value 
1677:     LD  3,0(3) 	Load the value 
1678:     ST  3,-4(1) 	Save left side 
1679:    LDC  3,1(6) 	Load constant 
1680:    LDC  4,0(6) 	Load 0 
1681:    SUB  3,4,3 	Op unary - 
1682:     LD  4,-4(1) 	Load left into ac1 
1683:    SUB  4,4,3 	Op == 
1684:    LDC  3,1(6) 	True case 
1685:    JEQ  4,1(7) 	Jump if true 
1686:    LDC  3,0(6) 	False case 
1687:     LD  4,-3(1) 	Load left into ac1 
1688:    JEQ  3,1(7) 	Op AND 
1689:    LDA  3,0(4) 	 
1690:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1692:    LDC  3,3(6) 	Load constant 
1693:     ST  3,-3(1) 	Save index 
1694:    LDC  3,2(6) 	Load constant 
1695:     LD  4,-3(1) 	Restore index 
1696:    LDA  5,-1(0) 	Load address of base of array board
1697:    SUB  5,5,4 	Compute offset of value 
1698:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
1699:    LDC  3,1(6) 	Load constant 
1700:     ST  3,-2(1) 	Store variable blocked
* END compound statement
* ELSE
1691:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
1702:    LDC  3,6(6) 	Load constant 
1703:    LDA  4,-1(0) 	Load address of base of array board
1704:    SUB  3,4,3 	Compute offset of value 
1705:     LD  3,0(3) 	Load the value 
1706:     ST  3,-3(1) 	Save left side 
1707:    LDC  3,1(6) 	Load constant 
1708:     LD  4,-3(1) 	Load left into ac1 
1709:    SUB  4,4,3 	Op == 
1710:    LDC  3,1(6) 	True case 
1711:    JEQ  4,1(7) 	Jump if true 
1712:    LDC  3,0(6) 	False case 
1713:     ST  3,-3(1) 	Save left side 
1714:    LDC  3,7(6) 	Load constant 
1715:    LDA  4,-1(0) 	Load address of base of array board
1716:    SUB  3,4,3 	Compute offset of value 
1717:     LD  3,0(3) 	Load the value 
1718:     ST  3,-4(1) 	Save left side 
1719:    LDC  3,1(6) 	Load constant 
1720:     LD  4,-4(1) 	Load left into ac1 
1721:    SUB  4,4,3 	Op == 
1722:    LDC  3,1(6) 	True case 
1723:    JEQ  4,1(7) 	Jump if true 
1724:    LDC  3,0(6) 	False case 
1725:     LD  4,-3(1) 	Load left into ac1 
1726:    JEQ  3,1(7) 	Op AND 
1727:    LDA  3,0(4) 	 
1728:     ST  3,-3(1) 	Save left side 
1729:    LDC  3,0(6) 	Load constant 
1730:    LDA  4,-1(0) 	Load address of base of array board
1731:    SUB  3,4,3 	Compute offset of value 
1732:     LD  3,0(3) 	Load the value 
1733:     ST  3,-4(1) 	Save left side 
1734:    LDC  3,1(6) 	Load constant 
1735:     LD  4,-4(1) 	Load left into ac1 
1736:    SUB  4,4,3 	Op == 
1737:    LDC  3,1(6) 	True case 
1738:    JEQ  4,1(7) 	Jump if true 
1739:    LDC  3,0(6) 	False case 
1740:     ST  3,-4(1) 	Save left side 
1741:    LDC  3,4(6) 	Load constant 
1742:    LDA  4,-1(0) 	Load address of base of array board
1743:    SUB  3,4,3 	Compute offset of value 
1744:     LD  3,0(3) 	Load the value 
1745:     ST  3,-5(1) 	Save left side 
1746:    LDC  3,1(6) 	Load constant 
1747:     LD  4,-5(1) 	Load left into ac1 
1748:    SUB  4,4,3 	Op == 
1749:    LDC  3,1(6) 	True case 
1750:    JEQ  4,1(7) 	Jump if true 
1751:    LDC  3,0(6) 	False case 
1752:     LD  4,-4(1) 	Load left into ac1 
1753:    JEQ  3,1(7) 	Op AND 
1754:    LDA  3,0(4) 	 
1755:     LD  4,-3(1) 	Load left into ac1 
1756:    JGT  3,1(7) 	Op OR 
1757:    LDA  3,0(4) 	 
1758:     ST  3,-3(1) 	Save left side 
1759:    LDC  3,2(6) 	Load constant 
1760:    LDA  4,-1(0) 	Load address of base of array board
1761:    SUB  3,4,3 	Compute offset of value 
1762:     LD  3,0(3) 	Load the value 
1763:     ST  3,-4(1) 	Save left side 
1764:    LDC  3,1(6) 	Load constant 
1765:     LD  4,-4(1) 	Load left into ac1 
1766:    SUB  4,4,3 	Op == 
1767:    LDC  3,1(6) 	True case 
1768:    JEQ  4,1(7) 	Jump if true 
1769:    LDC  3,0(6) 	False case 
1770:     ST  3,-4(1) 	Save left side 
1771:    LDC  3,5(6) 	Load constant 
1772:    LDA  4,-1(0) 	Load address of base of array board
1773:    SUB  3,4,3 	Compute offset of value 
1774:     LD  3,0(3) 	Load the value 
1775:     ST  3,-5(1) 	Save left side 
1776:    LDC  3,1(6) 	Load constant 
1777:     LD  4,-5(1) 	Load left into ac1 
1778:    SUB  4,4,3 	Op == 
1779:    LDC  3,1(6) 	True case 
1780:    JEQ  4,1(7) 	Jump if true 
1781:    LDC  3,0(6) 	False case 
1782:     LD  4,-4(1) 	Load left into ac1 
1783:    JEQ  3,1(7) 	Op AND 
1784:    LDA  3,0(4) 	 
1785:     LD  4,-3(1) 	Load left into ac1 
1786:    JGT  3,1(7) 	Op OR 
1787:    LDA  3,0(4) 	 
1788:     ST  3,-3(1) 	Save left side 
1789:    LDC  3,8(6) 	Load constant 
1790:    LDA  4,-1(0) 	Load address of base of array board
1791:    SUB  3,4,3 	Compute offset of value 
1792:     LD  3,0(3) 	Load the value 
1793:     ST  3,-4(1) 	Save left side 
1794:    LDC  3,1(6) 	Load constant 
1795:    LDC  4,0(6) 	Load 0 
1796:    SUB  3,4,3 	Op unary - 
1797:     LD  4,-4(1) 	Load left into ac1 
1798:    SUB  4,4,3 	Op == 
1799:    LDC  3,1(6) 	True case 
1800:    JEQ  4,1(7) 	Jump if true 
1801:    LDC  3,0(6) 	False case 
1802:     LD  4,-3(1) 	Load left into ac1 
1803:    JEQ  3,1(7) 	Op AND 
1804:    LDA  3,0(4) 	 
1805:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1807:    LDC  3,8(6) 	Load constant 
1808:     ST  3,-3(1) 	Save index 
1809:    LDC  3,2(6) 	Load constant 
1810:     LD  4,-3(1) 	Restore index 
1811:    LDA  5,-1(0) 	Load address of base of array board
1812:    SUB  5,5,4 	Compute offset of value 
1813:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
1814:    LDC  3,1(6) 	Load constant 
1815:     ST  3,-2(1) 	Store variable blocked
* END compound statement
* ELSE
1806:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
1817:    LDC  3,6(6) 	Load constant 
1818:    LDA  4,-1(0) 	Load address of base of array board
1819:    SUB  3,4,3 	Compute offset of value 
1820:     LD  3,0(3) 	Load the value 
1821:     ST  3,-3(1) 	Save left side 
1822:    LDC  3,1(6) 	Load constant 
1823:     LD  4,-3(1) 	Load left into ac1 
1824:    SUB  4,4,3 	Op == 
1825:    LDC  3,1(6) 	True case 
1826:    JEQ  4,1(7) 	Jump if true 
1827:    LDC  3,0(6) 	False case 
1828:     ST  3,-3(1) 	Save left side 
1829:    LDC  3,8(6) 	Load constant 
1830:    LDA  4,-1(0) 	Load address of base of array board
1831:    SUB  3,4,3 	Compute offset of value 
1832:     LD  3,0(3) 	Load the value 
1833:     ST  3,-4(1) 	Save left side 
1834:    LDC  3,1(6) 	Load constant 
1835:     LD  4,-4(1) 	Load left into ac1 
1836:    SUB  4,4,3 	Op == 
1837:    LDC  3,1(6) 	True case 
1838:    JEQ  4,1(7) 	Jump if true 
1839:    LDC  3,0(6) 	False case 
1840:     LD  4,-3(1) 	Load left into ac1 
1841:    JEQ  3,1(7) 	Op AND 
1842:    LDA  3,0(4) 	 
1843:     ST  3,-3(1) 	Save left side 
1844:    LDC  3,4(6) 	Load constant 
1845:    LDA  4,-1(0) 	Load address of base of array board
1846:    SUB  3,4,3 	Compute offset of value 
1847:     LD  3,0(3) 	Load the value 
1848:     ST  3,-4(1) 	Save left side 
1849:    LDC  3,1(6) 	Load constant 
1850:     LD  4,-4(1) 	Load left into ac1 
1851:    SUB  4,4,3 	Op == 
1852:    LDC  3,1(6) 	True case 
1853:    JEQ  4,1(7) 	Jump if true 
1854:    LDC  3,0(6) 	False case 
1855:     ST  3,-4(1) 	Save left side 
1856:    LDC  3,1(6) 	Load constant 
1857:    LDA  4,-1(0) 	Load address of base of array board
1858:    SUB  3,4,3 	Compute offset of value 
1859:     LD  3,0(3) 	Load the value 
1860:     ST  3,-5(1) 	Save left side 
1861:    LDC  3,1(6) 	Load constant 
1862:     LD  4,-5(1) 	Load left into ac1 
1863:    SUB  4,4,3 	Op == 
1864:    LDC  3,1(6) 	True case 
1865:    JEQ  4,1(7) 	Jump if true 
1866:    LDC  3,0(6) 	False case 
1867:     LD  4,-4(1) 	Load left into ac1 
1868:    JEQ  3,1(7) 	Op AND 
1869:    LDA  3,0(4) 	 
1870:     LD  4,-3(1) 	Load left into ac1 
1871:    JGT  3,1(7) 	Op OR 
1872:    LDA  3,0(4) 	 
1873:     ST  3,-3(1) 	Save left side 
1874:    LDC  3,7(6) 	Load constant 
1875:    LDA  4,-1(0) 	Load address of base of array board
1876:    SUB  3,4,3 	Compute offset of value 
1877:     LD  3,0(3) 	Load the value 
1878:     ST  3,-4(1) 	Save left side 
1879:    LDC  3,1(6) 	Load constant 
1880:    LDC  4,0(6) 	Load 0 
1881:    SUB  3,4,3 	Op unary - 
1882:     LD  4,-4(1) 	Load left into ac1 
1883:    SUB  4,4,3 	Op == 
1884:    LDC  3,1(6) 	True case 
1885:    JEQ  4,1(7) 	Jump if true 
1886:    LDC  3,0(6) 	False case 
1887:     LD  4,-3(1) 	Load left into ac1 
1888:    JEQ  3,1(7) 	Op AND 
1889:    LDA  3,0(4) 	 
1890:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
1892:    LDC  3,7(6) 	Load constant 
1893:     ST  3,-3(1) 	Save index 
1894:    LDC  3,2(6) 	Load constant 
1895:     LD  4,-3(1) 	Restore index 
1896:    LDA  5,-1(0) 	Load address of base of array board
1897:    SUB  5,5,4 	Compute offset of value 
1898:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
1899:    LDC  3,1(6) 	Load constant 
1900:     ST  3,-2(1) 	Store variable blocked
* END compound statement
* ELSE
1891:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
1902:    LDC  3,7(6) 	Load constant 
1903:    LDA  4,-1(0) 	Load address of base of array board
1904:    SUB  3,4,3 	Compute offset of value 
1905:     LD  3,0(3) 	Load the value 
1906:     ST  3,-3(1) 	Save left side 
1907:    LDC  3,1(6) 	Load constant 
1908:     LD  4,-3(1) 	Load left into ac1 
1909:    SUB  4,4,3 	Op == 
1910:    LDC  3,1(6) 	True case 
1911:    JEQ  4,1(7) 	Jump if true 
1912:    LDC  3,0(6) 	False case 
1913:     ST  3,-3(1) 	Save left side 
1914:    LDC  3,8(6) 	Load constant 
1915:    LDA  4,-1(0) 	Load address of base of array board
1916:    SUB  3,4,3 	Compute offset of value 
1917:     LD  3,0(3) 	Load the value 
1918:     ST  3,-4(1) 	Save left side 
1919:    LDC  3,1(6) 	Load constant 
1920:     LD  4,-4(1) 	Load left into ac1 
1921:    SUB  4,4,3 	Op == 
1922:    LDC  3,1(6) 	True case 
1923:    JEQ  4,1(7) 	Jump if true 
1924:    LDC  3,0(6) 	False case 
1925:     LD  4,-3(1) 	Load left into ac1 
1926:    JEQ  3,1(7) 	Op AND 
1927:    LDA  3,0(4) 	 
1928:     ST  3,-3(1) 	Save left side 
1929:    LDC  3,4(6) 	Load constant 
1930:    LDA  4,-1(0) 	Load address of base of array board
1931:    SUB  3,4,3 	Compute offset of value 
1932:     LD  3,0(3) 	Load the value 
1933:     ST  3,-4(1) 	Save left side 
1934:    LDC  3,1(6) 	Load constant 
1935:     LD  4,-4(1) 	Load left into ac1 
1936:    SUB  4,4,3 	Op == 
1937:    LDC  3,1(6) 	True case 
1938:    JEQ  4,1(7) 	Jump if true 
1939:    LDC  3,0(6) 	False case 
1940:     ST  3,-4(1) 	Save left side 
1941:    LDC  3,2(6) 	Load constant 
1942:    LDA  4,-1(0) 	Load address of base of array board
1943:    SUB  3,4,3 	Compute offset of value 
1944:     LD  3,0(3) 	Load the value 
1945:     ST  3,-5(1) 	Save left side 
1946:    LDC  3,1(6) 	Load constant 
1947:     LD  4,-5(1) 	Load left into ac1 
1948:    SUB  4,4,3 	Op == 
1949:    LDC  3,1(6) 	True case 
1950:    JEQ  4,1(7) 	Jump if true 
1951:    LDC  3,0(6) 	False case 
1952:     LD  4,-4(1) 	Load left into ac1 
1953:    JEQ  3,1(7) 	Op AND 
1954:    LDA  3,0(4) 	 
1955:     LD  4,-3(1) 	Load left into ac1 
1956:    JGT  3,1(7) 	Op OR 
1957:    LDA  3,0(4) 	 
1958:     ST  3,-3(1) 	Save left side 
1959:    LDC  3,0(6) 	Load constant 
1960:    LDA  4,-1(0) 	Load address of base of array board
1961:    SUB  3,4,3 	Compute offset of value 
1962:     LD  3,0(3) 	Load the value 
1963:     ST  3,-4(1) 	Save left side 
1964:    LDC  3,1(6) 	Load constant 
1965:     LD  4,-4(1) 	Load left into ac1 
1966:    SUB  4,4,3 	Op == 
1967:    LDC  3,1(6) 	True case 
1968:    JEQ  4,1(7) 	Jump if true 
1969:    LDC  3,0(6) 	False case 
1970:     ST  3,-4(1) 	Save left side 
1971:    LDC  3,3(6) 	Load constant 
1972:    LDA  4,-1(0) 	Load address of base of array board
1973:    SUB  3,4,3 	Compute offset of value 
1974:     LD  3,0(3) 	Load the value 
1975:     ST  3,-5(1) 	Save left side 
1976:    LDC  3,1(6) 	Load constant 
1977:     LD  4,-5(1) 	Load left into ac1 
1978:    SUB  4,4,3 	Op == 
1979:    LDC  3,1(6) 	True case 
1980:    JEQ  4,1(7) 	Jump if true 
1981:    LDC  3,0(6) 	False case 
1982:     LD  4,-4(1) 	Load left into ac1 
1983:    JEQ  3,1(7) 	Op AND 
1984:    LDA  3,0(4) 	 
1985:     LD  4,-3(1) 	Load left into ac1 
1986:    JGT  3,1(7) 	Op OR 
1987:    LDA  3,0(4) 	 
1988:     ST  3,-3(1) 	Save left side 
1989:    LDC  3,6(6) 	Load constant 
1990:    LDA  4,-1(0) 	Load address of base of array board
1991:    SUB  3,4,3 	Compute offset of value 
1992:     LD  3,0(3) 	Load the value 
1993:     ST  3,-4(1) 	Save left side 
1994:    LDC  3,1(6) 	Load constant 
1995:    LDC  4,0(6) 	Load 0 
1996:    SUB  3,4,3 	Op unary - 
1997:     LD  4,-4(1) 	Load left into ac1 
1998:    SUB  4,4,3 	Op == 
1999:    LDC  3,1(6) 	True case 
2000:    JEQ  4,1(7) 	Jump if true 
2001:    LDC  3,0(6) 	False case 
2002:     LD  4,-3(1) 	Load left into ac1 
2003:    JEQ  3,1(7) 	Op AND 
2004:    LDA  3,0(4) 	 
2005:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
2007:    LDC  3,6(6) 	Load constant 
2008:     ST  3,-3(1) 	Save index 
2009:    LDC  3,2(6) 	Load constant 
2010:     LD  4,-3(1) 	Restore index 
2011:    LDA  5,-1(0) 	Load address of base of array board
2012:    SUB  5,5,4 	Compute offset of value 
2013:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
2014:    LDC  3,1(6) 	Load constant 
2015:     ST  3,-2(1) 	Store variable blocked
* END compound statement
2006:    LDA  7,9(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
1901:    LDA  7,114(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
1816:    LDA  7,199(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
1701:    LDA  7,314(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
1616:    LDA  7,399(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
1471:    LDA  7,544(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
1386:    LDA  7,629(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
1271:    LDA  7,744(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
1186:    LDA  7,829(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* RETURN
2016:     LD  3,-2(1) 	Load variable blocked
2017:    LDA  2,0(3) 	Copy result to rt register 
2018:     LD  3,-1(1) 	Load return address 
2019:     LD  1,0(1) 	Adjust fp 
2020:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
2021:    LDC  2,0(6) 	Set return value to 0 
2022:     LD  3,-1(1) 	Load return address 
2023:     LD  1,0(1) 	Adjust fp 
2024:    LDA  7,0(3) 	Return 
* END of function blockplayer
* BEGIN function placey
2025:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
*                       Begin call to  win
2026:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to win
2027:    LDA  1,-2(1) 	Load address of new frame 
2028:    LDA  3,1(7) 	Return address in ac 
2029:    LDA  7,-1929(7) 	CALL win
2030:    LDA  3,0(2) 	Save the result in ac 
*                       End call to win
2031:    LDC  4,1(6) 	Load 1 
2032:    SUB  3,4,3 	Op NOT 
2033:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* IF
*                       Begin call to  blockplayer
2035:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to blockplayer
2036:    LDA  1,-2(1) 	Load address of new frame 
2037:    LDA  3,1(7) 	Return address in ac 
2038:    LDA  7,-970(7) 	CALL blockplayer
2039:    LDA  3,0(2) 	Save the result in ac 
*                       End call to blockplayer
2040:    LDC  4,1(6) 	Load 1 
2041:    SUB  3,4,3 	Op NOT 
2042:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  move
2044:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to move
2045:    LDA  1,-2(1) 	Load address of new frame 
2046:    LDA  3,1(7) 	Return address in ac 
2047:    LDA  7,-2006(7) 	CALL move
2048:    LDA  3,0(2) 	Save the result in ac 
*                       End call to move
* END compound statement
2043:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
2034:    LDA  7,14(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
2049:    LDC  2,0(6) 	Set return value to 0 
2050:     LD  3,-1(1) 	Load return address 
2051:     LD  1,0(1) 	Adjust fp 
2052:    LDA  7,0(3) 	Return 
* END of function placey
* BEGIN function xingrid
2053:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
2054:    LDC  3,0(6) 	Load constant 
2055:     ST  3,-3(1) 	Store variable retval
* IF
2056:     LD  3,-2(1) 	Load variable x
2057:     ST  3,-4(1) 	Save left side 
2058:    LDC  3,0(6) 	Load constant 
2059:     LD  4,-4(1) 	Load left into ac1 
2060:    SUB  4,4,3 	Op >= 
2061:    LDC  3,1(6) 	True case 
2062:    JGE  4,1(7) 	Jump if true 
2063:    LDC  3,0(6) 	False case 
2064:     ST  3,-4(1) 	Save left side 
2065:     LD  3,-2(1) 	Load variable x
2066:     ST  3,-5(1) 	Save left side 
2067:    LDC  3,8(6) 	Load constant 
2068:     LD  4,-5(1) 	Load left into ac1 
2069:    SUB  4,4,3 	Op <= 
2070:    LDC  3,1(6) 	True case 
2071:    JLE  4,1(7) 	Jump if true 
2072:    LDC  3,0(6) 	False case 
2073:     LD  4,-4(1) 	Load left into ac1 
2074:    JEQ  3,1(7) 	Op AND 
2075:    LDA  3,0(4) 	 
2076:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* IF
2078:     LD  3,-2(1) 	Load variable x
2079:    LDA  4,-1(0) 	Load address of base of array board
2080:    SUB  3,4,3 	Compute offset of value 
2081:     LD  3,0(3) 	Load the value 
2082:     ST  3,-4(1) 	Save left side 
2083:    LDC  3,1(6) 	Load constant 
2084:     LD  4,-4(1) 	Load left into ac1 
2085:    SUB  3,4,3 	Op != 
2086:    JEQ  3,1(7) 	Jump if true 
2087:    LDC  3,1(6) 	True case 
2088:     ST  3,-4(1) 	Save left side 
2089:     LD  3,-2(1) 	Load variable x
2090:    LDA  4,-1(0) 	Load address of base of array board
2091:    SUB  3,4,3 	Compute offset of value 
2092:     LD  3,0(3) 	Load the value 
2093:     ST  3,-5(1) 	Save left side 
2094:    LDC  3,2(6) 	Load constant 
2095:     LD  4,-5(1) 	Load left into ac1 
2096:    SUB  3,4,3 	Op != 
2097:    JEQ  3,1(7) 	Jump if true 
2098:    LDC  3,1(6) 	True case 
2099:     LD  4,-4(1) 	Load left into ac1 
2100:    JEQ  3,1(7) 	Op AND 
2101:    LDA  3,0(4) 	 
2102:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
2104:     LD  3,-2(1) 	Load variable x
2105:     ST  3,-4(1) 	Save index 
2106:    LDC  3,1(6) 	Load constant 
2107:     LD  4,-4(1) 	Restore index 
2108:    LDA  5,-1(0) 	Load address of base of array board
2109:    SUB  5,5,4 	Compute offset of value 
2110:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
2111:    LDC  3,1(6) 	Load constant 
2112:     ST  3,-3(1) 	Store variable retval
* END compound statement
2103:    LDA  7,9(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
2077:    LDA  7,35(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
2113:     LD  3,-3(1) 	Load variable retval
2114:    LDA  2,0(3) 	Copy result to rt register 
2115:     LD  3,-1(1) 	Load return address 
2116:     LD  1,0(1) 	Adjust fp 
2117:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
2118:    LDC  2,0(6) 	Set return value to 0 
2119:     LD  3,-1(1) 	Load return address 
2120:     LD  1,0(1) 	Adjust fp 
2121:    LDA  7,0(3) 	Return 
* END of function xingrid
* BEGIN function printboard
2122:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
2123:    LDC  3,0(6) 	Load constant 
2124:     ST  3,-2(1) 	Store variable i
* WHILE
2125:     LD  3,-2(1) 	Load variable i
2126:     ST  3,-3(1) 	Save left side 
2127:    LDC  3,9(6) 	Load constant 
2128:     LD  4,-3(1) 	Load left into ac1 
2129:    SUB  4,4,3 	Op < 
2130:    LDC  3,1(6) 	True case 
2131:    JLT  4,1(7) 	Jump if true 
2132:    LDC  3,0(6) 	False case 
2133:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
2135:     LD  3,-2(1) 	Load variable i
2136:    LDA  4,-1(0) 	Load address of base of array board
2137:    SUB  3,4,3 	Compute offset of value 
2138:     LD  3,0(3) 	Load the value 
2139:     ST  3,-3(1) 	Save left side 
2140:    LDC  3,1(6) 	Load constant 
2141:     LD  4,-3(1) 	Load left into ac1 
2142:    SUB  4,4,3 	Op == 
2143:    LDC  3,1(6) 	True case 
2144:    JEQ  4,1(7) 	Jump if true 
2145:    LDC  3,0(6) 	False case 
2146:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outputb
2148:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
2149:    LDC  3,1(6) 	Load constant 
2150:     ST  3,-5(1) 	Store parameter 
*                       Jump to outputb
2151:    LDA  1,-3(1) 	Load address of new frame 
2152:    LDA  3,1(7) 	Return address in ac 
2153:    LDA  7,-2136(7) 	CALL outputb
2154:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* END compound statement
* ELSE
2147:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* IF
2156:     LD  3,-2(1) 	Load variable i
2157:    LDA  4,-1(0) 	Load address of base of array board
2158:    SUB  3,4,3 	Compute offset of value 
2159:     LD  3,0(3) 	Load the value 
2160:     ST  3,-3(1) 	Save left side 
2161:    LDC  3,2(6) 	Load constant 
2162:     LD  4,-3(1) 	Load left into ac1 
2163:    SUB  4,4,3 	Op == 
2164:    LDC  3,1(6) 	True case 
2165:    JEQ  4,1(7) 	Jump if true 
2166:    LDC  3,0(6) 	False case 
2167:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outputb
2169:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
2170:    LDC  3,0(6) 	Load constant 
2171:     ST  3,-5(1) 	Store parameter 
*                       Jump to outputb
2172:    LDA  1,-3(1) 	Load address of new frame 
2173:    LDA  3,1(7) 	Return address in ac 
2174:    LDA  7,-2157(7) 	CALL outputb
2175:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* END compound statement
* ELSE
2168:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
2177:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
2178:     LD  3,-2(1) 	Load variable i
2179:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
2180:    LDA  1,-3(1) 	Load address of new frame 
2181:    LDA  3,1(7) 	Return address in ac 
2182:    LDA  7,-2177(7) 	CALL output
2183:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* END compound statement
2176:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
2155:    LDA  7,28(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
2184:     LD  3,-2(1) 	Load variable i
2185:     ST  3,-3(1) 	Save left side 
2186:    LDC  3,2(6) 	Load constant 
2187:     LD  4,-3(1) 	Load left into ac1 
2188:    SUB  4,4,3 	Op == 
2189:    LDC  3,1(6) 	True case 
2190:    JEQ  4,1(7) 	Jump if true 
2191:    LDC  3,0(6) 	False case 
2192:     ST  3,-3(1) 	Save left side 
2193:     LD  3,-2(1) 	Load variable i
2194:     ST  3,-4(1) 	Save left side 
2195:    LDC  3,5(6) 	Load constant 
2196:     LD  4,-4(1) 	Load left into ac1 
2197:    SUB  4,4,3 	Op == 
2198:    LDC  3,1(6) 	True case 
2199:    JEQ  4,1(7) 	Jump if true 
2200:    LDC  3,0(6) 	False case 
2201:     LD  4,-3(1) 	Load left into ac1 
2202:    JGT  3,1(7) 	Op OR 
2203:    LDA  3,0(4) 	 
2204:     ST  3,-3(1) 	Save left side 
2205:     LD  3,-2(1) 	Load variable i
2206:     ST  3,-4(1) 	Save left side 
2207:    LDC  3,8(6) 	Load constant 
2208:     LD  4,-4(1) 	Load left into ac1 
2209:    SUB  4,4,3 	Op == 
2210:    LDC  3,1(6) 	True case 
2211:    JEQ  4,1(7) 	Jump if true 
2212:    LDC  3,0(6) 	False case 
2213:     LD  4,-3(1) 	Load left into ac1 
2214:    JGT  3,1(7) 	Op OR 
2215:    LDA  3,0(4) 	 
2216:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outnl
2218:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
2219:    LDA  1,-3(1) 	Load address of new frame 
2220:    LDA  3,1(7) 	Return address in ac 
2221:    LDA  7,-2185(7) 	CALL outnl
2222:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
2217:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
2223:     LD  3,-2(1) 	load lhs variable i
2224:    LDA  3,1(3) 	increment value of i
2225:     ST  3,-2(1) 	Store variable i
* END compound statement
2226:    LDA  7,-102(7) 	go to beginning of loop 
2134:    LDA  7,92(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
2227:    LDC  2,0(6) 	Set return value to 0 
2228:     LD  3,-1(1) 	Load return address 
2229:     LD  1,0(1) 	Adjust fp 
2230:    LDA  7,0(3) 	Return 
* END of function printboard
* BEGIN function finished
2231:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
2232:    LDC  3,0(6) 	Load constant 
2233:     ST  3,-2(1) 	Store variable i
* IF
2234:    LDC  3,0(6) 	Load constant 
2235:    LDA  4,-1(0) 	Load address of base of array board
2236:    SUB  3,4,3 	Compute offset of value 
2237:     LD  3,0(3) 	Load the value 
2238:     ST  3,-3(1) 	Save left side 
2239:    LDC  3,1(6) 	Load constant 
2240:    LDC  4,0(6) 	Load 0 
2241:    SUB  3,4,3 	Op unary - 
2242:     LD  4,-3(1) 	Load left into ac1 
2243:    SUB  3,4,3 	Op != 
2244:    JEQ  3,1(7) 	Jump if true 
2245:    LDC  3,1(6) 	True case 
2246:     ST  3,-3(1) 	Save left side 
2247:    LDC  3,0(6) 	Load constant 
2248:    LDA  4,-1(0) 	Load address of base of array board
2249:    SUB  3,4,3 	Compute offset of value 
2250:     LD  3,0(3) 	Load the value 
2251:     ST  3,-4(1) 	Save left side 
2252:    LDC  3,1(6) 	Load constant 
2253:    LDA  4,-1(0) 	Load address of base of array board
2254:    SUB  3,4,3 	Compute offset of value 
2255:     LD  3,0(3) 	Load the value 
2256:     LD  4,-4(1) 	Load left into ac1 
2257:    SUB  4,4,3 	Op == 
2258:    LDC  3,1(6) 	True case 
2259:    JEQ  4,1(7) 	Jump if true 
2260:    LDC  3,0(6) 	False case 
2261:     ST  3,-4(1) 	Save left side 
2262:    LDC  3,0(6) 	Load constant 
2263:    LDA  4,-1(0) 	Load address of base of array board
2264:    SUB  3,4,3 	Compute offset of value 
2265:     LD  3,0(3) 	Load the value 
2266:     ST  3,-5(1) 	Save left side 
2267:    LDC  3,2(6) 	Load constant 
2268:    LDA  4,-1(0) 	Load address of base of array board
2269:    SUB  3,4,3 	Compute offset of value 
2270:     LD  3,0(3) 	Load the value 
2271:     LD  4,-5(1) 	Load left into ac1 
2272:    SUB  4,4,3 	Op == 
2273:    LDC  3,1(6) 	True case 
2274:    JEQ  4,1(7) 	Jump if true 
2275:    LDC  3,0(6) 	False case 
2276:     LD  4,-4(1) 	Load left into ac1 
2277:    JEQ  3,1(7) 	Op AND 
2278:    LDA  3,0(4) 	 
2279:     ST  3,-4(1) 	Save left side 
2280:    LDC  3,0(6) 	Load constant 
2281:    LDA  4,-1(0) 	Load address of base of array board
2282:    SUB  3,4,3 	Compute offset of value 
2283:     LD  3,0(3) 	Load the value 
2284:     ST  3,-5(1) 	Save left side 
2285:    LDC  3,4(6) 	Load constant 
2286:    LDA  4,-1(0) 	Load address of base of array board
2287:    SUB  3,4,3 	Compute offset of value 
2288:     LD  3,0(3) 	Load the value 
2289:     LD  4,-5(1) 	Load left into ac1 
2290:    SUB  4,4,3 	Op == 
2291:    LDC  3,1(6) 	True case 
2292:    JEQ  4,1(7) 	Jump if true 
2293:    LDC  3,0(6) 	False case 
2294:     ST  3,-5(1) 	Save left side 
2295:    LDC  3,0(6) 	Load constant 
2296:    LDA  4,-1(0) 	Load address of base of array board
2297:    SUB  3,4,3 	Compute offset of value 
2298:     LD  3,0(3) 	Load the value 
2299:     ST  3,-6(1) 	Save left side 
2300:    LDC  3,8(6) 	Load constant 
2301:    LDA  4,-1(0) 	Load address of base of array board
2302:    SUB  3,4,3 	Compute offset of value 
2303:     LD  3,0(3) 	Load the value 
2304:     LD  4,-6(1) 	Load left into ac1 
2305:    SUB  4,4,3 	Op == 
2306:    LDC  3,1(6) 	True case 
2307:    JEQ  4,1(7) 	Jump if true 
2308:    LDC  3,0(6) 	False case 
2309:     LD  4,-5(1) 	Load left into ac1 
2310:    JEQ  3,1(7) 	Op AND 
2311:    LDA  3,0(4) 	 
2312:     LD  4,-4(1) 	Load left into ac1 
2313:    JGT  3,1(7) 	Op OR 
2314:    LDA  3,0(4) 	 
2315:     ST  3,-4(1) 	Save left side 
2316:    LDC  3,0(6) 	Load constant 
2317:    LDA  4,-1(0) 	Load address of base of array board
2318:    SUB  3,4,3 	Compute offset of value 
2319:     LD  3,0(3) 	Load the value 
2320:     ST  3,-5(1) 	Save left side 
2321:    LDC  3,3(6) 	Load constant 
2322:    LDA  4,-1(0) 	Load address of base of array board
2323:    SUB  3,4,3 	Compute offset of value 
2324:     LD  3,0(3) 	Load the value 
2325:     LD  4,-5(1) 	Load left into ac1 
2326:    SUB  4,4,3 	Op == 
2327:    LDC  3,1(6) 	True case 
2328:    JEQ  4,1(7) 	Jump if true 
2329:    LDC  3,0(6) 	False case 
2330:     ST  3,-5(1) 	Save left side 
2331:    LDC  3,0(6) 	Load constant 
2332:    LDA  4,-1(0) 	Load address of base of array board
2333:    SUB  3,4,3 	Compute offset of value 
2334:     LD  3,0(3) 	Load the value 
2335:     ST  3,-6(1) 	Save left side 
2336:    LDC  3,6(6) 	Load constant 
2337:    LDA  4,-1(0) 	Load address of base of array board
2338:    SUB  3,4,3 	Compute offset of value 
2339:     LD  3,0(3) 	Load the value 
2340:     LD  4,-6(1) 	Load left into ac1 
2341:    SUB  4,4,3 	Op == 
2342:    LDC  3,1(6) 	True case 
2343:    JEQ  4,1(7) 	Jump if true 
2344:    LDC  3,0(6) 	False case 
2345:     LD  4,-5(1) 	Load left into ac1 
2346:    JEQ  3,1(7) 	Op AND 
2347:    LDA  3,0(4) 	 
2348:     LD  4,-4(1) 	Load left into ac1 
2349:    JGT  3,1(7) 	Op OR 
2350:    LDA  3,0(4) 	 
2351:     LD  4,-3(1) 	Load left into ac1 
2352:    JEQ  3,1(7) 	Op AND 
2353:    LDA  3,0(4) 	 
2354:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* RETURN
2356:    LDC  3,1(6) 	Load constant 
2357:    LDA  2,0(3) 	Copy result to rt register 
2358:     LD  3,-1(1) 	Load return address 
2359:     LD  1,0(1) 	Adjust fp 
2360:    LDA  7,0(3) 	Return 
* END compound statement
2355:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
2361:    LDC  3,1(6) 	Load constant 
2362:    LDA  4,-1(0) 	Load address of base of array board
2363:    SUB  3,4,3 	Compute offset of value 
2364:     LD  3,0(3) 	Load the value 
2365:     ST  3,-3(1) 	Save left side 
2366:    LDC  3,1(6) 	Load constant 
2367:    LDC  4,0(6) 	Load 0 
2368:    SUB  3,4,3 	Op unary - 
2369:     LD  4,-3(1) 	Load left into ac1 
2370:    SUB  3,4,3 	Op != 
2371:    JEQ  3,1(7) 	Jump if true 
2372:    LDC  3,1(6) 	True case 
2373:     ST  3,-3(1) 	Save left side 
2374:    LDC  3,1(6) 	Load constant 
2375:    LDA  4,-1(0) 	Load address of base of array board
2376:    SUB  3,4,3 	Compute offset of value 
2377:     LD  3,0(3) 	Load the value 
2378:     ST  3,-4(1) 	Save left side 
2379:    LDC  3,4(6) 	Load constant 
2380:    LDA  4,-1(0) 	Load address of base of array board
2381:    SUB  3,4,3 	Compute offset of value 
2382:     LD  3,0(3) 	Load the value 
2383:     LD  4,-4(1) 	Load left into ac1 
2384:    SUB  4,4,3 	Op == 
2385:    LDC  3,1(6) 	True case 
2386:    JEQ  4,1(7) 	Jump if true 
2387:    LDC  3,0(6) 	False case 
2388:     ST  3,-4(1) 	Save left side 
2389:    LDC  3,1(6) 	Load constant 
2390:    LDA  4,-1(0) 	Load address of base of array board
2391:    SUB  3,4,3 	Compute offset of value 
2392:     LD  3,0(3) 	Load the value 
2393:     ST  3,-5(1) 	Save left side 
2394:    LDC  3,7(6) 	Load constant 
2395:    LDA  4,-1(0) 	Load address of base of array board
2396:    SUB  3,4,3 	Compute offset of value 
2397:     LD  3,0(3) 	Load the value 
2398:     LD  4,-5(1) 	Load left into ac1 
2399:    SUB  4,4,3 	Op == 
2400:    LDC  3,1(6) 	True case 
2401:    JEQ  4,1(7) 	Jump if true 
2402:    LDC  3,0(6) 	False case 
2403:     LD  4,-4(1) 	Load left into ac1 
2404:    JEQ  3,1(7) 	Op AND 
2405:    LDA  3,0(4) 	 
2406:     LD  4,-3(1) 	Load left into ac1 
2407:    JEQ  3,1(7) 	Op AND 
2408:    LDA  3,0(4) 	 
2409:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* RETURN
2411:    LDC  3,1(6) 	Load constant 
2412:    LDA  2,0(3) 	Copy result to rt register 
2413:     LD  3,-1(1) 	Load return address 
2414:     LD  1,0(1) 	Adjust fp 
2415:    LDA  7,0(3) 	Return 
* END compound statement
2410:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
2416:    LDC  3,2(6) 	Load constant 
2417:    LDA  4,-1(0) 	Load address of base of array board
2418:    SUB  3,4,3 	Compute offset of value 
2419:     LD  3,0(3) 	Load the value 
2420:     ST  3,-3(1) 	Save left side 
2421:    LDC  3,1(6) 	Load constant 
2422:    LDC  4,0(6) 	Load 0 
2423:    SUB  3,4,3 	Op unary - 
2424:     LD  4,-3(1) 	Load left into ac1 
2425:    SUB  3,4,3 	Op != 
2426:    JEQ  3,1(7) 	Jump if true 
2427:    LDC  3,1(6) 	True case 
2428:     ST  3,-3(1) 	Save left side 
2429:    LDC  3,2(6) 	Load constant 
2430:    LDA  4,-1(0) 	Load address of base of array board
2431:    SUB  3,4,3 	Compute offset of value 
2432:     LD  3,0(3) 	Load the value 
2433:     ST  3,-4(1) 	Save left side 
2434:    LDC  3,4(6) 	Load constant 
2435:    LDA  4,-1(0) 	Load address of base of array board
2436:    SUB  3,4,3 	Compute offset of value 
2437:     LD  3,0(3) 	Load the value 
2438:     LD  4,-4(1) 	Load left into ac1 
2439:    SUB  4,4,3 	Op == 
2440:    LDC  3,1(6) 	True case 
2441:    JEQ  4,1(7) 	Jump if true 
2442:    LDC  3,0(6) 	False case 
2443:     ST  3,-4(1) 	Save left side 
2444:    LDC  3,2(6) 	Load constant 
2445:    LDA  4,-1(0) 	Load address of base of array board
2446:    SUB  3,4,3 	Compute offset of value 
2447:     LD  3,0(3) 	Load the value 
2448:     ST  3,-5(1) 	Save left side 
2449:    LDC  3,6(6) 	Load constant 
2450:    LDA  4,-1(0) 	Load address of base of array board
2451:    SUB  3,4,3 	Compute offset of value 
2452:     LD  3,0(3) 	Load the value 
2453:     LD  4,-5(1) 	Load left into ac1 
2454:    SUB  4,4,3 	Op == 
2455:    LDC  3,1(6) 	True case 
2456:    JEQ  4,1(7) 	Jump if true 
2457:    LDC  3,0(6) 	False case 
2458:     LD  4,-4(1) 	Load left into ac1 
2459:    JEQ  3,1(7) 	Op AND 
2460:    LDA  3,0(4) 	 
2461:     ST  3,-4(1) 	Save left side 
2462:    LDC  3,2(6) 	Load constant 
2463:    LDA  4,-1(0) 	Load address of base of array board
2464:    SUB  3,4,3 	Compute offset of value 
2465:     LD  3,0(3) 	Load the value 
2466:     ST  3,-5(1) 	Save left side 
2467:    LDC  3,5(6) 	Load constant 
2468:    LDA  4,-1(0) 	Load address of base of array board
2469:    SUB  3,4,3 	Compute offset of value 
2470:     LD  3,0(3) 	Load the value 
2471:     LD  4,-5(1) 	Load left into ac1 
2472:    SUB  4,4,3 	Op == 
2473:    LDC  3,1(6) 	True case 
2474:    JEQ  4,1(7) 	Jump if true 
2475:    LDC  3,0(6) 	False case 
2476:     ST  3,-5(1) 	Save left side 
2477:    LDC  3,2(6) 	Load constant 
2478:    LDA  4,-1(0) 	Load address of base of array board
2479:    SUB  3,4,3 	Compute offset of value 
2480:     LD  3,0(3) 	Load the value 
2481:     ST  3,-6(1) 	Save left side 
2482:    LDC  3,8(6) 	Load constant 
2483:    LDA  4,-1(0) 	Load address of base of array board
2484:    SUB  3,4,3 	Compute offset of value 
2485:     LD  3,0(3) 	Load the value 
2486:     LD  4,-6(1) 	Load left into ac1 
2487:    SUB  4,4,3 	Op == 
2488:    LDC  3,1(6) 	True case 
2489:    JEQ  4,1(7) 	Jump if true 
2490:    LDC  3,0(6) 	False case 
2491:     LD  4,-5(1) 	Load left into ac1 
2492:    JEQ  3,1(7) 	Op AND 
2493:    LDA  3,0(4) 	 
2494:     LD  4,-4(1) 	Load left into ac1 
2495:    JGT  3,1(7) 	Op OR 
2496:    LDA  3,0(4) 	 
2497:     LD  4,-3(1) 	Load left into ac1 
2498:    JEQ  3,1(7) 	Op AND 
2499:    LDA  3,0(4) 	 
2500:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* RETURN
2502:    LDC  3,1(6) 	Load constant 
2503:    LDA  2,0(3) 	Copy result to rt register 
2504:     LD  3,-1(1) 	Load return address 
2505:     LD  1,0(1) 	Adjust fp 
2506:    LDA  7,0(3) 	Return 
* END compound statement
2501:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
2507:    LDC  3,3(6) 	Load constant 
2508:    LDA  4,-1(0) 	Load address of base of array board
2509:    SUB  3,4,3 	Compute offset of value 
2510:     LD  3,0(3) 	Load the value 
2511:     ST  3,-3(1) 	Save left side 
2512:    LDC  3,1(6) 	Load constant 
2513:    LDC  4,0(6) 	Load 0 
2514:    SUB  3,4,3 	Op unary - 
2515:     LD  4,-3(1) 	Load left into ac1 
2516:    SUB  3,4,3 	Op != 
2517:    JEQ  3,1(7) 	Jump if true 
2518:    LDC  3,1(6) 	True case 
2519:     ST  3,-3(1) 	Save left side 
2520:    LDC  3,3(6) 	Load constant 
2521:    LDA  4,-1(0) 	Load address of base of array board
2522:    SUB  3,4,3 	Compute offset of value 
2523:     LD  3,0(3) 	Load the value 
2524:     ST  3,-4(1) 	Save left side 
2525:    LDC  3,4(6) 	Load constant 
2526:    LDA  4,-1(0) 	Load address of base of array board
2527:    SUB  3,4,3 	Compute offset of value 
2528:     LD  3,0(3) 	Load the value 
2529:     LD  4,-4(1) 	Load left into ac1 
2530:    SUB  4,4,3 	Op == 
2531:    LDC  3,1(6) 	True case 
2532:    JEQ  4,1(7) 	Jump if true 
2533:    LDC  3,0(6) 	False case 
2534:     ST  3,-4(1) 	Save left side 
2535:    LDC  3,3(6) 	Load constant 
2536:    LDA  4,-1(0) 	Load address of base of array board
2537:    SUB  3,4,3 	Compute offset of value 
2538:     LD  3,0(3) 	Load the value 
2539:     ST  3,-5(1) 	Save left side 
2540:    LDC  3,5(6) 	Load constant 
2541:    LDA  4,-1(0) 	Load address of base of array board
2542:    SUB  3,4,3 	Compute offset of value 
2543:     LD  3,0(3) 	Load the value 
2544:     LD  4,-5(1) 	Load left into ac1 
2545:    SUB  4,4,3 	Op == 
2546:    LDC  3,1(6) 	True case 
2547:    JEQ  4,1(7) 	Jump if true 
2548:    LDC  3,0(6) 	False case 
2549:     LD  4,-4(1) 	Load left into ac1 
2550:    JEQ  3,1(7) 	Op AND 
2551:    LDA  3,0(4) 	 
2552:     LD  4,-3(1) 	Load left into ac1 
2553:    JEQ  3,1(7) 	Op AND 
2554:    LDA  3,0(4) 	 
2555:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* RETURN
2557:    LDC  3,1(6) 	Load constant 
2558:    LDA  2,0(3) 	Copy result to rt register 
2559:     LD  3,-1(1) 	Load return address 
2560:     LD  1,0(1) 	Adjust fp 
2561:    LDA  7,0(3) 	Return 
* END compound statement
2556:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
2562:    LDC  3,6(6) 	Load constant 
2563:    LDA  4,-1(0) 	Load address of base of array board
2564:    SUB  3,4,3 	Compute offset of value 
2565:     LD  3,0(3) 	Load the value 
2566:     ST  3,-3(1) 	Save left side 
2567:    LDC  3,1(6) 	Load constant 
2568:    LDC  4,0(6) 	Load 0 
2569:    SUB  3,4,3 	Op unary - 
2570:     LD  4,-3(1) 	Load left into ac1 
2571:    SUB  3,4,3 	Op != 
2572:    JEQ  3,1(7) 	Jump if true 
2573:    LDC  3,1(6) 	True case 
2574:     ST  3,-3(1) 	Save left side 
2575:    LDC  3,6(6) 	Load constant 
2576:    LDA  4,-1(0) 	Load address of base of array board
2577:    SUB  3,4,3 	Compute offset of value 
2578:     LD  3,0(3) 	Load the value 
2579:     ST  3,-4(1) 	Save left side 
2580:    LDC  3,7(6) 	Load constant 
2581:    LDA  4,-1(0) 	Load address of base of array board
2582:    SUB  3,4,3 	Compute offset of value 
2583:     LD  3,0(3) 	Load the value 
2584:     LD  4,-4(1) 	Load left into ac1 
2585:    SUB  4,4,3 	Op == 
2586:    LDC  3,1(6) 	True case 
2587:    JEQ  4,1(7) 	Jump if true 
2588:    LDC  3,0(6) 	False case 
2589:     ST  3,-4(1) 	Save left side 
2590:    LDC  3,6(6) 	Load constant 
2591:    LDA  4,-1(0) 	Load address of base of array board
2592:    SUB  3,4,3 	Compute offset of value 
2593:     LD  3,0(3) 	Load the value 
2594:     ST  3,-5(1) 	Save left side 
2595:    LDC  3,8(6) 	Load constant 
2596:    LDA  4,-1(0) 	Load address of base of array board
2597:    SUB  3,4,3 	Compute offset of value 
2598:     LD  3,0(3) 	Load the value 
2599:     LD  4,-5(1) 	Load left into ac1 
2600:    SUB  4,4,3 	Op == 
2601:    LDC  3,1(6) 	True case 
2602:    JEQ  4,1(7) 	Jump if true 
2603:    LDC  3,0(6) 	False case 
2604:     LD  4,-4(1) 	Load left into ac1 
2605:    JEQ  3,1(7) 	Op AND 
2606:    LDA  3,0(4) 	 
2607:     LD  4,-3(1) 	Load left into ac1 
2608:    JEQ  3,1(7) 	Op AND 
2609:    LDA  3,0(4) 	 
2610:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* RETURN
2612:    LDC  3,1(6) 	Load constant 
2613:    LDA  2,0(3) 	Copy result to rt register 
2614:     LD  3,-1(1) 	Load return address 
2615:     LD  1,0(1) 	Adjust fp 
2616:    LDA  7,0(3) 	Return 
* END compound statement
2611:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* WHILE
2617:     LD  3,-2(1) 	Load variable i
2618:    LDA  4,-1(0) 	Load address of base of array board
2619:    SUB  3,4,3 	Compute offset of value 
2620:     LD  3,0(3) 	Load the value 
2621:     ST  3,-3(1) 	Save left side 
2622:    LDC  3,1(6) 	Load constant 
2623:    LDC  4,0(6) 	Load 0 
2624:    SUB  3,4,3 	Op unary - 
2625:     LD  4,-3(1) 	Load left into ac1 
2626:    SUB  3,4,3 	Op != 
2627:    JEQ  3,1(7) 	Jump if true 
2628:    LDC  3,1(6) 	True case 
2629:     ST  3,-3(1) 	Save left side 
2630:     LD  3,-2(1) 	Load variable i
2631:     ST  3,-4(1) 	Save left side 
2632:    LDC  3,9(6) 	Load constant 
2633:     LD  4,-4(1) 	Load left into ac1 
2634:    SUB  4,4,3 	Op < 
2635:    LDC  3,1(6) 	True case 
2636:    JLT  4,1(7) 	Jump if true 
2637:    LDC  3,0(6) 	False case 
2638:     LD  4,-3(1) 	Load left into ac1 
2639:    JEQ  3,1(7) 	Op AND 
2640:    LDA  3,0(4) 	 
2641:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
2643:     LD  3,-2(1) 	load lhs variable i
2644:    LDA  3,1(3) 	increment value of i
2645:     ST  3,-2(1) 	Store variable i
* END compound statement
2646:    LDA  7,-30(7) 	go to beginning of loop 
2642:    LDA  7,4(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
2647:     LD  3,-2(1) 	Load variable i
2648:     ST  3,-3(1) 	Save left side 
2649:    LDC  3,9(6) 	Load constant 
2650:     LD  4,-3(1) 	Load left into ac1 
2651:    SUB  4,4,3 	Op == 
2652:    LDC  3,1(6) 	True case 
2653:    JEQ  4,1(7) 	Jump if true 
2654:    LDC  3,0(6) 	False case 
2655:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* RETURN
2657:    LDC  3,1(6) 	Load constant 
2658:    LDA  2,0(3) 	Copy result to rt register 
2659:     LD  3,-1(1) 	Load return address 
2660:     LD  1,0(1) 	Adjust fp 
2661:    LDA  7,0(3) 	Return 
* END compound statement
* ELSE
2656:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* RETURN
2663:    LDC  3,0(6) 	Load constant 
2664:    LDA  2,0(3) 	Copy result to rt register 
2665:     LD  3,-1(1) 	Load return address 
2666:     LD  1,0(1) 	Adjust fp 
2667:    LDA  7,0(3) 	Return 
* END compound statement
2662:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
2668:    LDC  2,0(6) 	Set return value to 0 
2669:     LD  3,-1(1) 	Load return address 
2670:     LD  1,0(1) 	Adjust fp 
2671:    LDA  7,0(3) 	Return 
* END of function finished
* BEGIN function playgame
2672:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
2673:    LDC  3,9(6) 	Load constant 
2674:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
*                       Begin call to  outnl
2675:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
2676:    LDA  1,-3(1) 	Load address of new frame 
2677:    LDA  3,1(7) 	Return address in ac 
2678:    LDA  7,-2642(7) 	CALL outnl
2679:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  printboard
2680:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to printboard
2681:    LDA  1,-3(1) 	Load address of new frame 
2682:    LDA  3,1(7) 	Return address in ac 
2683:    LDA  7,-562(7) 	CALL printboard
2684:    LDA  3,0(2) 	Save the result in ac 
*                       End call to printboard
* WHILE
*                       Begin call to  finished
2685:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to finished
2686:    LDA  1,-3(1) 	Load address of new frame 
2687:    LDA  3,1(7) 	Return address in ac 
2688:    LDA  7,-458(7) 	CALL finished
2689:    LDA  3,0(2) 	Save the result in ac 
*                       End call to finished
2690:    LDC  4,1(6) 	Load 1 
2691:    SUB  3,4,3 	Op NOT 
2692:     ST  3,-3(1) 	Save left side 
2693:     LD  3,-10(0) 	Load variable gamenotdone
2694:     ST  3,-4(1) 	Save left side 
2695:    LDC  3,1(6) 	Load constant 
2696:     LD  4,-4(1) 	Load left into ac1 
2697:    SUB  4,4,3 	Op == 
2698:    LDC  3,1(6) 	True case 
2699:    JEQ  4,1(7) 	Jump if true 
2700:    LDC  3,0(6) 	False case 
2701:     LD  4,-3(1) 	Load left into ac1 
2702:    JEQ  3,1(7) 	Op AND 
2703:    LDA  3,0(4) 	 
2704:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  input
2706:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to input
2707:    LDA  1,-3(1) 	Load address of new frame 
2708:    LDA  3,1(7) 	Return address in ac 
2709:    LDA  7,-2709(7) 	CALL input
2710:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
2711:     ST  3,-2(1) 	Store variable x
* IF
*                       Begin call to  xingrid
2712:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
2713:     LD  3,-2(1) 	Load variable x
2714:     ST  3,-5(1) 	Store parameter 
*                       Jump to xingrid
2715:    LDA  1,-3(1) 	Load address of new frame 
2716:    LDA  3,1(7) 	Return address in ac 
2717:    LDA  7,-665(7) 	CALL xingrid
2718:    LDA  3,0(2) 	Save the result in ac 
*                       End call to xingrid
2719:     ST  3,-3(1) 	Save left side 
*                       Begin call to  finished
2720:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to finished
2721:    LDA  1,-4(1) 	Load address of new frame 
2722:    LDA  3,1(7) 	Return address in ac 
2723:    LDA  7,-493(7) 	CALL finished
2724:    LDA  3,0(2) 	Save the result in ac 
*                       End call to finished
2725:    LDC  4,1(6) 	Load 1 
2726:    SUB  3,4,3 	Op NOT 
2727:     LD  4,-3(1) 	Load left into ac1 
2728:    JEQ  3,1(7) 	Op AND 
2729:    LDA  3,0(4) 	 
2730:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  placey
2732:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to placey
2733:    LDA  1,-3(1) 	Load address of new frame 
2734:    LDA  3,1(7) 	Return address in ac 
2735:    LDA  7,-711(7) 	CALL placey
2736:    LDA  3,0(2) 	Save the result in ac 
*                       End call to placey
* EXPRESSION STMT
*                       Begin call to  outnl
2737:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
2738:    LDA  1,-3(1) 	Load address of new frame 
2739:    LDA  3,1(7) 	Return address in ac 
2740:    LDA  7,-2704(7) 	CALL outnl
2741:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  printboard
2742:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to printboard
2743:    LDA  1,-3(1) 	Load address of new frame 
2744:    LDA  3,1(7) 	Return address in ac 
2745:    LDA  7,-624(7) 	CALL printboard
2746:    LDA  3,0(2) 	Save the result in ac 
*                       End call to printboard
* EXPRESSION STMT
*                       Begin call to  outnl
2747:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
2748:    LDA  1,-3(1) 	Load address of new frame 
2749:    LDA  3,1(7) 	Return address in ac 
2750:    LDA  7,-2714(7) 	CALL outnl
2751:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
2731:    LDA  7,20(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
2752:    LDA  7,-68(7) 	go to beginning of loop 
2705:    LDA  7,47(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
2753:    LDC  2,0(6) 	Set return value to 0 
2754:     LD  3,-1(1) 	Load return address 
2755:     LD  1,0(1) 	Adjust fp 
2756:    LDA  7,0(3) 	Return 
* END of function playgame
* BEGIN function main
2757:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
2758:    LDC  3,0(6) 	Load constant 
2759:     ST  3,-2(1) 	Store variable i
* WHILE
2760:     LD  3,-2(1) 	Load variable i
2761:     ST  3,-3(1) 	Save left side 
2762:    LDC  3,9(6) 	Load constant 
2763:     LD  4,-3(1) 	Load left into ac1 
2764:    SUB  4,4,3 	Op < 
2765:    LDC  3,1(6) 	True case 
2766:    JLT  4,1(7) 	Jump if true 
2767:    LDC  3,0(6) 	False case 
2768:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
2770:     LD  3,-2(1) 	Load variable i
2771:     ST  3,-3(1) 	Save index 
2772:    LDC  3,1(6) 	Load constant 
2773:    LDC  4,0(6) 	Load 0 
2774:    SUB  3,4,3 	Op unary - 
2775:     LD  4,-3(1) 	Restore index 
2776:    LDA  5,-1(0) 	Load address of base of array board
2777:    SUB  5,5,4 	Compute offset of value 
2778:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
2779:     LD  3,-2(1) 	load lhs variable i
2780:    LDA  3,1(3) 	increment value of i
2781:     ST  3,-2(1) 	Store variable i
* END compound statement
2782:    LDA  7,-23(7) 	go to beginning of loop 
2769:    LDA  7,13(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
2783:    LDC  3,1(6) 	Load constant 
2784:     ST  3,-10(0) 	Store variable gamenotdone
* EXPRESSION STMT
*                       Begin call to  playgame
2785:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to playgame
2786:    LDA  1,-3(1) 	Load address of new frame 
2787:    LDA  3,1(7) 	Return address in ac 
2788:    LDA  7,-117(7) 	CALL playgame
2789:    LDA  3,0(2) 	Save the result in ac 
*                       End call to playgame
* EXPRESSION STMT
*                       Begin call to  outnl
2790:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
2791:    LDA  1,-3(1) 	Load address of new frame 
2792:    LDA  3,1(7) 	Return address in ac 
2793:    LDA  7,-2757(7) 	CALL outnl
2794:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  printboard
2795:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to printboard
2796:    LDA  1,-3(1) 	Load address of new frame 
2797:    LDA  3,1(7) 	Return address in ac 
2798:    LDA  7,-677(7) 	CALL printboard
2799:    LDA  3,0(2) 	Save the result in ac 
*                       End call to printboard
* EXPRESSION STMT
*                       Begin call to  outnl
2800:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
2801:    LDA  1,-3(1) 	Load address of new frame 
2802:    LDA  3,1(7) 	Return address in ac 
2803:    LDA  7,-2767(7) 	CALL outnl
2804:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
2805:    LDC  2,0(6) 	Set return value to 0 
2806:     LD  3,-1(1) 	Load return address 
2807:     LD  1,0(1) 	Adjust fp 
2808:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,2808(7) 	Jump to init [backpatch] 
* BEGIN Init
2809:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
2810:    LDC  3,9(6) 	load size of array board
2811:     ST  3,0(0) 	save size of array board
* END init of globals
2812:    LDA  1,-11(0) 	set first frame at end of globals 
2813:     ST  1,0(1) 	store old fp (point to self) 
2814:    LDA  3,1(7) 	Return address in ac 
2815:    LDA  7,-59(7) 	Jump to main 
2816:   HALT  0,0,0 	DONE! 
* END Init
