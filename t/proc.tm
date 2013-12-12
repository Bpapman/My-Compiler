* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  proc.c-
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
* BEGIN function square
 42:     ST  3,-1(1) 	Store return address. 
* RETURN
 43:     LD  3,-2(1) 	Load variable x
 44:     ST  3,-3(1) 	Save left side 
 45:     LD  3,-2(1) 	Load variable x
 46:     LD  4,-3(1) 	Load left into ac1 
 47:    MUL  3,4,3 	Op * 
 48:    LDA  2,0(3) 	Copy result to rt register 
 49:     LD  3,-1(1) 	Load return address 
 50:     LD  1,0(1) 	Adjust fp 
 51:    LDA  7,0(3) 	Return 
* Add standard closing in case there is no return statement
 52:    LDC  2,0(6) 	Set return value to 0 
 53:     LD  3,-1(1) 	Load return address 
 54:     LD  1,0(1) 	Adjust fp 
 55:    LDA  7,0(3) 	Return 
* END of function square
* BEGIN function max
 56:     ST  3,-1(1) 	Store return address. 
* IF
 57:     LD  3,-2(1) 	Load variable x
 58:     ST  3,-4(1) 	Save left side 
 59:     LD  3,-3(1) 	Load variable y
 60:     LD  4,-4(1) 	Load left into ac1 
 61:    SUB  4,4,3 	Op > 
 62:    LDC  3,1(6) 	True case 
 63:    JGT  4,1(7) 	Jump if true 
 64:    LDC  3,0(6) 	False case 
 65:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 67:     LD  3,-2(1) 	Load variable x
 68:    LDA  2,0(3) 	Copy result to rt register 
 69:     LD  3,-1(1) 	Load return address 
 70:     LD  1,0(1) 	Adjust fp 
 71:    LDA  7,0(3) 	Return 
* ELSE
 66:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* RETURN
 73:     LD  3,-3(1) 	Load variable y
 74:    LDA  2,0(3) 	Copy result to rt register 
 75:     LD  3,-1(1) 	Load return address 
 76:     LD  1,0(1) 	Adjust fp 
 77:    LDA  7,0(3) 	Return 
 72:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* Add standard closing in case there is no return statement
 78:    LDC  2,0(6) 	Set return value to 0 
 79:     LD  3,-1(1) 	Load return address 
 80:     LD  1,0(1) 	Adjust fp 
 81:    LDA  7,0(3) 	Return 
* END of function max
* BEGIN function toInt
 82:     ST  3,-1(1) 	Store return address. 
* IF
 83:     LD  3,-2(1) 	Load variable b
 84:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 86:    LDC  3,1(6) 	Load constant 
 87:    LDA  2,0(3) 	Copy result to rt register 
 88:     LD  3,-1(1) 	Load return address 
 89:     LD  1,0(1) 	Adjust fp 
 90:    LDA  7,0(3) 	Return 
* ELSE
 85:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* RETURN
 92:    LDC  3,0(6) 	Load constant 
 93:    LDA  2,0(3) 	Copy result to rt register 
 94:     LD  3,-1(1) 	Load return address 
 95:     LD  1,0(1) 	Adjust fp 
 96:    LDA  7,0(3) 	Return 
 91:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* Add standard closing in case there is no return statement
 97:    LDC  2,0(6) 	Set return value to 0 
 98:     LD  3,-1(1) 	Load return address 
 99:     LD  1,0(1) 	Adjust fp 
