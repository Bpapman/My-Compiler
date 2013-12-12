* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  battleship.c-
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
* BEGIN function Print
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
 44:     LD  3,-2(1) 	Load variable what
 45:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
 46:    LDA  1,-3(1) 	Load address of new frame 
 47:    LDA  3,1(7) 	Return address in ac 
 48:    LDA  7,-43(7) 	CALL output
 49:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* END compound statement
* Add standard closing in case there is no return statement
 50:    LDC  2,0(6) 	Set return value to 0 
 51:     LD  3,-1(1) 	Load return address 
 52:     LD  1,0(1) 	Adjust fp 
 53:    LDA  7,0(3) 	Return 
* END of function Print
* BEGIN function NewLine
 54:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outnl
 55:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 56:    LDA  1,-2(1) 	Load address of new frame 
 57:    LDA  3,1(7) 	Return address in ac 
 58:    LDA  7,-22(7) 	CALL outnl
 59:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 60:    LDC  2,0(6) 	Set return value to 0 
 61:     LD  3,-1(1) 	Load return address 
 62:     LD  1,0(1) 	Adjust fp 
 63:    LDA  7,0(3) 	Return 
* END of function NewLine
* BEGIN function Display
 64:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 65:    LDC  3,0(6) 	Load constant 
 66:     ST  3,-4(1) 	Store variable r
* EXPRESSION STMT
*                       Begin call to  NewLine
 67:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
 68:    LDA  1,-6(1) 	Load address of new frame 
 69:    LDA  3,1(7) 	Return address in ac 
 70:    LDA  7,-17(7) 	CALL NewLine
 71:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* EXPRESSION STMT
*                       Begin call to  Print
 72:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 73:     LD  3,-1(0) 	Load variable NumShots
 74:     ST  3,-8(1) 	Store parameter 
