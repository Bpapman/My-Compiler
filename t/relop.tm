* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  relop.c-
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
* WHILE
 43:     LD  3,-2(1) 	Load variable x
 44:     ST  3,-12(1) 	Save left side 
 45:     LD  3,-3(1) 	Load variable y
 46:     LD  4,-12(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op < 
 48:    LDC  3,1(6) 	True case 
 49:    JLT  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to while part 
* DO
 53:    LDA  7,-11(7) 	go to beginning of loop 
 52:    LDA  7,1(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
 54:     LD  3,-2(1) 	Load variable x
 55:     ST  3,-12(1) 	Save left side 
 56:     LD  3,-3(1) 	Load variable y
 57:     LD  4,-12(1) 	Load left into ac1 
 58:    SUB  4,4,3 	Op > 
 59:    LDC  3,1(6) 	True case 
 60:    JGT  4,1(7) 	Jump if true 
 61:    LDC  3,0(6) 	False case 
 62:    JGT  3,1(7) 	Jump to while part 
* DO
 64:    LDA  7,-11(7) 	go to beginning of loop 
 63:    LDA  7,1(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
 65:     LD  3,-2(1) 	Load variable x
 66:     ST  3,-12(1) 	Save left side 
 67:     LD  3,-3(1) 	Load variable y
 68:     LD  4,-12(1) 	Load left into ac1 
 69:    SUB  4,4,3 	Op < 
 70:    LDC  3,1(6) 	True case 
 71:    JLT  4,1(7) 	Jump if true 
 72:    LDC  3,0(6) 	False case 
 73:    LDC  4,1(6) 	Load 1 
 74:    SUB  3,4,3 	Op NOT 
 75:    JGT  3,1(7) 	Jump to while part 
* DO
 77:    LDA  7,-13(7) 	go to beginning of loop 
 76:    LDA  7,1(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
 78:     LD  3,-2(1) 	Load variable x
 79:     ST  3,-12(1) 	Save left side 
 80:     LD  3,-3(1) 	Load variable y
 81:     LD  4,-12(1) 	Load left into ac1 
 82:    SUB  4,4,3 	Op > 
 83:    LDC  3,1(6) 	True case 
 84:    JGT  4,1(7) 	Jump if true 
 85:    LDC  3,0(6) 	False case 
 86:    JGT  3,1(7) 	Jump to while part 
* DO
 88:    LDA  7,-11(7) 	go to beginning of loop 
 87:    LDA  7,1(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
 89:     LD  3,-2(1) 	Load variable x
 90:     ST  3,-12(1) 	Save left side 
 91:     LD  3,-3(1) 	Load variable y
 92:     LD  4,-12(1) 	Load left into ac1 
 93:    SUB  4,4,3 	Op == 
 94:    LDC  3,1(6) 	True case 
 95:    JEQ  4,1(7) 	Jump if true 
 96:    LDC  3,0(6) 	False case 
 97:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* END compound statement
 99:    LDA  7,-11(7) 	go to beginning of loop 
 98:    LDA  7,1(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
100:     LD  3,-2(1) 	Load variable x
101:     ST  3,-12(1) 	Save left side 
102:     LD  3,-3(1) 	Load variable y
103:     LD  4,-12(1) 	Load left into ac1 
104:    SUB  4,4,3 	Op <= 
105:    LDC  3,1(6) 	True case 
106:    JLE  4,1(7) 	Jump if true 
107:    LDC  3,0(6) 	False case 
108:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* END compound statement
110:    LDA  7,-11(7) 	go to beginning of loop 
109:    LDA  7,1(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
111:     LD  3,-2(1) 	Load variable x
112:     ST  3,-12(1) 	Save left side 
113:     LD  3,-3(1) 	Load variable y
114:     LD  4,-12(1) 	Load left into ac1 
115:    SUB  4,4,3 	Op >= 
116:    LDC  3,1(6) 	True case 
117:    JGE  4,1(7) 	Jump if true 
118:    LDC  3,0(6) 	False case 
119:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
121:    LDC  3,4(6) 	Load constant 
122:     ST  3,-9(1) 	Store variable x
* END compound statement
123:    LDA  7,-13(7) 	go to beginning of loop 
120:    LDA  7,3(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
124:     LD  3,-2(1) 	Load variable x
125:     ST  3,-12(1) 	Save left side 
126:     LD  3,-3(1) 	Load variable y
127:     LD  4,-12(1) 	Load left into ac1 
128:    SUB  3,4,3 	Op != 
129:    JEQ  3,1(7) 	Jump if true 
130:    LDC  3,1(6) 	True case 
131:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
133:     LD  3,-2(1) 	Load variable x
134:     ST  3,-12(1) 	Save left side 
135:     LD  3,-3(1) 	Load variable y
136:     LD  4,-12(1) 	Load left into ac1 
137:    SUB  4,4,3 	Op == 
138:    LDC  3,1(6) 	True case 
139:    JEQ  4,1(7) 	Jump if true 
140:    LDC  3,0(6) 	False case 
141:    JGT  3,1(7) 	Jump to while part 
* DO
143:    LDA  7,-11(7) 	go to beginning of loop 
142:    LDA  7,1(7) 	No more loop [backpatch] 
* ENDWHILE
144:    LDA  7,-21(7) 	go to beginning of loop 
132:    LDA  7,12(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
145:     LD  3,-2(1) 	Load variable x
146:     ST  3,-12(1) 	Save left side 
147:     LD  3,-3(1) 	Load variable y
148:     LD  4,-12(1) 	Load left into ac1 
149:    SUB  4,4,3 	Op > 
150:    LDC  3,1(6) 	True case 
151:    JGT  4,1(7) 	Jump if true 
152:    LDC  3,0(6) 	False case 
153:    JGT  3,1(7) 	Jump to then part 
* THEN
154:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
155:     LD  3,-2(1) 	Load variable x
156:     ST  3,-12(1) 	Save left side 
157:     LD  3,-3(1) 	Load variable y
158:     LD  4,-12(1) 	Load left into ac1 
159:    SUB  4,4,3 	Op == 
160:    LDC  3,1(6) 	True case 
161:    JEQ  4,1(7) 	Jump if true 
162:    LDC  3,0(6) 	False case 
163:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* END compound statement
164:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
165:     LD  3,-2(1) 	Load variable x
166:     ST  3,-12(1) 	Save left side 
167:     LD  3,-3(1) 	Load variable y
168:     LD  4,-12(1) 	Load left into ac1 
169:    SUB  4,4,3 	Op <= 
170:    LDC  3,1(6) 	True case 
171:    JLE  4,1(7) 	Jump if true 
172:    LDC  3,0(6) 	False case 
173:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* END compound statement
174:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
175:     LD  3,-2(1) 	Load variable x
176:     ST  3,-12(1) 	Save left side 
177:     LD  3,-3(1) 	Load variable y
178:     LD  4,-12(1) 	Load left into ac1 
179:    SUB  4,4,3 	Op >= 
180:    LDC  3,1(6) 	True case 
181:    JGE  4,1(7) 	Jump if true 
182:    LDC  3,0(6) 	False case 
183:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
185:    LDC  3,4(6) 	Load constant 
186:     ST  3,-11(1) 	Store variable x
* END compound statement
184:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
187:     LD  3,-2(1) 	Load variable x
188:     ST  3,-12(1) 	Save left side 
189:     LD  3,-3(1) 	Load variable y
190:     LD  4,-12(1) 	Load left into ac1 
191:    SUB  3,4,3 	Op != 
192:    JEQ  3,1(7) 	Jump if true 
193:    LDC  3,1(6) 	True case 
194:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
196:     LD  3,-2(1) 	Load variable x
197:     ST  3,-12(1) 	Save left side 
198:     LD  3,-3(1) 	Load variable y
199:     LD  4,-12(1) 	Load left into ac1 
200:    SUB  4,4,3 	Op == 
201:    LDC  3,1(6) 	True case 
202:    JEQ  4,1(7) 	Jump if true 
203:    LDC  3,0(6) 	False case 
204:    JGT  3,1(7) 	Jump to while part 
* DO
206:    LDA  7,-11(7) 	go to beginning of loop 
205:    LDA  7,1(7) 	No more loop [backpatch] 
* ENDWHILE
195:    LDA  7,11(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
207:     LD  3,-2(1) 	Load variable x
208:     ST  3,-12(1) 	Save left side 
209:     LD  3,-3(1) 	Load variable y
210:     LD  4,-12(1) 	Load left into ac1 
211:    SUB  4,4,3 	Op > 
212:    LDC  3,1(6) 	True case 
213:    JGT  4,1(7) 	Jump if true 
214:    LDC  3,0(6) 	False case 
215:    JGT  3,1(7) 	Jump to then part 
* THEN
216:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
217:     LD  3,-2(1) 	Load variable x
218:     ST  3,-12(1) 	Save left side 
219:     LD  3,-3(1) 	Load variable y
220:     LD  4,-12(1) 	Load left into ac1 
221:    SUB  4,4,3 	Op > 
222:    LDC  3,1(6) 	True case 
223:    JGT  4,1(7) 	Jump if true 
224:    LDC  3,0(6) 	False case 
225:    JGT  3,1(7) 	Jump to then part 
* THEN
226:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
227:     LD  3,-2(1) 	Load variable x
228:     ST  3,-12(1) 	Save left side 
229:     LD  3,-3(1) 	Load variable y
230:     LD  4,-12(1) 	Load left into ac1 
231:    SUB  4,4,3 	Op == 
232:    LDC  3,1(6) 	True case 
233:    JEQ  4,1(7) 	Jump if true 
234:    LDC  3,0(6) 	False case 
235:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* END compound statement
* ELSE
236:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* END compound statement
237:    LDA  7,0(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
238:     LD  3,-2(1) 	Load variable x
239:     ST  3,-12(1) 	Save left side 
240:     LD  3,-3(1) 	Load variable y
241:     LD  4,-12(1) 	Load left into ac1 
242:    SUB  4,4,3 	Op < 
243:    LDC  3,1(6) 	True case 
244:    JLT  4,1(7) 	Jump if true 
245:    LDC  3,0(6) 	False case 
246:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
248:     LD  3,-2(1) 	Load variable x
249:     ST  3,-12(1) 	Save left side 
250:     LD  3,-3(1) 	Load variable y
251:     LD  4,-12(1) 	Load left into ac1 
252:    SUB  4,4,3 	Op > 
253:    LDC  3,1(6) 	True case 
254:    JGT  4,1(7) 	Jump if true 
255:    LDC  3,0(6) 	False case 
256:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
258:    LDC  3,2(6) 	Load constant 
259:     ST  3,-2(1) 	Store variable x
* ELSE
257:    LDA  7,3(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
261:    LDC  3,3(6) 	Load constant 
262:     ST  3,-2(1) 	Store variable x
260:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
247:    LDA  7,15(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
263:     LD  3,-2(1) 	Load variable x
264:     ST  3,-12(1) 	Save left side 
265:     LD  3,-3(1) 	Load variable y
266:     LD  4,-12(1) 	Load left into ac1 
267:    SUB  4,4,3 	Op < 
268:    LDC  3,1(6) 	True case 
269:    JLT  4,1(7) 	Jump if true 
270:    LDC  3,0(6) 	False case 
271:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* IF
273:     LD  3,-2(1) 	Load variable x
274:     ST  3,-12(1) 	Save left side 
275:     LD  3,-3(1) 	Load variable y
276:     LD  4,-12(1) 	Load left into ac1 
277:    SUB  4,4,3 	Op > 
278:    LDC  3,1(6) 	True case 
279:    JGT  4,1(7) 	Jump if true 
280:    LDC  3,0(6) 	False case 
281:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
283:    LDC  3,2(6) 	Load constant 
284:     ST  3,-2(1) 	Store variable x
282:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* ELSE
272:    LDA  7,13(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
286:    LDC  3,3(6) 	Load constant 
287:     ST  3,-2(1) 	Store variable x
285:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
288:     LD  3,-6(1) 	Load variable b
289:    JGT  3,1(7) 	Jump to then part 
* THEN
290:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
291:     LD  3,-6(1) 	Load variable b
292:    LDC  4,1(6) 	Load 1 
293:    SUB  3,4,3 	Op NOT 
294:    JGT  3,1(7) 	Jump to then part 
* THEN
295:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
296:     LD  3,-5(1) 	Load variable a
297:     ST  3,-12(1) 	Save left side 
298:     LD  3,-6(1) 	Load variable b
299:     LD  4,-12(1) 	Load left into ac1 
300:    JEQ  3,1(7) 	Op AND 
301:    LDA  3,0(4) 	 
302:    JGT  3,1(7) 	Jump to then part 
* THEN
303:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
304:     LD  3,-5(1) 	Load variable a
305:     ST  3,-12(1) 	Save left side 
306:     LD  3,-6(1) 	Load variable b
307:     LD  4,-12(1) 	Load left into ac1 
308:    JGT  3,1(7) 	Op OR 
309:    LDA  3,0(4) 	 
310:    JGT  3,1(7) 	Jump to then part 
* THEN
311:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
312:     LD  3,-5(1) 	Load variable a
313:     ST  3,-12(1) 	Save left side 
314:     LD  3,-6(1) 	Load variable b
315:     ST  3,-13(1) 	Save left side 
316:     LD  3,-7(1) 	Load variable c
317:     LD  4,-13(1) 	Load left into ac1 
318:    JEQ  3,1(7) 	Op AND 
319:    LDA  3,0(4) 	 
320:     LD  4,-12(1) 	Load left into ac1 
321:    JGT  3,1(7) 	Op OR 
322:    LDA  3,0(4) 	 
323:    JGT  3,1(7) 	Jump to then part 
* THEN
324:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
325:     LD  3,-5(1) 	Load variable a
326:    LDC  4,1(6) 	Load 1 
327:    SUB  3,4,3 	Op NOT 
328:     ST  3,-12(1) 	Save left side 
329:     LD  3,-6(1) 	Load variable b
330:     LD  4,-12(1) 	Load left into ac1 
331:    JGT  3,1(7) 	Op OR 
332:    LDA  3,0(4) 	 
333:    JGT  3,1(7) 	Jump to then part 
* THEN
334:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
335:     LD  3,-2(1) 	Load variable x
336:     ST  3,-12(1) 	Save left side 
337:     LD  3,-3(1) 	Load variable y
338:     LD  4,-12(1) 	Load left into ac1 
339:    SUB  4,4,3 	Op > 
340:    LDC  3,1(6) 	True case 
341:    JGT  4,1(7) 	Jump if true 
342:    LDC  3,0(6) 	False case 
343:     ST  3,-12(1) 	Save left side 
344:     LD  3,-3(1) 	Load variable y
345:     ST  3,-13(1) 	Save left side 
346:     LD  3,-4(1) 	Load variable z
347:     LD  4,-13(1) 	Load left into ac1 
348:    SUB  4,4,3 	Op > 
349:    LDC  3,1(6) 	True case 
350:    JGT  4,1(7) 	Jump if true 
351:    LDC  3,0(6) 	False case 
352:     LD  4,-12(1) 	Load left into ac1 
353:    JEQ  3,1(7) 	Op AND 
354:    LDA  3,0(4) 	 
355:    JGT  3,1(7) 	Jump to then part 
* THEN
356:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
357:     LD  3,-2(1) 	Load variable x
358:     ST  3,-12(1) 	Save left side 
359:     LD  3,-3(1) 	Load variable y
360:     LD  4,-12(1) 	Load left into ac1 
361:    SUB  4,4,3 	Op > 
362:    LDC  3,1(6) 	True case 
363:    JGT  4,1(7) 	Jump if true 
364:    LDC  3,0(6) 	False case 
365:     ST  3,-12(1) 	Save left side 
366:     LD  3,-3(1) 	Load variable y
367:     ST  3,-13(1) 	Save left side 
368:     LD  3,-4(1) 	Load variable z
369:     LD  4,-13(1) 	Load left into ac1 
370:    SUB  4,4,3 	Op > 
371:    LDC  3,1(6) 	True case 
372:    JGT  4,1(7) 	Jump if true 
373:    LDC  3,0(6) 	False case 
374:     LD  4,-12(1) 	Load left into ac1 
375:    JGT  3,1(7) 	Op OR 
376:    LDA  3,0(4) 	 
377:    JGT  3,1(7) 	Jump to then part 
* THEN
378:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
379:     LD  3,-2(1) 	Load variable x
380:     ST  3,-12(1) 	Save left side 
381:     LD  3,-3(1) 	Load variable y
382:     LD  4,-12(1) 	Load left into ac1 
383:    SUB  4,4,3 	Op > 
384:    LDC  3,1(6) 	True case 
385:    JGT  4,1(7) 	Jump if true 
386:    LDC  3,0(6) 	False case 
387:     ST  3,-12(1) 	Save left side 
388:     LD  3,-3(1) 	Load variable y
389:     ST  3,-13(1) 	Save left side 
390:     LD  3,-4(1) 	Load variable z
391:     LD  4,-13(1) 	Load left into ac1 
392:    SUB  4,4,3 	Op > 
393:    LDC  3,1(6) 	True case 
394:    JGT  4,1(7) 	Jump if true 
395:    LDC  3,0(6) 	False case 
396:     LD  4,-12(1) 	Load left into ac1 
397:    JEQ  3,1(7) 	Op AND 
398:    LDA  3,0(4) 	 
399:     ST  3,-7(1) 	Store variable c
* EXPRESSION STMT
400:     LD  3,-2(1) 	Load variable x
401:     ST  3,-12(1) 	Save left side 
402:     LD  3,-3(1) 	Load variable y
403:     LD  4,-12(1) 	Load left into ac1 
404:    SUB  4,4,3 	Op > 
405:    LDC  3,1(6) 	True case 
406:    JGT  4,1(7) 	Jump if true 
407:    LDC  3,0(6) 	False case 
408:     ST  3,-12(1) 	Save left side 
409:     LD  3,-3(1) 	Load variable y
410:     ST  3,-13(1) 	Save left side 
411:     LD  3,-4(1) 	Load variable z
412:     LD  4,-13(1) 	Load left into ac1 
413:    SUB  4,4,3 	Op > 
414:    LDC  3,1(6) 	True case 
415:    JGT  4,1(7) 	Jump if true 
416:    LDC  3,0(6) 	False case 
417:     LD  4,-12(1) 	Load left into ac1 
418:    JGT  3,1(7) 	Op OR 
419:    LDA  3,0(4) 	 
420:     ST  3,-7(1) 	Store variable c
* EXPRESSION STMT
421:     LD  3,-2(1) 	Load variable x
422:     ST  3,-12(1) 	Save left side 
423:     LD  3,-3(1) 	Load variable y
424:     LD  4,-12(1) 	Load left into ac1 
425:    SUB  4,4,3 	Op > 
426:    LDC  3,1(6) 	True case 
427:    JGT  4,1(7) 	Jump if true 
428:    LDC  3,0(6) 	False case 
429:    LDC  4,1(6) 	Load 1 
430:    SUB  3,4,3 	Op NOT 
431:     ST  3,-12(1) 	Save left side 
432:     LD  3,-3(1) 	Load variable y
433:     ST  3,-13(1) 	Save left side 
434:     LD  3,-4(1) 	Load variable z
435:     LD  4,-13(1) 	Load left into ac1 
436:    SUB  4,4,3 	Op > 
437:    LDC  3,1(6) 	True case 
438:    JGT  4,1(7) 	Jump if true 
439:    LDC  3,0(6) 	False case 
440:     LD  4,-12(1) 	Load left into ac1 
441:    JEQ  3,1(7) 	Op AND 
442:    LDA  3,0(4) 	 
443:     ST  3,-7(1) 	Store variable c
* EXPRESSION STMT
444:     LD  3,-2(1) 	Load variable x
445:     ST  3,-12(1) 	Save left side 
446:     LD  3,-3(1) 	Load variable y
447:     LD  4,-12(1) 	Load left into ac1 
448:    SUB  4,4,3 	Op > 
449:    LDC  3,1(6) 	True case 
450:    JGT  4,1(7) 	Jump if true 
451:    LDC  3,0(6) 	False case 
452:    LDC  4,1(6) 	Load 1 
453:    SUB  3,4,3 	Op NOT 
454:     ST  3,-12(1) 	Save left side 
455:     LD  3,-3(1) 	Load variable y
456:     ST  3,-13(1) 	Save left side 
457:     LD  3,-4(1) 	Load variable z
458:     LD  4,-13(1) 	Load left into ac1 
459:    SUB  4,4,3 	Op > 
460:    LDC  3,1(6) 	True case 
461:    JGT  4,1(7) 	Jump if true 
462:    LDC  3,0(6) 	False case 
463:     LD  4,-12(1) 	Load left into ac1 
464:    JGT  3,1(7) 	Op OR 
465:    LDA  3,0(4) 	 
466:     ST  3,-7(1) 	Store variable c
* EXPRESSION STMT
467:     LD  3,-3(1) 	Load variable y
468:     ST  3,-12(1) 	Save left side 
469:     LD  3,-2(1) 	Load variable x
470:     LD  4,-12(1) 	Load left into ac1 
471:    SUB  4,4,3 	Op == 
472:    LDC  3,1(6) 	True case 
473:    JEQ  4,1(7) 	Jump if true 
474:    LDC  3,0(6) 	False case 
475:     ST  3,-12(1) 	Save left side 
476:     LD  3,-2(1) 	Load variable x
477:     ST  3,-13(1) 	Save left side 
478:     LD  3,-3(1) 	Load variable y
479:     LD  4,-13(1) 	Load left into ac1 
480:    SUB  4,4,3 	Op > 
481:    LDC  3,1(6) 	True case 
482:    JGT  4,1(7) 	Jump if true 
483:    LDC  3,0(6) 	False case 
484:     ST  3,-13(1) 	Save left side 
485:     LD  3,-3(1) 	Load variable y
486:     ST  3,-14(1) 	Save left side 
487:     LD  3,-4(1) 	Load variable z
488:     LD  4,-14(1) 	Load left into ac1 
489:    SUB  4,4,3 	Op > 
490:    LDC  3,1(6) 	True case 
491:    JGT  4,1(7) 	Jump if true 
492:    LDC  3,0(6) 	False case 
493:     LD  4,-13(1) 	Load left into ac1 
494:    JEQ  3,1(7) 	Op AND 
495:    LDA  3,0(4) 	 
496:     LD  4,-12(1) 	Load left into ac1 
497:    JGT  3,1(7) 	Op OR 
498:    LDA  3,0(4) 	 
499:     ST  3,-7(1) 	Store variable c
* IF
500:     LD  3,-6(1) 	Load variable b
501:     ST  3,-12(1) 	Save left side 
502:     LD  3,-2(1) 	Load variable x
503:     ST  3,-13(1) 	Save left side 
504:     LD  3,-3(1) 	Load variable y
505:     LD  4,-13(1) 	Load left into ac1 
506:    SUB  4,4,3 	Op > 
507:    LDC  3,1(6) 	True case 
508:    JGT  4,1(7) 	Jump if true 
509:    LDC  3,0(6) 	False case 
510:     ST  3,-13(1) 	Save left side 
511:     LD  3,-3(1) 	Load variable y
512:     ST  3,-14(1) 	Save left side 
513:     LD  3,-4(1) 	Load variable z
514:     LD  4,-14(1) 	Load left into ac1 
515:    SUB  4,4,3 	Op > 
516:    LDC  3,1(6) 	True case 
517:    JGT  4,1(7) 	Jump if true 
518:    LDC  3,0(6) 	False case 
519:     LD  4,-13(1) 	Load left into ac1 
520:    JEQ  3,1(7) 	Op AND 
521:    LDA  3,0(4) 	 
522:     LD  4,-12(1) 	Load left into ac1 
523:    JGT  3,1(7) 	Op OR 
524:    LDA  3,0(4) 	 
525:    JGT  3,1(7) 	Jump to then part 
* THEN
526:    LDA  7,0(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
527:    LDC  2,0(6) 	Set return value to 0 
528:     LD  3,-1(1) 	Load return address 
529:     LD  1,0(1) 	Adjust fp 
530:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,530(7) 	Jump to init [backpatch] 
* BEGIN Init
531:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
532:    LDA  1,0(0) 	set first frame at end of globals 
533:     ST  1,0(1) 	store old fp (point to self) 
534:    LDA  3,1(7) 	Return address in ac 
535:    LDA  7,-494(7) 	Jump to main 
536:   HALT  0,0,0 	DONE! 
* END Init
