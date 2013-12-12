* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  walsh.c-
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
* BEGIN function pow
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:    LDC  3,1(6) 	Load constant 
 44:     ST  3,-5(1) 	Store variable ans
* EXPRESSION STMT
 45:     LD  3,-2(1) 	Load variable n
 46:     ST  3,-4(1) 	Store variable sqr
* WHILE
 47:    LDC  3,1(6) 	Load constant 
 48:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
 50:     LD  3,-3(1) 	Load variable p
 51:     ST  3,-6(1) 	Save left side 
 52:    LDC  3,2(6) 	Load constant 
 53:     LD  4,-6(1) 	Load left into ac1 
 54:    DIV  5,4,3 	Op % 
 55:    MUL  5,5,3 	 
 56:    SUB  3,4,5 	 
 57:     ST  3,-6(1) 	Save left side 
 58:    LDC  3,1(6) 	Load constant 
 59:     LD  4,-6(1) 	Load left into ac1 
 60:    SUB  4,4,3 	Op == 
 61:    LDC  3,1(6) 	True case 
 62:    JEQ  4,1(7) 	Jump if true 
 63:    LDC  3,0(6) 	False case 
 64:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 66:     LD  3,-5(1) 	Load variable ans
 67:     ST  3,-6(1) 	Save left side 
 68:     LD  3,-4(1) 	Load variable sqr
 69:     LD  4,-6(1) 	Load left into ac1 
 70:    MUL  3,4,3 	Op * 
 71:     ST  3,-5(1) 	Store variable ans
 65:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 72:     LD  3,-3(1) 	Load variable p
 73:     ST  3,-6(1) 	Save left side 
 74:    LDC  3,2(6) 	Load constant 
 75:     LD  4,-6(1) 	Load left into ac1 
 76:    DIV  3,4,3 	Op / 
 77:     ST  3,-3(1) 	Store variable p
* IF
 78:     LD  3,-3(1) 	Load variable p
 79:     ST  3,-6(1) 	Save left side 
 80:    LDC  3,0(6) 	Load constant 
 81:     LD  4,-6(1) 	Load left into ac1 
 82:    SUB  4,4,3 	Op == 
 83:    LDC  3,1(6) 	True case 
 84:    JEQ  4,1(7) 	Jump if true 
 85:    LDC  3,0(6) 	False case 
 86:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 88:     LD  3,-5(1) 	Load variable ans
 89:    LDA  2,0(3) 	Copy result to rt register 
 90:     LD  3,-1(1) 	Load return address 
 91:     LD  1,0(1) 	Adjust fp 
 92:    LDA  7,0(3) 	Return 
 87:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 93:     LD  3,-4(1) 	Load variable sqr
 94:     ST  3,-6(1) 	Save left side 
 95:     LD  3,-4(1) 	Load variable sqr
 96:     LD  4,-6(1) 	Load left into ac1 
 97:    MUL  3,4,3 	Op * 
 98:     ST  3,-4(1) 	Store variable sqr
