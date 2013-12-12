* C- Compiler version C-F10
* Built: Dec 6, 2013
* Author: Brett Papineau
* File compiled: temp.c-
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
* BEGIN function main
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:    LDC  3,213(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable a
 45:    LDC  3,11(6) 	Load constant 
 46:     ST  3,-3(1) 	Store variable b
 47:    LDC  3,4133(6) 	Load constant 
 48:     ST  3,-4(1) 	Store variable c
* 			Begin call to  outputb
 49:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 50:     LD  3,-2(1) 	Load variable a
 51:     ST  3,-7(1) 	Store parameter 
 52:     ST  3,-5(1) 	Save left side 
 53:     LD  3,-3(1) 	Load variable b
 54:     ST  3,-8(1) 	Store parameter 
 55:     LD  4,-5(1) 	Load left into ac1 
 56:    SUB  4,4,3 	Op < 
 57:    LDC  3,1(6) 	True case 
 58:    JGT  4,1(7) 	Jump if true 
 59:    LDC  3,0(6) 	False case 
 60:     ST  3,-7(1) 	Store parameter 
 61:     ST  3,-5(1) 	Save left side 
 62:     LD  3,-3(1) 	Load variable b
 63:     ST  3,-8(1) 	Store parameter 
 64:     ST  3,-6(1) 	Save left side 
 65:     LD  3,-4(1) 	Load variable c
 66:     ST  3,-9(1) 	Store parameter 
 67:     LD  4,-6(1) 	Load left into ac1 
 68:    SUB  4,4,3 	Op <= 
 69:    LDC  3,1(6) 	True case 
 70:    JLE  4,1(7) 	Jump if true 
 71:    LDC  3,0(6) 	False case 
 72:     ST  3,-8(1) 	Store parameter 
 73:     ST  3,-6(1) 	Save left side 
 74:     LD  3,-4(1) 	Load variable c
 75:     ST  3,-9(1) 	Store parameter 
 76:     ST  3,-7(1) 	Save left side 
 77:     LD  3,-2(1) 	Load variable a
 78:     ST  3,-10(1) 	Store parameter 
 79:     LD  4,-7(1) 	Load left into ac1 
 80:    SUB  4,4,3 	Op >= 
 81:    LDC  3,1(6) 	True case 
 82:    JTE  4,1(7) 	Jump if true 
 83:    LDC  3,0(6) 	False case 
 84:     ST  3,-9(1) 	Store parameter 
 85:     LD  4,-6(1) 	Load left into ac1 
 86:    JEQ  3,1(7) 	Op AND 
 87:     ST  3,-8(1) 	Store parameter 
 88:     LD  4,-5(1) 	Load left into ac1 
 89:    JEQ  3,1(7) 	Op OR 
 90:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
 91:    LDA  1,-5(1) 	Load address of new frame 
 92:    LDA  3,1(7) 	Return address in ac 
 93:    LDA  7,-76(7) 	Call  outputb
 94:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 95:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 96:     LD  3,-2(1) 	Load variable a
 97:     ST  3,-7(1) 	Store parameter 
 98:     ST  3,-5(1) 	Save left side 
 99:     LD  3,-3(1) 	Load variable b
100:     ST  3,-8(1) 	Store parameter 
101:     LD  4,-5(1) 	Load left into ac1 
102:    SUB  4,4,3 	Op < 
103:    LDC  3,1(6) 	True case 
104:    JGT  4,1(7) 	Jump if true 
105:    LDC  3,0(6) 	False case 
106:     ST  3,-7(1) 	Store parameter 
107:     ST  3,-5(1) 	Save left side 
108:     LD  3,-3(1) 	Load variable b
109:     ST  3,-8(1) 	Store parameter 
110:     ST  3,-6(1) 	Save left side 
111:     LD  3,-4(1) 	Load variable c
112:     ST  3,-9(1) 	Store parameter 
113:     LD  4,-6(1) 	Load left into ac1 
114:    SUB  4,4,3 	Op <= 
115:    LDC  3,1(6) 	True case 
116:    JLE  4,1(7) 	Jump if true 
117:    LDC  3,0(6) 	False case 
118:     ST  3,-8(1) 	Store parameter 
119:     LD  4,-5(1) 	Load left into ac1 
120:    JEQ  3,1(7) 	Op AND 
121:     ST  3,-7(1) 	Store parameter 
122:     ST  3,-5(1) 	Save left side 
123:     LD  3,-4(1) 	Load variable c
124:     ST  3,-8(1) 	Store parameter 
125:     ST  3,-6(1) 	Save left side 
126:     LD  3,-2(1) 	Load variable a
127:     ST  3,-9(1) 	Store parameter 
128:     LD  4,-6(1) 	Load left into ac1 
129:    SUB  4,4,3 	Op >= 
130:    LDC  3,1(6) 	True case 
131:    JTE  4,1(7) 	Jump if true 
132:    LDC  3,0(6) 	False case 
133:     ST  3,-8(1) 	Store parameter 
134:     LD  4,-5(1) 	Load left into ac1 
135:    JEQ  3,1(7) 	Op OR 
136:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
137:    LDA  1,-5(1) 	Load address of new frame 
138:    LDA  3,1(7) 	Return address in ac 
139:    LDA  7,-122(7) 	Call  outputb
140:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
141:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
142:     LD  3,-2(1) 	Load variable a
143:     ST  3,-7(1) 	Store parameter 
144:     ST  3,-5(1) 	Save left side 
145:     LD  3,-3(1) 	Load variable b
146:     ST  3,-8(1) 	Store parameter 
147:     LD  4,-5(1) 	Load left into ac1 
148:    SUB  4,4,3 	Op < 
149:    LDC  3,1(6) 	True case 
150:    JGT  4,1(7) 	Jump if true 
151:    LDC  3,0(6) 	False case 
152:     ST  3,-7(1) 	Store parameter 
153:     ST  3,-5(1) 	Save left side 
154:     LD  3,-3(1) 	Load variable b
155:     ST  3,-8(1) 	Store parameter 
156:     ST  3,-6(1) 	Save left side 
157:     LD  3,-4(1) 	Load variable c
158:     ST  3,-9(1) 	Store parameter 
159:     LD  4,-6(1) 	Load left into ac1 
160:    SUB  4,4,3 	Op <= 
161:    LDC  3,1(6) 	True case 
162:    JLE  4,1(7) 	Jump if true 
163:    LDC  3,0(6) 	False case 
164:     ST  3,-8(1) 	Store parameter 
165:     LD  4,-5(1) 	Load left into ac1 
166:    JEQ  3,1(7) 	Op AND 
167:     ST  3,-7(1) 	Store parameter 
168:     ST  3,-5(1) 	Save left side 
169:     LD  3,-4(1) 	Load variable c
170:     ST  3,-8(1) 	Store parameter 
171:     ST  3,-6(1) 	Save left side 
172:     LD  3,-2(1) 	Load variable a
173:     ST  3,-9(1) 	Store parameter 
174:     LD  4,-6(1) 	Load left into ac1 
175:    SUB  4,4,3 	Op >= 
176:    LDC  3,1(6) 	True case 
177:    JTE  4,1(7) 	Jump if true 
178:    LDC  3,0(6) 	False case 
179:     ST  3,-8(1) 	Store parameter 
180:     ST  3,-6(1) 	Save left side 
181:     LD  3,-4(1) 	Load variable c
182:     ST  3,-9(1) 	Store parameter 
183:     ST  3,-7(1) 	Save left side 
184:     LD  3,-2(1) 	Load variable a
185:     ST  3,-10(1) 	Store parameter 
186:     LD  4,-7(1) 	Load left into ac1 
187:    SUB  4,4,3 	Op >= 
188:    LDC  3,1(6) 	True case 
189:    JTE  4,1(7) 	Jump if true 
190:    LDC  3,0(6) 	False case 
191:     ST  3,-9(1) 	Store parameter 
192:     LD  4,-6(1) 	Load left into ac1 
193:    JEQ  3,1(7) 	Op AND 
194:     ST  3,-8(1) 	Store parameter 
195:     LD  4,-5(1) 	Load left into ac1 
196:    JEQ  3,1(7) 	Op OR 
197:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
198:    LDA  1,-5(1) 	Load address of new frame 
199:    LDA  3,1(7) 	Return address in ac 
200:    LDA  7,-183(7) 	Call  outputb
201:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
202:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
203:     LD  3,-2(1) 	Load variable a
204:     ST  3,-7(1) 	Store parameter 
205:     ST  3,-5(1) 	Save left side 
206:     LD  3,-3(1) 	Load variable b
207:     ST  3,-8(1) 	Store parameter 
208:     LD  4,-5(1) 	Load left into ac1 
209:    SUB  4,4,3 	Op < 
210:    LDC  3,1(6) 	True case 
211:    JGT  4,1(7) 	Jump if true 
212:    LDC  3,0(6) 	False case 
213:     ST  3,-7(1) 	Store parameter 
214:    SUB  3,4,3 	Op = 
215:     ST  3,-7(1) 	Store parameter 
216:     ST  3,-5(1) 	Save left side 
217:     LD  3,-3(1) 	Load variable b
218:     ST  3,-8(1) 	Store parameter 
219:     ST  3,-6(1) 	Save left side 
220:     LD  3,-4(1) 	Load variable c
221:     ST  3,-9(1) 	Store parameter 
222:     LD  4,-6(1) 	Load left into ac1 
223:    SUB  4,4,3 	Op <= 
224:    LDC  3,1(6) 	True case 
225:    JLE  4,1(7) 	Jump if true 
226:    LDC  3,0(6) 	False case 
227:     ST  3,-8(1) 	Store parameter 
228:     ST  3,-6(1) 	Save left side 
229:     LD  3,-4(1) 	Load variable c
230:     ST  3,-9(1) 	Store parameter 
231:     ST  3,-7(1) 	Save left side 
232:     LD  3,-2(1) 	Load variable a
233:     ST  3,-10(1) 	Store parameter 
234:     LD  4,-7(1) 	Load left into ac1 
235:    SUB  4,4,3 	Op >= 
236:    LDC  3,1(6) 	True case 
237:    JTE  4,1(7) 	Jump if true 
238:    LDC  3,0(6) 	False case 
239:     ST  3,-9(1) 	Store parameter 
240:     LD  4,-6(1) 	Load left into ac1 
241:    JEQ  3,1(7) 	Op AND 
242:     ST  3,-8(1) 	Store parameter 
243:     LD  4,-5(1) 	Load left into ac1 
244:    JEQ  3,1(7) 	Op OR 
245:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
246:    LDA  1,-5(1) 	Load address of new frame 
247:    LDA  3,1(7) 	Return address in ac 
248:    LDA  7,-231(7) 	Call  outputb
249:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
250:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
251:     LD  3,-2(1) 	Load variable a
252:     ST  3,-7(1) 	Store parameter 
253:     ST  3,-5(1) 	Save left side 
254:     LD  3,-3(1) 	Load variable b
255:     ST  3,-8(1) 	Store parameter 
256:     LD  4,-5(1) 	Load left into ac1 
257:    SUB  4,4,3 	Op < 
258:    LDC  3,1(6) 	True case 
259:    JGT  4,1(7) 	Jump if true 
260:    LDC  3,0(6) 	False case 
261:     ST  3,-7(1) 	Store parameter 
262:    SUB  3,4,3 	Op = 
263:     ST  3,-7(1) 	Store parameter 
264:     ST  3,-5(1) 	Save left side 
265:     LD  3,-3(1) 	Load variable b
266:     ST  3,-8(1) 	Store parameter 
267:     ST  3,-6(1) 	Save left side 
268:     LD  3,-4(1) 	Load variable c
269:     ST  3,-9(1) 	Store parameter 
270:     LD  4,-6(1) 	Load left into ac1 
271:    SUB  4,4,3 	Op <= 
272:    LDC  3,1(6) 	True case 
273:    JLE  4,1(7) 	Jump if true 
274:    LDC  3,0(6) 	False case 
275:     ST  3,-8(1) 	Store parameter 
276:     LD  4,-5(1) 	Load left into ac1 
277:    JEQ  3,1(7) 	Op AND 
278:     ST  3,-7(1) 	Store parameter 
279:     ST  3,-5(1) 	Save left side 
280:     LD  3,-4(1) 	Load variable c
281:     ST  3,-8(1) 	Store parameter 
282:     ST  3,-6(1) 	Save left side 
283:     LD  3,-2(1) 	Load variable a
284:     ST  3,-9(1) 	Store parameter 
285:     LD  4,-6(1) 	Load left into ac1 
286:    SUB  4,4,3 	Op >= 
287:    LDC  3,1(6) 	True case 
288:    JTE  4,1(7) 	Jump if true 
289:    LDC  3,0(6) 	False case 
290:     ST  3,-8(1) 	Store parameter 
291:     LD  4,-5(1) 	Load left into ac1 
292:    JEQ  3,1(7) 	Op OR 
293:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
294:    LDA  1,-5(1) 	Load address of new frame 
295:    LDA  3,1(7) 	Return address in ac 
296:    LDA  7,-279(7) 	Call  outputb
297:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outnl
298:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
299:    LDA  1,-5(1) 	Load address of new frame 
300:    LDA  3,1(7) 	Return address in ac 
301:    LDA  7,-265(7) 	Call  outnl
302:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
303:    LDC  3,213(6) 	Load constant 
304:     ST  3,-3(1) 	Store variable b
305:    LDC  3,11(6) 	Load constant 
306:     ST  3,-4(1) 	Store variable c
307:    LDC  3,4133(6) 	Load constant 
308:     ST  3,-2(1) 	Store variable a
* 			Begin call to  outputb
309:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
310:     LD  3,-2(1) 	Load variable a
311:     ST  3,-7(1) 	Store parameter 
312:     ST  3,-5(1) 	Save left side 
313:     LD  3,-3(1) 	Load variable b
314:     ST  3,-8(1) 	Store parameter 
315:     LD  4,-5(1) 	Load left into ac1 
316:    SUB  4,4,3 	Op < 
317:    LDC  3,1(6) 	True case 
318:    JGT  4,1(7) 	Jump if true 
319:    LDC  3,0(6) 	False case 
320:     ST  3,-7(1) 	Store parameter 
321:     ST  3,-5(1) 	Save left side 
322:     LD  3,-3(1) 	Load variable b
323:     ST  3,-8(1) 	Store parameter 
324:     ST  3,-6(1) 	Save left side 
325:     LD  3,-4(1) 	Load variable c
326:     ST  3,-9(1) 	Store parameter 
327:     LD  4,-6(1) 	Load left into ac1 
328:    SUB  4,4,3 	Op <= 
329:    LDC  3,1(6) 	True case 
330:    JLE  4,1(7) 	Jump if true 
331:    LDC  3,0(6) 	False case 
332:     ST  3,-8(1) 	Store parameter 
333:     ST  3,-6(1) 	Save left side 
334:     LD  3,-4(1) 	Load variable c
335:     ST  3,-9(1) 	Store parameter 
336:     ST  3,-7(1) 	Save left side 
337:     LD  3,-2(1) 	Load variable a
338:     ST  3,-10(1) 	Store parameter 
339:     LD  4,-7(1) 	Load left into ac1 
340:    SUB  4,4,3 	Op >= 
341:    LDC  3,1(6) 	True case 
342:    JTE  4,1(7) 	Jump if true 
343:    LDC  3,0(6) 	False case 
344:     ST  3,-9(1) 	Store parameter 
345:     LD  4,-6(1) 	Load left into ac1 
346:    JEQ  3,1(7) 	Op AND 
347:     ST  3,-8(1) 	Store parameter 
348:     LD  4,-5(1) 	Load left into ac1 
349:    JEQ  3,1(7) 	Op OR 
350:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
351:    LDA  1,-5(1) 	Load address of new frame 
352:    LDA  3,1(7) 	Return address in ac 
353:    LDA  7,-336(7) 	Call  outputb
354:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
355:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
356:     LD  3,-2(1) 	Load variable a
357:     ST  3,-7(1) 	Store parameter 
358:     ST  3,-5(1) 	Save left side 
359:     LD  3,-3(1) 	Load variable b
360:     ST  3,-8(1) 	Store parameter 
361:     LD  4,-5(1) 	Load left into ac1 
362:    SUB  4,4,3 	Op < 
363:    LDC  3,1(6) 	True case 
364:    JGT  4,1(7) 	Jump if true 
365:    LDC  3,0(6) 	False case 
366:     ST  3,-7(1) 	Store parameter 
367:     ST  3,-5(1) 	Save left side 
368:     LD  3,-3(1) 	Load variable b
369:     ST  3,-8(1) 	Store parameter 
370:     ST  3,-6(1) 	Save left side 
371:     LD  3,-4(1) 	Load variable c
372:     ST  3,-9(1) 	Store parameter 
373:     LD  4,-6(1) 	Load left into ac1 
374:    SUB  4,4,3 	Op <= 
375:    LDC  3,1(6) 	True case 
376:    JLE  4,1(7) 	Jump if true 
377:    LDC  3,0(6) 	False case 
378:     ST  3,-8(1) 	Store parameter 
379:     LD  4,-5(1) 	Load left into ac1 
380:    JEQ  3,1(7) 	Op AND 
381:     ST  3,-7(1) 	Store parameter 
382:     ST  3,-5(1) 	Save left side 
383:     LD  3,-4(1) 	Load variable c
384:     ST  3,-8(1) 	Store parameter 
385:     ST  3,-6(1) 	Save left side 
386:     LD  3,-2(1) 	Load variable a
387:     ST  3,-9(1) 	Store parameter 
388:     LD  4,-6(1) 	Load left into ac1 
389:    SUB  4,4,3 	Op >= 
390:    LDC  3,1(6) 	True case 
391:    JTE  4,1(7) 	Jump if true 
392:    LDC  3,0(6) 	False case 
393:     ST  3,-8(1) 	Store parameter 
394:     LD  4,-5(1) 	Load left into ac1 
395:    JEQ  3,1(7) 	Op OR 
396:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
397:    LDA  1,-5(1) 	Load address of new frame 
398:    LDA  3,1(7) 	Return address in ac 
399:    LDA  7,-382(7) 	Call  outputb
400:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
401:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
402:     LD  3,-2(1) 	Load variable a
403:     ST  3,-7(1) 	Store parameter 
404:     ST  3,-5(1) 	Save left side 
405:     LD  3,-3(1) 	Load variable b
406:     ST  3,-8(1) 	Store parameter 
407:     LD  4,-5(1) 	Load left into ac1 
408:    SUB  4,4,3 	Op < 
409:    LDC  3,1(6) 	True case 
410:    JGT  4,1(7) 	Jump if true 
411:    LDC  3,0(6) 	False case 
412:     ST  3,-7(1) 	Store parameter 
413:     ST  3,-5(1) 	Save left side 
414:     LD  3,-3(1) 	Load variable b
415:     ST  3,-8(1) 	Store parameter 
416:     ST  3,-6(1) 	Save left side 
417:     LD  3,-4(1) 	Load variable c
418:     ST  3,-9(1) 	Store parameter 
419:     LD  4,-6(1) 	Load left into ac1 
420:    SUB  4,4,3 	Op <= 
421:    LDC  3,1(6) 	True case 
422:    JLE  4,1(7) 	Jump if true 
423:    LDC  3,0(6) 	False case 
424:     ST  3,-8(1) 	Store parameter 
425:     LD  4,-5(1) 	Load left into ac1 
426:    JEQ  3,1(7) 	Op AND 
427:     ST  3,-7(1) 	Store parameter 
428:     ST  3,-5(1) 	Save left side 
429:     LD  3,-4(1) 	Load variable c
430:     ST  3,-8(1) 	Store parameter 
431:     ST  3,-6(1) 	Save left side 
432:     LD  3,-2(1) 	Load variable a
433:     ST  3,-9(1) 	Store parameter 
434:     LD  4,-6(1) 	Load left into ac1 
435:    SUB  4,4,3 	Op >= 
436:    LDC  3,1(6) 	True case 
437:    JTE  4,1(7) 	Jump if true 
438:    LDC  3,0(6) 	False case 
439:     ST  3,-8(1) 	Store parameter 
440:     ST  3,-6(1) 	Save left side 
441:     LD  3,-4(1) 	Load variable c
442:     ST  3,-9(1) 	Store parameter 
443:     ST  3,-7(1) 	Save left side 
444:     LD  3,-2(1) 	Load variable a
445:     ST  3,-10(1) 	Store parameter 
446:     LD  4,-7(1) 	Load left into ac1 
447:    SUB  4,4,3 	Op >= 
448:    LDC  3,1(6) 	True case 
449:    JTE  4,1(7) 	Jump if true 
450:    LDC  3,0(6) 	False case 
451:     ST  3,-9(1) 	Store parameter 
452:     LD  4,-6(1) 	Load left into ac1 
453:    JEQ  3,1(7) 	Op AND 
454:     ST  3,-8(1) 	Store parameter 
455:     LD  4,-5(1) 	Load left into ac1 
456:    JEQ  3,1(7) 	Op OR 
457:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
458:    LDA  1,-5(1) 	Load address of new frame 
459:    LDA  3,1(7) 	Return address in ac 
460:    LDA  7,-443(7) 	Call  outputb
461:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
462:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
463:     LD  3,-2(1) 	Load variable a
464:     ST  3,-7(1) 	Store parameter 
465:     ST  3,-5(1) 	Save left side 
466:     LD  3,-3(1) 	Load variable b
467:     ST  3,-8(1) 	Store parameter 
468:     LD  4,-5(1) 	Load left into ac1 
469:    SUB  4,4,3 	Op < 
470:    LDC  3,1(6) 	True case 
471:    JGT  4,1(7) 	Jump if true 
472:    LDC  3,0(6) 	False case 
473:     ST  3,-7(1) 	Store parameter 
474:    SUB  3,4,3 	Op = 
475:     ST  3,-7(1) 	Store parameter 
476:     ST  3,-5(1) 	Save left side 
477:     LD  3,-3(1) 	Load variable b
478:     ST  3,-8(1) 	Store parameter 
479:     ST  3,-6(1) 	Save left side 
480:     LD  3,-4(1) 	Load variable c
481:     ST  3,-9(1) 	Store parameter 
482:     LD  4,-6(1) 	Load left into ac1 
483:    SUB  4,4,3 	Op <= 
484:    LDC  3,1(6) 	True case 
485:    JLE  4,1(7) 	Jump if true 
486:    LDC  3,0(6) 	False case 
487:     ST  3,-8(1) 	Store parameter 
488:     ST  3,-6(1) 	Save left side 
489:     LD  3,-4(1) 	Load variable c
490:     ST  3,-9(1) 	Store parameter 
491:     ST  3,-7(1) 	Save left side 
492:     LD  3,-2(1) 	Load variable a
493:     ST  3,-10(1) 	Store parameter 
494:     LD  4,-7(1) 	Load left into ac1 
495:    SUB  4,4,3 	Op >= 
496:    LDC  3,1(6) 	True case 
497:    JTE  4,1(7) 	Jump if true 
498:    LDC  3,0(6) 	False case 
499:     ST  3,-9(1) 	Store parameter 
500:     LD  4,-6(1) 	Load left into ac1 
501:    JEQ  3,1(7) 	Op AND 
502:     ST  3,-8(1) 	Store parameter 
503:     LD  4,-5(1) 	Load left into ac1 
504:    JEQ  3,1(7) 	Op OR 
505:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
506:    LDA  1,-5(1) 	Load address of new frame 
507:    LDA  3,1(7) 	Return address in ac 
508:    LDA  7,-491(7) 	Call  outputb
509:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
510:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
511:     LD  3,-2(1) 	Load variable a
512:     ST  3,-7(1) 	Store parameter 
513:     ST  3,-5(1) 	Save left side 
514:     LD  3,-3(1) 	Load variable b
515:     ST  3,-8(1) 	Store parameter 
516:     LD  4,-5(1) 	Load left into ac1 
517:    SUB  4,4,3 	Op < 
518:    LDC  3,1(6) 	True case 
519:    JGT  4,1(7) 	Jump if true 
520:    LDC  3,0(6) 	False case 
521:     ST  3,-7(1) 	Store parameter 
522:    SUB  3,4,3 	Op = 
523:     ST  3,-7(1) 	Store parameter 
524:     ST  3,-5(1) 	Save left side 
525:     LD  3,-3(1) 	Load variable b
526:     ST  3,-8(1) 	Store parameter 
527:     ST  3,-6(1) 	Save left side 
528:     LD  3,-4(1) 	Load variable c
529:     ST  3,-9(1) 	Store parameter 
530:     LD  4,-6(1) 	Load left into ac1 
531:    SUB  4,4,3 	Op <= 
532:    LDC  3,1(6) 	True case 
533:    JLE  4,1(7) 	Jump if true 
534:    LDC  3,0(6) 	False case 
535:     ST  3,-8(1) 	Store parameter 
536:     LD  4,-5(1) 	Load left into ac1 
537:    JEQ  3,1(7) 	Op AND 
538:     ST  3,-7(1) 	Store parameter 
539:     ST  3,-5(1) 	Save left side 
540:     LD  3,-4(1) 	Load variable c
541:     ST  3,-8(1) 	Store parameter 
542:     ST  3,-6(1) 	Save left side 
543:     LD  3,-2(1) 	Load variable a
544:     ST  3,-9(1) 	Store parameter 
545:     LD  4,-6(1) 	Load left into ac1 
546:    SUB  4,4,3 	Op >= 
547:    LDC  3,1(6) 	True case 
548:    JTE  4,1(7) 	Jump if true 
549:    LDC  3,0(6) 	False case 
550:     ST  3,-8(1) 	Store parameter 
551:     LD  4,-5(1) 	Load left into ac1 
552:    JEQ  3,1(7) 	Op OR 
553:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
554:    LDA  1,-5(1) 	Load address of new frame 
555:    LDA  3,1(7) 	Return address in ac 
556:    LDA  7,-539(7) 	Call  outputb
557:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outnl
558:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
559:    LDA  1,-5(1) 	Load address of new frame 
560:    LDA  3,1(7) 	Return address in ac 
561:    LDA  7,-525(7) 	Call  outnl
562:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
563:    LDC  3,11(6) 	Load constant 
564:     ST  3,-3(1) 	Store variable b
565:    LDC  3,213(6) 	Load constant 
566:     ST  3,-4(1) 	Store variable c
567:    LDC  3,4133(6) 	Load constant 
568:     ST  3,-2(1) 	Store variable a
* 			Begin call to  outputb
569:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
570:     LD  3,-2(1) 	Load variable a
571:     ST  3,-7(1) 	Store parameter 
572:     ST  3,-5(1) 	Save left side 
573:     LD  3,-3(1) 	Load variable b
574:     ST  3,-8(1) 	Store parameter 
575:     LD  4,-5(1) 	Load left into ac1 
576:    SUB  4,4,3 	Op < 
577:    LDC  3,1(6) 	True case 
578:    JGT  4,1(7) 	Jump if true 
579:    LDC  3,0(6) 	False case 
580:     ST  3,-7(1) 	Store parameter 
581:     ST  3,-5(1) 	Save left side 
582:     LD  3,-3(1) 	Load variable b
583:     ST  3,-8(1) 	Store parameter 
584:     ST  3,-6(1) 	Save left side 
585:     LD  3,-4(1) 	Load variable c
586:     ST  3,-9(1) 	Store parameter 
587:     LD  4,-6(1) 	Load left into ac1 
588:    SUB  4,4,3 	Op <= 
589:    LDC  3,1(6) 	True case 
590:    JLE  4,1(7) 	Jump if true 
591:    LDC  3,0(6) 	False case 
592:     ST  3,-8(1) 	Store parameter 
593:     ST  3,-6(1) 	Save left side 
594:     LD  3,-4(1) 	Load variable c
595:     ST  3,-9(1) 	Store parameter 
596:     ST  3,-7(1) 	Save left side 
597:     LD  3,-2(1) 	Load variable a
598:     ST  3,-10(1) 	Store parameter 
599:     LD  4,-7(1) 	Load left into ac1 
600:    SUB  4,4,3 	Op >= 
601:    LDC  3,1(6) 	True case 
602:    JTE  4,1(7) 	Jump if true 
603:    LDC  3,0(6) 	False case 
604:     ST  3,-9(1) 	Store parameter 
605:     LD  4,-6(1) 	Load left into ac1 
606:    JEQ  3,1(7) 	Op AND 
607:     ST  3,-8(1) 	Store parameter 
608:     LD  4,-5(1) 	Load left into ac1 
609:    JEQ  3,1(7) 	Op OR 
610:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
611:    LDA  1,-5(1) 	Load address of new frame 
612:    LDA  3,1(7) 	Return address in ac 
613:    LDA  7,-596(7) 	Call  outputb
614:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
615:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
616:     LD  3,-2(1) 	Load variable a
617:     ST  3,-7(1) 	Store parameter 
618:     ST  3,-5(1) 	Save left side 
619:     LD  3,-3(1) 	Load variable b
620:     ST  3,-8(1) 	Store parameter 
621:     LD  4,-5(1) 	Load left into ac1 
622:    SUB  4,4,3 	Op < 
623:    LDC  3,1(6) 	True case 
624:    JGT  4,1(7) 	Jump if true 
625:    LDC  3,0(6) 	False case 
626:     ST  3,-7(1) 	Store parameter 
627:     ST  3,-5(1) 	Save left side 
628:     LD  3,-3(1) 	Load variable b
629:     ST  3,-8(1) 	Store parameter 
630:     ST  3,-6(1) 	Save left side 
631:     LD  3,-4(1) 	Load variable c
632:     ST  3,-9(1) 	Store parameter 
633:     LD  4,-6(1) 	Load left into ac1 
634:    SUB  4,4,3 	Op <= 
635:    LDC  3,1(6) 	True case 
636:    JLE  4,1(7) 	Jump if true 
637:    LDC  3,0(6) 	False case 
638:     ST  3,-8(1) 	Store parameter 
639:     LD  4,-5(1) 	Load left into ac1 
640:    JEQ  3,1(7) 	Op AND 
641:     ST  3,-7(1) 	Store parameter 
642:     ST  3,-5(1) 	Save left side 
643:     LD  3,-4(1) 	Load variable c
644:     ST  3,-8(1) 	Store parameter 
645:     ST  3,-6(1) 	Save left side 
646:     LD  3,-2(1) 	Load variable a
647:     ST  3,-9(1) 	Store parameter 
648:     LD  4,-6(1) 	Load left into ac1 
649:    SUB  4,4,3 	Op >= 
650:    LDC  3,1(6) 	True case 
651:    JTE  4,1(7) 	Jump if true 
652:    LDC  3,0(6) 	False case 
653:     ST  3,-8(1) 	Store parameter 
654:     LD  4,-5(1) 	Load left into ac1 
655:    JEQ  3,1(7) 	Op OR 
656:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
657:    LDA  1,-5(1) 	Load address of new frame 
658:    LDA  3,1(7) 	Return address in ac 
659:    LDA  7,-642(7) 	Call  outputb
660:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
661:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
662:     LD  3,-2(1) 	Load variable a
663:     ST  3,-7(1) 	Store parameter 
664:     ST  3,-5(1) 	Save left side 
665:     LD  3,-3(1) 	Load variable b
666:     ST  3,-8(1) 	Store parameter 
667:     LD  4,-5(1) 	Load left into ac1 
668:    SUB  4,4,3 	Op < 
669:    LDC  3,1(6) 	True case 
670:    JGT  4,1(7) 	Jump if true 
671:    LDC  3,0(6) 	False case 
672:     ST  3,-7(1) 	Store parameter 
673:     ST  3,-5(1) 	Save left side 
674:     LD  3,-3(1) 	Load variable b
675:     ST  3,-8(1) 	Store parameter 
676:     ST  3,-6(1) 	Save left side 
677:     LD  3,-4(1) 	Load variable c
678:     ST  3,-9(1) 	Store parameter 
679:     LD  4,-6(1) 	Load left into ac1 
680:    SUB  4,4,3 	Op <= 
681:    LDC  3,1(6) 	True case 
682:    JLE  4,1(7) 	Jump if true 
683:    LDC  3,0(6) 	False case 
684:     ST  3,-8(1) 	Store parameter 
685:     LD  4,-5(1) 	Load left into ac1 
686:    JEQ  3,1(7) 	Op AND 
687:     ST  3,-7(1) 	Store parameter 
688:     ST  3,-5(1) 	Save left side 
689:     LD  3,-4(1) 	Load variable c
690:     ST  3,-8(1) 	Store parameter 
691:     ST  3,-6(1) 	Save left side 
692:     LD  3,-2(1) 	Load variable a
693:     ST  3,-9(1) 	Store parameter 
694:     LD  4,-6(1) 	Load left into ac1 
695:    SUB  4,4,3 	Op >= 
696:    LDC  3,1(6) 	True case 
697:    JTE  4,1(7) 	Jump if true 
698:    LDC  3,0(6) 	False case 
699:     ST  3,-8(1) 	Store parameter 
700:     ST  3,-6(1) 	Save left side 
701:     LD  3,-4(1) 	Load variable c
702:     ST  3,-9(1) 	Store parameter 
703:     ST  3,-7(1) 	Save left side 
704:     LD  3,-2(1) 	Load variable a
705:     ST  3,-10(1) 	Store parameter 
706:     LD  4,-7(1) 	Load left into ac1 
707:    SUB  4,4,3 	Op >= 
708:    LDC  3,1(6) 	True case 
709:    JTE  4,1(7) 	Jump if true 
710:    LDC  3,0(6) 	False case 
711:     ST  3,-9(1) 	Store parameter 
712:     LD  4,-6(1) 	Load left into ac1 
713:    JEQ  3,1(7) 	Op AND 
714:     ST  3,-8(1) 	Store parameter 
715:     LD  4,-5(1) 	Load left into ac1 
716:    JEQ  3,1(7) 	Op OR 
717:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
718:    LDA  1,-5(1) 	Load address of new frame 
719:    LDA  3,1(7) 	Return address in ac 
720:    LDA  7,-703(7) 	Call  outputb
721:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
722:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
723:     LD  3,-2(1) 	Load variable a
724:     ST  3,-7(1) 	Store parameter 
725:     ST  3,-5(1) 	Save left side 
726:     LD  3,-3(1) 	Load variable b
727:     ST  3,-8(1) 	Store parameter 
728:     LD  4,-5(1) 	Load left into ac1 
729:    SUB  4,4,3 	Op < 
730:    LDC  3,1(6) 	True case 
731:    JGT  4,1(7) 	Jump if true 
732:    LDC  3,0(6) 	False case 
733:     ST  3,-7(1) 	Store parameter 
734:    SUB  3,4,3 	Op = 
735:     ST  3,-7(1) 	Store parameter 
736:     ST  3,-5(1) 	Save left side 
737:     LD  3,-3(1) 	Load variable b
738:     ST  3,-8(1) 	Store parameter 
739:     ST  3,-6(1) 	Save left side 
740:     LD  3,-4(1) 	Load variable c
741:     ST  3,-9(1) 	Store parameter 
742:     LD  4,-6(1) 	Load left into ac1 
743:    SUB  4,4,3 	Op <= 
744:    LDC  3,1(6) 	True case 
745:    JLE  4,1(7) 	Jump if true 
746:    LDC  3,0(6) 	False case 
747:     ST  3,-8(1) 	Store parameter 
748:     ST  3,-6(1) 	Save left side 
749:     LD  3,-4(1) 	Load variable c
750:     ST  3,-9(1) 	Store parameter 
751:     ST  3,-7(1) 	Save left side 
752:     LD  3,-2(1) 	Load variable a
753:     ST  3,-10(1) 	Store parameter 
754:     LD  4,-7(1) 	Load left into ac1 
755:    SUB  4,4,3 	Op >= 
756:    LDC  3,1(6) 	True case 
757:    JTE  4,1(7) 	Jump if true 
758:    LDC  3,0(6) 	False case 
759:     ST  3,-9(1) 	Store parameter 
760:     LD  4,-6(1) 	Load left into ac1 
761:    JEQ  3,1(7) 	Op AND 
762:     ST  3,-8(1) 	Store parameter 
763:     LD  4,-5(1) 	Load left into ac1 
764:    JEQ  3,1(7) 	Op OR 
765:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
766:    LDA  1,-5(1) 	Load address of new frame 
767:    LDA  3,1(7) 	Return address in ac 
768:    LDA  7,-751(7) 	Call  outputb
769:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
770:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
771:     LD  3,-2(1) 	Load variable a
772:     ST  3,-7(1) 	Store parameter 
773:     ST  3,-5(1) 	Save left side 
774:     LD  3,-3(1) 	Load variable b
775:     ST  3,-8(1) 	Store parameter 
776:     LD  4,-5(1) 	Load left into ac1 
777:    SUB  4,4,3 	Op < 
778:    LDC  3,1(6) 	True case 
779:    JGT  4,1(7) 	Jump if true 
780:    LDC  3,0(6) 	False case 
781:     ST  3,-7(1) 	Store parameter 
782:    SUB  3,4,3 	Op = 
783:     ST  3,-7(1) 	Store parameter 
784:     ST  3,-5(1) 	Save left side 
785:     LD  3,-3(1) 	Load variable b
786:     ST  3,-8(1) 	Store parameter 
787:     ST  3,-6(1) 	Save left side 
788:     LD  3,-4(1) 	Load variable c
789:     ST  3,-9(1) 	Store parameter 
790:     LD  4,-6(1) 	Load left into ac1 
791:    SUB  4,4,3 	Op <= 
792:    LDC  3,1(6) 	True case 
793:    JLE  4,1(7) 	Jump if true 
794:    LDC  3,0(6) 	False case 
795:     ST  3,-8(1) 	Store parameter 
796:     LD  4,-5(1) 	Load left into ac1 
797:    JEQ  3,1(7) 	Op AND 
798:     ST  3,-7(1) 	Store parameter 
799:     ST  3,-5(1) 	Save left side 
800:     LD  3,-4(1) 	Load variable c
801:     ST  3,-8(1) 	Store parameter 
802:     ST  3,-6(1) 	Save left side 
803:     LD  3,-2(1) 	Load variable a
804:     ST  3,-9(1) 	Store parameter 
805:     LD  4,-6(1) 	Load left into ac1 
806:    SUB  4,4,3 	Op >= 
807:    LDC  3,1(6) 	True case 
808:    JTE  4,1(7) 	Jump if true 
809:    LDC  3,0(6) 	False case 
810:     ST  3,-8(1) 	Store parameter 
811:     LD  4,-5(1) 	Load left into ac1 
812:    JEQ  3,1(7) 	Op OR 
813:     ST  3,-7(1) 	Store parameter 
* 			Jump to  outputb
814:    LDA  1,-5(1) 	Load address of new frame 
815:    LDA  3,1(7) 	Return address in ac 
816:    LDA  7,-799(7) 	Call  outputb
817:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outnl
818:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
819:    LDA  1,-5(1) 	Load address of new frame 
820:    LDA  3,1(7) 	Return address in ac 
821:    LDA  7,-785(7) 	Call  outnl
822:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
823:    LDC  2,0(6) 	Set return value to 0 
824:     LD  3,-1(1) 	Load return address 
825:     LD  1,0(1) 	Adjust fp 
826:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,826(7) 	Jump to init [backpatch] 
* BEGIN Init
827:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
828:    LDA  1,0(0) 	set first frame at end of globals 
829:     ST  1,0(1) 	store old fp (point to self) 
830:    LDA  3,0(7) 	return address in ac 
831:    LDA  7,-790(7) 	Jump to main 
832:   HALT  0,0,0 	DONE 
* END init
