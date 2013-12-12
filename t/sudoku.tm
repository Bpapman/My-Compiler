* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  sudoku.c-
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
* BEGIN function initBoard
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:    LDC  3,0(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable i
* WHILE
 45:     LD  3,-2(1) 	Load variable i
 46:     ST  3,-3(1) 	Save left side 
 47:    LDC  3,81(6) 	Load constant 
 48:     LD  4,-3(1) 	Load left into ac1 
 49:    SUB  4,4,3 	Op < 
 50:    LDC  3,1(6) 	True case 
 51:    JLT  4,1(7) 	Jump if true 
 52:    LDC  3,0(6) 	False case 
 53:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 55:     LD  3,-2(1) 	Load variable i
 56:     ST  3,-3(1) 	Save index 
 57:    LDC  3,0(6) 	Load constant 
 58:     LD  4,-3(1) 	Restore index 
 59:    LDA  5,-1(0) 	Load address of base of array board
 60:    SUB  5,5,4 	Compute offset of value 
 61:     ST  3,0(5) 	Store variable board
* EXPRESSION STMT
 62:     LD  3,-2(1) 	Load variable i
 63:     ST  3,-3(1) 	Save index 
 64:    LDC  3,0(6) 	Load constant 
 65:     LD  4,-3(1) 	Restore index 
 66:    LDA  5,-83(0) 	Load address of base of array locked
 67:    SUB  5,5,4 	Compute offset of value 
 68:     ST  3,0(5) 	Store variable locked
* EXPRESSION STMT
 69:     LD  3,-2(1) 	load lhs variable i
 70:    LDA  3,1(3) 	increment value of i
 71:     ST  3,-2(1) 	Store variable i
* END compound statement
 72:    LDA  7,-28(7) 	go to beginning of loop 
 54:    LDA  7,18(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
 73:    LDC  2,0(6) 	Set return value to 0 
 74:     LD  3,-1(1) 	Load return address 
 75:     LD  1,0(1) 	Adjust fp 
 76:    LDA  7,0(3) 	Return 
* END of function initBoard
* BEGIN function setValue
 77:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 78:     LD  3,-2(1) 	Load variable row
 79:     ST  3,-5(1) 	Save left side 
 80:    LDC  3,9(6) 	Load constant 
 81:     LD  4,-5(1) 	Load left into ac1 
 82:    MUL  3,4,3 	Op * 
 83:     ST  3,-5(1) 	Save left side 
 84:     LD  3,-3(1) 	Load variable col
 85:     LD  4,-5(1) 	Load left into ac1 
 86:    ADD  3,4,3 	Op + 
 87:     ST  3,-5(1) 	Save index 
 88:     LD  3,-4(1) 	Load variable value
 89:     LD  4,-5(1) 	Restore index 
 90:    LDA  5,-1(0) 	Load address of base of array board
 91:    SUB  5,5,4 	Compute offset of value 
 92:     ST  3,0(5) 	Store variable board
* END compound statement
* Add standard closing in case there is no return statement
 93:    LDC  2,0(6) 	Set return value to 0 
 94:     LD  3,-1(1) 	Load return address 
 95:     LD  1,0(1) 	Adjust fp 
 96:    LDA  7,0(3) 	Return 
* END of function setValue
* BEGIN function getValue
 97:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
 98:     LD  3,-2(1) 	Load variable row
 99:     ST  3,-4(1) 	Save left side 
100:    LDC  3,9(6) 	Load constant 
101:     LD  4,-4(1) 	Load left into ac1 
102:    MUL  3,4,3 	Op * 
103:     ST  3,-4(1) 	Save left side 
104:     LD  3,-3(1) 	Load variable col
105:     LD  4,-4(1) 	Load left into ac1 
106:    ADD  3,4,3 	Op + 
107:    LDA  4,-1(0) 	Load address of base of array board
108:    SUB  3,4,3 	Compute offset of value 
109:     LD  3,0(3) 	Load the value 
110:    LDA  2,0(3) 	Copy result to rt register 
111:     LD  3,-1(1) 	Load return address 
112:     LD  1,0(1) 	Adjust fp 
113:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
114:    LDC  2,0(6) 	Set return value to 0 
115:     LD  3,-1(1) 	Load return address 
116:     LD  1,0(1) 	Adjust fp 
117:    LDA  7,0(3) 	Return 
* END of function getValue
* BEGIN function setLocked
118:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
119:     LD  3,-2(1) 	Load variable row
120:     ST  3,-5(1) 	Save left side 
121:    LDC  3,9(6) 	Load constant 
122:     LD  4,-5(1) 	Load left into ac1 
123:    MUL  3,4,3 	Op * 
124:     ST  3,-5(1) 	Save left side 
125:     LD  3,-3(1) 	Load variable col
126:     LD  4,-5(1) 	Load left into ac1 
127:    ADD  3,4,3 	Op + 
128:     ST  3,-5(1) 	Save index 
129:     LD  3,-4(1) 	Load variable value
130:     LD  4,-5(1) 	Restore index 
131:    LDA  5,-83(0) 	Load address of base of array locked
132:    SUB  5,5,4 	Compute offset of value 
133:     ST  3,0(5) 	Store variable locked
* END compound statement
* Add standard closing in case there is no return statement
134:    LDC  2,0(6) 	Set return value to 0 
135:     LD  3,-1(1) 	Load return address 
136:     LD  1,0(1) 	Adjust fp 
137:    LDA  7,0(3) 	Return 
* END of function setLocked
* BEGIN function getLocked
138:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
139:     LD  3,-2(1) 	Load variable row
140:     ST  3,-4(1) 	Save left side 
141:    LDC  3,9(6) 	Load constant 
142:     LD  4,-4(1) 	Load left into ac1 
143:    MUL  3,4,3 	Op * 
144:     ST  3,-4(1) 	Save left side 
145:     LD  3,-3(1) 	Load variable col
146:     LD  4,-4(1) 	Load left into ac1 
147:    ADD  3,4,3 	Op + 
148:    LDA  4,-83(0) 	Load address of base of array locked
149:    SUB  3,4,3 	Compute offset of value 
150:     LD  3,0(3) 	Load the value 
151:    LDA  2,0(3) 	Copy result to rt register 
152:     LD  3,-1(1) 	Load return address 
153:     LD  1,0(1) 	Adjust fp 
154:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
155:    LDC  2,0(6) 	Set return value to 0 
156:     LD  3,-1(1) 	Load return address 
157:     LD  1,0(1) 	Adjust fp 
158:    LDA  7,0(3) 	Return 
* END of function getLocked
* BEGIN function isOkAt
159:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
160:    LDC  3,0(6) 	Load constant 
161:     ST  3,-5(1) 	Store variable i
* WHILE
162:     LD  3,-5(1) 	Load variable i
163:     ST  3,-9(1) 	Save left side 
164:    LDC  3,9(6) 	Load constant 
165:     LD  4,-9(1) 	Load left into ac1 
166:    SUB  4,4,3 	Op < 
167:    LDC  3,1(6) 	True case 
168:    JLT  4,1(7) 	Jump if true 
169:    LDC  3,0(6) 	False case 
170:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
*                       Begin call to  getValue
172:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
173:     LD  3,-5(1) 	Load variable i
174:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
175:     LD  3,-3(1) 	Load variable col
176:     ST  3,-12(1) 	Store parameter 
*                       Jump to getValue
177:    LDA  1,-9(1) 	Load address of new frame 
178:    LDA  3,1(7) 	Return address in ac 
179:    LDA  7,-83(7) 	CALL getValue
180:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getValue
181:     ST  3,-9(1) 	Save left side 
182:     LD  3,-4(1) 	Load variable value
183:     LD  4,-9(1) 	Load left into ac1 
184:    SUB  4,4,3 	Op == 
185:    LDC  3,1(6) 	True case 
186:    JEQ  4,1(7) 	Jump if true 
187:    LDC  3,0(6) 	False case 
188:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
190:    LDC  3,0(6) 	Load constant 
191:    LDA  2,0(3) 	Copy result to rt register 
192:     LD  3,-1(1) 	Load return address 
193:     LD  1,0(1) 	Adjust fp 
194:    LDA  7,0(3) 	Return 
189:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
*                       Begin call to  getValue
195:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
196:     LD  3,-2(1) 	Load variable row
197:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
198:     LD  3,-5(1) 	Load variable i
199:     ST  3,-12(1) 	Store parameter 
*                       Jump to getValue
200:    LDA  1,-9(1) 	Load address of new frame 
201:    LDA  3,1(7) 	Return address in ac 
202:    LDA  7,-106(7) 	CALL getValue
203:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getValue
204:     ST  3,-9(1) 	Save left side 
205:     LD  3,-4(1) 	Load variable value
206:     LD  4,-9(1) 	Load left into ac1 
207:    SUB  4,4,3 	Op == 
208:    LDC  3,1(6) 	True case 
209:    JEQ  4,1(7) 	Jump if true 
210:    LDC  3,0(6) 	False case 
211:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
213:    LDC  3,0(6) 	Load constant 
214:    LDA  2,0(3) 	Copy result to rt register 
215:     LD  3,-1(1) 	Load return address 
216:     LD  1,0(1) 	Adjust fp 
217:    LDA  7,0(3) 	Return 
212:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
218:     LD  3,-5(1) 	load lhs variable i
219:    LDA  3,1(3) 	increment value of i
220:     ST  3,-5(1) 	Store variable i
* END compound statement
221:    LDA  7,-60(7) 	go to beginning of loop 
171:    LDA  7,50(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
222:     LD  3,-2(1) 	Load variable row
223:     ST  3,-9(1) 	Save left side 
224:    LDC  3,3(6) 	Load constant 
225:     LD  4,-9(1) 	Load left into ac1 
226:    DIV  3,4,3 	Op / 
227:     ST  3,-9(1) 	Save left side 
228:    LDC  3,3(6) 	Load constant 
229:     LD  4,-9(1) 	Load left into ac1 
230:    MUL  3,4,3 	Op * 
231:     ST  3,-7(1) 	Store variable boxRowStart
* EXPRESSION STMT
232:     LD  3,-3(1) 	Load variable col
233:     ST  3,-9(1) 	Save left side 
234:    LDC  3,3(6) 	Load constant 
235:     LD  4,-9(1) 	Load left into ac1 
236:    DIV  3,4,3 	Op / 
237:     ST  3,-9(1) 	Save left side 
238:    LDC  3,3(6) 	Load constant 
239:     LD  4,-9(1) 	Load left into ac1 
240:    MUL  3,4,3 	Op * 
241:     ST  3,-8(1) 	Store variable boxColStart
* EXPRESSION STMT
242:    LDC  3,0(6) 	Load constant 
243:     ST  3,-5(1) 	Store variable i
* WHILE
244:     LD  3,-5(1) 	Load variable i
245:     ST  3,-9(1) 	Save left side 
246:    LDC  3,3(6) 	Load constant 
247:     LD  4,-9(1) 	Load left into ac1 
248:    SUB  4,4,3 	Op < 
249:    LDC  3,1(6) 	True case 
250:    JLT  4,1(7) 	Jump if true 
251:    LDC  3,0(6) 	False case 
252:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
254:    LDC  3,0(6) 	Load constant 
255:     ST  3,-6(1) 	Store variable j
* WHILE
256:     LD  3,-6(1) 	Load variable j
257:     ST  3,-9(1) 	Save left side 
258:    LDC  3,3(6) 	Load constant 
259:     LD  4,-9(1) 	Load left into ac1 
260:    SUB  4,4,3 	Op < 
261:    LDC  3,1(6) 	True case 
262:    JLT  4,1(7) 	Jump if true 
263:    LDC  3,0(6) 	False case 
264:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
*                       Begin call to  getValue
266:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
267:     LD  3,-7(1) 	Load variable boxRowStart
268:     ST  3,-11(1) 	Save left side 
269:     LD  3,-5(1) 	Load variable i
270:     LD  4,-11(1) 	Load left into ac1 
271:    ADD  3,4,3 	Op + 
272:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
273:     LD  3,-8(1) 	Load variable boxColStart
274:     ST  3,-12(1) 	Save left side 
275:     LD  3,-6(1) 	Load variable j
276:     LD  4,-12(1) 	Load left into ac1 
277:    ADD  3,4,3 	Op + 
278:     ST  3,-12(1) 	Store parameter 
*                       Jump to getValue
279:    LDA  1,-9(1) 	Load address of new frame 
280:    LDA  3,1(7) 	Return address in ac 
281:    LDA  7,-185(7) 	CALL getValue
282:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getValue
283:     ST  3,-9(1) 	Save left side 
284:     LD  3,-4(1) 	Load variable value
285:     LD  4,-9(1) 	Load left into ac1 
286:    SUB  4,4,3 	Op == 
287:    LDC  3,1(6) 	True case 
288:    JEQ  4,1(7) 	Jump if true 
289:    LDC  3,0(6) 	False case 
290:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
292:    LDC  3,0(6) 	Load constant 
293:    LDA  2,0(3) 	Copy result to rt register 
294:     LD  3,-1(1) 	Load return address 
295:     LD  1,0(1) 	Adjust fp 
296:    LDA  7,0(3) 	Return 
291:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
297:     LD  3,-6(1) 	load lhs variable j
298:    LDA  3,1(3) 	increment value of j
299:     ST  3,-6(1) 	Store variable j
* END compound statement
300:    LDA  7,-45(7) 	go to beginning of loop 
265:    LDA  7,35(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
301:     LD  3,-5(1) 	load lhs variable i
302:    LDA  3,1(3) 	increment value of i
303:     ST  3,-5(1) 	Store variable i
* END compound statement
304:    LDA  7,-61(7) 	go to beginning of loop 
253:    LDA  7,51(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
305:    LDC  3,1(6) 	Load constant 
306:    LDA  2,0(3) 	Copy result to rt register 
307:     LD  3,-1(1) 	Load return address 
308:     LD  1,0(1) 	Adjust fp 
309:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
310:    LDC  2,0(6) 	Set return value to 0 
311:     LD  3,-1(1) 	Load return address 
312:     LD  1,0(1) 	Adjust fp 
313:    LDA  7,0(3) 	Return 
* END of function isOkAt
* BEGIN function search
314:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
*                       Begin call to  getLocked
315:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
316:     LD  3,-2(1) 	Load variable i
317:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
318:     LD  3,-3(1) 	Load variable j
319:     ST  3,-9(1) 	Store parameter 
*                       Jump to getLocked
320:    LDA  1,-6(1) 	Load address of new frame 
321:    LDA  3,1(7) 	Return address in ac 
322:    LDA  7,-185(7) 	CALL getLocked
323:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getLocked
324:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* IF
326:     LD  3,-2(1) 	Load variable i
327:     ST  3,-6(1) 	Save left side 
328:    LDC  3,8(6) 	Load constant 
329:     LD  4,-6(1) 	Load left into ac1 
330:    SUB  4,4,3 	Op == 
331:    LDC  3,1(6) 	True case 
332:    JEQ  4,1(7) 	Jump if true 
333:    LDC  3,0(6) 	False case 
334:     ST  3,-6(1) 	Save left side 
335:     LD  3,-3(1) 	Load variable j
336:     ST  3,-7(1) 	Save left side 
337:    LDC  3,8(6) 	Load constant 
338:     LD  4,-7(1) 	Load left into ac1 
339:    SUB  4,4,3 	Op == 
340:    LDC  3,1(6) 	True case 
341:    JEQ  4,1(7) 	Jump if true 
342:    LDC  3,0(6) 	False case 
343:     LD  4,-6(1) 	Load left into ac1 
344:    JEQ  3,1(7) 	Op AND 
345:    LDA  3,0(4) 	 
346:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
348:    LDC  3,1(6) 	Load constant 
349:    LDA  2,0(3) 	Copy result to rt register 
350:     LD  3,-1(1) 	Load return address 
351:     LD  1,0(1) 	Adjust fp 
352:    LDA  7,0(3) 	Return 
* ELSE
347:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
354:     LD  3,-3(1) 	Load variable j
355:     ST  3,-6(1) 	Save left side 
356:    LDC  3,8(6) 	Load constant 
357:     LD  4,-6(1) 	Load left into ac1 
358:    SUB  4,4,3 	Op == 
359:    LDC  3,1(6) 	True case 
360:    JEQ  4,1(7) 	Jump if true 
361:    LDC  3,0(6) 	False case 
362:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
*                       Begin call to  search
364:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
365:     LD  3,-2(1) 	Load variable i
366:     ST  3,-8(1) 	Save left side 
367:    LDC  3,1(6) 	Load constant 
368:     LD  4,-8(1) 	Load left into ac1 
369:    ADD  3,4,3 	Op + 
370:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
371:    LDC  3,0(6) 	Load constant 
372:     ST  3,-9(1) 	Store parameter 
*                       Jump to search
373:    LDA  1,-6(1) 	Load address of new frame 
374:    LDA  3,1(7) 	Return address in ac 
375:    LDA  7,-62(7) 	CALL search
376:    LDA  3,0(2) 	Save the result in ac 
*                       End call to search
377:    LDA  2,0(3) 	Copy result to rt register 
378:     LD  3,-1(1) 	Load return address 
379:     LD  1,0(1) 	Adjust fp 
380:    LDA  7,0(3) 	Return 
* ELSE
363:    LDA  7,18(7) 	Jump around the THEN [backpatch] 
* RETURN
*                       Begin call to  search
382:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
383:     LD  3,-2(1) 	Load variable i
384:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
385:     LD  3,-3(1) 	Load variable j
386:     ST  3,-9(1) 	Save left side 
387:    LDC  3,1(6) 	Load constant 
388:     LD  4,-9(1) 	Load left into ac1 
389:    ADD  3,4,3 	Op + 
390:     ST  3,-9(1) 	Store parameter 
*                       Jump to search
391:    LDA  1,-6(1) 	Load address of new frame 
392:    LDA  3,1(7) 	Return address in ac 
393:    LDA  7,-80(7) 	CALL search
394:    LDA  3,0(2) 	Save the result in ac 
*                       End call to search
395:    LDA  2,0(3) 	Copy result to rt register 
396:     LD  3,-1(1) 	Load return address 
397:     LD  1,0(1) 	Adjust fp 
398:    LDA  7,0(3) 	Return 
381:    LDA  7,17(7) 	Jump around the ELSE [backpatch] 
* ENDIF
353:    LDA  7,45(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* ELSE
325:    LDA  7,74(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
400:    LDC  3,1(6) 	Load constant 
401:     ST  3,-4(1) 	Store variable n
* WHILE
402:     LD  3,-4(1) 	Load variable n
403:     ST  3,-6(1) 	Save left side 
404:    LDC  3,9(6) 	Load constant 
405:     LD  4,-6(1) 	Load left into ac1 
406:    SUB  4,4,3 	Op <= 
407:    LDC  3,1(6) 	True case 
408:    JLE  4,1(7) 	Jump if true 
409:    LDC  3,0(6) 	False case 
410:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
*                       Begin call to  isOkAt
412:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
413:     LD  3,-2(1) 	Load variable i
414:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
415:     LD  3,-3(1) 	Load variable j
416:     ST  3,-9(1) 	Store parameter 
*                       Load param 3
417:     LD  3,-4(1) 	Load variable n
418:     ST  3,-10(1) 	Store parameter 
*                       Jump to isOkAt
419:    LDA  1,-6(1) 	Load address of new frame 
420:    LDA  3,1(7) 	Return address in ac 
421:    LDA  7,-263(7) 	CALL isOkAt
422:    LDA  3,0(2) 	Save the result in ac 
*                       End call to isOkAt
423:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  setValue
425:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
426:     LD  3,-2(1) 	Load variable i
427:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
428:     LD  3,-3(1) 	Load variable j
429:     ST  3,-9(1) 	Store parameter 
*                       Load param 3
430:     LD  3,-4(1) 	Load variable n
431:     ST  3,-10(1) 	Store parameter 
*                       Jump to setValue
432:    LDA  1,-6(1) 	Load address of new frame 
433:    LDA  3,1(7) 	Return address in ac 
434:    LDA  7,-358(7) 	CALL setValue
435:    LDA  3,0(2) 	Save the result in ac 
*                       End call to setValue
* IF
436:     LD  3,-2(1) 	Load variable i
437:     ST  3,-6(1) 	Save left side 
438:    LDC  3,8(6) 	Load constant 
439:     LD  4,-6(1) 	Load left into ac1 
440:    SUB  4,4,3 	Op == 
441:    LDC  3,1(6) 	True case 
442:    JEQ  4,1(7) 	Jump if true 
443:    LDC  3,0(6) 	False case 
444:     ST  3,-6(1) 	Save left side 
445:     LD  3,-3(1) 	Load variable j
446:     ST  3,-7(1) 	Save left side 
447:    LDC  3,8(6) 	Load constant 
448:     LD  4,-7(1) 	Load left into ac1 
449:    SUB  4,4,3 	Op == 
450:    LDC  3,1(6) 	True case 
451:    JEQ  4,1(7) 	Jump if true 
452:    LDC  3,0(6) 	False case 
453:     LD  4,-6(1) 	Load left into ac1 
454:    JEQ  3,1(7) 	Op AND 
455:    LDA  3,0(4) 	 
456:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
458:    LDC  3,1(6) 	Load constant 
459:    LDA  2,0(3) 	Copy result to rt register 
460:     LD  3,-1(1) 	Load return address 
461:     LD  1,0(1) 	Adjust fp 
462:    LDA  7,0(3) 	Return 
* ELSE
457:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
464:     LD  3,-3(1) 	Load variable j
465:     ST  3,-6(1) 	Save left side 
466:    LDC  3,8(6) 	Load constant 
467:     LD  4,-6(1) 	Load left into ac1 
468:    SUB  4,4,3 	Op == 
469:    LDC  3,1(6) 	True case 
470:    JEQ  4,1(7) 	Jump if true 
471:    LDC  3,0(6) 	False case 
472:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  search
474:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
475:     LD  3,-2(1) 	Load variable i
476:     ST  3,-8(1) 	Save left side 
477:    LDC  3,1(6) 	Load constant 
478:     LD  4,-8(1) 	Load left into ac1 
479:    ADD  3,4,3 	Op + 
480:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
481:    LDC  3,0(6) 	Load constant 
482:     ST  3,-9(1) 	Store parameter 
*                       Jump to search
483:    LDA  1,-6(1) 	Load address of new frame 
484:    LDA  3,1(7) 	Return address in ac 
485:    LDA  7,-172(7) 	CALL search
486:    LDA  3,0(2) 	Save the result in ac 
*                       End call to search
487:     ST  3,-5(1) 	Store variable foundOne
* ELSE
473:    LDA  7,15(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  search
489:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
490:     LD  3,-2(1) 	Load variable i
491:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
492:     LD  3,-3(1) 	Load variable j
493:     ST  3,-9(1) 	Save left side 
494:    LDC  3,1(6) 	Load constant 
495:     LD  4,-9(1) 	Load left into ac1 
496:    ADD  3,4,3 	Op + 
497:     ST  3,-9(1) 	Store parameter 
*                       Jump to search
498:    LDA  1,-6(1) 	Load address of new frame 
499:    LDA  3,1(7) 	Return address in ac 
500:    LDA  7,-187(7) 	CALL search
501:    LDA  3,0(2) 	Save the result in ac 
*                       End call to search
502:     ST  3,-5(1) 	Store variable foundOne
488:    LDA  7,14(7) 	Jump around the ELSE [backpatch] 
* ENDIF
463:    LDA  7,39(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
503:     LD  3,-5(1) 	Load variable foundOne
504:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
506:    LDC  3,1(6) 	Load constant 
507:    LDA  2,0(3) 	Copy result to rt register 
508:     LD  3,-1(1) 	Load return address 
509:     LD  1,0(1) 	Adjust fp 
510:    LDA  7,0(3) 	Return 
* ELSE
505:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  setValue
512:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
513:     LD  3,-2(1) 	Load variable i
514:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
515:     LD  3,-3(1) 	Load variable j
516:     ST  3,-9(1) 	Store parameter 
*                       Load param 3
517:    LDC  3,0(6) 	Load constant 
518:     ST  3,-10(1) 	Store parameter 
*                       Jump to setValue
519:    LDA  1,-6(1) 	Load address of new frame 
520:    LDA  3,1(7) 	Return address in ac 
521:    LDA  7,-445(7) 	CALL setValue
522:    LDA  3,0(2) 	Save the result in ac 
*                       End call to setValue
511:    LDA  7,11(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
424:    LDA  7,98(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
523:     LD  3,-4(1) 	load lhs variable n
524:    LDA  3,1(3) 	increment value of n
525:     ST  3,-4(1) 	Store variable n
* END compound statement
526:    LDA  7,-125(7) 	go to beginning of loop 
411:    LDA  7,115(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
399:    LDA  7,127(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* RETURN
527:    LDC  3,0(6) 	Load constant 
528:    LDA  2,0(3) 	Copy result to rt register 
529:     LD  3,-1(1) 	Load return address 
530:     LD  1,0(1) 	Adjust fp 
531:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
532:    LDC  2,0(6) 	Set return value to 0 
533:     LD  3,-1(1) 	Load return address 
534:     LD  1,0(1) 	Adjust fp 
535:    LDA  7,0(3) 	Return 
* END of function search
* BEGIN function searchTrivial
536:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
537:    LDC  3,1(6) 	Load constant 
538:     ST  3,-6(1) 	Store variable changed
* WHILE
539:     LD  3,-6(1) 	Load variable changed
540:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
542:    LDC  3,0(6) 	Load constant 
543:     ST  3,-6(1) 	Store variable changed
* EXPRESSION STMT
544:    LDC  3,0(6) 	Load constant 
545:     ST  3,-2(1) 	Store variable i
* WHILE
546:     LD  3,-2(1) 	Load variable i
547:     ST  3,-8(1) 	Save left side 
548:    LDC  3,9(6) 	Load constant 
549:     LD  4,-8(1) 	Load left into ac1 
550:    SUB  4,4,3 	Op < 
551:    LDC  3,1(6) 	True case 
552:    JLT  4,1(7) 	Jump if true 
553:    LDC  3,0(6) 	False case 
554:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
556:    LDC  3,0(6) 	Load constant 
557:     ST  3,-3(1) 	Store variable j
* WHILE
558:     LD  3,-3(1) 	Load variable j
559:     ST  3,-8(1) 	Save left side 
560:    LDC  3,9(6) 	Load constant 
561:     LD  4,-8(1) 	Load left into ac1 
562:    SUB  4,4,3 	Op < 
563:    LDC  3,1(6) 	True case 
564:    JLT  4,1(7) 	Jump if true 
565:    LDC  3,0(6) 	False case 
566:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
*                       Begin call to  getLocked
568:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
569:     LD  3,-2(1) 	Load variable i
570:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
571:     LD  3,-3(1) 	Load variable j
572:     ST  3,-11(1) 	Store parameter 
*                       Jump to getLocked
573:    LDA  1,-8(1) 	Load address of new frame 
574:    LDA  3,1(7) 	Return address in ac 
575:    LDA  7,-438(7) 	CALL getLocked
576:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getLocked
577:     ST  3,-8(1) 	Save left side 
578:    LDC  3,0(6) 	Load constant 
579:     LD  4,-8(1) 	Load left into ac1 
580:    SUB  4,4,3 	Op == 
581:    LDC  3,1(6) 	True case 
582:    JEQ  4,1(7) 	Jump if true 
583:    LDC  3,0(6) 	False case 
584:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
586:    LDC  3,1(6) 	Load constant 
587:     ST  3,-4(1) 	Store variable test
* EXPRESSION STMT
588:    LDC  3,0(6) 	Load constant 
589:     ST  3,-7(1) 	Store variable foundOne
* WHILE
590:     LD  3,-4(1) 	Load variable test
591:     ST  3,-8(1) 	Save left side 
592:    LDC  3,9(6) 	Load constant 
593:     LD  4,-8(1) 	Load left into ac1 
594:    SUB  4,4,3 	Op <= 
595:    LDC  3,1(6) 	True case 
596:    JLE  4,1(7) 	Jump if true 
597:    LDC  3,0(6) 	False case 
598:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
*                       Begin call to  isOkAt
600:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
601:     LD  3,-2(1) 	Load variable i
602:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
603:     LD  3,-3(1) 	Load variable j
604:     ST  3,-11(1) 	Store parameter 
*                       Load param 3
605:     LD  3,-4(1) 	Load variable test
606:     ST  3,-12(1) 	Store parameter 
*                       Jump to isOkAt
607:    LDA  1,-8(1) 	Load address of new frame 
608:    LDA  3,1(7) 	Return address in ac 
609:    LDA  7,-451(7) 	CALL isOkAt
610:    LDA  3,0(2) 	Save the result in ac 
*                       End call to isOkAt
611:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* IF
613:     LD  3,-7(1) 	Load variable foundOne
614:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
616:    LDC  3,0(6) 	Load constant 
617:     ST  3,-7(1) 	Store variable foundOne
* BREAK
618:    LDA  7,-20(7) 	break 
* END compound statement
* ELSE
615:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
620:    LDC  3,1(6) 	Load constant 
621:     ST  3,-7(1) 	Store variable foundOne
* EXPRESSION STMT
622:     LD  3,-4(1) 	Load variable test
623:     ST  3,-5(1) 	Store variable value
* END compound statement
619:    LDA  7,4(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
612:    LDA  7,11(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
624:     LD  3,-4(1) 	load lhs variable test
625:    LDA  3,1(3) 	increment value of test
626:     ST  3,-4(1) 	Store variable test
* END compound statement
627:    LDA  7,-38(7) 	go to beginning of loop 
599:    LDA  7,28(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
628:     LD  3,-7(1) 	Load variable foundOne
629:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  setValue
631:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
632:     LD  3,-2(1) 	Load variable i
633:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
634:     LD  3,-3(1) 	Load variable j
635:     ST  3,-11(1) 	Store parameter 
*                       Load param 3
636:     LD  3,-5(1) 	Load variable value
637:     ST  3,-12(1) 	Store parameter 
*                       Jump to setValue
638:    LDA  1,-8(1) 	Load address of new frame 
639:    LDA  3,1(7) 	Return address in ac 
640:    LDA  7,-564(7) 	CALL setValue
641:    LDA  3,0(2) 	Save the result in ac 
*                       End call to setValue
* EXPRESSION STMT
*                       Begin call to  setLocked
642:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
643:     LD  3,-2(1) 	Load variable i
644:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
645:     LD  3,-3(1) 	Load variable j
646:     ST  3,-11(1) 	Store parameter 
*                       Load param 3
647:    LDC  3,1(6) 	Load constant 
648:     ST  3,-12(1) 	Store parameter 
*                       Jump to setLocked
649:    LDA  1,-8(1) 	Load address of new frame 
650:    LDA  3,1(7) 	Return address in ac 
651:    LDA  7,-534(7) 	CALL setLocked
652:    LDA  3,0(2) 	Save the result in ac 
*                       End call to setLocked
* EXPRESSION STMT
653:    LDC  3,1(6) 	Load constant 
654:     ST  3,-6(1) 	Store variable changed
* END compound statement
630:    LDA  7,24(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
585:    LDA  7,69(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
655:     LD  3,-3(1) 	load lhs variable j
656:    LDA  3,1(3) 	increment value of j
657:     ST  3,-3(1) 	Store variable j
* END compound statement
658:    LDA  7,-101(7) 	go to beginning of loop 
567:    LDA  7,91(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
659:     LD  3,-2(1) 	load lhs variable i
660:    LDA  3,1(3) 	increment value of i
661:     ST  3,-2(1) 	Store variable i
* END compound statement
662:    LDA  7,-117(7) 	go to beginning of loop 
555:    LDA  7,107(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
663:    LDA  7,-125(7) 	go to beginning of loop 
541:    LDA  7,122(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
664:    LDC  2,0(6) 	Set return value to 0 
665:     LD  3,-1(1) 	Load return address 
666:     LD  1,0(1) 	Adjust fp 
667:    LDA  7,0(3) 	Return 
* END of function searchTrivial
* BEGIN function solve
668:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
669:    LDC  3,0(6) 	Load constant 
670:     ST  3,-2(1) 	Store variable i
* WHILE
671:     LD  3,-2(1) 	Load variable i
672:     ST  3,-5(1) 	Save left side 
673:    LDC  3,9(6) 	Load constant 
674:     LD  4,-5(1) 	Load left into ac1 
675:    SUB  4,4,3 	Op < 
676:    LDC  3,1(6) 	True case 
677:    JLT  4,1(7) 	Jump if true 
678:    LDC  3,0(6) 	False case 
679:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
681:    LDC  3,0(6) 	Load constant 
682:     ST  3,-3(1) 	Store variable j
* WHILE
683:     LD  3,-3(1) 	Load variable j
684:     ST  3,-5(1) 	Save left side 
685:    LDC  3,9(6) 	Load constant 
686:     LD  4,-5(1) 	Load left into ac1 
687:    SUB  4,4,3 	Op < 
688:    LDC  3,1(6) 	True case 
689:    JLT  4,1(7) 	Jump if true 
690:    LDC  3,0(6) 	False case 
691:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  getValue
693:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
694:     LD  3,-2(1) 	Load variable i
695:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
696:     LD  3,-3(1) 	Load variable j
697:     ST  3,-8(1) 	Store parameter 
*                       Jump to getValue
698:    LDA  1,-5(1) 	Load address of new frame 
699:    LDA  3,1(7) 	Return address in ac 
700:    LDA  7,-604(7) 	CALL getValue
701:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getValue
702:     ST  3,-4(1) 	Store variable n
* EXPRESSION STMT
*                       Begin call to  setValue
703:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
704:     LD  3,-2(1) 	Load variable i
705:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
706:     LD  3,-3(1) 	Load variable j
707:     ST  3,-8(1) 	Store parameter 
*                       Load param 3
708:    LDC  3,0(6) 	Load constant 
709:     ST  3,-9(1) 	Store parameter 
*                       Jump to setValue
710:    LDA  1,-5(1) 	Load address of new frame 
711:    LDA  3,1(7) 	Return address in ac 
712:    LDA  7,-636(7) 	CALL setValue
713:    LDA  3,0(2) 	Save the result in ac 
*                       End call to setValue
* IF
*                       Begin call to  getLocked
714:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
715:     LD  3,-2(1) 	Load variable i
716:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
717:     LD  3,-3(1) 	Load variable j
718:     ST  3,-8(1) 	Store parameter 
*                       Jump to getLocked
719:    LDA  1,-5(1) 	Load address of new frame 
720:    LDA  3,1(7) 	Return address in ac 
721:    LDA  7,-584(7) 	CALL getLocked
722:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getLocked
723:     ST  3,-5(1) 	Save left side 
724:    LDC  3,1(6) 	Load constant 
725:     LD  4,-5(1) 	Load left into ac1 
726:    SUB  4,4,3 	Op == 
727:    LDC  3,1(6) 	True case 
728:    JEQ  4,1(7) 	Jump if true 
729:    LDC  3,0(6) 	False case 
730:     ST  3,-5(1) 	Save left side 
*                       Begin call to  isOkAt
731:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
732:     LD  3,-2(1) 	Load variable i
733:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
734:     LD  3,-3(1) 	Load variable j
735:     ST  3,-9(1) 	Store parameter 
*                       Load param 3
736:     LD  3,-4(1) 	Load variable n
737:     ST  3,-10(1) 	Store parameter 
*                       Jump to isOkAt
738:    LDA  1,-6(1) 	Load address of new frame 
739:    LDA  3,1(7) 	Return address in ac 
740:    LDA  7,-582(7) 	CALL isOkAt
741:    LDA  3,0(2) 	Save the result in ac 
*                       End call to isOkAt
742:     ST  3,-6(1) 	Save left side 
743:    LDC  3,0(6) 	Load constant 
744:     LD  4,-6(1) 	Load left into ac1 
745:    SUB  4,4,3 	Op == 
746:    LDC  3,1(6) 	True case 
747:    JEQ  4,1(7) 	Jump if true 
748:    LDC  3,0(6) 	False case 
749:     LD  4,-5(1) 	Load left into ac1 
750:    JEQ  3,1(7) 	Op AND 
751:    LDA  3,0(4) 	 
752:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
754:    LDC  3,0(6) 	Load constant 
755:    LDA  2,0(3) 	Copy result to rt register 
756:     LD  3,-1(1) 	Load return address 
757:     LD  1,0(1) 	Adjust fp 
758:    LDA  7,0(3) 	Return 
753:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
*                       Begin call to  setValue
759:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
760:     LD  3,-2(1) 	Load variable i
761:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
762:     LD  3,-3(1) 	Load variable j
763:     ST  3,-8(1) 	Store parameter 
*                       Load param 3
764:     LD  3,-4(1) 	Load variable n
765:     ST  3,-9(1) 	Store parameter 
*                       Jump to setValue
766:    LDA  1,-5(1) 	Load address of new frame 
767:    LDA  3,1(7) 	Return address in ac 
768:    LDA  7,-692(7) 	CALL setValue
769:    LDA  3,0(2) 	Save the result in ac 
*                       End call to setValue
* EXPRESSION STMT
770:     LD  3,-3(1) 	load lhs variable j
771:    LDA  3,1(3) 	increment value of j
772:     ST  3,-3(1) 	Store variable j
* END compound statement
773:    LDA  7,-91(7) 	go to beginning of loop 
692:    LDA  7,81(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
774:     LD  3,-2(1) 	load lhs variable i
775:    LDA  3,1(3) 	increment value of i
776:     ST  3,-2(1) 	Store variable i
* END compound statement
777:    LDA  7,-107(7) 	go to beginning of loop 
680:    LDA  7,97(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  searchTrivial
778:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to searchTrivial
779:    LDA  1,-5(1) 	Load address of new frame 
780:    LDA  3,1(7) 	Return address in ac 
781:    LDA  7,-246(7) 	CALL searchTrivial
782:    LDA  3,0(2) 	Save the result in ac 
*                       End call to searchTrivial
* RETURN
*                       Begin call to  search
783:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
784:    LDC  3,0(6) 	Load constant 
785:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
786:    LDC  3,0(6) 	Load constant 
787:     ST  3,-8(1) 	Store parameter 
*                       Jump to search
788:    LDA  1,-5(1) 	Load address of new frame 
789:    LDA  3,1(7) 	Return address in ac 
790:    LDA  7,-477(7) 	CALL search
791:    LDA  3,0(2) 	Save the result in ac 
*                       End call to search
792:    LDA  2,0(3) 	Copy result to rt register 
793:     LD  3,-1(1) 	Load return address 
794:     LD  1,0(1) 	Adjust fp 
795:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
796:    LDC  2,0(6) 	Set return value to 0 
797:     LD  3,-1(1) 	Load return address 
798:     LD  1,0(1) 	Adjust fp 
799:    LDA  7,0(3) 	Return 
* END of function solve
* BEGIN function showBoard
800:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outnl
801:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
802:    LDA  1,-4(1) 	Load address of new frame 
803:    LDA  3,1(7) 	Return address in ac 
804:    LDA  7,-768(7) 	CALL outnl
805:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
806:    LDC  3,0(6) 	Load constant 
807:     ST  3,-2(1) 	Store variable i
* WHILE
808:     LD  3,-2(1) 	Load variable i
809:     ST  3,-4(1) 	Save left side 
810:    LDC  3,9(6) 	Load constant 
811:     LD  4,-4(1) 	Load left into ac1 
812:    SUB  4,4,3 	Op < 
813:    LDC  3,1(6) 	True case 
814:    JLT  4,1(7) 	Jump if true 
815:    LDC  3,0(6) 	False case 
816:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
818:    LDC  3,0(6) 	Load constant 
819:     ST  3,-3(1) 	Store variable j
* WHILE
820:     LD  3,-3(1) 	Load variable j
821:     ST  3,-4(1) 	Save left side 
822:    LDC  3,9(6) 	Load constant 
823:     LD  4,-4(1) 	Load left into ac1 
824:    SUB  4,4,3 	Op < 
825:    LDC  3,1(6) 	True case 
826:    JLT  4,1(7) 	Jump if true 
827:    LDC  3,0(6) 	False case 
828:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
830:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  getValue
831:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
832:     LD  3,-2(1) 	Load variable i
833:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
834:     LD  3,-3(1) 	Load variable j
835:     ST  3,-9(1) 	Store parameter 
*                       Jump to getValue
836:    LDA  1,-6(1) 	Load address of new frame 
837:    LDA  3,1(7) 	Return address in ac 
838:    LDA  7,-742(7) 	CALL getValue
839:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getValue
840:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
841:    LDA  1,-4(1) 	Load address of new frame 
842:    LDA  3,1(7) 	Return address in ac 
843:    LDA  7,-838(7) 	CALL output
844:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
845:     LD  3,-3(1) 	load lhs variable j
846:    LDA  3,1(3) 	increment value of j
847:     ST  3,-3(1) 	Store variable j
* END compound statement
848:    LDA  7,-29(7) 	go to beginning of loop 
829:    LDA  7,19(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
849:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
850:    LDA  1,-4(1) 	Load address of new frame 
851:    LDA  3,1(7) 	Return address in ac 
852:    LDA  7,-816(7) 	CALL outnl
853:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
854:     LD  3,-2(1) 	load lhs variable i
855:    LDA  3,1(3) 	increment value of i
856:     ST  3,-2(1) 	Store variable i
* END compound statement
857:    LDA  7,-50(7) 	go to beginning of loop 
817:    LDA  7,40(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
858:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
859:    LDA  1,-4(1) 	Load address of new frame 
860:    LDA  3,1(7) 	Return address in ac 
861:    LDA  7,-825(7) 	CALL outnl
862:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
863:    LDC  2,0(6) 	Set return value to 0 
864:     LD  3,-1(1) 	Load return address 
865:     LD  1,0(1) 	Adjust fp 
866:    LDA  7,0(3) 	Return 
* END of function showBoard
* BEGIN function getInput
867:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
868:    LDC  3,0(6) 	Load constant 
869:     ST  3,-2(1) 	Store variable i
* WHILE
870:     LD  3,-2(1) 	Load variable i
871:     ST  3,-5(1) 	Save left side 
872:    LDC  3,9(6) 	Load constant 
873:     LD  4,-5(1) 	Load left into ac1 
874:    SUB  4,4,3 	Op < 
875:    LDC  3,1(6) 	True case 
876:    JLT  4,1(7) 	Jump if true 
877:    LDC  3,0(6) 	False case 
878:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
880:    LDC  3,0(6) 	Load constant 
881:     ST  3,-3(1) 	Store variable j
* WHILE
882:     LD  3,-3(1) 	Load variable j
883:     ST  3,-5(1) 	Save left side 
884:    LDC  3,9(6) 	Load constant 
885:     LD  4,-5(1) 	Load left into ac1 
886:    SUB  4,4,3 	Op < 
887:    LDC  3,1(6) 	True case 
888:    JLT  4,1(7) 	Jump if true 
889:    LDC  3,0(6) 	False case 
890:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  input
892:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to input
893:    LDA  1,-5(1) 	Load address of new frame 
894:    LDA  3,1(7) 	Return address in ac 
895:    LDA  7,-895(7) 	CALL input
896:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
897:     ST  3,-4(1) 	Store variable inputVal
* IF
898:     LD  3,-4(1) 	Load variable inputVal
899:     ST  3,-5(1) 	Save left side 
900:    LDC  3,0(6) 	Load constant 
901:     LD  4,-5(1) 	Load left into ac1 
902:    SUB  4,4,3 	Op > 
903:    LDC  3,1(6) 	True case 
904:    JGT  4,1(7) 	Jump if true 
905:    LDC  3,0(6) 	False case 
906:     ST  3,-5(1) 	Save left side 
907:     LD  3,-4(1) 	Load variable inputVal
908:     ST  3,-6(1) 	Save left side 
909:    LDC  3,10(6) 	Load constant 
910:     LD  4,-6(1) 	Load left into ac1 
911:    SUB  4,4,3 	Op < 
912:    LDC  3,1(6) 	True case 
913:    JLT  4,1(7) 	Jump if true 
914:    LDC  3,0(6) 	False case 
915:     LD  4,-5(1) 	Load left into ac1 
916:    JEQ  3,1(7) 	Op AND 
917:    LDA  3,0(4) 	 
918:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  setValue
920:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
921:     LD  3,-2(1) 	Load variable i
922:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
923:     LD  3,-3(1) 	Load variable j
924:     ST  3,-8(1) 	Store parameter 
*                       Load param 3
925:     LD  3,-4(1) 	Load variable inputVal
926:     ST  3,-9(1) 	Store parameter 
*                       Jump to setValue
927:    LDA  1,-5(1) 	Load address of new frame 
928:    LDA  3,1(7) 	Return address in ac 
929:    LDA  7,-853(7) 	CALL setValue
930:    LDA  3,0(2) 	Save the result in ac 
*                       End call to setValue
* EXPRESSION STMT
*                       Begin call to  setLocked
931:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
932:     LD  3,-2(1) 	Load variable i
933:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
934:     LD  3,-3(1) 	Load variable j
935:     ST  3,-8(1) 	Store parameter 
*                       Load param 3
936:    LDC  3,1(6) 	Load constant 
937:     ST  3,-9(1) 	Store parameter 
*                       Jump to setLocked
938:    LDA  1,-5(1) 	Load address of new frame 
939:    LDA  3,1(7) 	Return address in ac 
940:    LDA  7,-823(7) 	CALL setLocked
941:    LDA  3,0(2) 	Save the result in ac 
*                       End call to setLocked
* END compound statement
919:    LDA  7,22(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
942:     LD  3,-3(1) 	load lhs variable j
943:    LDA  3,1(3) 	increment value of j
944:     ST  3,-3(1) 	Store variable j
* END compound statement
945:    LDA  7,-64(7) 	go to beginning of loop 
891:    LDA  7,54(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
946:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
947:    LDA  1,-5(1) 	Load address of new frame 
948:    LDA  3,1(7) 	Return address in ac 
949:    LDA  7,-913(7) 	CALL outnl
950:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
951:     LD  3,-2(1) 	load lhs variable i
952:    LDA  3,1(3) 	increment value of i
953:     ST  3,-2(1) 	Store variable i
* END compound statement
954:    LDA  7,-85(7) 	go to beginning of loop 
879:    LDA  7,75(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
955:    LDC  2,0(6) 	Set return value to 0 
956:     LD  3,-1(1) 	Load return address 
957:     LD  1,0(1) 	Adjust fp 
958:    LDA  7,0(3) 	Return 
* END of function getInput
* BEGIN function main
959:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  initBoard
960:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to initBoard
961:    LDA  1,-2(1) 	Load address of new frame 
962:    LDA  3,1(7) 	Return address in ac 
963:    LDA  7,-922(7) 	CALL initBoard
964:    LDA  3,0(2) 	Save the result in ac 
*                       End call to initBoard
* EXPRESSION STMT
*                       Begin call to  getInput
965:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to getInput
966:    LDA  1,-2(1) 	Load address of new frame 
967:    LDA  3,1(7) 	Return address in ac 
968:    LDA  7,-102(7) 	CALL getInput
969:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getInput
* IF
*                       Begin call to  solve
970:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to solve
971:    LDA  1,-2(1) 	Load address of new frame 
972:    LDA  3,1(7) 	Return address in ac 
973:    LDA  7,-306(7) 	CALL solve
974:    LDA  3,0(2) 	Save the result in ac 
*                       End call to solve
975:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  showBoard
977:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to showBoard
978:    LDA  1,-2(1) 	Load address of new frame 
979:    LDA  3,1(7) 	Return address in ac 
980:    LDA  7,-181(7) 	CALL showBoard
981:    LDA  3,0(2) 	Save the result in ac 
*                       End call to showBoard
* END compound statement
* ELSE
976:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outputb
983:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
984:    LDC  3,0(6) 	Load constant 
985:     ST  3,-4(1) 	Store parameter 
*                       Jump to outputb
986:    LDA  1,-2(1) 	Load address of new frame 
987:    LDA  3,1(7) 	Return address in ac 
988:    LDA  7,-971(7) 	CALL outputb
989:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
990:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
991:    LDA  1,-2(1) 	Load address of new frame 
992:    LDA  3,1(7) 	Return address in ac 
993:    LDA  7,-957(7) 	CALL outnl
994:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
982:    LDA  7,12(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* RETURN
995:    LDC  3,0(6) 	Load constant 
996:    LDA  2,0(3) 	Copy result to rt register 
997:     LD  3,-1(1) 	Load return address 
998:     LD  1,0(1) 	Adjust fp 
999:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
1000:    LDC  2,0(6) 	Set return value to 0 
1001:     LD  3,-1(1) 	Load return address 
1002:     LD  1,0(1) 	Adjust fp 
1003:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,1003(7) 	Jump to init [backpatch] 
* BEGIN Init
1004:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
1005:    LDC  3,81(6) 	load size of array board
1006:     ST  3,0(0) 	save size of array board
1007:    LDC  3,81(6) 	load size of array locked
1008:     ST  3,-82(0) 	save size of array locked
* END init of globals
1009:    LDA  1,-164(0) 	set first frame at end of globals 
1010:     ST  1,0(1) 	store old fp (point to self) 
1011:    LDA  3,1(7) 	Return address in ac 
1012:    LDA  7,-54(7) 	Jump to main 
1013:   HALT  0,0,0 	DONE! 
* END Init
