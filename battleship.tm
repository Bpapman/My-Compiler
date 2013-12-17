* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  battleship.tm
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
* 			Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 44:     LD  3,-2(1) 	Load variable what
 45:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 46:    LDA  1,-3(1) 	Load address of new frame 
 47:    LDA  3,1(7) 	Return address in ac 
 48:    LDA  7,-43(7) 	CALL output
 49:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
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
* 			Begin call to  outnl
 55:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 56:    LDA  1,-2(1) 	Load address of new frame 
 57:    LDA  3,1(7) 	Return address in ac 
 58:    LDA  7,-22(7) 	CALL outnl
 59:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
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
* 			Begin call to  NewLine
 67:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
 68:    LDA  1,-6(1) 	Load address of new frame 
 69:    LDA  3,1(7) 	Return address in ac 
 70:    LDA  7,-17(7) 	CALL NewLine
 71:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  Print
 72:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Load param 1
 73:     LD  3,-1(0) 	Load variable NumShots
 74:     ST  3,-8(1) 	Store parameter 
* 			Jump to Print
 75:    LDA  1,-6(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-36(7) 	CALL Print
 78:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Print
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  NewLine
 79:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
 80:    LDA  1,-6(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-29(7) 	CALL NewLine
 83:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* WHILE
* EXPRESSION STMT
 84:     LD  3,-4(1) 	Load variable r
 85:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
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
* EXPRESSION STMT
 96:     LD  3,-5(1) 	Load variable c
 97:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
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
* EXPRESSION STMT
106:     LD  3,-4(1) 	Load variable r
107:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
108:    LDC  3,10(6) 	Load constant 
109:     LD  4,-6(1) 	Load left into ac1 
110:    MUL  3,4,3 	Op * 
111:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
112:     LD  3,-5(1) 	Load variable c
113:     LD  4,-6(1) 	Load left into ac1 
114:    ADD  3,4,3 	Op + 
115:     LD  3,-5(1) 	Load variable arr
116:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
117:    LDC  3,7(6) 	Load constant 
118:     LD  4,-6(1) 	Load left into ac1 
119:    SUB  4,4,3 	Op == 
120:    LDC  3,1(6) 	True case 
121:    JEQ  4,1(7) 	Jump if true 
122:    LDC  3,0(6) 	False case 
123:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  Print
125:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Load param 1
126:    LDC  3,4(6) 	Load constant 
127:     ST  3,-8(1) 	Store parameter 
* 			Jump to Print
128:    LDA  1,-6(1) 	Load address of new frame 
129:    LDA  3,1(7) 	Return address in ac 
130:    LDA  7,-89(7) 	CALL Print
131:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Print
* EXPRESSION STMT
* ELSE
124:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
* 			Begin call to  Print
133:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Load param 1
134:     LD  3,-4(1) 	Load variable r
135:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
136:    LDC  3,10(6) 	Load constant 
137:     LD  4,-8(1) 	Load left into ac1 
138:    MUL  3,4,3 	Op * 
139:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
140:     LD  3,-5(1) 	Load variable c
141:     LD  4,-8(1) 	Load left into ac1 
142:    ADD  3,4,3 	Op + 
143:     LD  3,-5(1) 	Load variable arr
144:     ST  3,-8(1) 	Store parameter 
* 			Jump to Print
145:    LDA  1,-6(1) 	Load address of new frame 
146:    LDA  3,1(7) 	Return address in ac 
147:    LDA  7,-106(7) 	CALL Print
148:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Print
* EXPRESSION STMT
132:    LDA  7,16(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
149:     LD  3,-5(1) 	Load variable c
150:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
151:    LDC  3,1(6) 	Load constant 
152:     LD  4,-6(1) 	Load left into ac1 
153:    ADD  3,4,3 	Op + 
154:     ST  3,-5(1) 	Store variable c
* END compound statement
155:    LDA  7,-60(7) 	go to beginning of loop 
105:    LDA  7,50(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  NewLine
156:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
157:    LDA  1,-6(1) 	Load address of new frame 
158:    LDA  3,1(7) 	Return address in ac 
159:    LDA  7,-106(7) 	CALL NewLine
160:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* EXPRESSION STMT
161:     LD  3,-4(1) 	load lhs variable r
162:    LDA  3,1(3) 	increment value of r
163:     ST  3,-4(1) 	Store variable r
* END compound statement
164:    LDA  7,-81(7) 	go to beginning of loop 
 93:    LDA  7,71(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
165:    LDC  2,0(6) 	Set return value to 0 
166:     LD  3,-1(1) 	Load return address 
167:     LD  1,0(1) 	Adjust fp 
168:    LDA  7,0(3) 	Return 
* END of function Display
* BEGIN function Randomize
169:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
170:     LD  3,-2(1) 	Load variable seed
171:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
172:    LDC  3,2(6) 	Load constant 
173:     LD  4,-4(1) 	Load left into ac1 
174:    DIV  5,4,3 	Op % 
175:    MUL  5,5,3 	 
176:    SUB  3,4,5 	 
177:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
178:    LDC  3,0(6) 	Load constant 
179:     LD  4,-4(1) 	Load left into ac1 
180:    SUB  4,4,3 	Op == 
181:    LDC  3,1(6) 	True case 
182:    JEQ  4,1(7) 	Jump if true 
183:    LDC  3,0(6) 	False case 
184:     ST  3,-3(0) 	Store variable iseven
* EXPRESSION STMT
185:     LD  3,-3(1) 	Load variable dim
186:     LD  4,-2(1) 	load lhs variable seed
187:    ADD  3,4,3 	op += 
188:     ST  3,-2(1) 	Store variable seed
* EXPRESSION STMT
189:    LDC  3,17(6) 	Load constant 
190:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
191:     LD  3,-2(1) 	Load variable seed
192:     LD  4,-4(1) 	Load left into ac1 
193:    MUL  3,4,3 	Op * 
194:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
195:    LDC  3,11(6) 	Load constant 
196:     LD  4,-4(1) 	Load left into ac1 
197:    ADD  3,4,3 	Op + 
198:     ST  3,-2(1) 	Store variable seed
* EXPRESSION STMT
199:     LD  3,-2(1) 	Load variable seed
200:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
201:     LD  3,-3(1) 	Load variable dim
202:     ST  3,-5(1) 	Save left side 
* EXPRESSION STMT
203:     LD  3,-3(1) 	Load variable dim
204:     LD  4,-5(1) 	Load left into ac1 
205:    MUL  3,4,3 	Op * 
206:     LD  4,-4(1) 	Load left into ac1 
207:    DIV  5,4,3 	Op % 
208:    MUL  5,5,3 	 
209:    SUB  3,4,5 	 
210:     ST  3,-2(1) 	Store variable seed
* RETURN
* EXPRESSION STMT
211:     LD  3,-2(1) 	Load variable seed
212:    LDA  2,0(3) 	Copy result to rt register 
213:     LD  3,-1(1) 	Load return address 
214:     LD  1,0(1) 	Adjust fp 
215:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
216:    LDC  2,0(6) 	Set return value to 0 
217:     LD  3,-1(1) 	Load return address 
218:     LD  1,0(1) 	Adjust fp 
219:    LDA  7,0(3) 	Return 
* END of function Randomize
* BEGIN function HideShip
220:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  Randomize
221:     ST  1,-8(1) 	Store old fp in ghost frame 
* 			Load param 1
* 			Begin call to  input
222:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Jump to input
223:    LDA  1,-10(1) 	Load address of new frame 
224:    LDA  3,1(7) 	Return address in ac 
225:    LDA  7,-225(7) 	CALL input
226:    LDA  3,0(2) 	Save the result in ac 
* 			End call to input
* EXPRESSION STMT
227:     ST  3,-10(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
228:     LD  3,-3(1) 	Load variable dimen
229:     ST  3,-11(1) 	Store parameter 
* 			Jump to Randomize
230:    LDA  1,-8(1) 	Load address of new frame 
231:    LDA  3,1(7) 	Return address in ac 
232:    LDA  7,-64(7) 	CALL Randomize
233:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Randomize
* EXPRESSION STMT
234:     ST  3,-4(1) 	Store variable pos
* EXPRESSION STMT
235:     LD  3,-4(1) 	Load variable pos
236:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
237:     LD  3,-3(1) 	Load variable dimen
238:     LD  4,-8(1) 	Load left into ac1 
239:    DIV  3,4,3 	Op / 
240:     ST  3,-5(1) 	Store variable row
* EXPRESSION STMT
241:     LD  3,-4(1) 	Load variable pos
242:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
243:     LD  3,-4(1) 	Load variable pos
244:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
245:     LD  3,-3(1) 	Load variable dimen
246:     LD  4,-9(1) 	Load left into ac1 
247:    DIV  3,4,3 	Op / 
248:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
249:     LD  3,-3(1) 	Load variable dimen
250:     LD  4,-9(1) 	Load left into ac1 
251:    MUL  3,4,3 	Op * 
252:     LD  4,-8(1) 	Load left into ac1 
253:    SUB  3,4,3 	Op - 
254:     ST  3,-6(1) 	Store variable col
* IF
* EXPRESSION STMT
255:     LD  3,-3(0) 	Load variable iseven
256:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* IF
* EXPRESSION STMT
258:     LD  3,-6(1) 	Load variable col
259:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
260:     LD  3,-3(1) 	Load variable dimen
261:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
262:     LD  3,0(0) 	Load variable shipsize
263:     LD  4,-9(1) 	Load left into ac1 
264:    SUB  3,4,3 	Op - 
265:     LD  4,-8(1) 	Load left into ac1 
266:    SUB  4,4,3 	Op < 
267:    LDC  3,1(6) 	True case 
268:    JGT  4,1(7) 	Jump if true 
269:    LDC  3,0(6) 	False case 
270:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
272:     LD  3,-3(1) 	Load variable dimen
273:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
274:     LD  3,0(0) 	Load variable shipsize
275:     LD  4,-8(1) 	Load left into ac1 
276:    SUB  3,4,3 	Op - 
277:     ST  3,-6(1) 	Store variable col
  0:    LDA  7,277(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
278:    LDC  3,0(6) 	Load constant 
279:     ST  3,-7(1) 	Store variable i
* WHILE
* EXPRESSION STMT
280:     LD  3,-7(1) 	Load variable i
281:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
282:     LD  3,0(0) 	Load variable shipsize
283:     LD  4,-8(1) 	Load left into ac1 
284:    SUB  4,4,3 	Op < 
285:    LDC  3,1(6) 	True case 
286:    JLT  4,1(7) 	Jump if true 
287:    LDC  3,0(6) 	False case 
288:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
290:    LDC  3,7(6) 	Load constant 
291:     ST  3,-6(1) 	Store variable arr
* EXPRESSION STMT
292:     LD  3,-6(1) 	load lhs variable col
293:    LDA  3,1(3) 	increment value of col
294:     ST  3,-6(1) 	Store variable col
* EXPRESSION STMT
295:     LD  3,-7(1) 	load lhs variable i
296:    LDA  3,1(3) 	increment value of i
297:     ST  3,-7(1) 	Store variable i
* END compound statement
298:    LDA  7,-19(7) 	go to beginning of loop 
289:    LDA  7,9(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* ELSE
257:    LDA  7,42(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
* EXPRESSION STMT
300:     LD  3,-5(1) 	Load variable row
301:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
302:     LD  3,-3(1) 	Load variable dimen
303:     ST  3,-9(1) 	Save left side 
* EXPRESSION STMT
304:     LD  3,0(0) 	Load variable shipsize
305:     LD  4,-9(1) 	Load left into ac1 
306:    SUB  3,4,3 	Op - 
307:     LD  4,-8(1) 	Load left into ac1 
308:    SUB  4,4,3 	Op < 
309:    LDC  3,1(6) 	True case 
310:    JGT  4,1(7) 	Jump if true 
311:    LDC  3,0(6) 	False case 
312:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
314:     LD  3,-3(1) 	Load variable dimen
315:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
316:     LD  3,0(0) 	Load variable shipsize
317:     LD  4,-8(1) 	Load left into ac1 
318:    SUB  3,4,3 	Op - 
319:     ST  3,-5(1) 	Store variable row
  0:    LDA  7,319(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
320:    LDC  3,0(6) 	Load constant 
321:     ST  3,-7(1) 	Store variable i
* WHILE
* EXPRESSION STMT
322:     LD  3,-7(1) 	Load variable i
323:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
324:     LD  3,0(0) 	Load variable shipsize
325:     LD  4,-8(1) 	Load left into ac1 
326:    SUB  4,4,3 	Op < 
327:    LDC  3,1(6) 	True case 
328:    JLT  4,1(7) 	Jump if true 
329:    LDC  3,0(6) 	False case 
330:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
332:    LDC  3,7(6) 	Load constant 
333:     ST  3,-6(1) 	Store variable arr
* EXPRESSION STMT
334:     LD  3,-3(1) 	Load variable dimen
335:     LD  4,-6(1) 	load lhs variable col
336:    ADD  3,4,3 	op += 
337:     ST  3,-6(1) 	Store variable col
* EXPRESSION STMT
338:     LD  3,-7(1) 	load lhs variable i
339:    LDA  3,1(3) 	increment value of i
340:     ST  3,-7(1) 	Store variable i
* END compound statement
341:    LDA  7,-20(7) 	go to beginning of loop 
331:    LDA  7,10(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
299:    LDA  7,42(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
342:    LDC  2,0(6) 	Set return value to 0 
343:     LD  3,-1(1) 	Load return address 
344:     LD  1,0(1) 	Adjust fp 
345:    LDA  7,0(3) 	Return 
* END of function HideShip
* BEGIN function Aim
346:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
347:    LDC  3,666(6) 	Load constant 
348:    LDC  4,0(6) 	Load 0 
349:    SUB  3,4,3 	Op unary - 
350:     ST  3,-2(1) 	Store variable shot
* WHILE
* EXPRESSION STMT
351:     LD  3,-2(1) 	Load variable shot
352:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
353:    LDC  3,666(6) 	Load constant 
354:    LDC  4,0(6) 	Load 0 
355:    SUB  3,4,3 	Op unary - 
356:     LD  4,-3(1) 	Load left into ac1 
357:    SUB  4,4,3 	Op == 
358:    LDC  3,1(6) 	True case 
359:    JEQ  4,1(7) 	Jump if true 
360:    LDC  3,0(6) 	False case 
361:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  input
363:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to input
364:    LDA  1,-3(1) 	Load address of new frame 
365:    LDA  3,1(7) 	Return address in ac 
366:    LDA  7,-366(7) 	CALL input
367:    LDA  3,0(2) 	Save the result in ac 
* 			End call to input
* EXPRESSION STMT
368:     ST  3,-2(1) 	Store variable shot
* IF
* EXPRESSION STMT
369:     LD  3,-2(1) 	Load variable shot
370:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
371:    LDC  3,0(6) 	Load constant 
372:     LD  4,-3(1) 	Load left into ac1 
373:    SUB  4,4,3 	Op < 
374:    LDC  3,1(6) 	True case 
375:    JLT  4,1(7) 	Jump if true 
376:    LDC  3,0(6) 	False case 
377:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
378:     LD  3,-2(1) 	Load variable shot
379:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
380:    LDC  3,99(6) 	Load constant 
381:     LD  4,-4(1) 	Load left into ac1 
382:    SUB  4,4,3 	Op < 
383:    LDC  3,1(6) 	True case 
384:    JGT  4,1(7) 	Jump if true 
385:    LDC  3,0(6) 	False case 
386:     LD  4,-3(1) 	Load left into ac1 
387:    JEQ  3,1(7) 	Op OR 
388:    LDA  3,0(5) 	 
389:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
391:    LDC  3,666(6) 	Load constant 
392:    LDC  4,0(6) 	Load 0 
393:    SUB  3,4,3 	Op unary - 
394:     ST  3,-2(1) 	Store variable shot
* EXPRESSION STMT
* 			Begin call to  NewLine
395:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
396:    LDA  1,-3(1) 	Load address of new frame 
397:    LDA  3,1(7) 	Return address in ac 
398:    LDA  7,-345(7) 	CALL NewLine
399:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  Print
400:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
401:     LD  3,-2(1) 	Load variable shot
402:     ST  3,-5(1) 	Store parameter 
* 			Jump to Print
403:    LDA  1,-3(1) 	Load address of new frame 
404:    LDA  3,1(7) 	Return address in ac 
405:    LDA  7,-364(7) 	CALL Print
406:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Print
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  NewLine
407:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
408:    LDA  1,-3(1) 	Load address of new frame 
409:    LDA  3,1(7) 	Return address in ac 
410:    LDA  7,-357(7) 	CALL NewLine
411:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* END compound statement
362:    LDA  7,49(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
412:    LDA  7,-62(7) 	go to beginning of loop 
362:    LDA  7,50(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  NewLine
413:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
414:    LDA  1,-3(1) 	Load address of new frame 
415:    LDA  3,1(7) 	Return address in ac 
416:    LDA  7,-363(7) 	CALL NewLine
417:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* RETURN
* EXPRESSION STMT
418:     LD  3,-2(1) 	Load variable shot
419:    LDA  2,0(3) 	Copy result to rt register 
420:     LD  3,-1(1) 	Load return address 
421:     LD  1,0(1) 	Adjust fp 
422:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
423:    LDC  2,0(6) 	Set return value to 0 
424:     LD  3,-1(1) 	Load return address 
425:     LD  1,0(1) 	Adjust fp 
426:    LDA  7,0(3) 	Return 
* END of function Aim
* BEGIN function RevealShip
427:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
428:    LDC  3,0(6) 	Load constant 
429:     ST  3,-4(1) 	Store variable r
* EXPRESSION STMT
* 			Begin call to  NewLine
430:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
431:    LDA  1,-6(1) 	Load address of new frame 
432:    LDA  3,1(7) 	Return address in ac 
433:    LDA  7,-380(7) 	CALL NewLine
434:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* WHILE
* EXPRESSION STMT
435:     LD  3,-4(1) 	Load variable r
436:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
437:     LD  3,-3(1) 	Load variable dimension
438:     LD  4,-6(1) 	Load left into ac1 
439:    SUB  4,4,3 	Op < 
440:    LDC  3,1(6) 	True case 
441:    JLT  4,1(7) 	Jump if true 
442:    LDC  3,0(6) 	False case 
443:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
445:    LDC  3,0(6) 	Load constant 
446:     ST  3,-5(1) 	Store variable c
* WHILE
* EXPRESSION STMT
447:     LD  3,-5(1) 	Load variable c
448:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
449:     LD  3,-3(1) 	Load variable dimension
450:     LD  4,-6(1) 	Load left into ac1 
451:    SUB  4,4,3 	Op < 
452:    LDC  3,1(6) 	True case 
453:    JLT  4,1(7) 	Jump if true 
454:    LDC  3,0(6) 	False case 
455:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
* EXPRESSION STMT
457:     LD  3,-4(1) 	Load variable r
458:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
459:    LDC  3,10(6) 	Load constant 
460:     LD  4,-6(1) 	Load left into ac1 
461:    MUL  3,4,3 	Op * 
462:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
463:     LD  3,-5(1) 	Load variable c
464:     LD  4,-6(1) 	Load left into ac1 
465:    ADD  3,4,3 	Op + 
466:     LD  3,-5(1) 	Load variable arr
467:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
468:    LDC  3,4(6) 	Load constant 
469:     LD  4,-6(1) 	Load left into ac1 
470:    SUB  4,4,3 	Op == 
471:    LDC  3,1(6) 	True case 
472:    JEQ  4,1(7) 	Jump if true 
473:    LDC  3,0(6) 	False case 
474:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  Print
476:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Load param 1
477:    LDC  3,2(6) 	Load constant 
478:     ST  3,-8(1) 	Store parameter 
* 			Jump to Print
479:    LDA  1,-6(1) 	Load address of new frame 
480:    LDA  3,1(7) 	Return address in ac 
481:    LDA  7,-440(7) 	CALL Print
482:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Print
* EXPRESSION STMT
* ELSE
475:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
* 			Begin call to  Print
484:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Load param 1
485:     LD  3,-4(1) 	Load variable r
486:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
487:    LDC  3,10(6) 	Load constant 
488:     LD  4,-8(1) 	Load left into ac1 
489:    MUL  3,4,3 	Op * 
490:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
491:     LD  3,-5(1) 	Load variable c
492:     LD  4,-8(1) 	Load left into ac1 
493:    ADD  3,4,3 	Op + 
494:     LD  3,-5(1) 	Load variable arr
495:     ST  3,-8(1) 	Store parameter 
* 			Jump to Print
496:    LDA  1,-6(1) 	Load address of new frame 
497:    LDA  3,1(7) 	Return address in ac 
498:    LDA  7,-457(7) 	CALL Print
499:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Print
* EXPRESSION STMT
483:    LDA  7,16(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
500:     LD  3,-5(1) 	Load variable c
501:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
502:    LDC  3,1(6) 	Load constant 
503:     LD  4,-6(1) 	Load left into ac1 
504:    ADD  3,4,3 	Op + 
505:     ST  3,-5(1) 	Store variable c
* END compound statement
506:    LDA  7,-60(7) 	go to beginning of loop 
456:    LDA  7,50(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  NewLine
507:     ST  1,-6(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
508:    LDA  1,-6(1) 	Load address of new frame 
509:    LDA  3,1(7) 	Return address in ac 
510:    LDA  7,-457(7) 	CALL NewLine
511:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* EXPRESSION STMT
512:     LD  3,-4(1) 	load lhs variable r
513:    LDA  3,1(3) 	increment value of r
514:     ST  3,-4(1) 	Store variable r
* END compound statement
515:    LDA  7,-81(7) 	go to beginning of loop 
444:    LDA  7,71(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
516:    LDC  2,0(6) 	Set return value to 0 
517:     LD  3,-1(1) 	Load return address 
518:     LD  1,0(1) 	Adjust fp 
519:    LDA  7,0(3) 	Return 
* END of function RevealShip
* BEGIN function Fire
520:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
* EXPRESSION STMT
521:     LD  3,-3(1) 	Load variable shot
522:     LD  3,-3(1) 	Load variable arr
523:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
524:    LDC  3,7(6) 	Load constant 
525:     LD  4,-4(1) 	Load left into ac1 
526:    SUB  4,4,3 	Op == 
527:    LDC  3,1(6) 	True case 
528:    JEQ  4,1(7) 	Jump if true 
529:    LDC  3,0(6) 	False case 
530:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
532:    LDC  3,1(6) 	Load constant 
533:     ST  3,-3(1) 	Store variable arr
* EXPRESSION STMT
534:     LD  3,-2(0) 	load lhs variable NumHits
535:    LDA  3,1(3) 	increment value of NumHits
536:     ST  3,-2(0) 	Store variable NumHits
* IF
* EXPRESSION STMT
537:     LD  3,-1(0) 	Load variable NumShots
538:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
539:    LDC  3,1(6) 	Load constant 
540:     LD  4,-4(1) 	Load left into ac1 
541:    SUB  4,4,3 	Op == 
542:    LDC  3,1(6) 	True case 
543:    JEQ  4,1(7) 	Jump if true 
544:    LDC  3,0(6) 	False case 
545:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
547:     LD  3,-1(0) 	Load variable NumShots
548:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
549:    LDC  3,1(6) 	Load constant 
550:     LD  4,-4(1) 	Load left into ac1 
551:    ADD  3,4,3 	Op + 
552:     ST  3,-1(0) 	Store variable NumShots
  0:    LDA  7,552(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* ELSE
531:    LDA  7,22(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
554:    LDC  3,0(6) 	Load constant 
555:     ST  3,-3(1) 	Store variable arr
* END compound statement
553:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* RETURN
* EXPRESSION STMT
556:     LD  3,-2(0) 	Load variable NumHits
557:    LDA  2,0(3) 	Copy result to rt register 
558:     LD  3,-1(1) 	Load return address 
559:     LD  1,0(1) 	Adjust fp 
560:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
561:    LDC  2,0(6) 	Set return value to 0 
562:     LD  3,-1(1) 	Load return address 
563:     LD  1,0(1) 	Adjust fp 
564:    LDA  7,0(3) 	Return 
* END of function Fire
* BEGIN function main
565:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
566:    LDC  3,100(6) 	load size of array Ocean
567:     ST  3,-2(1) 	save size of array Ocean
* EXPRESSION STMT
568:    LDC  3,4(6) 	Load constant 
569:     ST  3,0(0) 	Store variable shipsize
* EXPRESSION STMT
570:    LDC  3,0(6) 	Load constant 
571:     ST  3,-103(1) 	Store variable i
* WHILE
* EXPRESSION STMT
572:     LD  3,-103(1) 	Load variable i
573:     ST  3,-106(1) 	Save left side 
* EXPRESSION STMT
574:    LDC  3,100(6) 	Load constant 
575:     LD  4,-106(1) 	Load left into ac1 
576:    SUB  4,4,3 	Op < 
577:    LDC  3,1(6) 	True case 
578:    JLT  4,1(7) 	Jump if true 
579:    LDC  3,0(6) 	False case 
580:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
582:    LDC  3,4(6) 	Load constant 
583:     ST  3,-103(1) 	Store variable Ocean
* EXPRESSION STMT
584:     LD  3,-103(1) 	load lhs variable i
585:    LDA  3,1(3) 	increment value of i
586:     ST  3,-103(1) 	Store variable i
* END compound statement
587:    LDA  7,-16(7) 	go to beginning of loop 
581:    LDA  7,6(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  HideShip
588:     ST  1,-106(1) 	Store old fp in ghost frame 
* 			Load param 1
589:    LDA  3,-3(1) 	Load address of base of array Ocean
590:     ST  3,-108(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
591:    LDC  3,10(6) 	Load constant 
592:     ST  3,-109(1) 	Store parameter 
* 			Jump to HideShip
593:    LDA  1,-106(1) 	Load address of new frame 
594:    LDA  3,1(7) 	Return address in ac 
595:    LDA  7,-376(7) 	CALL HideShip
596:    LDA  3,0(2) 	Save the result in ac 
* 			End call to HideShip
* EXPRESSION STMT
* EXPRESSION STMT
597:    LDC  3,0(6) 	Load constant 
598:     ST  3,-105(1) 	Store variable bGotit
* EXPRESSION STMT
599:    LDC  3,10(6) 	Load constant 
600:     ST  3,-1(0) 	Store variable NumShots
* EXPRESSION STMT
601:    LDC  3,0(6) 	Load constant 
602:     ST  3,-2(0) 	Store variable NumHits
* WHILE
* EXPRESSION STMT
603:     LD  3,-1(0) 	Load variable NumShots
604:     ST  3,-106(1) 	Save left side 
* EXPRESSION STMT
605:    LDC  3,0(6) 	Load constant 
606:     LD  4,-106(1) 	Load left into ac1 
607:    SUB  4,4,3 	Op < 
608:    LDC  3,1(6) 	True case 
609:    JGT  4,1(7) 	Jump if true 
610:    LDC  3,0(6) 	False case 
611:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  Display
613:     ST  1,-106(1) 	Store old fp in ghost frame 
* 			Load param 1
614:    LDA  3,-3(1) 	Load address of base of array Ocean
615:     ST  3,-108(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
616:    LDC  3,10(6) 	Load constant 
617:     ST  3,-109(1) 	Store parameter 
* 			Jump to Display
618:    LDA  1,-106(1) 	Load address of new frame 
619:    LDA  3,1(7) 	Return address in ac 
620:    LDA  7,-557(7) 	CALL Display
621:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Display
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  Aim
622:     ST  1,-106(1) 	Store old fp in ghost frame 
* 			Jump to Aim
623:    LDA  1,-106(1) 	Load address of new frame 
624:    LDA  3,1(7) 	Return address in ac 
625:    LDA  7,-280(7) 	CALL Aim
626:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Aim
* EXPRESSION STMT
627:     ST  3,-104(1) 	Store variable Shot
* IF
* EXPRESSION STMT
* 			Begin call to  Fire
628:     ST  1,-106(1) 	Store old fp in ghost frame 
* 			Load param 1
629:    LDA  3,-3(1) 	Load address of base of array Ocean
630:     ST  3,-108(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
631:     LD  3,-104(1) 	Load variable Shot
632:     ST  3,-109(1) 	Store parameter 
* 			Jump to Fire
633:    LDA  1,-106(1) 	Load address of new frame 
634:    LDA  3,1(7) 	Return address in ac 
635:    LDA  7,-116(7) 	CALL Fire
636:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Fire
* EXPRESSION STMT
637:     ST  3,-106(1) 	Save left side 
* EXPRESSION STMT
638:     LD  3,0(0) 	Load variable shipsize
639:     LD  4,-106(1) 	Load left into ac1 
640:    SUB  4,4,3 	Op == 
641:    LDC  3,1(6) 	True case 
642:    JEQ  4,1(7) 	Jump if true 
643:    LDC  3,0(6) 	False case 
644:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
646:    LDC  3,1(6) 	Load constant 
647:     ST  3,-105(1) 	Store variable bGotit
* BREAK
648:    LDA  7,-37(7) 	break 
* END compound statement
612:    LDA  7,36(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
649:    LDC  3,1(6) 	Load constant 
650:     LD  4,-1(0) 	load lhs variable NumShots
651:    SUB  3,4,3 	op -= 
652:     ST  3,-1(0) 	Store variable NumShots
* END compound statement
653:    LDA  7,-51(7) 	go to beginning of loop 
612:    LDA  7,41(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  NewLine
654:     ST  1,-106(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
655:    LDA  1,-106(1) 	Load address of new frame 
656:    LDA  3,1(7) 	Return address in ac 
657:    LDA  7,-604(7) 	CALL NewLine
658:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* EXPRESSION STMT
659:    LDC  3,0(6) 	Load constant 
660:     ST  3,-103(1) 	Store variable i
* WHILE
* EXPRESSION STMT
661:     LD  3,-103(1) 	Load variable i
662:     ST  3,-106(1) 	Save left side 
* EXPRESSION STMT
663:    LDC  3,20(6) 	Load constant 
664:     LD  4,-106(1) 	Load left into ac1 
665:    SUB  4,4,3 	Op < 
666:    LDC  3,1(6) 	True case 
667:    JLT  4,1(7) 	Jump if true 
668:    LDC  3,0(6) 	False case 
669:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
* EXPRESSION STMT
671:     LD  3,-105(1) 	Load variable bGotit
672:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  Print
674:     ST  1,-106(1) 	Store old fp in ghost frame 
* 			Load param 1
675:    LDC  3,1(6) 	Load constant 
676:     ST  3,-108(1) 	Store parameter 
* 			Jump to Print
677:    LDA  1,-106(1) 	Load address of new frame 
678:    LDA  3,1(7) 	Return address in ac 
679:    LDA  7,-638(7) 	CALL Print
680:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Print
* EXPRESSION STMT
* ELSE
673:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
* 			Begin call to  Print
682:     ST  1,-106(1) 	Store old fp in ghost frame 
* 			Load param 1
683:    LDC  3,0(6) 	Load constant 
684:     ST  3,-108(1) 	Store parameter 
* 			Jump to Print
685:    LDA  1,-106(1) 	Load address of new frame 
686:    LDA  3,1(7) 	Return address in ac 
687:    LDA  7,-646(7) 	CALL Print
688:    LDA  3,0(2) 	Save the result in ac 
* 			End call to Print
* EXPRESSION STMT
681:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
689:     LD  3,-103(1) 	load lhs variable i
690:    LDA  3,1(3) 	increment value of i
691:     ST  3,-103(1) 	Store variable i
* END compound statement
692:    LDA  7,-32(7) 	go to beginning of loop 
670:    LDA  7,22(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  NewLine
693:     ST  1,-106(1) 	Store old fp in ghost frame 
* 			Jump to NewLine
694:    LDA  1,-106(1) 	Load address of new frame 
695:    LDA  3,1(7) 	Return address in ac 
696:    LDA  7,-643(7) 	CALL NewLine
697:    LDA  3,0(2) 	Save the result in ac 
* 			End call to NewLine
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  RevealShip
698:     ST  1,-106(1) 	Store old fp in ghost frame 
* 			Load param 1
699:    LDA  3,-3(1) 	Load address of base of array Ocean
700:     ST  3,-108(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
701:    LDC  3,10(6) 	Load constant 
702:     ST  3,-109(1) 	Store parameter 
* 			Jump to RevealShip
703:    LDA  1,-106(1) 	Load address of new frame 
704:    LDA  3,1(7) 	Return address in ac 
705:    LDA  7,-279(7) 	CALL RevealShip
706:    LDA  3,0(2) 	Save the result in ac 
* 			End call to RevealShip
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
707:    LDC  2,0(6) 	Set return value to 0 
708:     LD  3,-1(1) 	Load return address 
709:     LD  1,0(1) 	Adjust fp 
710:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,710(7) 	Jump to init [backpatch] 
* BEGIN Init
711:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
712:    LDA  1,-4(0) 	set first frame at end of globals 
713:     ST  1,0(1) 	store old fp (point to self) 
714:    LDA  3,1(7) 	Return address in ac 
715:    LDA  7,-151(7) 	Jump to main 
716:   HALT  0,0,0 	DONE! 
* END Init