* END compound statement
 99:    LDA  7,-53(7) 	go to beginning of loop 
 49:    LDA  7,50(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
100:    LDC  2,0(6) 	Set return value to 0 
101:     LD  3,-1(1) 	Load return address 
102:     LD  1,0(1) 	Adjust fp 
103:    LDA  7,0(3) 	Return 
* END of function pow
* BEGIN function getFunc
104:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
*                       Begin call to  input
105:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to input
106:    LDA  1,-6(1) 	Load address of new frame 
107:    LDA  3,1(7) 	Return address in ac 
108:    LDA  7,-108(7) 	CALL input
109:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
110:     ST  3,-3(1) 	Store variable numbits
111:     ST  3,-6(1) 	Save left side 
112:    LDC  3,0(6) 	Load constant 
113:     LD  4,-6(1) 	Load left into ac1 
114:    SUB  4,4,3 	Op == 
115:    LDC  3,1(6) 	True case 
116:    JEQ  4,1(7) 	Jump if true 
117:    LDC  3,0(6) 	False case 
118:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
120:    LDC  3,0(6) 	Load constant 
121:    LDA  2,0(3) 	Copy result to rt register 
122:     LD  3,-1(1) 	Load return address 
123:     LD  1,0(1) 	Adjust fp 
124:    LDA  7,0(3) 	Return 
119:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
*                       Begin call to  pow
125:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
126:    LDC  3,2(6) 	Load constant 
127:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
128:     LD  3,-3(1) 	Load variable numbits
129:     ST  3,-9(1) 	Store parameter 
*                       Jump to pow
130:    LDA  1,-6(1) 	Load address of new frame 
131:    LDA  3,1(7) 	Return address in ac 
132:    LDA  7,-91(7) 	CALL pow
133:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pow
134:     ST  3,-5(1) 	Store variable size
* EXPRESSION STMT
135:    LDC  3,0(6) 	Load constant 
136:     ST  3,-4(1) 	Store variable i
* WHILE
137:     LD  3,-4(1) 	Load variable i
138:     ST  3,-6(1) 	Save left side 
139:     LD  3,-5(1) 	Load variable size
140:     LD  4,-6(1) 	Load left into ac1 
141:    SUB  4,4,3 	Op < 
142:    LDC  3,1(6) 	True case 
143:    JLT  4,1(7) 	Jump if true 
144:    LDC  3,0(6) 	False case 
145:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
147:     LD  3,-4(1) 	Load variable i
148:     ST  3,-6(1) 	Save index 
*                       Begin call to  input
149:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Jump to input
150:    LDA  1,-7(1) 	Load address of new frame 
151:    LDA  3,1(7) 	Return address in ac 
152:    LDA  7,-152(7) 	CALL input
153:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
154:     LD  4,-6(1) 	Restore index 
155:     LD  5,-2(1) 	Load address of base of array f
156:    SUB  5,5,4 	Compute offset of value 
157:     ST  3,0(5) 	Store variable f
* EXPRESSION STMT
158:     LD  3,-4(1) 	Load variable i
159:     ST  3,-6(1) 	Save left side 
160:    LDC  3,1(6) 	Load constant 
161:     LD  4,-6(1) 	Load left into ac1 
162:    ADD  3,4,3 	Op + 
163:     ST  3,-4(1) 	Store variable i
* END compound statement
164:    LDA  7,-28(7) 	go to beginning of loop 
146:    LDA  7,18(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
165:     LD  3,-3(1) 	Load variable numbits
166:    LDA  2,0(3) 	Copy result to rt register 
167:     LD  3,-1(1) 	Load return address 
168:     LD  1,0(1) 	Adjust fp 
169:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
170:    LDC  2,0(6) 	Set return value to 0 
171:     LD  3,-1(1) 	Load return address 
172:     LD  1,0(1) 	Adjust fp 
173:    LDA  7,0(3) 	Return 
* END of function getFunc
* BEGIN function printFunc
174:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
175:    LDC  3,0(6) 	Load constant 
176:     ST  3,-4(1) 	Store variable i
* WHILE
177:     LD  3,-4(1) 	Load variable i
178:     ST  3,-5(1) 	Save left side 
179:     LD  3,-3(1) 	Load variable size
180:     LD  4,-5(1) 	Load left into ac1 
181:    SUB  4,4,3 	Op < 
182:    LDC  3,1(6) 	True case 
183:    JLT  4,1(7) 	Jump if true 
184:    LDC  3,0(6) 	False case 
185:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
187:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
188:     LD  3,-4(1) 	Load variable i
189:     LD  4,-2(1) 	Load address of base of array f
190:    SUB  3,4,3 	Compute offset of value 
191:     LD  3,0(3) 	Load the value 
192:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
193:    LDA  1,-5(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-190(7) 	CALL output
196:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
197:     LD  3,-4(1) 	Load variable i
198:     ST  3,-5(1) 	Save left side 
199:    LDC  3,1(6) 	Load constant 
200:     LD  4,-5(1) 	Load left into ac1 
201:    ADD  3,4,3 	Op + 
202:     ST  3,-4(1) 	Store variable i
* END compound statement
203:    LDA  7,-27(7) 	go to beginning of loop 
186:    LDA  7,17(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
204:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
205:    LDA  1,-5(1) 	Load address of new frame 
206:    LDA  3,1(7) 	Return address in ac 
207:    LDA  7,-171(7) 	CALL outnl
208:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
209:    LDC  2,0(6) 	Set return value to 0 
210:     LD  3,-1(1) 	Load return address 
211:     LD  1,0(1) 	Adjust fp 
212:    LDA  7,0(3) 	Return 
* END of function printFunc
* BEGIN function fwt
213:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
214:     LD  3,-4(1) 	Load variable size
215:     ST  3,-8(1) 	Save left side 
216:    LDC  3,2(6) 	Load constant 
217:     LD  4,-8(1) 	Load left into ac1 
218:    DIV  3,4,3 	Op / 
219:     ST  3,-4(1) 	Store variable size
* IF
220:     LD  3,-4(1) 	Load variable size
221:     ST  3,-8(1) 	Save left side 
222:    LDC  3,1(6) 	Load constant 
223:     LD  4,-8(1) 	Load left into ac1 
224:    SUB  4,4,3 	Op > 
225:    LDC  3,1(6) 	True case 
226:    JGT  4,1(7) 	Jump if true 
227:    LDC  3,0(6) 	False case 
228:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  fwt
230:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
231:     LD  3,-2(1) 	Load address of base of array w
232:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
233:     LD  3,-3(1) 	Load variable start
234:     ST  3,-11(1) 	Store parameter 
*                       Load param 3
235:     LD  3,-4(1) 	Load variable size
236:     ST  3,-12(1) 	Store parameter 
*                       Jump to fwt
237:    LDA  1,-8(1) 	Load address of new frame 
238:    LDA  3,1(7) 	Return address in ac 
239:    LDA  7,-27(7) 	CALL fwt
240:    LDA  3,0(2) 	Save the result in ac 
*                       End call to fwt
* EXPRESSION STMT
*                       Begin call to  fwt
241:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
242:     LD  3,-2(1) 	Load address of base of array w
243:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
244:     LD  3,-3(1) 	Load variable start
245:     ST  3,-11(1) 	Save left side 
246:     LD  3,-4(1) 	Load variable size
247:     LD  4,-11(1) 	Load left into ac1 
248:    ADD  3,4,3 	Op + 
249:     ST  3,-11(1) 	Store parameter 
*                       Load param 3
250:     LD  3,-4(1) 	Load variable size
251:     ST  3,-12(1) 	Store parameter 
*                       Jump to fwt
252:    LDA  1,-8(1) 	Load address of new frame 
253:    LDA  3,1(7) 	Return address in ac 
254:    LDA  7,-42(7) 	CALL fwt
255:    LDA  3,0(2) 	Save the result in ac 
*                       End call to fwt
* END compound statement
229:    LDA  7,26(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
256:     LD  3,-3(1) 	Load variable start
257:     ST  3,-5(1) 	Store variable a
* EXPRESSION STMT
258:     LD  3,-3(1) 	Load variable start
259:     ST  3,-8(1) 	Save left side 
260:     LD  3,-4(1) 	Load variable size
261:     LD  4,-8(1) 	Load left into ac1 
262:    ADD  3,4,3 	Op + 
263:     ST  3,-6(1) 	Store variable b
* WHILE
264:     LD  3,-5(1) 	Load variable a
265:     ST  3,-8(1) 	Save left side 
266:     LD  3,-3(1) 	Load variable start
267:     ST  3,-9(1) 	Save left side 
268:     LD  3,-4(1) 	Load variable size
269:     LD  4,-9(1) 	Load left into ac1 
270:    ADD  3,4,3 	Op + 
271:     LD  4,-8(1) 	Load left into ac1 
272:    SUB  4,4,3 	Op < 
273:    LDC  3,1(6) 	True case 
274:    JLT  4,1(7) 	Jump if true 
275:    LDC  3,0(6) 	False case 
276:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
278:     LD  3,-5(1) 	Load variable a
279:     LD  4,-2(1) 	Load address of base of array w
280:    SUB  3,4,3 	Compute offset of value 
281:     LD  3,0(3) 	Load the value 
282:     ST  3,-7(1) 	Store variable tmp
* EXPRESSION STMT
283:     LD  3,-5(1) 	Load variable a
284:     ST  3,-8(1) 	Save index 
285:     LD  3,-5(1) 	Load variable a
286:     LD  4,-2(1) 	Load address of base of array w
287:    SUB  3,4,3 	Compute offset of value 
288:     LD  3,0(3) 	Load the value 
289:     ST  3,-9(1) 	Save left side 
290:     LD  3,-6(1) 	Load variable b
291:     LD  4,-2(1) 	Load address of base of array w
292:    SUB  3,4,3 	Compute offset of value 
293:     LD  3,0(3) 	Load the value 
294:     LD  4,-9(1) 	Load left into ac1 
295:    ADD  3,4,3 	Op + 
296:     LD  4,-8(1) 	Restore index 
297:     LD  5,-2(1) 	Load address of base of array w
298:    SUB  5,5,4 	Compute offset of value 
299:     ST  3,0(5) 	Store variable w
* EXPRESSION STMT
300:     LD  3,-6(1) 	Load variable b
301:     ST  3,-8(1) 	Save index 
302:     LD  3,-7(1) 	Load variable tmp
303:     ST  3,-9(1) 	Save left side 
304:     LD  3,-6(1) 	Load variable b
305:     LD  4,-2(1) 	Load address of base of array w
306:    SUB  3,4,3 	Compute offset of value 
307:     LD  3,0(3) 	Load the value 
308:     LD  4,-9(1) 	Load left into ac1 
309:    SUB  3,4,3 	Op - 
310:     LD  4,-8(1) 	Restore index 
311:     LD  5,-2(1) 	Load address of base of array w
312:    SUB  5,5,4 	Compute offset of value 
313:     ST  3,0(5) 	Store variable w
* EXPRESSION STMT
314:     LD  3,-5(1) 	Load variable a
315:     ST  3,-8(1) 	Save left side 
316:    LDC  3,1(6) 	Load constant 
317:     LD  4,-8(1) 	Load left into ac1 
318:    ADD  3,4,3 	Op + 
319:     ST  3,-5(1) 	Store variable a
* EXPRESSION STMT
320:     LD  3,-6(1) 	Load variable b
321:     ST  3,-8(1) 	Save left side 
322:    LDC  3,1(6) 	Load constant 
323:     LD  4,-8(1) 	Load left into ac1 
324:    ADD  3,4,3 	Op + 
325:     ST  3,-6(1) 	Store variable b
* END compound statement
326:    LDA  7,-63(7) 	go to beginning of loop 
277:    LDA  7,49(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
327:    LDC  2,0(6) 	Set return value to 0 
328:     LD  3,-1(1) 	Load return address 
329:     LD  1,0(1) 	Adjust fp 
330:    LDA  7,0(3) 	Return 
* END of function fwt
* BEGIN function div
331:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
332:    LDC  3,0(6) 	Load constant 
333:     ST  3,-4(1) 	Store variable i
* WHILE
334:     LD  3,-4(1) 	Load variable i
335:     ST  3,-5(1) 	Save left side 
336:     LD  3,-3(1) 	Load variable size
337:     LD  4,-5(1) 	Load left into ac1 
338:    SUB  4,4,3 	Op < 
339:    LDC  3,1(6) 	True case 
340:    JLT  4,1(7) 	Jump if true 
341:    LDC  3,0(6) 	False case 
342:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
344:     LD  3,-4(1) 	Load variable i
345:     ST  3,-5(1) 	Save index 
346:     LD  3,-4(1) 	Load variable i
347:     LD  4,-2(1) 	Load address of base of array f
348:    SUB  3,4,3 	Compute offset of value 
349:     LD  3,0(3) 	Load the value 
350:     ST  3,-6(1) 	Save left side 
351:     LD  3,-3(1) 	Load variable size
352:     LD  4,-6(1) 	Load left into ac1 
353:    DIV  3,4,3 	Op / 
354:     LD  4,-5(1) 	Restore index 
355:     LD  5,-2(1) 	Load address of base of array f
356:    SUB  5,5,4 	Compute offset of value 
357:     ST  3,0(5) 	Store variable f
* EXPRESSION STMT
358:     LD  3,-4(1) 	load lhs variable i
359:    LDA  3,1(3) 	increment value of i
360:     ST  3,-4(1) 	Store variable i
* END compound statement
361:    LDA  7,-28(7) 	go to beginning of loop 
343:    LDA  7,18(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
362:    LDC  2,0(6) 	Set return value to 0 
363:     LD  3,-1(1) 	Load return address 
364:     LD  1,0(1) 	Adjust fp 
365:    LDA  7,0(3) 	Return 
* END of function div
* BEGIN function main
366:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
367:    LDC  3,256(6) 	load size of array f
368:     ST  3,-2(1) 	save size of array f
* WHILE
369:    LDC  3,1(6) 	Load constant 
370:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
*                       Begin call to  getFunc
372:     ST  1,-263(1) 	Store old fp in ghost frame 
*                       Load param 1
373:    LDA  3,-3(1) 	Load address of base of array f
374:     ST  3,-265(1) 	Store parameter 
*                       Jump to getFunc
375:    LDA  1,-263(1) 	Load address of new frame 
376:    LDA  3,1(7) 	Return address in ac 
377:    LDA  7,-274(7) 	CALL getFunc
378:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getFunc
379:     ST  3,-261(1) 	Store variable numbits
380:     ST  3,-263(1) 	Save left side 
381:    LDC  3,0(6) 	Load constant 
382:     LD  4,-263(1) 	Load left into ac1 
383:    SUB  4,4,3 	Op == 
384:    LDC  3,1(6) 	True case 
385:    JEQ  4,1(7) 	Jump if true 
386:    LDC  3,0(6) 	False case 
387:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
389:    LDC  3,0(6) 	Load constant 
390:    LDA  2,0(3) 	Copy result to rt register 
391:     LD  3,-1(1) 	Load return address 
392:     LD  1,0(1) 	Adjust fp 
393:    LDA  7,0(3) 	Return 
388:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
*                       Begin call to  pow
394:     ST  1,-263(1) 	Store old fp in ghost frame 
*                       Load param 1
395:    LDC  3,2(6) 	Load constant 
396:     ST  3,-265(1) 	Store parameter 
*                       Load param 2
397:     LD  3,-261(1) 	Load variable numbits
398:     ST  3,-266(1) 	Store parameter 
*                       Jump to pow
399:    LDA  1,-263(1) 	Load address of new frame 
400:    LDA  3,1(7) 	Return address in ac 
401:    LDA  7,-360(7) 	CALL pow
402:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pow
403:     ST  3,-260(1) 	Store variable size
* EXPRESSION STMT
404:     LD  3,-260(1) 	Load variable size
405:     ST  3,-263(1) 	Save left side 
406:    LDC  3,2(6) 	Load constant 
407:     LD  4,-263(1) 	Load left into ac1 
408:    DIV  3,4,3 	Op / 
409:     ST  3,-262(1) 	Store variable half
* EXPRESSION STMT
*                       Begin call to  fwt
410:     ST  1,-263(1) 	Store old fp in ghost frame 
*                       Load param 1
411:    LDA  3,-3(1) 	Load address of base of array f
412:     ST  3,-265(1) 	Store parameter 
*                       Load param 2
413:    LDC  3,0(6) 	Load constant 
414:     ST  3,-266(1) 	Store parameter 
*                       Load param 3
415:     LD  3,-260(1) 	Load variable size
416:     ST  3,-267(1) 	Store parameter 
*                       Jump to fwt
417:    LDA  1,-263(1) 	Load address of new frame 
418:    LDA  3,1(7) 	Return address in ac 
419:    LDA  7,-207(7) 	CALL fwt
420:    LDA  3,0(2) 	Save the result in ac 
*                       End call to fwt
* EXPRESSION STMT
*                       Begin call to  printFunc
421:     ST  1,-263(1) 	Store old fp in ghost frame 
*                       Load param 1
422:    LDA  3,-3(1) 	Load address of base of array f
423:     ST  3,-265(1) 	Store parameter 
*                       Load param 2
424:     LD  3,-260(1) 	Load variable size
425:     ST  3,-266(1) 	Store parameter 
*                       Jump to printFunc
426:    LDA  1,-263(1) 	Load address of new frame 
427:    LDA  3,1(7) 	Return address in ac 
428:    LDA  7,-255(7) 	CALL printFunc
429:    LDA  3,0(2) 	Save the result in ac 
*                       End call to printFunc
* EXPRESSION STMT
*                       Begin call to  fwt
430:     ST  1,-263(1) 	Store old fp in ghost frame 
*                       Load param 1
431:    LDA  3,-3(1) 	Load address of base of array f
432:     ST  3,-265(1) 	Store parameter 
*                       Load param 2
433:    LDC  3,0(6) 	Load constant 
434:     ST  3,-266(1) 	Store parameter 
*                       Load param 3
435:     LD  3,-260(1) 	Load variable size
436:     ST  3,-267(1) 	Store parameter 
*                       Jump to fwt
437:    LDA  1,-263(1) 	Load address of new frame 
438:    LDA  3,1(7) 	Return address in ac 
439:    LDA  7,-227(7) 	CALL fwt
440:    LDA  3,0(2) 	Save the result in ac 
*                       End call to fwt
* EXPRESSION STMT
*                       Begin call to  div
441:     ST  1,-263(1) 	Store old fp in ghost frame 
*                       Load param 1
442:    LDA  3,-3(1) 	Load address of base of array f
443:     ST  3,-265(1) 	Store parameter 
*                       Load param 2
444:     LD  3,-260(1) 	Load variable size
445:     ST  3,-266(1) 	Store parameter 
*                       Jump to div
446:    LDA  1,-263(1) 	Load address of new frame 
447:    LDA  3,1(7) 	Return address in ac 
448:    LDA  7,-118(7) 	CALL div
449:    LDA  3,0(2) 	Save the result in ac 
*                       End call to div
* EXPRESSION STMT
*                       Begin call to  printFunc
450:     ST  1,-263(1) 	Store old fp in ghost frame 
*                       Load param 1
451:    LDA  3,-3(1) 	Load address of base of array f
452:     ST  3,-265(1) 	Store parameter 
*                       Load param 2
453:     LD  3,-260(1) 	Load variable size
454:     ST  3,-266(1) 	Store parameter 
*                       Jump to printFunc
455:    LDA  1,-263(1) 	Load address of new frame 
456:    LDA  3,1(7) 	Return address in ac 
457:    LDA  7,-284(7) 	CALL printFunc
458:    LDA  3,0(2) 	Save the result in ac 
*                       End call to printFunc
* END compound statement
459:    LDA  7,-91(7) 	go to beginning of loop 
371:    LDA  7,88(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
460:    LDC  3,0(6) 	Load constant 
461:    LDA  2,0(3) 	Copy result to rt register 
462:     LD  3,-1(1) 	Load return address 
463:     LD  1,0(1) 	Adjust fp 
464:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
465:    LDC  2,0(6) 	Set return value to 0 
466:     LD  3,-1(1) 	Load return address 
467:     LD  1,0(1) 	Adjust fp 
468:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,468(7) 	Jump to init [backpatch] 
* BEGIN Init
469:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
470:    LDA  1,0(0) 	set first frame at end of globals 
471:     ST  1,0(1) 	store old fp (point to self) 
472:    LDA  3,1(7) 	Return address in ac 
473:    LDA  7,-108(7) 	Jump to main 
474:   HALT  0,0,0 	DONE! 
* END Init
