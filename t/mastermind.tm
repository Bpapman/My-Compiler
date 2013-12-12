* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  mastermind.c-
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
* BEGIN function rand
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
 43:     LD  3,-1(0) 	Load variable n
 44:     ST  3,-2(1) 	Save left side 
 45:    LDC  3,0(6) 	Load constant 
 46:     LD  4,-2(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op < 
 48:    LDC  3,1(6) 	True case 
 49:    JLT  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 53:     LD  3,-1(0) 	Load variable n
 54:    LDC  4,0(6) 	Load 0 
 55:    SUB  3,4,3 	Op unary - 
 56:     ST  3,-1(0) 	Store variable n
 52:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 57:     LD  3,-1(0) 	Load variable n
 58:     ST  3,-2(1) 	Save left side 
 59:    LDC  3,128(6) 	Load constant 
 60:     LD  4,-2(1) 	Load left into ac1 
 61:    SUB  4,4,3 	Op > 
 62:    LDC  3,1(6) 	True case 
 63:    JGT  4,1(7) 	Jump if true 
 64:    LDC  3,0(6) 	False case 
 65:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 67:     LD  3,-1(0) 	Load variable n
 68:     ST  3,-2(1) 	Save left side 
 69:    LDC  3,128(6) 	Load constant 
 70:     LD  4,-2(1) 	Load left into ac1 
 71:    DIV  5,4,3 	Op % 
 72:    MUL  5,5,3 	 
 73:    SUB  3,4,5 	 
 74:     ST  3,-1(0) 	Store variable n
 66:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 75:     LD  3,-1(0) 	load lhs variable n
 76:    LDA  3,1(3) 	increment value of n
 77:     ST  3,-1(0) 	Store variable n
* EXPRESSION STMT
 78:     LD  3,-1(0) 	Load variable n
 79:     ST  3,-2(1) 	Save index 
 80:    LDC  3,1366(6) 	Load constant 
 81:     ST  3,-3(1) 	Save left side 
 82:     LD  3,-1(0) 	Load variable n
 83:     ST  3,-4(1) 	Save left side 
 84:    LDC  3,1(6) 	Load constant 
 85:     LD  4,-4(1) 	Load left into ac1 
 86:    SUB  3,4,3 	Op - 
 87:    LDA  4,-3(0) 	Load address of base of array r
 88:    SUB  3,4,3 	Compute offset of value 
 89:     LD  3,0(3) 	Load the value 
 90:     LD  4,-3(1) 	Load left into ac1 
 91:    MUL  3,4,3 	Op * 
 92:     ST  3,-3(1) 	Save left side 
 93:    LDC  3,150889(6) 	Load constant 
 94:     LD  4,-3(1) 	Load left into ac1 
 95:    ADD  3,4,3 	Op + 
 96:     ST  3,-3(1) 	Save left side 
 97:    LDC  3,714025(6) 	Load constant 
 98:     LD  4,-3(1) 	Load left into ac1 
 99:    DIV  5,4,3 	Op % 
100:    MUL  5,5,3 	 
101:    SUB  3,4,5 	 
102:     LD  4,-2(1) 	Restore index 
103:    LDA  5,-3(0) 	Load address of base of array r
104:    SUB  5,5,4 	Compute offset of value 
105:     ST  3,0(5) 	Store variable r
* RETURN
106:     LD  3,-1(0) 	Load variable n
107:    LDA  4,-3(0) 	Load address of base of array r
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
* END of function rand
* BEGIN function search
118:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
119:    LDC  3,0(6) 	Load constant 
120:     ST  3,-4(1) 	Store variable i
* WHILE
121:     LD  3,-4(1) 	Load variable i
122:     ST  3,-5(1) 	Save left side 
123:    LDC  3,4(6) 	Load constant 
124:     LD  4,-5(1) 	Load left into ac1 
125:    SUB  4,4,3 	Op < 
126:    LDC  3,1(6) 	True case 
127:    JLT  4,1(7) 	Jump if true 
128:    LDC  3,0(6) 	False case 
129:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
131:     LD  3,-4(1) 	Load variable i
132:     LD  4,-2(1) 	Load address of base of array a
133:    SUB  3,4,3 	Compute offset of value 
134:     LD  3,0(3) 	Load the value 
135:     ST  3,-5(1) 	Save left side 
136:     LD  3,-3(1) 	Load variable k
137:     LD  4,-5(1) 	Load left into ac1 
138:    SUB  4,4,3 	Op == 
139:    LDC  3,1(6) 	True case 
140:    JEQ  4,1(7) 	Jump if true 
141:    LDC  3,0(6) 	False case 
142:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
144:    LDC  3,1(6) 	Load constant 
145:    LDA  2,0(3) 	Copy result to rt register 
146:     LD  3,-1(1) 	Load return address 
147:     LD  1,0(1) 	Adjust fp 
148:    LDA  7,0(3) 	Return 
143:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
149:     LD  3,-4(1) 	load lhs variable i
150:    LDA  3,1(3) 	increment value of i
151:     ST  3,-4(1) 	Store variable i
* END compound statement
152:    LDA  7,-32(7) 	go to beginning of loop 
130:    LDA  7,22(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
153:    LDC  3,0(6) 	Load constant 
154:    LDA  2,0(3) 	Copy result to rt register 
155:     LD  3,-1(1) 	Load return address 
156:     LD  1,0(1) 	Adjust fp 
157:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
158:    LDC  2,0(6) 	Set return value to 0 
159:     LD  3,-1(1) 	Load return address 
160:     LD  1,0(1) 	Adjust fp 
161:    LDA  7,0(3) 	Return 
* END of function search
* BEGIN function check
162:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
163:    LDC  3,0(6) 	Load constant 
164:     ST  3,-4(1) 	Store variable c2
165:     ST  3,-3(1) 	Store variable c1
166:     ST  3,-2(1) 	Store variable i
* WHILE
167:     LD  3,-2(1) 	Load variable i
168:     ST  3,-5(1) 	Save left side 
169:    LDC  3,4(6) 	Load constant 
170:     LD  4,-5(1) 	Load left into ac1 
171:    SUB  4,4,3 	Op < 
172:    LDC  3,1(6) 	True case 
173:    JLT  4,1(7) 	Jump if true 
174:    LDC  3,0(6) 	False case 
175:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
177:     LD  3,-2(1) 	Load variable i
178:    LDA  4,-132(0) 	Load address of base of array known
179:    SUB  3,4,3 	Compute offset of value 
180:     LD  3,0(3) 	Load the value 
181:     ST  3,-5(1) 	Save left side 
182:     LD  3,-2(1) 	Load variable i
183:    LDA  4,-137(0) 	Load address of base of array guess
184:    SUB  3,4,3 	Compute offset of value 
185:     LD  3,0(3) 	Load the value 
186:     LD  4,-5(1) 	Load left into ac1 
187:    SUB  4,4,3 	Op == 
188:    LDC  3,1(6) 	True case 
189:    JEQ  4,1(7) 	Jump if true 
190:    LDC  3,0(6) 	False case 
191:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
193:     LD  3,-4(1) 	load lhs variable c2
194:    LDA  3,1(3) 	increment value of c2
195:     ST  3,-4(1) 	Store variable c2
* ELSE
192:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* IF
*                       Begin call to  search
197:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
198:    LDA  3,-132(0) 	Load address of base of array known
199:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
200:     LD  3,-2(1) 	Load variable i
201:    LDA  4,-137(0) 	Load address of base of array guess
202:    SUB  3,4,3 	Compute offset of value 
203:     LD  3,0(3) 	Load the value 
204:     ST  3,-8(1) 	Store parameter 
*                       Jump to search
205:    LDA  1,-5(1) 	Load address of new frame 
206:    LDA  3,1(7) 	Return address in ac 
207:    LDA  7,-90(7) 	CALL search
208:    LDA  3,0(2) 	Save the result in ac 
*                       End call to search
209:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
211:     LD  3,-3(1) 	load lhs variable c1
212:    LDA  3,1(3) 	increment value of c1
213:     ST  3,-3(1) 	Store variable c1
210:    LDA  7,3(7) 	Jump around the THEN [backpatch] 
* ENDIF
196:    LDA  7,17(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
214:     LD  3,-2(1) 	load lhs variable i
215:    LDA  3,1(3) 	increment value of i
216:     ST  3,-2(1) 	Store variable i
* END compound statement
217:    LDA  7,-51(7) 	go to beginning of loop 
176:    LDA  7,41(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  output
218:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
219:     LD  3,-3(1) 	Load variable c1
220:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
221:    LDA  1,-5(1) 	Load address of new frame 
222:    LDA  3,1(7) 	Return address in ac 
223:    LDA  7,-218(7) 	CALL output
224:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
225:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
226:     LD  3,-4(1) 	Load variable c2
227:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
228:    LDA  1,-5(1) 	Load address of new frame 
229:    LDA  3,1(7) 	Return address in ac 
230:    LDA  7,-225(7) 	CALL output
231:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
232:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
233:    LDA  1,-5(1) 	Load address of new frame 
234:    LDA  3,1(7) 	Return address in ac 
235:    LDA  7,-199(7) 	CALL outnl
236:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* IF
237:     LD  3,-4(1) 	Load variable c2
238:     ST  3,-5(1) 	Save left side 
239:    LDC  3,4(6) 	Load constant 
240:     LD  4,-5(1) 	Load left into ac1 
241:    SUB  4,4,3 	Op == 
242:    LDC  3,1(6) 	True case 
243:    JEQ  4,1(7) 	Jump if true 
244:    LDC  3,0(6) 	False case 
245:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
247:    LDC  3,1(6) 	Load constant 
248:    LDA  2,0(3) 	Copy result to rt register 
249:     LD  3,-1(1) 	Load return address 
250:     LD  1,0(1) 	Adjust fp 
251:    LDA  7,0(3) 	Return 
* ELSE
246:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* RETURN
253:    LDC  3,0(6) 	Load constant 
254:    LDA  2,0(3) 	Copy result to rt register 
255:     LD  3,-1(1) 	Load return address 
256:     LD  1,0(1) 	Adjust fp 
257:    LDA  7,0(3) 	Return 
252:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
258:    LDC  2,0(6) 	Set return value to 0 
259:     LD  3,-1(1) 	Load return address 
260:     LD  1,0(1) 	Adjust fp 
261:    LDA  7,0(3) 	Return 
* END of function check
* BEGIN function turn
262:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
263:     LD  3,0(0) 	load lhs variable turns
264:    LDA  3,1(3) 	increment value of turns
265:     ST  3,0(0) 	Store variable turns
* EXPRESSION STMT
*                       Begin call to  output
266:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
267:     LD  3,0(0) 	Load variable turns
268:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
269:    LDA  1,-3(1) 	Load address of new frame 
270:    LDA  3,1(7) 	Return address in ac 
271:    LDA  7,-266(7) 	CALL output
272:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
273:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
274:    LDA  1,-3(1) 	Load address of new frame 
275:    LDA  3,1(7) 	Return address in ac 
276:    LDA  7,-240(7) 	CALL outnl
277:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* IF
278:     LD  3,0(0) 	Load variable turns
279:     ST  3,-3(1) 	Save left side 
280:    LDC  3,20(6) 	Load constant 
281:     LD  4,-3(1) 	Load left into ac1 
282:    SUB  4,4,3 	Op <= 
283:    LDC  3,1(6) 	True case 
284:    JLE  4,1(7) 	Jump if true 
285:    LDC  3,0(6) 	False case 
286:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
288:    LDC  3,0(6) 	Load constant 
289:     ST  3,-2(1) 	Store variable i
* WHILE
290:     LD  3,-2(1) 	Load variable i
291:     ST  3,-3(1) 	Save left side 
292:    LDC  3,4(6) 	Load constant 
293:     LD  4,-3(1) 	Load left into ac1 
294:    SUB  4,4,3 	Op < 
295:    LDC  3,1(6) 	True case 
296:    JLT  4,1(7) 	Jump if true 
297:    LDC  3,0(6) 	False case 
298:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
300:     LD  3,-2(1) 	Load variable i
301:     ST  3,-3(1) 	Save index 
*                       Begin call to  input
302:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to input
303:    LDA  1,-4(1) 	Load address of new frame 
304:    LDA  3,1(7) 	Return address in ac 
305:    LDA  7,-305(7) 	CALL input
306:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
307:     LD  4,-3(1) 	Restore index 
308:    LDA  5,-137(0) 	Load address of base of array guess
309:    SUB  5,5,4 	Compute offset of value 
310:     ST  3,0(5) 	Store variable guess
* IF
311:     LD  3,-2(1) 	Load variable i
312:    LDA  4,-137(0) 	Load address of base of array guess
313:    SUB  3,4,3 	Compute offset of value 
314:     LD  3,0(3) 	Load the value 
315:     ST  3,-3(1) 	Save left side 
316:    LDC  3,0(6) 	Load constant 
317:     LD  4,-3(1) 	Load left into ac1 
318:    SUB  4,4,3 	Op < 
319:    LDC  3,1(6) 	True case 
320:    JLT  4,1(7) 	Jump if true 
321:    LDC  3,0(6) 	False case 
322:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
324:    LDC  3,0(6) 	Load constant 
325:    LDA  2,0(3) 	Copy result to rt register 
326:     LD  3,-1(1) 	Load return address 
327:     LD  1,0(1) 	Adjust fp 
328:    LDA  7,0(3) 	Return 
323:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
329:     LD  3,-2(1) 	Load variable i
330:    LDA  4,-137(0) 	Load address of base of array guess
331:    SUB  3,4,3 	Compute offset of value 
332:     LD  3,0(3) 	Load the value 
333:     ST  3,-3(1) 	Save left side 
334:    LDC  3,10(6) 	Load constant 
335:     LD  4,-3(1) 	Load left into ac1 
336:    SUB  4,4,3 	Op > 
337:    LDC  3,1(6) 	True case 
338:    JGT  4,1(7) 	Jump if true 
339:    LDC  3,0(6) 	False case 
340:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
342:     LD  3,-2(1) 	Load variable i
343:     ST  3,-3(1) 	Save index 
344:     LD  3,-2(1) 	Load variable i
345:    LDA  4,-137(0) 	Load address of base of array guess
346:    SUB  3,4,3 	Compute offset of value 
347:     LD  3,0(3) 	Load the value 
348:     ST  3,-4(1) 	Save left side 
349:    LDC  3,10(6) 	Load constant 
350:     LD  4,-4(1) 	Load left into ac1 
351:    DIV  5,4,3 	Op % 
352:    MUL  5,5,3 	 
353:    SUB  3,4,5 	 
354:     LD  4,-3(1) 	Restore index 
355:    LDA  5,-137(0) 	Load address of base of array guess
356:    SUB  5,5,4 	Compute offset of value 
357:     ST  3,0(5) 	Store variable guess
341:    LDA  7,16(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
358:     LD  3,-2(1) 	load lhs variable i
359:    LDA  3,1(3) 	increment value of i
360:     ST  3,-2(1) 	Store variable i
* END compound statement
361:    LDA  7,-72(7) 	go to beginning of loop 
299:    LDA  7,62(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
*                       Begin call to  check
362:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to check
363:    LDA  1,-3(1) 	Load address of new frame 
364:    LDA  3,1(7) 	Return address in ac 
365:    LDA  7,-204(7) 	CALL check
366:    LDA  3,0(2) 	Save the result in ac 
*                       End call to check
367:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
369:    LDC  3,0(6) 	Load constant 
370:     ST  3,-2(1) 	Store variable i
* WHILE
371:     LD  3,-2(1) 	Load variable i
372:     ST  3,-3(1) 	Save left side 
373:    LDC  3,10(6) 	Load constant 
374:     LD  4,-3(1) 	Load left into ac1 
375:    SUB  4,4,3 	Op < 
376:    LDC  3,1(6) 	True case 
377:    JLT  4,1(7) 	Jump if true 
378:    LDC  3,0(6) 	False case 
379:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outputb
381:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
382:    LDC  3,1(6) 	Load constant 
383:     ST  3,-5(1) 	Store parameter 
*                       Jump to outputb
384:    LDA  1,-3(1) 	Load address of new frame 
385:    LDA  3,1(7) 	Return address in ac 
386:    LDA  7,-369(7) 	CALL outputb
387:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
388:     LD  3,-2(1) 	load lhs variable i
389:    LDA  3,1(3) 	increment value of i
390:     ST  3,-2(1) 	Store variable i
* END compound statement
391:    LDA  7,-21(7) 	go to beginning of loop 
380:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
392:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
393:    LDA  1,-3(1) 	Load address of new frame 
394:    LDA  3,1(7) 	Return address in ac 
395:    LDA  7,-359(7) 	CALL outnl
396:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* RETURN
397:    LDC  3,0(6) 	Load constant 
398:    LDA  2,0(3) 	Copy result to rt register 
399:     LD  3,-1(1) 	Load return address 
400:     LD  1,0(1) 	Adjust fp 
401:    LDA  7,0(3) 	Return 
* END compound statement
* ELSE
368:    LDA  7,34(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* RETURN
403:    LDC  3,1(6) 	Load constant 
404:    LDA  2,0(3) 	Copy result to rt register 
405:     LD  3,-1(1) 	Load return address 
406:     LD  1,0(1) 	Adjust fp 
407:    LDA  7,0(3) 	Return 
* END compound statement
402:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
287:    LDA  7,120(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
408:    LDC  3,0(6) 	Load constant 
409:     ST  3,-2(1) 	Store variable i
* WHILE
410:     LD  3,-2(1) 	Load variable i
411:     ST  3,-3(1) 	Save left side 
412:    LDC  3,10(6) 	Load constant 
413:     LD  4,-3(1) 	Load left into ac1 
414:    SUB  4,4,3 	Op < 
415:    LDC  3,1(6) 	True case 
416:    JLT  4,1(7) 	Jump if true 
417:    LDC  3,0(6) 	False case 
418:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outputb
420:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
421:    LDC  3,0(6) 	Load constant 
422:     ST  3,-5(1) 	Store parameter 
*                       Jump to outputb
423:    LDA  1,-3(1) 	Load address of new frame 
424:    LDA  3,1(7) 	Return address in ac 
425:    LDA  7,-408(7) 	CALL outputb
426:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
427:     LD  3,-2(1) 	load lhs variable i
428:    LDA  3,1(3) 	increment value of i
429:     ST  3,-2(1) 	Store variable i
* END compound statement
430:    LDA  7,-21(7) 	go to beginning of loop 
419:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
431:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
432:    LDA  1,-3(1) 	Load address of new frame 
433:    LDA  3,1(7) 	Return address in ac 
434:    LDA  7,-398(7) 	CALL outnl
435:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* RETURN
436:    LDC  3,0(6) 	Load constant 
437:    LDA  2,0(3) 	Copy result to rt register 
438:     LD  3,-1(1) 	Load return address 
439:     LD  1,0(1) 	Adjust fp 
440:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
441:    LDC  2,0(6) 	Set return value to 0 
442:     LD  3,-1(1) 	Load return address 
443:     LD  1,0(1) 	Adjust fp 
444:    LDA  7,0(3) 	Return 
* END of function turn
* BEGIN function main
445:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
446:    LDC  3,0(6) 	Load constant 
447:     ST  3,-1(0) 	Store variable n
* EXPRESSION STMT
448:    LDC  3,0(6) 	Load constant 
449:     ST  3,-3(1) 	Save index 
*                       Begin call to  input
450:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to input
451:    LDA  1,-4(1) 	Load address of new frame 
452:    LDA  3,1(7) 	Return address in ac 
453:    LDA  7,-453(7) 	CALL input
454:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
455:     LD  4,-3(1) 	Restore index 
456:    LDA  5,-3(0) 	Load address of base of array r
457:    SUB  5,5,4 	Compute offset of value 
458:     ST  3,0(5) 	Store variable r
* EXPRESSION STMT
*                       Begin call to  outnl
459:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
460:    LDA  1,-3(1) 	Load address of new frame 
461:    LDA  3,1(7) 	Return address in ac 
462:    LDA  7,-426(7) 	CALL outnl
463:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
464:    LDC  3,0(6) 	Load constant 
465:     ST  3,-2(1) 	Store variable i
* WHILE
466:     LD  3,-2(1) 	Load variable i
467:     ST  3,-3(1) 	Save left side 
468:    LDC  3,4(6) 	Load constant 
469:     LD  4,-3(1) 	Load left into ac1 
470:    SUB  4,4,3 	Op < 
471:    LDC  3,1(6) 	True case 
472:    JLT  4,1(7) 	Jump if true 
473:    LDC  3,0(6) 	False case 
474:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
476:     LD  3,-2(1) 	Load variable i
477:     ST  3,-3(1) 	Save index 
*                       Begin call to  rand
478:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to rand
479:    LDA  1,-4(1) 	Load address of new frame 
480:    LDA  3,1(7) 	Return address in ac 
481:    LDA  7,-440(7) 	CALL rand
482:    LDA  3,0(2) 	Save the result in ac 
*                       End call to rand
483:     ST  3,-4(1) 	Save left side 
484:    LDC  3,10(6) 	Load constant 
485:     LD  4,-4(1) 	Load left into ac1 
486:    DIV  5,4,3 	Op % 
487:    MUL  5,5,3 	 
488:    SUB  3,4,5 	 
489:     LD  4,-3(1) 	Restore index 
490:    LDA  5,-132(0) 	Load address of base of array known
491:    SUB  5,5,4 	Compute offset of value 
492:     ST  3,0(5) 	Store variable known
* EXPRESSION STMT
493:     LD  3,-2(1) 	load lhs variable i
494:    LDA  3,1(3) 	increment value of i
495:     ST  3,-2(1) 	Store variable i
* END compound statement
496:    LDA  7,-31(7) 	go to beginning of loop 
475:    LDA  7,21(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
497:    LDC  3,0(6) 	Load constant 
498:     ST  3,0(0) 	Store variable turns
* WHILE
*                       Begin call to  turn
499:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to turn
500:    LDA  1,-3(1) 	Load address of new frame 
501:    LDA  3,1(7) 	Return address in ac 
502:    LDA  7,-241(7) 	CALL turn
503:    LDA  3,0(2) 	Save the result in ac 
*                       End call to turn
504:    JGT  3,1(7) 	Jump to while part 
* DO
506:    LDA  7,-8(7) 	go to beginning of loop 
505:    LDA  7,1(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
507:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
508:    LDA  1,-3(1) 	Load address of new frame 
509:    LDA  3,1(7) 	Return address in ac 
510:    LDA  7,-474(7) 	CALL outnl
511:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
512:    LDC  3,0(6) 	Load constant 
513:     ST  3,-2(1) 	Store variable i
* WHILE
514:     LD  3,-2(1) 	Load variable i
515:     ST  3,-3(1) 	Save left side 
516:    LDC  3,4(6) 	Load constant 
517:     LD  4,-3(1) 	Load left into ac1 
518:    SUB  4,4,3 	Op < 
519:    LDC  3,1(6) 	True case 
520:    JLT  4,1(7) 	Jump if true 
521:    LDC  3,0(6) 	False case 
522:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
524:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
525:     LD  3,-2(1) 	Load variable i
526:    LDA  4,-132(0) 	Load address of base of array known
527:    SUB  3,4,3 	Compute offset of value 
528:     LD  3,0(3) 	Load the value 
529:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
530:    LDA  1,-3(1) 	Load address of new frame 
531:    LDA  3,1(7) 	Return address in ac 
532:    LDA  7,-527(7) 	CALL output
533:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
534:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
535:    LDA  1,-3(1) 	Load address of new frame 
536:    LDA  3,1(7) 	Return address in ac 
537:    LDA  7,-501(7) 	CALL outnl
538:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
539:     LD  3,-2(1) 	load lhs variable i
540:    LDA  3,1(3) 	increment value of i
541:     ST  3,-2(1) 	Store variable i
* END compound statement
542:    LDA  7,-29(7) 	go to beginning of loop 
523:    LDA  7,19(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
543:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
544:    LDA  1,-3(1) 	Load address of new frame 
545:    LDA  3,1(7) 	Return address in ac 
546:    LDA  7,-510(7) 	CALL outnl
547:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
548:    LDC  2,0(6) 	Set return value to 0 
549:     LD  3,-1(1) 	Load return address 
550:     LD  1,0(1) 	Adjust fp 
551:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,551(7) 	Jump to init [backpatch] 
* BEGIN Init
552:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
553:    LDC  3,128(6) 	load size of array r
554:     ST  3,-2(0) 	save size of array r
555:    LDC  3,4(6) 	load size of array known
556:     ST  3,-131(0) 	save size of array known
557:    LDC  3,4(6) 	load size of array guess
558:     ST  3,-136(0) 	save size of array guess
* END init of globals
559:    LDA  1,-141(0) 	set first frame at end of globals 
560:     ST  1,0(1) 	store old fp (point to self) 
561:    LDA  3,1(7) 	Return address in ac 
562:    LDA  7,-118(7) 	Jump to main 
563:   HALT  0,0,0 	DONE! 
* END Init