*                       Jump to Print
 75:    LDA  1,-6(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-36(7) 	CALL Print
 78:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Print
* EXPRESSION STMT
*                       Begin call to  NewLine
 79:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
 80:    LDA  1,-6(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-29(7) 	CALL NewLine
 83:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* WHILE
 84:     LD  3,-4(1) 	Load variable r
 85:     ST  3,-6(1) 	Save left side 
 86:     LD  3,-3(1) 	Load variable dimension
 87:     LD  4,-6(1) 	Load left into ac1 
 88:    SUB  4,4,3 	Op < 
 89:    LDC  3,1(6) 	True case 
 90:    JLT  4,1(7) 	Jump if true 
 91:    LDC  3,0(6) 	False case 
 92:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 94:    LDC  3,0(6) 	Load constant 
 95:     ST  3,-5(1) 	Store variable c
* WHILE
 96:     LD  3,-5(1) 	Load variable c
 97:     ST  3,-6(1) 	Save left side 
 98:     LD  3,-3(1) 	Load variable dimension
 99:     LD  4,-6(1) 	Load left into ac1 
100:    SUB  4,4,3 	Op < 
101:    LDC  3,1(6) 	True case 
102:    JLT  4,1(7) 	Jump if true 
103:    LDC  3,0(6) 	False case 
104:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
106:     LD  3,-4(1) 	Load variable r
107:     ST  3,-6(1) 	Save left side 
108:    LDC  3,10(6) 	Load constant 
109:     LD  4,-6(1) 	Load left into ac1 
110:    MUL  3,4,3 	Op * 
111:     ST  3,-6(1) 	Save left side 
112:     LD  3,-5(1) 	Load variable c
113:     LD  4,-6(1) 	Load left into ac1 
114:    ADD  3,4,3 	Op + 
115:     LD  4,-2(1) 	Load address of base of array arr
116:    SUB  3,4,3 	Compute offset of value 
117:     LD  3,0(3) 	Load the value 
118:     ST  3,-6(1) 	Save left side 
119:    LDC  3,7(6) 	Load constant 
120:     LD  4,-6(1) 	Load left into ac1 
121:    SUB  4,4,3 	Op == 
122:    LDC  3,1(6) 	True case 
123:    JEQ  4,1(7) 	Jump if true 
124:    LDC  3,0(6) 	False case 
125:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  Print
127:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
128:    LDC  3,4(6) 	Load constant 
129:     ST  3,-8(1) 	Store parameter 
*                       Jump to Print
130:    LDA  1,-6(1) 	Load address of new frame 
131:    LDA  3,1(7) 	Return address in ac 
132:    LDA  7,-91(7) 	CALL Print
133:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Print
* ELSE
126:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  Print
135:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
136:     LD  3,-4(1) 	Load variable r
137:     ST  3,-8(1) 	Save left side 
138:    LDC  3,10(6) 	Load constant 
139:     LD  4,-8(1) 	Load left into ac1 
140:    MUL  3,4,3 	Op * 
141:     ST  3,-8(1) 	Save left side 
142:     LD  3,-5(1) 	Load variable c
143:     LD  4,-8(1) 	Load left into ac1 
144:    ADD  3,4,3 	Op + 
145:     LD  4,-2(1) 	Load address of base of array arr
146:    SUB  3,4,3 	Compute offset of value 
147:     LD  3,0(3) 	Load the value 
148:     ST  3,-8(1) 	Store parameter 
*                       Jump to Print
149:    LDA  1,-6(1) 	Load address of new frame 
150:    LDA  3,1(7) 	Return address in ac 
151:    LDA  7,-110(7) 	CALL Print
152:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Print
134:    LDA  7,18(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
153:     LD  3,-5(1) 	Load variable c
154:     ST  3,-6(1) 	Save left side 
155:    LDC  3,1(6) 	Load constant 
156:     LD  4,-6(1) 	Load left into ac1 
157:    ADD  3,4,3 	Op + 
158:     ST  3,-5(1) 	Store variable c
* END compound statement
159:    LDA  7,-64(7) 	go to beginning of loop 
105:    LDA  7,54(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  NewLine
160:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
161:    LDA  1,-6(1) 	Load address of new frame 
162:    LDA  3,1(7) 	Return address in ac 
163:    LDA  7,-110(7) 	CALL NewLine
164:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* EXPRESSION STMT
165:     LD  3,-4(1) 	load lhs variable r
166:    LDA  3,1(3) 	increment value of r
167:     ST  3,-4(1) 	Store variable r
* END compound statement
168:    LDA  7,-85(7) 	go to beginning of loop 
 93:    LDA  7,75(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
169:    LDC  2,0(6) 	Set return value to 0 
170:     LD  3,-1(1) 	Load return address 
171:     LD  1,0(1) 	Adjust fp 
172:    LDA  7,0(3) 	Return 
* END of function Display
* BEGIN function Randomize
173:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
174:     LD  3,-2(1) 	Load variable seed
175:     ST  3,-4(1) 	Save left side 
176:    LDC  3,2(6) 	Load constant 
177:     LD  4,-4(1) 	Load left into ac1 
178:    DIV  5,4,3 	Op % 
179:    MUL  5,5,3 	 
180:    SUB  3,4,5 	 
181:     ST  3,-4(1) 	Save left side 
182:    LDC  3,0(6) 	Load constant 
183:     LD  4,-4(1) 	Load left into ac1 
184:    SUB  4,4,3 	Op == 
185:    LDC  3,1(6) 	True case 
186:    JEQ  4,1(7) 	Jump if true 
187:    LDC  3,0(6) 	False case 
188:     ST  3,-3(0) 	Store variable iseven
* EXPRESSION STMT
189:     LD  3,-3(1) 	Load variable dim
190:     LD  4,-2(1) 	load lhs variable seed
191:    ADD  3,4,3 	op += 
192:     ST  3,-2(1) 	Store variable seed
* EXPRESSION STMT
193:    LDC  3,17(6) 	Load constant 
194:     ST  3,-4(1) 	Save left side 
195:     LD  3,-2(1) 	Load variable seed
196:     LD  4,-4(1) 	Load left into ac1 
197:    MUL  3,4,3 	Op * 
198:     ST  3,-4(1) 	Save left side 
199:    LDC  3,11(6) 	Load constant 
200:     LD  4,-4(1) 	Load left into ac1 
201:    ADD  3,4,3 	Op + 
202:     ST  3,-2(1) 	Store variable seed
* EXPRESSION STMT
203:     LD  3,-2(1) 	Load variable seed
204:     ST  3,-4(1) 	Save left side 
205:     LD  3,-3(1) 	Load variable dim
206:     ST  3,-5(1) 	Save left side 
207:     LD  3,-3(1) 	Load variable dim
208:     LD  4,-5(1) 	Load left into ac1 
209:    MUL  3,4,3 	Op * 
210:     LD  4,-4(1) 	Load left into ac1 
211:    DIV  5,4,3 	Op % 
212:    MUL  5,5,3 	 
213:    SUB  3,4,5 	 
214:     ST  3,-2(1) 	Store variable seed
* RETURN
215:     LD  3,-2(1) 	Load variable seed
216:    LDA  2,0(3) 	Copy result to rt register 
217:     LD  3,-1(1) 	Load return address 
218:     LD  1,0(1) 	Adjust fp 
219:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
220:    LDC  2,0(6) 	Set return value to 0 
221:     LD  3,-1(1) 	Load return address 
222:     LD  1,0(1) 	Adjust fp 
223:    LDA  7,0(3) 	Return 
* END of function Randomize
* BEGIN function HideShip
224:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  Randomize
225:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  input
226:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Jump to input
227:    LDA  1,-10(1) 	Load address of new frame 
228:    LDA  3,1(7) 	Return address in ac 
229:    LDA  7,-229(7) 	CALL input
230:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
231:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
232:     LD  3,-3(1) 	Load variable dimen
233:     ST  3,-11(1) 	Store parameter 
*                       Jump to Randomize
234:    LDA  1,-8(1) 	Load address of new frame 
235:    LDA  3,1(7) 	Return address in ac 
236:    LDA  7,-64(7) 	CALL Randomize
237:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Randomize
238:     ST  3,-4(1) 	Store variable pos
* EXPRESSION STMT
239:     LD  3,-4(1) 	Load variable pos
240:     ST  3,-8(1) 	Save left side 
241:     LD  3,-3(1) 	Load variable dimen
242:     LD  4,-8(1) 	Load left into ac1 
243:    DIV  3,4,3 	Op / 
244:     ST  3,-5(1) 	Store variable row
* EXPRESSION STMT
245:     LD  3,-4(1) 	Load variable pos
246:     ST  3,-8(1) 	Save left side 
247:     LD  3,-4(1) 	Load variable pos
248:     ST  3,-9(1) 	Save left side 
249:     LD  3,-3(1) 	Load variable dimen
250:     LD  4,-9(1) 	Load left into ac1 
251:    DIV  3,4,3 	Op / 
252:     ST  3,-9(1) 	Save left side 
253:     LD  3,-3(1) 	Load variable dimen
254:     LD  4,-9(1) 	Load left into ac1 
255:    MUL  3,4,3 	Op * 
256:     LD  4,-8(1) 	Load left into ac1 
257:    SUB  3,4,3 	Op - 
258:     ST  3,-6(1) 	Store variable col
* IF
259:     LD  3,-3(0) 	Load variable iseven
260:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* IF
262:     LD  3,-6(1) 	Load variable col
263:     ST  3,-8(1) 	Save left side 
264:     LD  3,-3(1) 	Load variable dimen
265:     ST  3,-9(1) 	Save left side 
266:     LD  3,0(0) 	Load variable shipsize
267:     LD  4,-9(1) 	Load left into ac1 
268:    SUB  3,4,3 	Op - 
269:     LD  4,-8(1) 	Load left into ac1 
270:    SUB  4,4,3 	Op > 
271:    LDC  3,1(6) 	True case 
272:    JGT  4,1(7) 	Jump if true 
273:    LDC  3,0(6) 	False case 
274:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
276:     LD  3,-3(1) 	Load variable dimen
277:     ST  3,-8(1) 	Save left side 
278:     LD  3,0(0) 	Load variable shipsize
279:     LD  4,-8(1) 	Load left into ac1 
280:    SUB  3,4,3 	Op - 
281:     ST  3,-6(1) 	Store variable col
275:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
282:    LDC  3,0(6) 	Load constant 
283:     ST  3,-7(1) 	Store variable i
* WHILE
284:     LD  3,-7(1) 	Load variable i
285:     ST  3,-8(1) 	Save left side 
286:     LD  3,0(0) 	Load variable shipsize
287:     LD  4,-8(1) 	Load left into ac1 
288:    SUB  4,4,3 	Op < 
289:    LDC  3,1(6) 	True case 
290:    JLT  4,1(7) 	Jump if true 
291:    LDC  3,0(6) 	False case 
292:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
294:     LD  3,-5(1) 	Load variable row
295:     ST  3,-8(1) 	Save left side 
296:     LD  3,-3(1) 	Load variable dimen
297:     LD  4,-8(1) 	Load left into ac1 
298:    MUL  3,4,3 	Op * 
299:     ST  3,-8(1) 	Save left side 
300:     LD  3,-6(1) 	Load variable col
301:     LD  4,-8(1) 	Load left into ac1 
302:    ADD  3,4,3 	Op + 
303:     ST  3,-8(1) 	Save index 
304:    LDC  3,7(6) 	Load constant 
305:     LD  4,-8(1) 	Restore index 
306:     LD  5,-2(1) 	Load address of base of array arr
307:    SUB  5,5,4 	Compute offset of value 
308:     ST  3,0(5) 	Store variable arr
* EXPRESSION STMT
309:     LD  3,-6(1) 	load lhs variable col
310:    LDA  3,1(3) 	increment value of col
311:     ST  3,-6(1) 	Store variable col
* EXPRESSION STMT
312:     LD  3,-7(1) 	load lhs variable i
313:    LDA  3,1(3) 	increment value of i
314:     ST  3,-7(1) 	Store variable i
* END compound statement
315:    LDA  7,-32(7) 	go to beginning of loop 
293:    LDA  7,22(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* ELSE
261:    LDA  7,55(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
317:     LD  3,-5(1) 	Load variable row
318:     ST  3,-8(1) 	Save left side 
319:     LD  3,-3(1) 	Load variable dimen
320:     ST  3,-9(1) 	Save left side 
321:     LD  3,0(0) 	Load variable shipsize
322:     LD  4,-9(1) 	Load left into ac1 
323:    SUB  3,4,3 	Op - 
324:     LD  4,-8(1) 	Load left into ac1 
325:    SUB  4,4,3 	Op > 
326:    LDC  3,1(6) 	True case 
327:    JGT  4,1(7) 	Jump if true 
328:    LDC  3,0(6) 	False case 
329:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
331:     LD  3,-3(1) 	Load variable dimen
332:     ST  3,-8(1) 	Save left side 
333:     LD  3,0(0) 	Load variable shipsize
334:     LD  4,-8(1) 	Load left into ac1 
335:    SUB  3,4,3 	Op - 
336:     ST  3,-5(1) 	Store variable row
330:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
337:    LDC  3,0(6) 	Load constant 
338:     ST  3,-7(1) 	Store variable i
* WHILE
339:     LD  3,-7(1) 	Load variable i
340:     ST  3,-8(1) 	Save left side 
341:     LD  3,0(0) 	Load variable shipsize
342:     LD  4,-8(1) 	Load left into ac1 
343:    SUB  4,4,3 	Op < 
344:    LDC  3,1(6) 	True case 
345:    JLT  4,1(7) 	Jump if true 
346:    LDC  3,0(6) 	False case 
347:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
349:     LD  3,-5(1) 	Load variable row
350:     ST  3,-8(1) 	Save left side 
351:     LD  3,-3(1) 	Load variable dimen
352:     LD  4,-8(1) 	Load left into ac1 
353:    MUL  3,4,3 	Op * 
354:     ST  3,-8(1) 	Save left side 
355:     LD  3,-6(1) 	Load variable col
356:     LD  4,-8(1) 	Load left into ac1 
357:    ADD  3,4,3 	Op + 
358:     ST  3,-8(1) 	Save index 
359:    LDC  3,7(6) 	Load constant 
360:     LD  4,-8(1) 	Restore index 
361:     LD  5,-2(1) 	Load address of base of array arr
362:    SUB  5,5,4 	Compute offset of value 
363:     ST  3,0(5) 	Store variable arr
* EXPRESSION STMT
364:     LD  3,-3(1) 	Load variable dimen
365:     LD  4,-6(1) 	load lhs variable col
366:    ADD  3,4,3 	op += 
367:     ST  3,-6(1) 	Store variable col
* EXPRESSION STMT
368:     LD  3,-7(1) 	load lhs variable i
369:    LDA  3,1(3) 	increment value of i
370:     ST  3,-7(1) 	Store variable i
* END compound statement
371:    LDA  7,-33(7) 	go to beginning of loop 
348:    LDA  7,23(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
316:    LDA  7,55(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
372:    LDC  2,0(6) 	Set return value to 0 
373:     LD  3,-1(1) 	Load return address 
374:     LD  1,0(1) 	Adjust fp 
375:    LDA  7,0(3) 	Return 
* END of function HideShip
* BEGIN function Aim
376:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
377:    LDC  3,666(6) 	Load constant 
378:    LDC  4,0(6) 	Load 0 
379:    SUB  3,4,3 	Op unary - 
380:     ST  3,-2(1) 	Store variable shot
* WHILE
381:     LD  3,-2(1) 	Load variable shot
382:     ST  3,-3(1) 	Save left side 
383:    LDC  3,666(6) 	Load constant 
384:    LDC  4,0(6) 	Load 0 
385:    SUB  3,4,3 	Op unary - 
386:     LD  4,-3(1) 	Load left into ac1 
387:    SUB  4,4,3 	Op == 
388:    LDC  3,1(6) 	True case 
389:    JEQ  4,1(7) 	Jump if true 
390:    LDC  3,0(6) 	False case 
391:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  input
393:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to input
394:    LDA  1,-3(1) 	Load address of new frame 
395:    LDA  3,1(7) 	Return address in ac 
396:    LDA  7,-396(7) 	CALL input
397:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
398:     ST  3,-2(1) 	Store variable shot
* IF
399:     LD  3,-2(1) 	Load variable shot
400:     ST  3,-3(1) 	Save left side 
401:    LDC  3,0(6) 	Load constant 
402:     LD  4,-3(1) 	Load left into ac1 
403:    SUB  4,4,3 	Op < 
404:    LDC  3,1(6) 	True case 
405:    JLT  4,1(7) 	Jump if true 
406:    LDC  3,0(6) 	False case 
407:     ST  3,-3(1) 	Save left side 
408:     LD  3,-2(1) 	Load variable shot
409:     ST  3,-4(1) 	Save left side 
410:    LDC  3,99(6) 	Load constant 
411:     LD  4,-4(1) 	Load left into ac1 
412:    SUB  4,4,3 	Op > 
413:    LDC  3,1(6) 	True case 
414:    JGT  4,1(7) 	Jump if true 
415:    LDC  3,0(6) 	False case 
416:     LD  4,-3(1) 	Load left into ac1 
417:    JGT  3,1(7) 	Op OR 
418:    LDA  3,0(4) 	 
419:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
421:    LDC  3,666(6) 	Load constant 
422:    LDC  4,0(6) 	Load 0 
423:    SUB  3,4,3 	Op unary - 
424:     ST  3,-2(1) 	Store variable shot
* EXPRESSION STMT
*                       Begin call to  NewLine
425:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
426:    LDA  1,-3(1) 	Load address of new frame 
427:    LDA  3,1(7) 	Return address in ac 
428:    LDA  7,-375(7) 	CALL NewLine
429:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* EXPRESSION STMT
*                       Begin call to  Print
430:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
431:     LD  3,-2(1) 	Load variable shot
432:     ST  3,-5(1) 	Store parameter 
*                       Jump to Print
433:    LDA  1,-3(1) 	Load address of new frame 
434:    LDA  3,1(7) 	Return address in ac 
435:    LDA  7,-394(7) 	CALL Print
436:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Print
* EXPRESSION STMT
*                       Begin call to  NewLine
437:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
438:    LDA  1,-3(1) 	Load address of new frame 
439:    LDA  3,1(7) 	Return address in ac 
440:    LDA  7,-387(7) 	CALL NewLine
441:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* END compound statement
420:    LDA  7,21(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
442:    LDA  7,-62(7) 	go to beginning of loop 
392:    LDA  7,50(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  NewLine
443:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
444:    LDA  1,-3(1) 	Load address of new frame 
445:    LDA  3,1(7) 	Return address in ac 
446:    LDA  7,-393(7) 	CALL NewLine
447:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* RETURN
448:     LD  3,-2(1) 	Load variable shot
449:    LDA  2,0(3) 	Copy result to rt register 
450:     LD  3,-1(1) 	Load return address 
451:     LD  1,0(1) 	Adjust fp 
452:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
453:    LDC  2,0(6) 	Set return value to 0 
454:     LD  3,-1(1) 	Load return address 
455:     LD  1,0(1) 	Adjust fp 
456:    LDA  7,0(3) 	Return 
* END of function Aim
* BEGIN function RevealShip
457:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
458:    LDC  3,0(6) 	Load constant 
459:     ST  3,-4(1) 	Store variable r
* EXPRESSION STMT
*                       Begin call to  NewLine
460:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
461:    LDA  1,-6(1) 	Load address of new frame 
462:    LDA  3,1(7) 	Return address in ac 
463:    LDA  7,-410(7) 	CALL NewLine
464:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* WHILE
465:     LD  3,-4(1) 	Load variable r
466:     ST  3,-6(1) 	Save left side 
467:     LD  3,-3(1) 	Load variable dimension
468:     LD  4,-6(1) 	Load left into ac1 
469:    SUB  4,4,3 	Op < 
470:    LDC  3,1(6) 	True case 
471:    JLT  4,1(7) 	Jump if true 
472:    LDC  3,0(6) 	False case 
473:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
475:    LDC  3,0(6) 	Load constant 
476:     ST  3,-5(1) 	Store variable c
* WHILE
477:     LD  3,-5(1) 	Load variable c
478:     ST  3,-6(1) 	Save left side 
479:     LD  3,-3(1) 	Load variable dimension
480:     LD  4,-6(1) 	Load left into ac1 
481:    SUB  4,4,3 	Op < 
482:    LDC  3,1(6) 	True case 
483:    JLT  4,1(7) 	Jump if true 
484:    LDC  3,0(6) 	False case 
485:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
487:     LD  3,-4(1) 	Load variable r
488:     ST  3,-6(1) 	Save left side 
489:    LDC  3,10(6) 	Load constant 
490:     LD  4,-6(1) 	Load left into ac1 
491:    MUL  3,4,3 	Op * 
492:     ST  3,-6(1) 	Save left side 
493:     LD  3,-5(1) 	Load variable c
494:     LD  4,-6(1) 	Load left into ac1 
495:    ADD  3,4,3 	Op + 
496:     LD  4,-2(1) 	Load address of base of array arr
497:    SUB  3,4,3 	Compute offset of value 
498:     LD  3,0(3) 	Load the value 
499:     ST  3,-6(1) 	Save left side 
500:    LDC  3,4(6) 	Load constant 
501:     LD  4,-6(1) 	Load left into ac1 
502:    SUB  4,4,3 	Op == 
503:    LDC  3,1(6) 	True case 
504:    JEQ  4,1(7) 	Jump if true 
505:    LDC  3,0(6) 	False case 
506:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  Print
508:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
509:    LDC  3,2(6) 	Load constant 
510:     ST  3,-8(1) 	Store parameter 
*                       Jump to Print
511:    LDA  1,-6(1) 	Load address of new frame 
512:    LDA  3,1(7) 	Return address in ac 
513:    LDA  7,-472(7) 	CALL Print
514:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Print
* ELSE
507:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  Print
516:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
517:     LD  3,-4(1) 	Load variable r
518:     ST  3,-8(1) 	Save left side 
519:    LDC  3,10(6) 	Load constant 
520:     LD  4,-8(1) 	Load left into ac1 
521:    MUL  3,4,3 	Op * 
522:     ST  3,-8(1) 	Save left side 
523:     LD  3,-5(1) 	Load variable c
524:     LD  4,-8(1) 	Load left into ac1 
525:    ADD  3,4,3 	Op + 
526:     LD  4,-2(1) 	Load address of base of array arr
527:    SUB  3,4,3 	Compute offset of value 
528:     LD  3,0(3) 	Load the value 
529:     ST  3,-8(1) 	Store parameter 
*                       Jump to Print
530:    LDA  1,-6(1) 	Load address of new frame 
531:    LDA  3,1(7) 	Return address in ac 
532:    LDA  7,-491(7) 	CALL Print
533:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Print
515:    LDA  7,18(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
534:     LD  3,-5(1) 	Load variable c
535:     ST  3,-6(1) 	Save left side 
536:    LDC  3,1(6) 	Load constant 
537:     LD  4,-6(1) 	Load left into ac1 
538:    ADD  3,4,3 	Op + 
539:     ST  3,-5(1) 	Store variable c
* END compound statement
540:    LDA  7,-64(7) 	go to beginning of loop 
486:    LDA  7,54(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  NewLine
541:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
542:    LDA  1,-6(1) 	Load address of new frame 
543:    LDA  3,1(7) 	Return address in ac 
544:    LDA  7,-491(7) 	CALL NewLine
545:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* EXPRESSION STMT
546:     LD  3,-4(1) 	load lhs variable r
547:    LDA  3,1(3) 	increment value of r
548:     ST  3,-4(1) 	Store variable r
* END compound statement
549:    LDA  7,-85(7) 	go to beginning of loop 
474:    LDA  7,75(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
550:    LDC  2,0(6) 	Set return value to 0 
551:     LD  3,-1(1) 	Load return address 
552:     LD  1,0(1) 	Adjust fp 
553:    LDA  7,0(3) 	Return 
* END of function RevealShip
* BEGIN function Fire
554:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
555:     LD  3,-3(1) 	Load variable shot
556:     LD  4,-2(1) 	Load address of base of array arr
557:    SUB  3,4,3 	Compute offset of value 
558:     LD  3,0(3) 	Load the value 
559:     ST  3,-4(1) 	Save left side 
560:    LDC  3,7(6) 	Load constant 
561:     LD  4,-4(1) 	Load left into ac1 
562:    SUB  4,4,3 	Op == 
563:    LDC  3,1(6) 	True case 
564:    JEQ  4,1(7) 	Jump if true 
565:    LDC  3,0(6) 	False case 
566:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
568:     LD  3,-3(1) 	Load variable shot
569:     ST  3,-4(1) 	Save index 
570:    LDC  3,1(6) 	Load constant 
571:     LD  4,-4(1) 	Restore index 
572:     LD  5,-2(1) 	Load address of base of array arr
573:    SUB  5,5,4 	Compute offset of value 
574:     ST  3,0(5) 	Store variable arr
* EXPRESSION STMT
575:     LD  3,-2(0) 	load lhs variable NumHits
576:    LDA  3,1(3) 	increment value of NumHits
577:     ST  3,-2(0) 	Store variable NumHits
* IF
578:     LD  3,-1(0) 	Load variable NumShots
579:     ST  3,-4(1) 	Save left side 
580:    LDC  3,1(6) 	Load constant 
581:     LD  4,-4(1) 	Load left into ac1 
582:    SUB  4,4,3 	Op == 
583:    LDC  3,1(6) 	True case 
584:    JEQ  4,1(7) 	Jump if true 
585:    LDC  3,0(6) 	False case 
586:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
588:     LD  3,-1(0) 	Load variable NumShots
589:     ST  3,-4(1) 	Save left side 
590:    LDC  3,1(6) 	Load constant 
591:     LD  4,-4(1) 	Load left into ac1 
592:    ADD  3,4,3 	Op + 
593:     ST  3,-1(0) 	Store variable NumShots
587:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* ELSE
567:    LDA  7,27(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
595:     LD  3,-3(1) 	Load variable shot
596:     ST  3,-4(1) 	Save index 
597:    LDC  3,0(6) 	Load constant 
598:     LD  4,-4(1) 	Restore index 
599:     LD  5,-2(1) 	Load address of base of array arr
600:    SUB  5,5,4 	Compute offset of value 
601:     ST  3,0(5) 	Store variable arr
* END compound statement
594:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* RETURN
602:     LD  3,-2(0) 	Load variable NumHits
603:    LDA  2,0(3) 	Copy result to rt register 
604:     LD  3,-1(1) 	Load return address 
605:     LD  1,0(1) 	Adjust fp 
606:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
607:    LDC  2,0(6) 	Set return value to 0 
608:     LD  3,-1(1) 	Load return address 
609:     LD  1,0(1) 	Adjust fp 
610:    LDA  7,0(3) 	Return 
* END of function Fire
* BEGIN function main
611:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
612:    LDC  3,100(6) 	load size of array Ocean
613:     ST  3,-2(1) 	save size of array Ocean
* EXPRESSION STMT
614:    LDC  3,4(6) 	Load constant 
615:     ST  3,0(0) 	Store variable shipsize
* EXPRESSION STMT
616:    LDC  3,0(6) 	Load constant 
617:     ST  3,-103(1) 	Store variable i
* WHILE
618:     LD  3,-103(1) 	Load variable i
619:     ST  3,-106(1) 	Save left side 
620:    LDC  3,100(6) 	Load constant 
621:     LD  4,-106(1) 	Load left into ac1 
622:    SUB  4,4,3 	Op < 
623:    LDC  3,1(6) 	True case 
624:    JLT  4,1(7) 	Jump if true 
625:    LDC  3,0(6) 	False case 
626:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
628:     LD  3,-103(1) 	Load variable i
629:     ST  3,-106(1) 	Save index 
630:    LDC  3,4(6) 	Load constant 
631:     LD  4,-106(1) 	Restore index 
632:    LDA  5,-3(1) 	Load address of base of array Ocean
633:    SUB  5,5,4 	Compute offset of value 
634:     ST  3,0(5) 	Store variable Ocean
* EXPRESSION STMT
635:     LD  3,-103(1) 	load lhs variable i
636:    LDA  3,1(3) 	increment value of i
637:     ST  3,-103(1) 	Store variable i
* END compound statement
638:    LDA  7,-21(7) 	go to beginning of loop 
627:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  HideShip
639:     ST  1,-106(1) 	Store old fp in ghost frame 
*                       Load param 1
640:    LDA  3,-3(1) 	Load address of base of array Ocean
641:     ST  3,-108(1) 	Store parameter 
*                       Load param 2
642:    LDC  3,10(6) 	Load constant 
643:     ST  3,-109(1) 	Store parameter 
*                       Jump to HideShip
644:    LDA  1,-106(1) 	Load address of new frame 
645:    LDA  3,1(7) 	Return address in ac 
646:    LDA  7,-423(7) 	CALL HideShip
647:    LDA  3,0(2) 	Save the result in ac 
*                       End call to HideShip
* EXPRESSION STMT
648:    LDC  3,0(6) 	Load constant 
649:     ST  3,-105(1) 	Store variable bGotit
* EXPRESSION STMT
650:    LDC  3,10(6) 	Load constant 
651:     ST  3,-1(0) 	Store variable NumShots
* EXPRESSION STMT
652:    LDC  3,0(6) 	Load constant 
653:     ST  3,-2(0) 	Store variable NumHits
* WHILE
654:     LD  3,-1(0) 	Load variable NumShots
655:     ST  3,-106(1) 	Save left side 
656:    LDC  3,0(6) 	Load constant 
657:     LD  4,-106(1) 	Load left into ac1 
658:    SUB  4,4,3 	Op > 
659:    LDC  3,1(6) 	True case 
660:    JGT  4,1(7) 	Jump if true 
661:    LDC  3,0(6) 	False case 
662:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  Display
664:     ST  1,-106(1) 	Store old fp in ghost frame 
*                       Load param 1
665:    LDA  3,-3(1) 	Load address of base of array Ocean
666:     ST  3,-108(1) 	Store parameter 
*                       Load param 2
667:    LDC  3,10(6) 	Load constant 
668:     ST  3,-109(1) 	Store parameter 
*                       Jump to Display
669:    LDA  1,-106(1) 	Load address of new frame 
670:    LDA  3,1(7) 	Return address in ac 
671:    LDA  7,-608(7) 	CALL Display
672:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Display
* EXPRESSION STMT
*                       Begin call to  Aim
673:     ST  1,-106(1) 	Store old fp in ghost frame 
*                       Jump to Aim
674:    LDA  1,-106(1) 	Load address of new frame 
675:    LDA  3,1(7) 	Return address in ac 
676:    LDA  7,-301(7) 	CALL Aim
677:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Aim
678:     ST  3,-104(1) 	Store variable Shot
* IF
*                       Begin call to  Fire
679:     ST  1,-106(1) 	Store old fp in ghost frame 
*                       Load param 1
680:    LDA  3,-3(1) 	Load address of base of array Ocean
681:     ST  3,-108(1) 	Store parameter 
*                       Load param 2
682:     LD  3,-104(1) 	Load variable Shot
683:     ST  3,-109(1) 	Store parameter 
*                       Jump to Fire
684:    LDA  1,-106(1) 	Load address of new frame 
685:    LDA  3,1(7) 	Return address in ac 
686:    LDA  7,-133(7) 	CALL Fire
687:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Fire
688:     ST  3,-106(1) 	Save left side 
689:     LD  3,0(0) 	Load variable shipsize
690:     LD  4,-106(1) 	Load left into ac1 
691:    SUB  4,4,3 	Op == 
692:    LDC  3,1(6) 	True case 
693:    JEQ  4,1(7) 	Jump if true 
694:    LDC  3,0(6) 	False case 
695:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
697:    LDC  3,1(6) 	Load constant 
698:     ST  3,-105(1) 	Store variable bGotit
* BREAK
699:    LDA  7,-37(7) 	break 
* END compound statement
696:    LDA  7,3(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
700:    LDC  3,1(6) 	Load constant 
701:     LD  4,-1(0) 	load lhs variable NumShots
702:    SUB  3,4,3 	op -= 
703:     ST  3,-1(0) 	Store variable NumShots
* END compound statement
704:    LDA  7,-51(7) 	go to beginning of loop 
663:    LDA  7,41(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  NewLine
705:     ST  1,-106(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
706:    LDA  1,-106(1) 	Load address of new frame 
707:    LDA  3,1(7) 	Return address in ac 
708:    LDA  7,-655(7) 	CALL NewLine
709:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* EXPRESSION STMT
710:    LDC  3,0(6) 	Load constant 
711:     ST  3,-103(1) 	Store variable i
* WHILE
712:     LD  3,-103(1) 	Load variable i
713:     ST  3,-106(1) 	Save left side 
714:    LDC  3,20(6) 	Load constant 
715:     LD  4,-106(1) 	Load left into ac1 
716:    SUB  4,4,3 	Op < 
717:    LDC  3,1(6) 	True case 
718:    JLT  4,1(7) 	Jump if true 
719:    LDC  3,0(6) 	False case 
720:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
722:     LD  3,-105(1) 	Load variable bGotit
723:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  Print
725:     ST  1,-106(1) 	Store old fp in ghost frame 
*                       Load param 1
726:    LDC  3,1(6) 	Load constant 
727:     ST  3,-108(1) 	Store parameter 
*                       Jump to Print
728:    LDA  1,-106(1) 	Load address of new frame 
729:    LDA  3,1(7) 	Return address in ac 
730:    LDA  7,-689(7) 	CALL Print
731:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Print
* ELSE
724:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  Print
733:     ST  1,-106(1) 	Store old fp in ghost frame 
*                       Load param 1
734:    LDC  3,0(6) 	Load constant 
735:     ST  3,-108(1) 	Store parameter 
*                       Jump to Print
736:    LDA  1,-106(1) 	Load address of new frame 
737:    LDA  3,1(7) 	Return address in ac 
738:    LDA  7,-697(7) 	CALL Print
739:    LDA  3,0(2) 	Save the result in ac 
*                       End call to Print
732:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
740:     LD  3,-103(1) 	load lhs variable i
741:    LDA  3,1(3) 	increment value of i
742:     ST  3,-103(1) 	Store variable i
* END compound statement
743:    LDA  7,-32(7) 	go to beginning of loop 
721:    LDA  7,22(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  NewLine
744:     ST  1,-106(1) 	Store old fp in ghost frame 
*                       Jump to NewLine
745:    LDA  1,-106(1) 	Load address of new frame 
746:    LDA  3,1(7) 	Return address in ac 
747:    LDA  7,-694(7) 	CALL NewLine
748:    LDA  3,0(2) 	Save the result in ac 
*                       End call to NewLine
* EXPRESSION STMT
*                       Begin call to  RevealShip
749:     ST  1,-106(1) 	Store old fp in ghost frame 
*                       Load param 1
750:    LDA  3,-3(1) 	Load address of base of array Ocean
751:     ST  3,-108(1) 	Store parameter 
*                       Load param 2
752:    LDC  3,10(6) 	Load constant 
753:     ST  3,-109(1) 	Store parameter 
*                       Jump to RevealShip
754:    LDA  1,-106(1) 	Load address of new frame 
755:    LDA  3,1(7) 	Return address in ac 
756:    LDA  7,-300(7) 	CALL RevealShip
757:    LDA  3,0(2) 	Save the result in ac 
*                       End call to RevealShip
* END compound statement
* Add standard closing in case there is no return statement
758:    LDC  2,0(6) 	Set return value to 0 
759:     LD  3,-1(1) 	Load return address 
760:     LD  1,0(1) 	Adjust fp 
761:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,761(7) 	Jump to init [backpatch] 
* BEGIN Init
762:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
763:    LDA  1,-4(0) 	set first frame at end of globals 
764:     ST  1,0(1) 	store old fp (point to self) 
765:    LDA  3,1(7) 	Return address in ac 
766:    LDA  7,-156(7) 	Jump to main 
767:   HALT  0,0,0 	DONE! 
* END Init
