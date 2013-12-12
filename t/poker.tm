* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  poker.c-
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
* BEGIN function suit
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
 43:     LD  3,-2(1) 	Load variable c
 44:     ST  3,-3(1) 	Save left side 
 45:     LD  3,0(0) 	Load variable numSuits
 46:     LD  4,-3(1) 	Load left into ac1 
 47:    DIV  5,4,3 	Op % 
 48:    MUL  5,5,3 	 
 49:    SUB  3,4,5 	 
 50:    LDA  2,0(3) 	Copy result to rt register 
 51:     LD  3,-1(1) 	Load return address 
 52:     LD  1,0(1) 	Adjust fp 
 53:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 54:    LDC  2,0(6) 	Set return value to 0 
 55:     LD  3,-1(1) 	Load return address 
 56:     LD  1,0(1) 	Adjust fp 
 57:    LDA  7,0(3) 	Return 
* END of function suit
* BEGIN function pips
 58:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
 59:     LD  3,-2(1) 	Load variable c
 60:     ST  3,-3(1) 	Save left side 
 61:     LD  3,0(0) 	Load variable numSuits
 62:     LD  4,-3(1) 	Load left into ac1 
 63:    DIV  3,4,3 	Op / 
 64:    LDA  2,0(3) 	Copy result to rt register 
 65:     LD  3,-1(1) 	Load return address 
 66:     LD  1,0(1) 	Adjust fp 
 67:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 68:    LDC  2,0(6) 	Set return value to 0 
 69:     LD  3,-1(1) 	Load return address 
 70:     LD  1,0(1) 	Adjust fp 
 71:    LDA  7,0(3) 	Return 
* END of function pips
* BEGIN function p
 72:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
*                       Begin call to  pips
 73:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 74:     LD  3,-2(1) 	Load variable a
 75:     ST  3,-6(1) 	Store parameter 