100:    LDA  7,0(3) 	Return 
* END of function toInt
* BEGIN function toBool
101:     ST  3,-1(1) 	Store return address. 
* IF
102:     LD  3,-2(1) 	Load variable x
103:     ST  3,-3(1) 	Save left side 
104:    LDC  3,0(6) 	Load constant 
105:     LD  4,-3(1) 	Load left into ac1 
106:    SUB  4,4,3 	Op == 
107:    LDC  3,1(6) 	True case 
108:    JEQ  4,1(7) 	Jump if true 
109:    LDC  3,0(6) 	False case 
110:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
112:    LDC  3,0(6) 	Load constant 
113:    LDA  2,0(3) 	Copy result to rt register 
114:     LD  3,-1(1) 	Load return address 
115:     LD  1,0(1) 	Adjust fp 
116:    LDA  7,0(3) 	Return 
* ELSE
111:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* RETURN
118:    LDC  3,1(6) 	Load constant 
119:    LDA  2,0(3) 	Copy result to rt register 
120:     LD  3,-1(1) 	Load return address 
121:     LD  1,0(1) 	Adjust fp 
122:    LDA  7,0(3) 	Return 
117:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* Add standard closing in case there is no return statement
123:    LDC  2,0(6) 	Set return value to 0 
124:     LD  3,-1(1) 	Load return address 
125:     LD  1,0(1) 	Adjust fp 
126:    LDA  7,0(3) 	Return 
* END of function toBool
* BEGIN function main
127:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
128:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  square
129:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
130:    LDC  3,31(6) 	Load constant 
131:     ST  3,-10(1) 	Store parameter 
*                       Jump to square
132:    LDA  1,-8(1) 	Load address of new frame 
133:    LDA  3,1(7) 	Return address in ac 
134:    LDA  7,-93(7) 	CALL square
135:    LDA  3,0(2) 	Save the result in ac 
*                       End call to square
136:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
137:    LDA  1,-6(1) 	Load address of new frame 
138:    LDA  3,1(7) 	Return address in ac 
139:    LDA  7,-134(7) 	CALL output
140:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
141:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
142:    LDA  1,-6(1) 	Load address of new frame 
143:    LDA  3,1(7) 	Return address in ac 
144:    LDA  7,-108(7) 	CALL outnl
145:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
146:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  max
147:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
148:    LDC  3,131(6) 	Load constant 
149:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
150:    LDC  3,42(6) 	Load constant 
151:     ST  3,-11(1) 	Store parameter 
*                       Jump to max
152:    LDA  1,-8(1) 	Load address of new frame 
153:    LDA  3,1(7) 	Return address in ac 
154:    LDA  7,-99(7) 	CALL max
155:    LDA  3,0(2) 	Save the result in ac 
*                       End call to max
156:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
157:    LDA  1,-6(1) 	Load address of new frame 
158:    LDA  3,1(7) 	Return address in ac 
159:    LDA  7,-154(7) 	CALL output
160:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
161:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
162:    LDA  1,-6(1) 	Load address of new frame 
163:    LDA  3,1(7) 	Return address in ac 
164:    LDA  7,-128(7) 	CALL outnl
165:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  toBool
166:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
167:    LDC  3,42(6) 	Load constant 
168:     ST  3,-8(1) 	Store parameter 
*                       Jump to toBool
169:    LDA  1,-6(1) 	Load address of new frame 
170:    LDA  3,1(7) 	Return address in ac 
171:    LDA  7,-71(7) 	CALL toBool
172:    LDA  3,0(2) 	Save the result in ac 
*                       End call to toBool
173:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
*                       Begin call to  toInt
174:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
175:    LDC  3,1(6) 	Load constant 
176:     ST  3,-8(1) 	Store parameter 
*                       Jump to toInt
177:    LDA  1,-6(1) 	Load address of new frame 
178:    LDA  3,1(7) 	Return address in ac 
179:    LDA  7,-98(7) 	CALL toInt
180:    LDA  3,0(2) 	Save the result in ac 
*                       End call to toInt
181:     ST  3,-4(1) 	Store variable x
* EXPRESSION STMT
*                       Begin call to  output
182:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
183:     LD  3,-4(1) 	Load variable x
184:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
185:    LDA  1,-6(1) 	Load address of new frame 
186:    LDA  3,1(7) 	Return address in ac 
187:    LDA  7,-182(7) 	CALL output
188:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outputb
189:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
190:     LD  3,-2(1) 	Load variable a
191:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
192:    LDA  1,-6(1) 	Load address of new frame 
193:    LDA  3,1(7) 	Return address in ac 
194:    LDA  7,-177(7) 	CALL outputb
195:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* IF
196:    LDC  3,666(6) 	Load constant 
197:     ST  3,-6(1) 	Save left side 
198:    LDC  3,1(6) 	Load constant 
199:     LD  4,-6(1) 	Load left into ac1 
200:    ADD  3,4,3 	Op + 
201:     ST  3,-6(1) 	Save left side 
202:    LDC  3,13(6) 	Load constant 
203:     LD  4,-6(1) 	Load left into ac1 
204:    SUB  4,4,3 	Op > 
205:    LDC  3,1(6) 	True case 
206:    JGT  4,1(7) 	Jump if true 
207:    LDC  3,0(6) 	False case 
208:    LDC  4,1(6) 	Load 1 
209:    SUB  3,4,3 	Op NOT 
210:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  output
212:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
213:    LDC  3,0(6) 	Load constant 
214:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
215:    LDA  1,-6(1) 	Load address of new frame 
216:    LDA  3,1(7) 	Return address in ac 
217:    LDA  7,-212(7) 	CALL output
218:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* ELSE
211:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  output
220:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
221:    LDC  3,666(6) 	Load constant 
222:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
223:    LDA  1,-6(1) 	Load address of new frame 
224:    LDA  3,1(7) 	Return address in ac 
225:    LDA  7,-220(7) 	CALL output
226:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
219:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
227:    LDC  3,666(6) 	Load constant 
228:    LDC  4,0(6) 	Load 0 
229:    SUB  3,4,3 	Op unary - 
230:     ST  3,-6(1) 	Save left side 
231:    LDC  3,1(6) 	Load constant 
232:     LD  4,-6(1) 	Load left into ac1 
233:    ADD  3,4,3 	Op + 
234:     ST  3,-6(1) 	Save left side 
235:    LDC  3,13(6) 	Load constant 
236:    LDC  4,0(6) 	Load 0 
237:    SUB  3,4,3 	Op unary - 
238:     LD  4,-6(1) 	Load left into ac1 
239:    SUB  4,4,3 	Op > 
240:    LDC  3,1(6) 	True case 
241:    JGT  4,1(7) 	Jump if true 
242:    LDC  3,0(6) 	False case 
243:    LDC  4,1(6) 	Load 1 
244:    SUB  3,4,3 	Op NOT 
245:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  output
247:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
248:    LDC  3,0(6) 	Load constant 
249:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
250:    LDA  1,-6(1) 	Load address of new frame 
251:    LDA  3,1(7) 	Return address in ac 
252:    LDA  7,-247(7) 	CALL output
253:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* ELSE
246:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  output
255:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
256:    LDC  3,666(6) 	Load constant 
257:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
258:    LDA  1,-6(1) 	Load address of new frame 
259:    LDA  3,1(7) 	Return address in ac 
260:    LDA  7,-255(7) 	CALL output
261:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
254:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
262:    LDC  3,666(6) 	Load constant 
263:    LDC  4,0(6) 	Load 0 
264:    SUB  3,4,3 	Op unary - 
265:     ST  3,-6(1) 	Save left side 
266:    LDC  3,1(6) 	Load constant 
267:     LD  4,-6(1) 	Load left into ac1 
268:    ADD  3,4,3 	Op + 
269:     ST  3,-6(1) 	Save left side 
270:    LDC  3,13(6) 	Load constant 
271:    LDC  4,0(6) 	Load 0 
272:    SUB  3,4,3 	Op unary - 
273:     LD  4,-6(1) 	Load left into ac1 
274:    SUB  4,4,3 	Op > 
275:    LDC  3,1(6) 	True case 
276:    JGT  4,1(7) 	Jump if true 
277:    LDC  3,0(6) 	False case 
278:    LDC  4,1(6) 	Load 1 
279:    SUB  3,4,3 	Op NOT 
280:    LDC  4,1(6) 	Load 1 
281:    SUB  3,4,3 	Op NOT 
282:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  output
284:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
285:    LDC  3,0(6) 	Load constant 
286:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
287:    LDA  1,-6(1) 	Load address of new frame 
288:    LDA  3,1(7) 	Return address in ac 
289:    LDA  7,-284(7) 	CALL output
290:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* ELSE
283:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  output
292:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
293:    LDC  3,666(6) 	Load constant 
294:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
295:    LDA  1,-6(1) 	Load address of new frame 
296:    LDA  3,1(7) 	Return address in ac 
297:    LDA  7,-292(7) 	CALL output
298:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
291:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
299:    LDC  3,0(6) 	Load constant 
300:    LDC  4,1(6) 	Load 1 
301:    SUB  3,4,3 	Op NOT 
302:     ST  3,-6(1) 	Save left side 
303:    LDC  3,1(6) 	Load constant 
304:     LD  4,-6(1) 	Load left into ac1 
305:    JEQ  3,1(7) 	Op AND 
306:    LDA  3,0(4) 	 
307:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  output
309:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
310:    LDC  3,7(6) 	Load constant 
311:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
312:    LDA  1,-6(1) 	Load address of new frame 
313:    LDA  3,1(7) 	Return address in ac 
314:    LDA  7,-309(7) 	CALL output
315:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
308:    LDA  7,7(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
316:    LDC  3,4(6) 	Load constant 
317:     ST  3,-6(1) 	Save left side 
318:    LDC  3,6(6) 	Load constant 
319:     LD  4,-6(1) 	Load left into ac1 
320:    SUB  4,4,3 	Op > 
321:    LDC  3,1(6) 	True case 
322:    JGT  4,1(7) 	Jump if true 
323:    LDC  3,0(6) 	False case 
324:    LDC  4,1(6) 	Load 1 
325:    SUB  3,4,3 	Op NOT 
326:     ST  3,-6(1) 	Save left side 
327:    LDC  3,6(6) 	Load constant 
328:     ST  3,-7(1) 	Save left side 
329:    LDC  3,4(6) 	Load constant 
330:     LD  4,-7(1) 	Load left into ac1 
331:    SUB  4,4,3 	Op > 
332:    LDC  3,1(6) 	True case 
333:    JGT  4,1(7) 	Jump if true 
334:    LDC  3,0(6) 	False case 
335:     LD  4,-6(1) 	Load left into ac1 
336:    JEQ  3,1(7) 	Op AND 
337:    LDA  3,0(4) 	 
338:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  output
340:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
341:    LDC  3,7(6) 	Load constant 
342:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
343:    LDA  1,-6(1) 	Load address of new frame 
344:    LDA  3,1(7) 	Return address in ac 
345:    LDA  7,-340(7) 	CALL output
346:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
339:    LDA  7,7(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
*                       Begin call to  outnl
347:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
348:    LDA  1,-6(1) 	Load address of new frame 
349:    LDA  3,1(7) 	Return address in ac 
350:    LDA  7,-314(7) 	CALL outnl
351:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
352:    LDC  2,0(6) 	Set return value to 0 
353:     LD  3,-1(1) 	Load return address 
354:     LD  1,0(1) 	Adjust fp 
355:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,355(7) 	Jump to init [backpatch] 
* BEGIN Init
356:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
357:    LDA  1,0(0) 	set first frame at end of globals 
358:     ST  1,0(1) 	store old fp (point to self) 
359:    LDA  3,1(7) 	Return address in ac 
360:    LDA  7,-234(7) 	Jump to main 
361:   HALT  0,0,0 	DONE! 
* END Init