*                       Jump to pips
 76:    LDA  1,-4(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-21(7) 	CALL pips
 79:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
 80:     ST  3,-4(1) 	Save left side 
*                       Begin call to  pips
 81:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
 82:     LD  3,-3(1) 	Load variable b
 83:     ST  3,-7(1) 	Store parameter 
*                       Jump to pips
 84:    LDA  1,-5(1) 	Load address of new frame 
 85:    LDA  3,1(7) 	Return address in ac 
 86:    LDA  7,-29(7) 	CALL pips
 87:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
 88:     LD  4,-4(1) 	Load left into ac1 
 89:    SUB  4,4,3 	Op == 
 90:    LDC  3,1(6) 	True case 
 91:    JEQ  4,1(7) 	Jump if true 
 92:    LDC  3,0(6) 	False case 
 93:    LDA  2,0(3) 	Copy result to rt register 
 94:     LD  3,-1(1) 	Load return address 
 95:     LD  1,0(1) 	Adjust fp 
 96:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 97:    LDC  2,0(6) 	Set return value to 0 
 98:     LD  3,-1(1) 	Load return address 
 99:     LD  1,0(1) 	Adjust fp 
100:    LDA  7,0(3) 	Return 
* END of function p
* BEGIN function ppp
101:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
*                       Begin call to  p
102:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
103:     LD  3,-2(1) 	Load variable a
104:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
105:     LD  3,-3(1) 	Load variable b
106:     ST  3,-8(1) 	Store parameter 
*                       Jump to p
107:    LDA  1,-5(1) 	Load address of new frame 
108:    LDA  3,1(7) 	Return address in ac 
109:    LDA  7,-38(7) 	CALL p
110:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
111:     ST  3,-5(1) 	Save left side 
*                       Begin call to  p
112:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
113:     LD  3,-3(1) 	Load variable b
114:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
115:     LD  3,-4(1) 	Load variable c
116:     ST  3,-9(1) 	Store parameter 
*                       Jump to p
117:    LDA  1,-6(1) 	Load address of new frame 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-48(7) 	CALL p
120:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
121:     LD  4,-5(1) 	Load left into ac1 
122:    JEQ  3,1(7) 	Op AND 
123:    LDA  3,0(4) 	 
124:    LDA  2,0(3) 	Copy result to rt register 
125:     LD  3,-1(1) 	Load return address 
126:     LD  1,0(1) 	Adjust fp 
127:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
128:    LDC  2,0(6) 	Set return value to 0 
129:     LD  3,-1(1) 	Load return address 
130:     LD  1,0(1) 	Adjust fp 
131:    LDA  7,0(3) 	Return 
* END of function ppp
* BEGIN function pppp
132:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
*                       Begin call to  p
133:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
134:     LD  3,-2(1) 	Load variable a
135:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
136:     LD  3,-3(1) 	Load variable b
137:     ST  3,-9(1) 	Store parameter 
*                       Jump to p
138:    LDA  1,-6(1) 	Load address of new frame 
139:    LDA  3,1(7) 	Return address in ac 
140:    LDA  7,-69(7) 	CALL p
141:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
142:     ST  3,-6(1) 	Save left side 
*                       Begin call to  p
143:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Load param 1
144:     LD  3,-3(1) 	Load variable b
145:     ST  3,-9(1) 	Store parameter 
*                       Load param 2
146:     LD  3,-4(1) 	Load variable c
147:     ST  3,-10(1) 	Store parameter 
*                       Jump to p
148:    LDA  1,-7(1) 	Load address of new frame 
149:    LDA  3,1(7) 	Return address in ac 
150:    LDA  7,-79(7) 	CALL p
151:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
152:     LD  4,-6(1) 	Load left into ac1 
153:    JEQ  3,1(7) 	Op AND 
154:    LDA  3,0(4) 	 
155:     ST  3,-6(1) 	Save left side 
*                       Begin call to  p
156:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Load param 1
157:     LD  3,-4(1) 	Load variable c
158:     ST  3,-9(1) 	Store parameter 
*                       Load param 2
159:     LD  3,-5(1) 	Load variable d
160:     ST  3,-10(1) 	Store parameter 
*                       Jump to p
161:    LDA  1,-7(1) 	Load address of new frame 
162:    LDA  3,1(7) 	Return address in ac 
163:    LDA  7,-92(7) 	CALL p
164:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
165:     LD  4,-6(1) 	Load left into ac1 
166:    JEQ  3,1(7) 	Op AND 
167:    LDA  3,0(4) 	 
168:    LDA  2,0(3) 	Copy result to rt register 
169:     LD  3,-1(1) 	Load return address 
170:     LD  1,0(1) 	Adjust fp 
171:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
172:    LDC  2,0(6) 	Set return value to 0 
173:     LD  3,-1(1) 	Load return address 
174:     LD  1,0(1) 	Adjust fp 
175:    LDA  7,0(3) 	Return 
* END of function pppp
* BEGIN function handtype
176:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  suit
177:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
178:     LD  3,-2(1) 	Load variable a
179:     ST  3,-10(1) 	Store parameter 
*                       Jump to suit
180:    LDA  1,-8(1) 	Load address of new frame 
181:    LDA  3,1(7) 	Return address in ac 
182:    LDA  7,-141(7) 	CALL suit
183:    LDA  3,0(2) 	Save the result in ac 
*                       End call to suit
184:     ST  3,-8(1) 	Save left side 
*                       Begin call to  suit
185:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
186:     LD  3,-3(1) 	Load variable b
187:     ST  3,-11(1) 	Store parameter 
*                       Jump to suit
188:    LDA  1,-9(1) 	Load address of new frame 
189:    LDA  3,1(7) 	Return address in ac 
190:    LDA  7,-149(7) 	CALL suit
191:    LDA  3,0(2) 	Save the result in ac 
*                       End call to suit
192:     LD  4,-8(1) 	Load left into ac1 
193:    SUB  4,4,3 	Op == 
194:    LDC  3,1(6) 	True case 
195:    JEQ  4,1(7) 	Jump if true 
196:    LDC  3,0(6) 	False case 
197:     ST  3,-8(1) 	Save left side 
*                       Begin call to  suit
198:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
199:     LD  3,-2(1) 	Load variable a
200:     ST  3,-11(1) 	Store parameter 
*                       Jump to suit
201:    LDA  1,-9(1) 	Load address of new frame 
202:    LDA  3,1(7) 	Return address in ac 
203:    LDA  7,-162(7) 	CALL suit
204:    LDA  3,0(2) 	Save the result in ac 
*                       End call to suit
205:     ST  3,-9(1) 	Save left side 
*                       Begin call to  suit
206:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
207:     LD  3,-4(1) 	Load variable c
208:     ST  3,-12(1) 	Store parameter 
*                       Jump to suit
209:    LDA  1,-10(1) 	Load address of new frame 
210:    LDA  3,1(7) 	Return address in ac 
211:    LDA  7,-170(7) 	CALL suit
212:    LDA  3,0(2) 	Save the result in ac 
*                       End call to suit
213:     LD  4,-9(1) 	Load left into ac1 
214:    SUB  4,4,3 	Op == 
215:    LDC  3,1(6) 	True case 
216:    JEQ  4,1(7) 	Jump if true 
217:    LDC  3,0(6) 	False case 
218:     LD  4,-8(1) 	Load left into ac1 
219:    JEQ  3,1(7) 	Op AND 
220:    LDA  3,0(4) 	 
221:     ST  3,-8(1) 	Save left side 
*                       Begin call to  suit
222:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
223:     LD  3,-2(1) 	Load variable a
224:     ST  3,-11(1) 	Store parameter 
*                       Jump to suit
225:    LDA  1,-9(1) 	Load address of new frame 
226:    LDA  3,1(7) 	Return address in ac 
227:    LDA  7,-186(7) 	CALL suit
228:    LDA  3,0(2) 	Save the result in ac 
*                       End call to suit
229:     ST  3,-9(1) 	Save left side 
*                       Begin call to  suit
230:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
231:     LD  3,-5(1) 	Load variable d
232:     ST  3,-12(1) 	Store parameter 
*                       Jump to suit
233:    LDA  1,-10(1) 	Load address of new frame 
234:    LDA  3,1(7) 	Return address in ac 
235:    LDA  7,-194(7) 	CALL suit
236:    LDA  3,0(2) 	Save the result in ac 
*                       End call to suit
237:     LD  4,-9(1) 	Load left into ac1 
238:    SUB  4,4,3 	Op == 
239:    LDC  3,1(6) 	True case 
240:    JEQ  4,1(7) 	Jump if true 
241:    LDC  3,0(6) 	False case 
242:     LD  4,-8(1) 	Load left into ac1 
243:    JEQ  3,1(7) 	Op AND 
244:    LDA  3,0(4) 	 
245:     ST  3,-8(1) 	Save left side 
*                       Begin call to  suit
246:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
247:     LD  3,-2(1) 	Load variable a
248:     ST  3,-11(1) 	Store parameter 
*                       Jump to suit
249:    LDA  1,-9(1) 	Load address of new frame 
250:    LDA  3,1(7) 	Return address in ac 
251:    LDA  7,-210(7) 	CALL suit
252:    LDA  3,0(2) 	Save the result in ac 
*                       End call to suit
253:     ST  3,-9(1) 	Save left side 
*                       Begin call to  suit
254:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
255:     LD  3,-6(1) 	Load variable e
256:     ST  3,-12(1) 	Store parameter 
*                       Jump to suit
257:    LDA  1,-10(1) 	Load address of new frame 
258:    LDA  3,1(7) 	Return address in ac 
259:    LDA  7,-218(7) 	CALL suit
260:    LDA  3,0(2) 	Save the result in ac 
*                       End call to suit
261:     LD  4,-9(1) 	Load left into ac1 
262:    SUB  4,4,3 	Op == 
263:    LDC  3,1(6) 	True case 
264:    JEQ  4,1(7) 	Jump if true 
265:    LDC  3,0(6) 	False case 
266:     LD  4,-8(1) 	Load left into ac1 
267:    JEQ  3,1(7) 	Op AND 
268:    LDA  3,0(4) 	 
269:     ST  3,-7(1) 	Store variable isflush
* IF
270:     LD  3,-7(1) 	Load variable isflush
271:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pips
272:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
273:     LD  3,-2(1) 	Load variable a
274:     ST  3,-11(1) 	Store parameter 
*                       Jump to pips
275:    LDA  1,-9(1) 	Load address of new frame 
276:    LDA  3,1(7) 	Return address in ac 
277:    LDA  7,-220(7) 	CALL pips
278:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
279:     ST  3,-9(1) 	Save left side 
280:    LDC  3,0(6) 	Load constant 
281:     LD  4,-9(1) 	Load left into ac1 
282:    SUB  4,4,3 	Op == 
283:    LDC  3,1(6) 	True case 
284:    JEQ  4,1(7) 	Jump if true 
285:    LDC  3,0(6) 	False case 
286:     LD  4,-8(1) 	Load left into ac1 
287:    JEQ  3,1(7) 	Op AND 
288:    LDA  3,0(4) 	 
289:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pips
290:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
291:     LD  3,-3(1) 	Load variable b
292:     ST  3,-11(1) 	Store parameter 
*                       Jump to pips
293:    LDA  1,-9(1) 	Load address of new frame 
294:    LDA  3,1(7) 	Return address in ac 
295:    LDA  7,-238(7) 	CALL pips
296:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
297:     ST  3,-9(1) 	Save left side 
298:     LD  3,-1(0) 	Load variable numPips
299:     ST  3,-10(1) 	Save left side 
300:    LDC  3,4(6) 	Load constant 
301:     LD  4,-10(1) 	Load left into ac1 
302:    SUB  3,4,3 	Op - 
303:     LD  4,-9(1) 	Load left into ac1 
304:    SUB  4,4,3 	Op == 
305:    LDC  3,1(6) 	True case 
306:    JEQ  4,1(7) 	Jump if true 
307:    LDC  3,0(6) 	False case 
308:     LD  4,-8(1) 	Load left into ac1 
309:    JEQ  3,1(7) 	Op AND 
310:    LDA  3,0(4) 	 
311:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pips
312:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
313:     LD  3,-6(1) 	Load variable e
314:     ST  3,-11(1) 	Store parameter 
*                       Jump to pips
315:    LDA  1,-9(1) 	Load address of new frame 
316:    LDA  3,1(7) 	Return address in ac 
317:    LDA  7,-260(7) 	CALL pips
318:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
319:     ST  3,-9(1) 	Save left side 
320:     LD  3,-1(0) 	Load variable numPips
321:     ST  3,-10(1) 	Save left side 
322:    LDC  3,1(6) 	Load constant 
323:     LD  4,-10(1) 	Load left into ac1 
324:    SUB  3,4,3 	Op - 
325:     LD  4,-9(1) 	Load left into ac1 
326:    SUB  4,4,3 	Op == 
327:    LDC  3,1(6) 	True case 
328:    JEQ  4,1(7) 	Jump if true 
329:    LDC  3,0(6) 	False case 
330:     LD  4,-8(1) 	Load left into ac1 
331:    JEQ  3,1(7) 	Op AND 
332:    LDA  3,0(4) 	 
333:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
335:    LDC  3,0(6) 	Load constant 
336:    LDA  2,0(3) 	Copy result to rt register 
337:     LD  3,-1(1) 	Load return address 
338:     LD  1,0(1) 	Adjust fp 
339:    LDA  7,0(3) 	Return 
* ELSE
334:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
341:     LD  3,-7(1) 	Load variable isflush
342:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pips
343:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
344:     LD  3,-2(1) 	Load variable a
345:     ST  3,-11(1) 	Store parameter 
*                       Jump to pips
346:    LDA  1,-9(1) 	Load address of new frame 
347:    LDA  3,1(7) 	Return address in ac 
348:    LDA  7,-291(7) 	CALL pips
349:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
350:     ST  3,-9(1) 	Save left side 
*                       Begin call to  pips
351:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
352:     LD  3,-6(1) 	Load variable e
353:     ST  3,-12(1) 	Store parameter 
*                       Jump to pips
354:    LDA  1,-10(1) 	Load address of new frame 
355:    LDA  3,1(7) 	Return address in ac 
356:    LDA  7,-299(7) 	CALL pips
357:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
358:     ST  3,-10(1) 	Save left side 
359:    LDC  3,4(6) 	Load constant 
360:     LD  4,-10(1) 	Load left into ac1 
361:    SUB  3,4,3 	Op - 
362:     LD  4,-9(1) 	Load left into ac1 
363:    SUB  4,4,3 	Op == 
364:    LDC  3,1(6) 	True case 
365:    JEQ  4,1(7) 	Jump if true 
366:    LDC  3,0(6) 	False case 
367:     LD  4,-8(1) 	Load left into ac1 
368:    JEQ  3,1(7) 	Op AND 
369:    LDA  3,0(4) 	 
370:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
372:    LDC  3,1(6) 	Load constant 
373:    LDA  2,0(3) 	Copy result to rt register 
374:     LD  3,-1(1) 	Load return address 
375:     LD  1,0(1) 	Adjust fp 
376:    LDA  7,0(3) 	Return 
* ELSE
371:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
*                       Begin call to  pppp
378:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
379:     LD  3,-2(1) 	Load variable a
380:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
381:     LD  3,-3(1) 	Load variable b
382:     ST  3,-11(1) 	Store parameter 
*                       Load param 3
383:     LD  3,-4(1) 	Load variable c
384:     ST  3,-12(1) 	Store parameter 
*                       Load param 4
385:     LD  3,-5(1) 	Load variable d
386:     ST  3,-13(1) 	Store parameter 
*                       Jump to pppp
387:    LDA  1,-8(1) 	Load address of new frame 
388:    LDA  3,1(7) 	Return address in ac 
389:    LDA  7,-258(7) 	CALL pppp
390:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pppp
391:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pppp
392:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
393:     LD  3,-3(1) 	Load variable b
394:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
395:     LD  3,-4(1) 	Load variable c
396:     ST  3,-12(1) 	Store parameter 
*                       Load param 3
397:     LD  3,-5(1) 	Load variable d
398:     ST  3,-13(1) 	Store parameter 
*                       Load param 4
399:     LD  3,-6(1) 	Load variable e
400:     ST  3,-14(1) 	Store parameter 
*                       Jump to pppp
401:    LDA  1,-9(1) 	Load address of new frame 
402:    LDA  3,1(7) 	Return address in ac 
403:    LDA  7,-272(7) 	CALL pppp
404:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pppp
405:     LD  4,-8(1) 	Load left into ac1 
406:    JGT  3,1(7) 	Op OR 
407:    LDA  3,0(4) 	 
408:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
410:    LDC  3,2(6) 	Load constant 
411:    LDA  2,0(3) 	Copy result to rt register 
412:     LD  3,-1(1) 	Load return address 
413:     LD  1,0(1) 	Adjust fp 
414:    LDA  7,0(3) 	Return 
* ELSE
409:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
*                       Begin call to  ppp
416:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
417:     LD  3,-2(1) 	Load variable a
418:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
419:     LD  3,-3(1) 	Load variable b
420:     ST  3,-11(1) 	Store parameter 
*                       Load param 3
421:     LD  3,-4(1) 	Load variable c
422:     ST  3,-12(1) 	Store parameter 
*                       Jump to ppp
423:    LDA  1,-8(1) 	Load address of new frame 
424:    LDA  3,1(7) 	Return address in ac 
425:    LDA  7,-325(7) 	CALL ppp
426:    LDA  3,0(2) 	Save the result in ac 
*                       End call to ppp
427:     ST  3,-8(1) 	Save left side 
*                       Begin call to  p
428:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
429:     LD  3,-5(1) 	Load variable d
430:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
431:     LD  3,-6(1) 	Load variable e
432:     ST  3,-12(1) 	Store parameter 
*                       Jump to p
433:    LDA  1,-9(1) 	Load address of new frame 
434:    LDA  3,1(7) 	Return address in ac 
435:    LDA  7,-364(7) 	CALL p
436:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
437:     LD  4,-8(1) 	Load left into ac1 
438:    JEQ  3,1(7) 	Op AND 
439:    LDA  3,0(4) 	 
440:     ST  3,-8(1) 	Save left side 
*                       Begin call to  p
441:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
442:     LD  3,-2(1) 	Load variable a
443:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
444:     LD  3,-3(1) 	Load variable b
445:     ST  3,-12(1) 	Store parameter 
*                       Jump to p
446:    LDA  1,-9(1) 	Load address of new frame 
447:    LDA  3,1(7) 	Return address in ac 
448:    LDA  7,-377(7) 	CALL p
449:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
450:     ST  3,-9(1) 	Save left side 
*                       Begin call to  ppp
451:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
452:     LD  3,-4(1) 	Load variable c
453:     ST  3,-12(1) 	Store parameter 
*                       Load param 2
454:     LD  3,-5(1) 	Load variable d
455:     ST  3,-13(1) 	Store parameter 
*                       Load param 3
456:     LD  3,-6(1) 	Load variable e
457:     ST  3,-14(1) 	Store parameter 
*                       Jump to ppp
458:    LDA  1,-10(1) 	Load address of new frame 
459:    LDA  3,1(7) 	Return address in ac 
460:    LDA  7,-360(7) 	CALL ppp
461:    LDA  3,0(2) 	Save the result in ac 
*                       End call to ppp
462:     LD  4,-9(1) 	Load left into ac1 
463:    JEQ  3,1(7) 	Op AND 
464:    LDA  3,0(4) 	 
465:     LD  4,-8(1) 	Load left into ac1 
466:    JGT  3,1(7) 	Op OR 
467:    LDA  3,0(4) 	 
468:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
470:    LDC  3,3(6) 	Load constant 
471:    LDA  2,0(3) 	Copy result to rt register 
472:     LD  3,-1(1) 	Load return address 
473:     LD  1,0(1) 	Adjust fp 
474:    LDA  7,0(3) 	Return 
* ELSE
469:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
476:     LD  3,-7(1) 	Load variable isflush
477:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
479:    LDC  3,4(6) 	Load constant 
480:    LDA  2,0(3) 	Copy result to rt register 
481:     LD  3,-1(1) 	Load return address 
482:     LD  1,0(1) 	Adjust fp 
483:    LDA  7,0(3) 	Return 
* ELSE
478:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
*                       Begin call to  pips
485:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
486:     LD  3,-2(1) 	Load variable a
487:     ST  3,-10(1) 	Store parameter 
*                       Jump to pips
488:    LDA  1,-8(1) 	Load address of new frame 
489:    LDA  3,1(7) 	Return address in ac 
490:    LDA  7,-433(7) 	CALL pips
491:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
492:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pips
493:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
494:     LD  3,-3(1) 	Load variable b
495:     ST  3,-11(1) 	Store parameter 
*                       Jump to pips
496:    LDA  1,-9(1) 	Load address of new frame 
497:    LDA  3,1(7) 	Return address in ac 
498:    LDA  7,-441(7) 	CALL pips
499:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
500:     ST  3,-9(1) 	Save left side 
501:    LDC  3,1(6) 	Load constant 
502:     LD  4,-9(1) 	Load left into ac1 
503:    SUB  3,4,3 	Op - 
504:     LD  4,-8(1) 	Load left into ac1 
505:    SUB  4,4,3 	Op == 
506:    LDC  3,1(6) 	True case 
507:    JEQ  4,1(7) 	Jump if true 
508:    LDC  3,0(6) 	False case 
509:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pips
510:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
511:     LD  3,-3(1) 	Load variable b
512:     ST  3,-11(1) 	Store parameter 
*                       Jump to pips
513:    LDA  1,-9(1) 	Load address of new frame 
514:    LDA  3,1(7) 	Return address in ac 
515:    LDA  7,-458(7) 	CALL pips
516:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
517:     ST  3,-9(1) 	Save left side 
*                       Begin call to  pips
518:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
519:     LD  3,-4(1) 	Load variable c
520:     ST  3,-12(1) 	Store parameter 
*                       Jump to pips
521:    LDA  1,-10(1) 	Load address of new frame 
522:    LDA  3,1(7) 	Return address in ac 
523:    LDA  7,-466(7) 	CALL pips
524:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
525:     ST  3,-10(1) 	Save left side 
526:    LDC  3,1(6) 	Load constant 
527:     LD  4,-10(1) 	Load left into ac1 
528:    SUB  3,4,3 	Op - 
529:     LD  4,-9(1) 	Load left into ac1 
530:    SUB  4,4,3 	Op == 
531:    LDC  3,1(6) 	True case 
532:    JEQ  4,1(7) 	Jump if true 
533:    LDC  3,0(6) 	False case 
534:     LD  4,-8(1) 	Load left into ac1 
535:    JEQ  3,1(7) 	Op AND 
536:    LDA  3,0(4) 	 
537:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pips
538:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
539:     LD  3,-4(1) 	Load variable c
540:     ST  3,-11(1) 	Store parameter 
*                       Jump to pips
541:    LDA  1,-9(1) 	Load address of new frame 
542:    LDA  3,1(7) 	Return address in ac 
543:    LDA  7,-486(7) 	CALL pips
544:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
545:     ST  3,-9(1) 	Save left side 
*                       Begin call to  pips
546:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
547:     LD  3,-5(1) 	Load variable d
548:     ST  3,-12(1) 	Store parameter 
*                       Jump to pips
549:    LDA  1,-10(1) 	Load address of new frame 
550:    LDA  3,1(7) 	Return address in ac 
551:    LDA  7,-494(7) 	CALL pips
552:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
553:     ST  3,-10(1) 	Save left side 
554:    LDC  3,1(6) 	Load constant 
555:     LD  4,-10(1) 	Load left into ac1 
556:    SUB  3,4,3 	Op - 
557:     LD  4,-9(1) 	Load left into ac1 
558:    SUB  4,4,3 	Op == 
559:    LDC  3,1(6) 	True case 
560:    JEQ  4,1(7) 	Jump if true 
561:    LDC  3,0(6) 	False case 
562:     LD  4,-8(1) 	Load left into ac1 
563:    JEQ  3,1(7) 	Op AND 
564:    LDA  3,0(4) 	 
565:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pips
566:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
567:     LD  3,-5(1) 	Load variable d
568:     ST  3,-11(1) 	Store parameter 
*                       Jump to pips
569:    LDA  1,-9(1) 	Load address of new frame 
570:    LDA  3,1(7) 	Return address in ac 
571:    LDA  7,-514(7) 	CALL pips
572:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
573:     ST  3,-9(1) 	Save left side 
*                       Begin call to  pips
574:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
575:     LD  3,-6(1) 	Load variable e
576:     ST  3,-12(1) 	Store parameter 
*                       Jump to pips
577:    LDA  1,-10(1) 	Load address of new frame 
578:    LDA  3,1(7) 	Return address in ac 
579:    LDA  7,-522(7) 	CALL pips
580:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
581:     ST  3,-10(1) 	Save left side 
582:    LDC  3,1(6) 	Load constant 
583:     LD  4,-10(1) 	Load left into ac1 
584:    SUB  3,4,3 	Op - 
585:     LD  4,-9(1) 	Load left into ac1 
586:    SUB  4,4,3 	Op == 
587:    LDC  3,1(6) 	True case 
588:    JEQ  4,1(7) 	Jump if true 
589:    LDC  3,0(6) 	False case 
590:     LD  4,-8(1) 	Load left into ac1 
591:    JEQ  3,1(7) 	Op AND 
592:    LDA  3,0(4) 	 
593:     ST  3,-8(1) 	Save left side 
*                       Begin call to  pips
594:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
595:     LD  3,-2(1) 	Load variable a
596:     ST  3,-11(1) 	Store parameter 
*                       Jump to pips
597:    LDA  1,-9(1) 	Load address of new frame 
598:    LDA  3,1(7) 	Return address in ac 
599:    LDA  7,-542(7) 	CALL pips
600:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
601:     ST  3,-9(1) 	Save left side 
602:    LDC  3,0(6) 	Load constant 
603:     LD  4,-9(1) 	Load left into ac1 
604:    SUB  4,4,3 	Op == 
605:    LDC  3,1(6) 	True case 
606:    JEQ  4,1(7) 	Jump if true 
607:    LDC  3,0(6) 	False case 
608:     ST  3,-9(1) 	Save left side 
*                       Begin call to  pips
609:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
610:     LD  3,-3(1) 	Load variable b
611:     ST  3,-12(1) 	Store parameter 
*                       Jump to pips
612:    LDA  1,-10(1) 	Load address of new frame 
613:    LDA  3,1(7) 	Return address in ac 
614:    LDA  7,-557(7) 	CALL pips
615:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
616:     ST  3,-10(1) 	Save left side 
617:     LD  3,-1(0) 	Load variable numPips
618:     ST  3,-11(1) 	Save left side 
619:    LDC  3,4(6) 	Load constant 
620:     LD  4,-11(1) 	Load left into ac1 
621:    SUB  3,4,3 	Op - 
622:     LD  4,-10(1) 	Load left into ac1 
623:    SUB  4,4,3 	Op == 
624:    LDC  3,1(6) 	True case 
625:    JEQ  4,1(7) 	Jump if true 
626:    LDC  3,0(6) 	False case 
627:     LD  4,-9(1) 	Load left into ac1 
628:    JEQ  3,1(7) 	Op AND 
629:    LDA  3,0(4) 	 
630:     ST  3,-9(1) 	Save left side 
*                       Begin call to  pips
631:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
632:     LD  3,-4(1) 	Load variable c
633:     ST  3,-12(1) 	Store parameter 
*                       Jump to pips
634:    LDA  1,-10(1) 	Load address of new frame 
635:    LDA  3,1(7) 	Return address in ac 
636:    LDA  7,-579(7) 	CALL pips
637:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
638:     ST  3,-10(1) 	Save left side 
639:     LD  3,-1(0) 	Load variable numPips
640:     ST  3,-11(1) 	Save left side 
641:    LDC  3,3(6) 	Load constant 
642:     LD  4,-11(1) 	Load left into ac1 
643:    SUB  3,4,3 	Op - 
644:     LD  4,-10(1) 	Load left into ac1 
645:    SUB  4,4,3 	Op == 
646:    LDC  3,1(6) 	True case 
647:    JEQ  4,1(7) 	Jump if true 
648:    LDC  3,0(6) 	False case 
649:     LD  4,-9(1) 	Load left into ac1 
650:    JEQ  3,1(7) 	Op AND 
651:    LDA  3,0(4) 	 
652:     ST  3,-9(1) 	Save left side 
*                       Begin call to  pips
653:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
654:     LD  3,-5(1) 	Load variable d
655:     ST  3,-12(1) 	Store parameter 
*                       Jump to pips
656:    LDA  1,-10(1) 	Load address of new frame 
657:    LDA  3,1(7) 	Return address in ac 
658:    LDA  7,-601(7) 	CALL pips
659:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
660:     ST  3,-10(1) 	Save left side 
661:     LD  3,-1(0) 	Load variable numPips
662:     ST  3,-11(1) 	Save left side 
663:    LDC  3,2(6) 	Load constant 
664:     LD  4,-11(1) 	Load left into ac1 
665:    SUB  3,4,3 	Op - 
666:     LD  4,-10(1) 	Load left into ac1 
667:    SUB  4,4,3 	Op == 
668:    LDC  3,1(6) 	True case 
669:    JEQ  4,1(7) 	Jump if true 
670:    LDC  3,0(6) 	False case 
671:     LD  4,-9(1) 	Load left into ac1 
672:    JEQ  3,1(7) 	Op AND 
673:    LDA  3,0(4) 	 
674:     ST  3,-9(1) 	Save left side 
*                       Begin call to  pips
675:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
676:     LD  3,-6(1) 	Load variable e
677:     ST  3,-12(1) 	Store parameter 
*                       Jump to pips
678:    LDA  1,-10(1) 	Load address of new frame 
679:    LDA  3,1(7) 	Return address in ac 
680:    LDA  7,-623(7) 	CALL pips
681:    LDA  3,0(2) 	Save the result in ac 
*                       End call to pips
682:     ST  3,-10(1) 	Save left side 
683:     LD  3,-1(0) 	Load variable numPips
684:     ST  3,-11(1) 	Save left side 
685:    LDC  3,1(6) 	Load constant 
686:     LD  4,-11(1) 	Load left into ac1 
687:    SUB  3,4,3 	Op - 
688:     LD  4,-10(1) 	Load left into ac1 
689:    SUB  4,4,3 	Op == 
690:    LDC  3,1(6) 	True case 
691:    JEQ  4,1(7) 	Jump if true 
692:    LDC  3,0(6) 	False case 
693:     LD  4,-9(1) 	Load left into ac1 
694:    JEQ  3,1(7) 	Op AND 
695:    LDA  3,0(4) 	 
696:     LD  4,-8(1) 	Load left into ac1 
697:    JGT  3,1(7) 	Op OR 
698:    LDA  3,0(4) 	 
699:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
701:    LDC  3,5(6) 	Load constant 
702:    LDA  2,0(3) 	Copy result to rt register 
703:     LD  3,-1(1) 	Load return address 
704:     LD  1,0(1) 	Adjust fp 
705:    LDA  7,0(3) 	Return 
* ELSE
700:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
*                       Begin call to  ppp
707:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
708:     LD  3,-2(1) 	Load variable a
709:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
710:     LD  3,-3(1) 	Load variable b
711:     ST  3,-11(1) 	Store parameter 
*                       Load param 3
712:     LD  3,-4(1) 	Load variable c
713:     ST  3,-12(1) 	Store parameter 
*                       Jump to ppp
714:    LDA  1,-8(1) 	Load address of new frame 
715:    LDA  3,1(7) 	Return address in ac 
716:    LDA  7,-616(7) 	CALL ppp
717:    LDA  3,0(2) 	Save the result in ac 
*                       End call to ppp
718:     ST  3,-8(1) 	Save left side 
*                       Begin call to  ppp
719:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
720:     LD  3,-3(1) 	Load variable b
721:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
722:     LD  3,-4(1) 	Load variable c
723:     ST  3,-12(1) 	Store parameter 
*                       Load param 3
724:     LD  3,-5(1) 	Load variable d
725:     ST  3,-13(1) 	Store parameter 
*                       Jump to ppp
726:    LDA  1,-9(1) 	Load address of new frame 
727:    LDA  3,1(7) 	Return address in ac 
728:    LDA  7,-628(7) 	CALL ppp
729:    LDA  3,0(2) 	Save the result in ac 
*                       End call to ppp
730:     LD  4,-8(1) 	Load left into ac1 
731:    JGT  3,1(7) 	Op OR 
732:    LDA  3,0(4) 	 
733:     ST  3,-8(1) 	Save left side 
*                       Begin call to  ppp
734:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
735:     LD  3,-4(1) 	Load variable c
736:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
737:     LD  3,-5(1) 	Load variable d
738:     ST  3,-12(1) 	Store parameter 
*                       Load param 3
739:     LD  3,-6(1) 	Load variable e
740:     ST  3,-13(1) 	Store parameter 
*                       Jump to ppp
741:    LDA  1,-9(1) 	Load address of new frame 
742:    LDA  3,1(7) 	Return address in ac 
743:    LDA  7,-643(7) 	CALL ppp
744:    LDA  3,0(2) 	Save the result in ac 
*                       End call to ppp
745:     LD  4,-8(1) 	Load left into ac1 
746:    JGT  3,1(7) 	Op OR 
747:    LDA  3,0(4) 	 
748:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
750:    LDC  3,6(6) 	Load constant 
751:    LDA  2,0(3) 	Copy result to rt register 
752:     LD  3,-1(1) 	Load return address 
753:     LD  1,0(1) 	Adjust fp 
754:    LDA  7,0(3) 	Return 
* ELSE
749:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
*                       Begin call to  p
756:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
757:     LD  3,-2(1) 	Load variable a
758:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
759:     LD  3,-3(1) 	Load variable b
760:     ST  3,-11(1) 	Store parameter 
*                       Jump to p
761:    LDA  1,-8(1) 	Load address of new frame 
762:    LDA  3,1(7) 	Return address in ac 
763:    LDA  7,-692(7) 	CALL p
764:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
765:     ST  3,-8(1) 	Save left side 
*                       Begin call to  p
766:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
767:     LD  3,-4(1) 	Load variable c
768:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
769:     LD  3,-5(1) 	Load variable d
770:     ST  3,-12(1) 	Store parameter 
*                       Jump to p
771:    LDA  1,-9(1) 	Load address of new frame 
772:    LDA  3,1(7) 	Return address in ac 
773:    LDA  7,-702(7) 	CALL p
774:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
775:     LD  4,-8(1) 	Load left into ac1 
776:    JEQ  3,1(7) 	Op AND 
777:    LDA  3,0(4) 	 
778:     ST  3,-8(1) 	Save left side 
*                       Begin call to  p
779:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
780:     LD  3,-2(1) 	Load variable a
781:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
782:     LD  3,-3(1) 	Load variable b
783:     ST  3,-12(1) 	Store parameter 
*                       Jump to p
784:    LDA  1,-9(1) 	Load address of new frame 
785:    LDA  3,1(7) 	Return address in ac 
786:    LDA  7,-715(7) 	CALL p
787:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
788:     ST  3,-9(1) 	Save left side 
*                       Begin call to  p
789:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
790:     LD  3,-5(1) 	Load variable d
791:     ST  3,-12(1) 	Store parameter 
*                       Load param 2
792:     LD  3,-6(1) 	Load variable e
793:     ST  3,-13(1) 	Store parameter 
*                       Jump to p
794:    LDA  1,-10(1) 	Load address of new frame 
795:    LDA  3,1(7) 	Return address in ac 
796:    LDA  7,-725(7) 	CALL p
797:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
798:     LD  4,-9(1) 	Load left into ac1 
799:    JEQ  3,1(7) 	Op AND 
800:    LDA  3,0(4) 	 
801:     LD  4,-8(1) 	Load left into ac1 
802:    JGT  3,1(7) 	Op OR 
803:    LDA  3,0(4) 	 
804:     ST  3,-8(1) 	Save left side 
*                       Begin call to  p
805:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
806:     LD  3,-3(1) 	Load variable b
807:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
808:     LD  3,-4(1) 	Load variable c
809:     ST  3,-12(1) 	Store parameter 
*                       Jump to p
810:    LDA  1,-9(1) 	Load address of new frame 
811:    LDA  3,1(7) 	Return address in ac 
812:    LDA  7,-741(7) 	CALL p
813:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
814:     ST  3,-9(1) 	Save left side 
*                       Begin call to  p
815:     ST  1,-10(1) 	Store old fp in ghost frame 
*                       Load param 1
816:     LD  3,-5(1) 	Load variable d
817:     ST  3,-12(1) 	Store parameter 
*                       Load param 2
818:     LD  3,-6(1) 	Load variable e
819:     ST  3,-13(1) 	Store parameter 
*                       Jump to p
820:    LDA  1,-10(1) 	Load address of new frame 
821:    LDA  3,1(7) 	Return address in ac 
822:    LDA  7,-751(7) 	CALL p
823:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
824:     LD  4,-9(1) 	Load left into ac1 
825:    JEQ  3,1(7) 	Op AND 
826:    LDA  3,0(4) 	 
827:     LD  4,-8(1) 	Load left into ac1 
828:    JGT  3,1(7) 	Op OR 
829:    LDA  3,0(4) 	 
830:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
832:    LDC  3,7(6) 	Load constant 
833:    LDA  2,0(3) 	Copy result to rt register 
834:     LD  3,-1(1) 	Load return address 
835:     LD  1,0(1) 	Adjust fp 
836:    LDA  7,0(3) 	Return 
* ELSE
831:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
*                       Begin call to  p
838:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
839:     LD  3,-2(1) 	Load variable a
840:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
841:     LD  3,-3(1) 	Load variable b
842:     ST  3,-11(1) 	Store parameter 
*                       Jump to p
843:    LDA  1,-8(1) 	Load address of new frame 
844:    LDA  3,1(7) 	Return address in ac 
845:    LDA  7,-774(7) 	CALL p
846:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
847:     ST  3,-8(1) 	Save left side 
*                       Begin call to  p
848:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
849:     LD  3,-3(1) 	Load variable b
850:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
851:     LD  3,-4(1) 	Load variable c
852:     ST  3,-12(1) 	Store parameter 
*                       Jump to p
853:    LDA  1,-9(1) 	Load address of new frame 
854:    LDA  3,1(7) 	Return address in ac 
855:    LDA  7,-784(7) 	CALL p
856:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
857:     LD  4,-8(1) 	Load left into ac1 
858:    JGT  3,1(7) 	Op OR 
859:    LDA  3,0(4) 	 
860:     ST  3,-8(1) 	Save left side 
*                       Begin call to  p
861:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
862:     LD  3,-4(1) 	Load variable c
863:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
864:     LD  3,-5(1) 	Load variable d
865:     ST  3,-12(1) 	Store parameter 
*                       Jump to p
866:    LDA  1,-9(1) 	Load address of new frame 
867:    LDA  3,1(7) 	Return address in ac 
868:    LDA  7,-797(7) 	CALL p
869:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
870:     LD  4,-8(1) 	Load left into ac1 
871:    JGT  3,1(7) 	Op OR 
872:    LDA  3,0(4) 	 
873:     ST  3,-8(1) 	Save left side 
*                       Begin call to  p
874:     ST  1,-9(1) 	Store old fp in ghost frame 
*                       Load param 1
875:     LD  3,-5(1) 	Load variable d
876:     ST  3,-11(1) 	Store parameter 
*                       Load param 2
877:     LD  3,-6(1) 	Load variable e
878:     ST  3,-12(1) 	Store parameter 
*                       Jump to p
879:    LDA  1,-9(1) 	Load address of new frame 
880:    LDA  3,1(7) 	Return address in ac 
881:    LDA  7,-810(7) 	CALL p
882:    LDA  3,0(2) 	Save the result in ac 
*                       End call to p
883:     LD  4,-8(1) 	Load left into ac1 
884:    JGT  3,1(7) 	Op OR 
885:    LDA  3,0(4) 	 
886:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
888:    LDC  3,8(6) 	Load constant 
889:    LDA  2,0(3) 	Copy result to rt register 
890:     LD  3,-1(1) 	Load return address 
891:     LD  1,0(1) 	Adjust fp 
892:    LDA  7,0(3) 	Return 
* ELSE
887:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* RETURN
894:    LDC  3,9(6) 	Load constant 
895:    LDA  2,0(3) 	Copy result to rt register 
896:     LD  3,-1(1) 	Load return address 
897:     LD  1,0(1) 	Adjust fp 
898:    LDA  7,0(3) 	Return 
893:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
837:    LDA  7,61(7) 	Jump around the ELSE [backpatch] 
* ENDIF
755:    LDA  7,143(7) 	Jump around the ELSE [backpatch] 
* ENDIF
706:    LDA  7,192(7) 	Jump around the ELSE [backpatch] 
* ENDIF
484:    LDA  7,414(7) 	Jump around the ELSE [backpatch] 
* ENDIF
475:    LDA  7,423(7) 	Jump around the ELSE [backpatch] 
* ENDIF
415:    LDA  7,483(7) 	Jump around the ELSE [backpatch] 
* ENDIF
377:    LDA  7,521(7) 	Jump around the ELSE [backpatch] 
* ENDIF
340:    LDA  7,558(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
899:    LDC  2,0(6) 	Set return value to 0 
900:     LD  3,-1(1) 	Load return address 
901:     LD  1,0(1) 	Adjust fp 
902:    LDA  7,0(3) 	Return 
* END of function handtype
* BEGIN function main
903:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
904:    LDC  3,10(6) 	load size of array hands
905:     ST  3,-2(1) 	save size of array hands
* EXPRESSION STMT
906:    LDC  3,0(6) 	Load constant 
907:     ST  3,-20(1) 	Store variable i
* WHILE
908:     LD  3,-20(1) 	Load variable i
909:     ST  3,-21(1) 	Save left side 
910:    LDC  3,10(6) 	Load constant 
911:     LD  4,-21(1) 	Load left into ac1 
912:    SUB  4,4,3 	Op < 
913:    LDC  3,1(6) 	True case 
914:    JLT  4,1(7) 	Jump if true 
915:    LDC  3,0(6) 	False case 
916:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
918:     LD  3,-20(1) 	Load variable i
919:     ST  3,-21(1) 	Save index 
920:    LDC  3,0(6) 	Load constant 
921:     LD  4,-21(1) 	Restore index 
922:    LDA  5,-3(1) 	Load address of base of array hands
923:    SUB  5,5,4 	Compute offset of value 
924:     ST  3,0(5) 	Store variable hands
* EXPRESSION STMT
925:     LD  3,-20(1) 	Load variable i
926:     ST  3,-21(1) 	Save left side 
927:    LDC  3,1(6) 	Load constant 
928:     LD  4,-21(1) 	Load left into ac1 
929:    ADD  3,4,3 	Op + 
930:     ST  3,-20(1) 	Store variable i
* END compound statement
931:    LDA  7,-24(7) 	go to beginning of loop 
917:    LDA  7,14(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
932:    LDC  3,4(6) 	Load constant 
933:     ST  3,0(0) 	Store variable numSuits
* EXPRESSION STMT
934:    LDC  3,5(6) 	Load constant 
935:     ST  3,-1(0) 	Store variable numPips
* EXPRESSION STMT
936:     LD  3,-1(0) 	Load variable numPips
937:     ST  3,-21(1) 	Save left side 
938:     LD  3,0(0) 	Load variable numSuits
939:     LD  4,-21(1) 	Load left into ac1 
940:    MUL  3,4,3 	Op * 
941:     ST  3,-21(1) 	Save left side 
942:    LDC  3,1(6) 	Load constant 
943:     LD  4,-21(1) 	Load left into ac1 
944:    SUB  3,4,3 	Op - 
945:     ST  3,-2(0) 	Store variable numCards
* EXPRESSION STMT
946:    LDC  3,0(6) 	Load constant 
947:     ST  3,-19(1) 	Store variable possible
* EXPRESSION STMT
948:    LDC  3,0(6) 	Load constant 
949:     ST  3,-13(1) 	Store variable a
* WHILE
950:     LD  3,-13(1) 	Load variable a
951:     ST  3,-21(1) 	Save left side 
952:     LD  3,-2(0) 	Load variable numCards
953:     LD  4,-21(1) 	Load left into ac1 
954:    SUB  4,4,3 	Op <= 
955:    LDC  3,1(6) 	True case 
956:    JLE  4,1(7) 	Jump if true 
957:    LDC  3,0(6) 	False case 
958:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
960:     ST  1,-21(1) 	Store old fp in ghost frame 
*                       Load param 1
961:     LD  3,-13(1) 	Load variable a
962:     ST  3,-23(1) 	Store parameter 
*                       Jump to output
963:    LDA  1,-21(1) 	Load address of new frame 
964:    LDA  3,1(7) 	Return address in ac 
965:    LDA  7,-960(7) 	CALL output
966:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
967:     ST  1,-21(1) 	Store old fp in ghost frame 
*                       Jump to outnl
968:    LDA  1,-21(1) 	Load address of new frame 
969:    LDA  3,1(7) 	Return address in ac 
970:    LDA  7,-934(7) 	CALL outnl
971:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
972:     LD  3,-13(1) 	Load variable a
973:     ST  3,-21(1) 	Save left side 
974:    LDC  3,1(6) 	Load constant 
975:     LD  4,-21(1) 	Load left into ac1 
976:    ADD  3,4,3 	Op + 
977:     ST  3,-14(1) 	Store variable b
* WHILE
978:     LD  3,-14(1) 	Load variable b
979:     ST  3,-21(1) 	Save left side 
980:     LD  3,-2(0) 	Load variable numCards
981:     LD  4,-21(1) 	Load left into ac1 
982:    SUB  4,4,3 	Op <= 
983:    LDC  3,1(6) 	True case 
984:    JLE  4,1(7) 	Jump if true 
985:    LDC  3,0(6) 	False case 
986:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
988:     LD  3,-14(1) 	Load variable b
989:     ST  3,-21(1) 	Save left side 
990:    LDC  3,1(6) 	Load constant 
991:     LD  4,-21(1) 	Load left into ac1 
992:    ADD  3,4,3 	Op + 
993:     ST  3,-15(1) 	Store variable c
* WHILE
994:     LD  3,-15(1) 	Load variable c
995:     ST  3,-21(1) 	Save left side 
996:     LD  3,-2(0) 	Load variable numCards
997:     LD  4,-21(1) 	Load left into ac1 
998:    SUB  4,4,3 	Op <= 
999:    LDC  3,1(6) 	True case 
1000:    JLE  4,1(7) 	Jump if true 
1001:    LDC  3,0(6) 	False case 
1002:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
1004:     LD  3,-15(1) 	Load variable c
1005:     ST  3,-21(1) 	Save left side 
1006:    LDC  3,1(6) 	Load constant 
1007:     LD  4,-21(1) 	Load left into ac1 
1008:    ADD  3,4,3 	Op + 
1009:     ST  3,-16(1) 	Store variable d
* WHILE
1010:     LD  3,-16(1) 	Load variable d
1011:     ST  3,-21(1) 	Save left side 
1012:     LD  3,-2(0) 	Load variable numCards
1013:     LD  4,-21(1) 	Load left into ac1 
1014:    SUB  4,4,3 	Op <= 
1015:    LDC  3,1(6) 	True case 
1016:    JLE  4,1(7) 	Jump if true 
1017:    LDC  3,0(6) 	False case 
1018:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
1020:     LD  3,-16(1) 	Load variable d
1021:     ST  3,-21(1) 	Save left side 
1022:    LDC  3,1(6) 	Load constant 
1023:     LD  4,-21(1) 	Load left into ac1 
1024:    ADD  3,4,3 	Op + 
1025:     ST  3,-17(1) 	Store variable e
* WHILE
1026:     LD  3,-17(1) 	Load variable e
1027:     ST  3,-21(1) 	Save left side 
1028:     LD  3,-2(0) 	Load variable numCards
1029:     LD  4,-21(1) 	Load left into ac1 
1030:    SUB  4,4,3 	Op <= 
1031:    LDC  3,1(6) 	True case 
1032:    JLE  4,1(7) 	Jump if true 
1033:    LDC  3,0(6) 	False case 
1034:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
1036:     LD  3,-19(1) 	Load variable possible
1037:     ST  3,-21(1) 	Save left side 
1038:    LDC  3,1(6) 	Load constant 
1039:     LD  4,-21(1) 	Load left into ac1 
1040:    ADD  3,4,3 	Op + 
1041:     ST  3,-19(1) 	Store variable possible
* EXPRESSION STMT
*                       Begin call to  handtype
1042:     ST  1,-21(1) 	Store old fp in ghost frame 
*                       Load param 1
1043:     LD  3,-13(1) 	Load variable a
1044:     ST  3,-23(1) 	Store parameter 
*                       Load param 2
1045:     LD  3,-14(1) 	Load variable b
1046:     ST  3,-24(1) 	Store parameter 
*                       Load param 3
1047:     LD  3,-15(1) 	Load variable c
1048:     ST  3,-25(1) 	Store parameter 
*                       Load param 4
1049:     LD  3,-16(1) 	Load variable d
1050:     ST  3,-26(1) 	Store parameter 
*                       Load param 5
1051:     LD  3,-17(1) 	Load variable e
1052:     ST  3,-27(1) 	Store parameter 
*                       Jump to handtype
1053:    LDA  1,-21(1) 	Load address of new frame 
1054:    LDA  3,1(7) 	Return address in ac 
1055:    LDA  7,-880(7) 	CALL handtype
1056:    LDA  3,0(2) 	Save the result in ac 
*                       End call to handtype
1057:     ST  3,-18(1) 	Store variable h
* EXPRESSION STMT
1058:     LD  3,-18(1) 	Load variable h
1059:     ST  3,-21(1) 	Save index 
1060:     LD  3,-18(1) 	Load variable h
1061:    LDA  4,-3(1) 	Load address of base of array hands
1062:    SUB  3,4,3 	Compute offset of value 
1063:     LD  3,0(3) 	Load the value 
1064:     ST  3,-22(1) 	Save left side 
1065:    LDC  3,1(6) 	Load constant 
1066:     LD  4,-22(1) 	Load left into ac1 
1067:    ADD  3,4,3 	Op + 
1068:     LD  4,-21(1) 	Restore index 
1069:    LDA  5,-3(1) 	Load address of base of array hands
1070:    SUB  5,5,4 	Compute offset of value 
1071:     ST  3,0(5) 	Store variable hands
* EXPRESSION STMT
1072:     LD  3,-17(1) 	load lhs variable e
1073:    LDA  3,1(3) 	increment value of e
1074:     ST  3,-17(1) 	Store variable e
* END compound statement
1075:    LDA  7,-50(7) 	go to beginning of loop 
1035:    LDA  7,40(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
1076:     LD  3,-16(1) 	load lhs variable d
1077:    LDA  3,1(3) 	increment value of d
1078:     ST  3,-16(1) 	Store variable d
* END compound statement
1079:    LDA  7,-70(7) 	go to beginning of loop 
1019:    LDA  7,60(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
1080:     LD  3,-15(1) 	load lhs variable c
1081:    LDA  3,1(3) 	increment value of c
1082:     ST  3,-15(1) 	Store variable c
* END compound statement
1083:    LDA  7,-90(7) 	go to beginning of loop 
1003:    LDA  7,80(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
1084:     LD  3,-14(1) 	load lhs variable b
1085:    LDA  3,1(3) 	increment value of b
1086:     ST  3,-14(1) 	Store variable b
* END compound statement
1087:    LDA  7,-110(7) 	go to beginning of loop 
987:    LDA  7,100(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
1088:     LD  3,-13(1) 	load lhs variable a
1089:    LDA  3,1(3) 	increment value of a
1090:     ST  3,-13(1) 	Store variable a
* END compound statement
1091:    LDA  7,-142(7) 	go to beginning of loop 
959:    LDA  7,132(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
1092:    LDC  3,0(6) 	Load constant 
1093:     ST  3,-18(1) 	Store variable h
* WHILE
1094:     LD  3,-18(1) 	Load variable h
1095:     ST  3,-21(1) 	Save left side 
1096:    LDC  3,10(6) 	Load constant 
1097:     LD  4,-21(1) 	Load left into ac1 
1098:    SUB  4,4,3 	Op < 
1099:    LDC  3,1(6) 	True case 
1100:    JLT  4,1(7) 	Jump if true 
1101:    LDC  3,0(6) 	False case 
1102:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
1104:     ST  1,-21(1) 	Store old fp in ghost frame 
*                       Load param 1
1105:     LD  3,-18(1) 	Load variable h
1106:     ST  3,-23(1) 	Store parameter 
*                       Jump to output
1107:    LDA  1,-21(1) 	Load address of new frame 
1108:    LDA  3,1(7) 	Return address in ac 
1109:    LDA  7,-1104(7) 	CALL output
1110:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
1111:     ST  1,-21(1) 	Store old fp in ghost frame 
*                       Load param 1
1112:     LD  3,-18(1) 	Load variable h
1113:    LDA  4,-3(1) 	Load address of base of array hands
1114:    SUB  3,4,3 	Compute offset of value 
1115:     LD  3,0(3) 	Load the value 
1116:     ST  3,-23(1) 	Store parameter 
*                       Jump to output
1117:    LDA  1,-21(1) 	Load address of new frame 
1118:    LDA  3,1(7) 	Return address in ac 
1119:    LDA  7,-1114(7) 	CALL output
1120:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
1121:     ST  1,-21(1) 	Store old fp in ghost frame 
*                       Jump to outnl
1122:    LDA  1,-21(1) 	Load address of new frame 
1123:    LDA  3,1(7) 	Return address in ac 
1124:    LDA  7,-1088(7) 	CALL outnl
1125:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
1126:     LD  3,-18(1) 	Load variable h
1127:     ST  3,-21(1) 	Save left side 
1128:    LDC  3,1(6) 	Load constant 
1129:     LD  4,-21(1) 	Load left into ac1 
1130:    ADD  3,4,3 	Op + 
1131:     ST  3,-18(1) 	Store variable h
* END compound statement
1132:    LDA  7,-39(7) 	go to beginning of loop 
1103:    LDA  7,29(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
1133:    LDC  3,0(6) 	Load constant 
1134:    LDA  2,0(3) 	Copy result to rt register 
1135:     LD  3,-1(1) 	Load return address 
1136:     LD  1,0(1) 	Adjust fp 
1137:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
1138:    LDC  2,0(6) 	Set return value to 0 
1139:     LD  3,-1(1) 	Load return address 
1140:     LD  1,0(1) 	Adjust fp 
1141:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,1141(7) 	Jump to init [backpatch] 
* BEGIN Init
1142:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
1143:    LDA  1,-3(0) 	set first frame at end of globals 
1144:     ST  1,0(1) 	store old fp (point to self) 
1145:    LDA  3,1(7) 	Return address in ac 
1146:    LDA  7,-244(7) 	Jump to main 
1147:   HALT  0,0,0 	DONE! 
* END Init
