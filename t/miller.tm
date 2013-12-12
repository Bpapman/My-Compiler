* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  miller.c-
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
* BEGIN function showIntArray
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:    LDC  3,0(6) 	Load constant 
 44:     ST  3,-4(1) 	Store variable i
* WHILE
 45:     LD  3,-4(1) 	Load variable i
 46:     ST  3,-5(1) 	Save left side 
 47:     LD  3,-3(1) 	Load variable size
 48:     LD  4,-5(1) 	Load left into ac1 
 49:    SUB  4,4,3 	Op < 
 50:    LDC  3,1(6) 	True case 
 51:    JLT  4,1(7) 	Jump if true 
 52:    LDC  3,0(6) 	False case 
 53:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
 55:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
 56:     LD  3,-4(1) 	Load variable i
 57:     LD  4,-2(1) 	Load address of base of array x
 58:    SUB  3,4,3 	Compute offset of value 
 59:     LD  3,0(3) 	Load the value 
 60:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
 61:    LDA  1,-5(1) 	Load address of new frame 
 62:    LDA  3,1(7) 	Return address in ac 
 63:    LDA  7,-58(7) 	CALL output
 64:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
 65:     LD  3,-4(1) 	Load variable i
 66:     ST  3,-5(1) 	Save left side 
 67:    LDC  3,1(6) 	Load constant 
 68:     LD  4,-5(1) 	Load left into ac1 
 69:    ADD  3,4,3 	Op + 
 70:     ST  3,-4(1) 	Store variable i
* END compound statement
 71:    LDA  7,-27(7) 	go to beginning of loop 
 54:    LDA  7,17(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
 72:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 73:    LDA  1,-5(1) 	Load address of new frame 
 74:    LDA  3,1(7) 	Return address in ac 
 75:    LDA  7,-39(7) 	CALL outnl
 76:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 77:    LDC  2,0(6) 	Set return value to 0 
 78:     LD  3,-1(1) 	Load return address 
 79:     LD  1,0(1) 	Adjust fp 
 80:    LDA  7,0(3) 	Return 
* END of function showIntArray
* BEGIN function dog
 81:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 82:     LD  3,-2(1) 	Load variable a
 83:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
 84:    LDC  3,7(6) 	Load constant 
 85:     ST  3,-4(1) 	Save index 
 86:    LDC  3,9(6) 	Load constant 
 87:     LD  4,-3(1) 	Load address of base of array b
 88:    SUB  3,4,3 	Compute offset of value 
 89:     LD  3,0(3) 	Load the value 
 90:     LD  4,-4(1) 	Restore index 
 91:     LD  5,-3(1) 	Load address of base of array b
 92:    SUB  5,5,4 	Compute offset of value 
 93:     ST  3,0(5) 	Store variable b
* EXPRESSION STMT
*                       Begin call to  output
 94:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 95:     LD  3,-2(1) 	Load variable a
 96:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
 97:    LDA  1,-4(1) 	Load address of new frame 
 98:    LDA  3,1(7) 	Return address in ac 
 99:    LDA  7,-94(7) 	CALL output
100:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
101:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
102:    LDA  1,-4(1) 	Load address of new frame 
103:    LDA  3,1(7) 	Return address in ac 
104:    LDA  7,-68(7) 	CALL outnl
105:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
106:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
107:    LDC  3,7(6) 	Load constant 
108:     LD  4,-3(1) 	Load address of base of array b
109:    SUB  3,4,3 	Compute offset of value 
110:     LD  3,0(3) 	Load the value 
111:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
112:    LDA  1,-4(1) 	Load address of new frame 
113:    LDA  3,1(7) 	Return address in ac 
114:    LDA  7,-109(7) 	CALL output
115:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
116:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
117:    LDA  1,-4(1) 	Load address of new frame 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-83(7) 	CALL outnl
120:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
121:    LDC  2,0(6) 	Set return value to 0 
122:     LD  3,-1(1) 	Load return address 
123:     LD  1,0(1) 	Adjust fp 
124:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function getnxtindex
125:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
126:     LD  3,-2(1) 	Load variable x
127:     ST  3,-3(1) 	Save left side 
128:    LDC  3,1(6) 	Load constant 
129:     LD  4,-3(1) 	Load left into ac1 
130:    ADD  3,4,3 	Op + 
131:    LDA  2,0(3) 	Copy result to rt register 
132:     LD  3,-1(1) 	Load return address 
133:     LD  1,0(1) 	Adjust fp 
134:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
135:    LDC  2,0(6) 	Set return value to 0 
136:     LD  3,-1(1) 	Load return address 
137:     LD  1,0(1) 	Adjust fp 
138:    LDA  7,0(3) 	Return 
* END of function getnxtindex
* BEGIN function main
139:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
140:    LDC  3,10(6) 	load size of array c
141:     ST  3,-3(1) 	save size of array c
142:    LDC  3,10(6) 	load size of array d
143:     ST  3,-14(1) 	save size of array d
144:    LDC  3,10(6) 	load size of array y
145:     ST  3,-25(1) 	save size of array y
146:    LDC  3,10(6) 	load size of array z
147:     ST  3,-36(1) 	save size of array z
148:    LDC  3,10(6) 	load size of array w
149:     ST  3,-47(1) 	save size of array w
* EXPRESSION STMT
150:    LDC  3,0(6) 	Load constant 
151:     ST  3,-60(1) 	Save index 
152:    LDC  3,3(6) 	Load constant 
153:     LD  4,-60(1) 	Restore index 
154:    LDA  5,-4(1) 	Load address of base of array c
155:    SUB  5,5,4 	Compute offset of value 
156:     ST  3,0(5) 	Store variable c
* EXPRESSION STMT
157:    LDC  3,3(6) 	Load constant 
158:     ST  3,-60(1) 	Save index 
159:    LDC  3,5(6) 	Load constant 
160:     LD  4,-60(1) 	Restore index 
161:    LDA  5,-15(1) 	Load address of base of array d
162:    SUB  5,5,4 	Compute offset of value 
163:     ST  3,0(5) 	Store variable d
* EXPRESSION STMT
164:    LDC  3,4(6) 	Load constant 
165:     ST  3,-60(1) 	Save index 
166:    LDC  3,9(6) 	Load constant 
167:     LD  4,-60(1) 	Restore index 
168:    LDA  5,-15(1) 	Load address of base of array d
169:    SUB  5,5,4 	Compute offset of value 
170:     ST  3,0(5) 	Store variable d
* EXPRESSION STMT
171:    LDC  3,5(6) 	Load constant 
172:     ST  3,-60(1) 	Save index 
173:    LDC  3,100(6) 	Load constant 
174:     LD  4,-60(1) 	Restore index 
175:    LDA  5,-26(1) 	Load address of base of array y
176:    SUB  5,5,4 	Compute offset of value 
177:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
178:    LDC  3,9(6) 	Load constant 
179:     ST  3,-60(1) 	Save index 
180:    LDC  3,50(6) 	Load constant 
181:     LD  4,-60(1) 	Restore index 
182:    LDA  5,-48(1) 	Load address of base of array w
183:    SUB  5,5,4 	Compute offset of value 
184:     ST  3,0(5) 	Store variable w
* EXPRESSION STMT
*                       Begin call to  dog
185:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
186:    LDC  3,5(6) 	Load constant 
187:    LDA  4,-26(1) 	Load address of base of array y
188:    SUB  3,4,3 	Compute offset of value 
189:     LD  3,0(3) 	Load the value 
190:     ST  3,-62(1) 	Store parameter 
*                       Load param 2
191:    LDA  3,-48(1) 	Load address of base of array w
192:     ST  3,-63(1) 	Store parameter 
*                       Jump to dog
193:    LDA  1,-60(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-115(7) 	CALL dog
196:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* EXPRESSION STMT
197:    LDC  3,9(6) 	Load constant 
198:     ST  3,-60(1) 	Save index 
199:    LDC  3,12(6) 	Load constant 
200:     LD  4,-60(1) 	Restore index 
201:    LDA  5,-48(1) 	Load address of base of array w
202:    SUB  5,5,4 	Compute offset of value 
203:     ST  3,0(5) 	Store variable w
* EXPRESSION STMT
*                       Begin call to  dog
204:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
205:    LDC  3,3(6) 	Load constant 
206:    LDA  4,-15(1) 	Load address of base of array d
207:    SUB  3,4,3 	Compute offset of value 
208:     LD  3,0(3) 	Load the value 
209:    LDA  4,-26(1) 	Load address of base of array y
210:    SUB  3,4,3 	Compute offset of value 
211:     LD  3,0(3) 	Load the value 
212:     ST  3,-62(1) 	Store parameter 
*                       Load param 2
213:    LDA  3,-48(1) 	Load address of base of array w
214:     ST  3,-63(1) 	Store parameter 
*                       Jump to dog
215:    LDA  1,-60(1) 	Load address of new frame 
216:    LDA  3,1(7) 	Return address in ac 
217:    LDA  7,-137(7) 	CALL dog
218:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* EXPRESSION STMT
219:    LDC  3,8(6) 	Load constant 
220:     ST  3,-60(1) 	Save index 
221:    LDC  3,4(6) 	Load constant 
222:     LD  4,-60(1) 	Restore index 
223:    LDA  5,-4(1) 	Load address of base of array c
224:    SUB  5,5,4 	Compute offset of value 
225:     ST  3,0(5) 	Store variable c
* EXPRESSION STMT
226:    LDC  3,9(6) 	Load constant 
227:     ST  3,-60(1) 	Save index 
228:    LDC  3,25(6) 	Load constant 
229:     LD  4,-60(1) 	Restore index 
230:    LDA  5,-4(1) 	Load address of base of array c
231:    SUB  5,5,4 	Compute offset of value 
232:     ST  3,0(5) 	Store variable c
* EXPRESSION STMT
233:    LDC  3,9(6) 	Load constant 
234:     ST  3,-60(1) 	Save index 
235:    LDC  3,66(6) 	Load constant 
236:     LD  4,-60(1) 	Restore index 
237:    LDA  5,-26(1) 	Load address of base of array y
238:    SUB  5,5,4 	Compute offset of value 
239:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  dog
240:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
241:    LDC  3,8(6) 	Load constant 
242:    LDA  4,-4(1) 	Load address of base of array c
243:    SUB  3,4,3 	Compute offset of value 
244:     LD  3,0(3) 	Load the value 
245:    LDA  4,-15(1) 	Load address of base of array d
246:    SUB  3,4,3 	Compute offset of value 
247:     LD  3,0(3) 	Load the value 
248:    LDA  4,-26(1) 	Load address of base of array y
249:    SUB  3,4,3 	Compute offset of value 
250:     LD  3,0(3) 	Load the value 
251:     ST  3,-62(1) 	Store parameter 
*                       Load param 2
252:    LDA  3,-4(1) 	Load address of base of array c
253:     ST  3,-63(1) 	Store parameter 
*                       Jump to dog
254:    LDA  1,-60(1) 	Load address of new frame 
255:    LDA  3,1(7) 	Return address in ac 
256:    LDA  7,-176(7) 	CALL dog
257:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* EXPRESSION STMT
258:    LDC  3,777(6) 	Load constant 
259:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
260:    LDC  3,7(6) 	Load constant 
261:     ST  3,-60(1) 	Save index 
262:    LDC  3,123(6) 	Load constant 
263:     LD  4,-60(1) 	Restore index 
264:    LDA  5,-26(1) 	Load address of base of array y
265:    SUB  5,5,4 	Compute offset of value 
266:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
267:    LDC  3,9(6) 	Load constant 
268:     ST  3,-60(1) 	Save index 
269:    LDC  3,7(6) 	Load constant 
270:    LDA  4,-26(1) 	Load address of base of array y
271:    SUB  3,4,3 	Compute offset of value 
272:     LD  3,0(3) 	Load the value 
273:     LD  4,-60(1) 	Restore index 
274:    LDA  5,-26(1) 	Load address of base of array y
275:    SUB  5,5,4 	Compute offset of value 
276:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  dog
277:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
278:     LD  3,-2(1) 	Load variable x
279:     ST  3,-62(1) 	Store parameter 
*                       Load param 2
280:    LDA  3,-26(1) 	Load address of base of array y
281:     ST  3,-63(1) 	Store parameter 
*                       Jump to dog
282:    LDA  1,-60(1) 	Load address of new frame 
283:    LDA  3,1(7) 	Return address in ac 
284:    LDA  7,-204(7) 	CALL dog
285:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* EXPRESSION STMT
286:     LD  3,-2(1) 	Load variable x
287:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
288:    LDC  3,9(6) 	Load constant 
289:     ST  3,-60(1) 	Save index 
290:     LD  3,-2(1) 	Load variable x
291:     LD  4,-60(1) 	Restore index 
292:    LDA  5,-4(1) 	Load address of base of array c
293:    SUB  5,5,4 	Compute offset of value 
294:     ST  3,0(5) 	Store variable c
* EXPRESSION STMT
295:    LDC  3,888(6) 	Load constant 
296:     ST  3,-11(0) 	Store variable glx
* EXPRESSION STMT
297:    LDC  3,7(6) 	Load constant 
298:     ST  3,-60(1) 	Save index 
299:     LD  3,-11(0) 	Load variable glx
300:     LD  4,-60(1) 	Restore index 
301:    LDA  5,-26(1) 	Load address of base of array y
302:    SUB  5,5,4 	Compute offset of value 
303:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
304:    LDC  3,6(6) 	Load constant 
305:     ST  3,-60(1) 	Save index 
306:    LDC  3,2(6) 	Load constant 
307:     LD  4,-60(1) 	Restore index 
308:    LDA  5,-15(1) 	Load address of base of array d
309:    SUB  5,5,4 	Compute offset of value 
310:     ST  3,0(5) 	Store variable d
* EXPRESSION STMT
311:    LDC  3,2(6) 	Load constant 
312:     ST  3,-60(1) 	Save index 
313:    LDC  3,4(6) 	Load constant 
314:     LD  4,-60(1) 	Restore index 
315:    LDA  5,-4(1) 	Load address of base of array c
316:    SUB  5,5,4 	Compute offset of value 
317:     ST  3,0(5) 	Store variable c
* EXPRESSION STMT
318:    LDC  3,4(6) 	Load constant 
319:     ST  3,-60(1) 	Save index 
320:    LDC  3,7(6) 	Load constant 
321:     LD  4,-60(1) 	Restore index 
322:    LDA  5,-15(1) 	Load address of base of array d
323:    SUB  5,5,4 	Compute offset of value 
324:     ST  3,0(5) 	Store variable d
* EXPRESSION STMT
325:    LDC  3,2(6) 	Load constant 
326:     ST  3,-60(1) 	Save index 
327:    LDC  3,6(6) 	Load constant 
328:    LDA  4,-15(1) 	Load address of base of array d
329:    SUB  3,4,3 	Compute offset of value 
330:     LD  3,0(3) 	Load the value 
331:    LDA  4,-4(1) 	Load address of base of array c
332:    SUB  3,4,3 	Compute offset of value 
333:     LD  3,0(3) 	Load the value 
334:    LDA  4,-15(1) 	Load address of base of array d
335:    SUB  3,4,3 	Compute offset of value 
336:     LD  3,0(3) 	Load the value 
337:    LDA  4,-26(1) 	Load address of base of array y
338:    SUB  3,4,3 	Compute offset of value 
339:     LD  3,0(3) 	Load the value 
340:     LD  4,-60(1) 	Restore index 
341:    LDA  5,-15(1) 	Load address of base of array d
342:    SUB  5,5,4 	Compute offset of value 
343:     ST  3,0(5) 	Store variable d
* EXPRESSION STMT
*                       Begin call to  dog
344:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
345:    LDC  3,8(6) 	Load constant 
346:    LDA  4,-4(1) 	Load address of base of array c
347:    SUB  3,4,3 	Compute offset of value 
348:     LD  3,0(3) 	Load the value 
349:    LDA  4,-15(1) 	Load address of base of array d
350:    SUB  3,4,3 	Compute offset of value 
351:     LD  3,0(3) 	Load the value 
352:    LDA  4,-26(1) 	Load address of base of array y
353:    SUB  3,4,3 	Compute offset of value 
354:     LD  3,0(3) 	Load the value 
355:     ST  3,-62(1) 	Store parameter 
*                       Load param 2
356:    LDA  3,-4(1) 	Load address of base of array c
357:     ST  3,-63(1) 	Store parameter 
*                       Jump to dog
358:    LDA  1,-60(1) 	Load address of new frame 
359:    LDA  3,1(7) 	Return address in ac 
360:    LDA  7,-280(7) 	CALL dog
361:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* EXPRESSION STMT
362:    LDC  3,2(6) 	Load constant 
363:     ST  3,-60(1) 	Save index 
364:    LDC  3,3(6) 	Load constant 
365:    LDA  4,-4(1) 	Load address of base of array c
366:    SUB  3,4,3 	Compute offset of value 
367:     LD  3,0(3) 	Load the value 
368:     LD  4,-60(1) 	Restore index 
369:    LDA  5,-15(1) 	Load address of base of array d
370:    SUB  5,5,4 	Compute offset of value 
371:     ST  3,0(5) 	Store variable d
* EXPRESSION STMT
372:    LDC  3,7(6) 	Load constant 
373:     ST  3,-60(1) 	Save index 
374:    LDC  3,9(6) 	Load constant 
375:    LDA  4,-26(1) 	Load address of base of array y
376:    SUB  3,4,3 	Compute offset of value 
377:     LD  3,0(3) 	Load the value 
378:     LD  4,-60(1) 	Restore index 
379:    LDA  5,-26(1) 	Load address of base of array y
380:    SUB  5,5,4 	Compute offset of value 
381:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
382:    LDC  3,2(6) 	Load constant 
383:     ST  3,-60(1) 	Save index 
384:    LDC  3,3(6) 	Load constant 
385:     LD  4,-60(1) 	Restore index 
386:    LDA  5,-1(0) 	Load address of base of array gl
387:    SUB  5,5,4 	Compute offset of value 
388:     ST  3,0(5) 	Store variable gl
* EXPRESSION STMT
389:    LDC  3,2(6) 	Load constant 
390:    LDA  4,-1(0) 	Load address of base of array gl
391:    SUB  3,4,3 	Compute offset of value 
392:     LD  3,0(3) 	Load the value 
393:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
394:    LDC  3,7(6) 	Load constant 
395:     ST  3,-60(1) 	Save index 
396:    LDC  3,9(6) 	Load constant 
397:    LDA  4,-1(0) 	Load address of base of array gl
398:    SUB  3,4,3 	Compute offset of value 
399:     LD  3,0(3) 	Load the value 
400:     LD  4,-60(1) 	Restore index 
401:    LDA  5,-26(1) 	Load address of base of array y
402:    SUB  5,5,4 	Compute offset of value 
403:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
404:    LDC  3,7(6) 	Load constant 
405:     ST  3,-60(1) 	Save index 
406:    LDC  3,9(6) 	Load constant 
407:    LDA  4,-26(1) 	Load address of base of array y
408:    SUB  3,4,3 	Compute offset of value 
409:     LD  3,0(3) 	Load the value 
410:     LD  4,-60(1) 	Restore index 
411:    LDA  5,-1(0) 	Load address of base of array gl
412:    SUB  5,5,4 	Compute offset of value 
413:     ST  3,0(5) 	Store variable gl
* EXPRESSION STMT
414:    LDC  3,0(6) 	Load constant 
415:     ST  3,-60(1) 	Save index 
416:    LDC  3,5(6) 	Load constant 
417:     LD  4,-60(1) 	Restore index 
418:    LDA  5,-26(1) 	Load address of base of array y
419:    SUB  5,5,4 	Compute offset of value 
420:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
421:    LDC  3,5(6) 	Load constant 
422:     ST  3,-60(1) 	Save index 
423:    LDC  3,3(6) 	Load constant 
424:     LD  4,-60(1) 	Restore index 
425:    LDA  5,-15(1) 	Load address of base of array d
426:    SUB  5,5,4 	Compute offset of value 
427:     ST  3,0(5) 	Store variable d
* EXPRESSION STMT
428:    LDC  3,8(6) 	Load constant 
429:     ST  3,-60(1) 	Save index 
430:    LDC  3,0(6) 	Load constant 
431:    LDA  4,-26(1) 	Load address of base of array y
432:    SUB  3,4,3 	Compute offset of value 
433:     LD  3,0(3) 	Load the value 
434:    LDA  4,-15(1) 	Load address of base of array d
435:    SUB  3,4,3 	Compute offset of value 
436:     LD  3,0(3) 	Load the value 
437:     LD  4,-60(1) 	Restore index 
438:    LDA  5,-4(1) 	Load address of base of array c
439:    SUB  5,5,4 	Compute offset of value 
440:     ST  3,0(5) 	Store variable c
* EXPRESSION STMT
*                       Begin call to  output
441:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
442:    LDC  3,8(6) 	Load constant 
443:    LDA  4,-4(1) 	Load address of base of array c
444:    SUB  3,4,3 	Compute offset of value 
445:     LD  3,0(3) 	Load the value 
446:     ST  3,-62(1) 	Store parameter 
*                       Jump to output
447:    LDA  1,-60(1) 	Load address of new frame 
448:    LDA  3,1(7) 	Return address in ac 
449:    LDA  7,-444(7) 	CALL output
450:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
451:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Jump to outnl
452:    LDA  1,-60(1) 	Load address of new frame 
453:    LDA  3,1(7) 	Return address in ac 
454:    LDA  7,-418(7) 	CALL outnl
455:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
456:    LDC  3,3(6) 	Load constant 
457:     ST  3,-60(1) 	Save index 
458:    LDC  3,4(6) 	Load constant 
459:     LD  4,-60(1) 	Restore index 
460:    LDA  5,-15(1) 	Load address of base of array d
461:    SUB  5,5,4 	Compute offset of value 
462:     ST  3,0(5) 	Store variable d
* EXPRESSION STMT
463:    LDC  3,4(6) 	Load constant 
464:     ST  3,-60(1) 	Save index 
465:    LDC  3,987(6) 	Load constant 
466:     LD  4,-60(1) 	Restore index 
467:    LDA  5,-26(1) 	Load address of base of array y
468:    SUB  5,5,4 	Compute offset of value 
469:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
470:    LDC  3,9(6) 	Load constant 
471:     ST  3,-60(1) 	Save index 
472:    LDC  3,3(6) 	Load constant 
473:     LD  4,-60(1) 	Restore index 
474:    LDA  5,-4(1) 	Load address of base of array c
475:    SUB  5,5,4 	Compute offset of value 
476:     LD  4,0(5) 	load lhs variable c
477:    SUB  3,4,3 	op -= 
478:     ST  3,0(5) 	Store variable c
* EXPRESSION STMT
*                       Begin call to  dog
479:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
480:    LDC  3,8(6) 	Load constant 
481:    LDA  4,-4(1) 	Load address of base of array c
482:    SUB  3,4,3 	Compute offset of value 
483:     LD  3,0(3) 	Load the value 
484:    LDA  4,-15(1) 	Load address of base of array d
485:    SUB  3,4,3 	Compute offset of value 
486:     LD  3,0(3) 	Load the value 
487:    LDA  4,-26(1) 	Load address of base of array y
488:    SUB  3,4,3 	Compute offset of value 
489:     LD  3,0(3) 	Load the value 
490:     ST  3,-62(1) 	Store parameter 
*                       Load param 2
491:    LDA  3,-4(1) 	Load address of base of array c
492:     ST  3,-63(1) 	Store parameter 
*                       Jump to dog
493:    LDA  1,-60(1) 	Load address of new frame 
494:    LDA  3,1(7) 	Return address in ac 
495:    LDA  7,-415(7) 	CALL dog
496:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* EXPRESSION STMT
497:    LDC  3,9(6) 	Load constant 
498:    LDA  4,-4(1) 	Load address of base of array c
499:    SUB  3,4,3 	Compute offset of value 
500:     LD  3,0(3) 	Load the value 
501:     LD  4,-2(1) 	load lhs variable x
502:    ADD  3,4,3 	op += 
503:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
504:    LDC  3,9(6) 	Load constant 
505:    LDA  4,-4(1) 	Load address of base of array c
506:    SUB  3,4,3 	Compute offset of value 
507:     LD  3,0(3) 	Load the value 
508:     LD  4,-2(1) 	load lhs variable x
509:    SUB  3,4,3 	op -= 
510:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
511:    LDC  3,8(6) 	Load constant 
512:     ST  3,-60(1) 	Save index 
513:    LDC  3,8(6) 	Load constant 
514:     LD  4,-60(1) 	Restore index 
515:    LDA  5,-26(1) 	Load address of base of array y
516:    SUB  5,5,4 	Compute offset of value 
517:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
518:    LDC  3,9(6) 	Load constant 
519:     ST  3,-60(1) 	Save index 
*                       Begin call to  getnxtindex
520:     ST  1,-61(1) 	Store old fp in ghost frame 
*                       Load param 1
521:    LDC  3,7(6) 	Load constant 
522:     ST  3,-63(1) 	Store parameter 
*                       Jump to getnxtindex
523:    LDA  1,-61(1) 	Load address of new frame 
524:    LDA  3,1(7) 	Return address in ac 
525:    LDA  7,-401(7) 	CALL getnxtindex
526:    LDA  3,0(2) 	Save the result in ac 
*                       End call to getnxtindex
527:    LDA  4,-26(1) 	Load address of base of array y
528:    SUB  3,4,3 	Compute offset of value 
529:     LD  3,0(3) 	Load the value 
530:     ST  3,-61(1) 	Save left side 
531:    LDC  3,1(6) 	Load constant 
532:     LD  4,-61(1) 	Load left into ac1 
533:    ADD  3,4,3 	Op + 
534:     LD  4,-60(1) 	Restore index 
535:    LDA  5,-26(1) 	Load address of base of array y
536:    SUB  5,5,4 	Compute offset of value 
537:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  dog
538:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
539:    LDC  3,4(6) 	Load constant 
540:    LDA  4,-26(1) 	Load address of base of array y
541:    SUB  3,4,3 	Compute offset of value 
542:     LD  3,0(3) 	Load the value 
543:     ST  3,-62(1) 	Store parameter 
*                       Load param 2
544:    LDA  3,-26(1) 	Load address of base of array y
545:     ST  3,-63(1) 	Store parameter 
*                       Jump to dog
546:    LDA  1,-60(1) 	Load address of new frame 
547:    LDA  3,1(7) 	Return address in ac 
548:    LDA  7,-468(7) 	CALL dog
549:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* EXPRESSION STMT
550:    LDC  3,5(6) 	Load constant 
551:     ST  3,-60(1) 	Save index 
552:    LDC  3,0(6) 	Load constant 
553:     LD  4,-60(1) 	Restore index 
554:    LDA  5,-4(1) 	Load address of base of array c
555:    SUB  5,5,4 	Compute offset of value 
556:     ST  3,0(5) 	Store variable c
* EXPRESSION STMT
557:    LDC  3,0(6) 	Load constant 
558:     ST  3,-60(1) 	Save index 
559:    LDC  3,3(6) 	Load constant 
560:     LD  4,-60(1) 	Restore index 
561:    LDA  5,-48(1) 	Load address of base of array w
562:    SUB  5,5,4 	Compute offset of value 
563:     ST  3,0(5) 	Store variable w
* EXPRESSION STMT
564:    LDC  3,3(6) 	Load constant 
565:     ST  3,-60(1) 	Save index 
566:    LDC  3,9(6) 	Load constant 
567:     LD  4,-60(1) 	Restore index 
568:    LDA  5,-37(1) 	Load address of base of array z
569:    SUB  5,5,4 	Compute offset of value 
570:     ST  3,0(5) 	Store variable z
* EXPRESSION STMT
571:    LDC  3,9(6) 	Load constant 
572:     ST  3,-60(1) 	Save index 
573:    LDC  3,1(6) 	Load constant 
574:     LD  4,-60(1) 	Restore index 
575:    LDA  5,-26(1) 	Load address of base of array y
576:    SUB  5,5,4 	Compute offset of value 
577:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
578:    LDC  3,5(6) 	Load constant 
579:    LDA  4,-4(1) 	Load address of base of array c
580:    SUB  3,4,3 	Compute offset of value 
581:     LD  3,0(3) 	Load the value 
582:    LDA  4,-48(1) 	Load address of base of array w
583:    SUB  3,4,3 	Compute offset of value 
584:     LD  3,0(3) 	Load the value 
585:    LDA  4,-37(1) 	Load address of base of array z
586:    SUB  3,4,3 	Compute offset of value 
587:     LD  3,0(3) 	Load the value 
588:    LDA  4,-26(1) 	Load address of base of array y
589:    SUB  3,4,3 	Compute offset of value 
590:     LD  3,0(3) 	Load the value 
591:     ST  3,-60(1) 	Save index 
592:    LDC  3,77(6) 	Load constant 
593:     LD  4,-60(1) 	Restore index 
594:    LDA  5,-15(1) 	Load address of base of array d
595:    SUB  5,5,4 	Compute offset of value 
596:     ST  3,0(5) 	Store variable d
* EXPRESSION STMT
597:    LDC  3,9(6) 	Load constant 
598:     ST  3,-60(1) 	Save index 
599:    LDC  3,1(6) 	Load constant 
600:    LDA  4,-15(1) 	Load address of base of array d
601:    SUB  3,4,3 	Compute offset of value 
602:     LD  3,0(3) 	Load the value 
603:     LD  4,-60(1) 	Restore index 
604:    LDA  5,-4(1) 	Load address of base of array c
605:    SUB  5,5,4 	Compute offset of value 
606:     ST  3,0(5) 	Store variable c
* EXPRESSION STMT
*                       Begin call to  dog
607:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
608:    LDC  3,66(6) 	Load constant 
609:     ST  3,-62(1) 	Store parameter 
*                       Load param 2
610:    LDA  3,-4(1) 	Load address of base of array c
611:     ST  3,-63(1) 	Store parameter 
*                       Jump to dog
612:    LDA  1,-60(1) 	Load address of new frame 
613:    LDA  3,1(7) 	Return address in ac 
614:    LDA  7,-534(7) 	CALL dog
615:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* BEGIN compound statement
* EXPRESSION STMT
616:    LDC  3,0(6) 	Load constant 
617:     ST  3,-58(1) 	Store variable p
* WHILE
618:     LD  3,-58(1) 	Load variable p
619:     ST  3,-60(1) 	Save left side 
620:    LDC  3,10(6) 	Load constant 
621:     LD  4,-60(1) 	Load left into ac1 
622:    SUB  4,4,3 	Op < 
623:    LDC  3,1(6) 	True case 
624:    JLT  4,1(7) 	Jump if true 
625:    LDC  3,0(6) 	False case 
626:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
628:     LD  3,-58(1) 	Load variable p
629:     ST  3,-59(1) 	Store variable q
* EXPRESSION STMT
630:    LDC  3,9(6) 	Load constant 
631:     ST  3,-60(1) 	Save left side 
632:     LD  3,-59(1) 	Load variable q
633:     LD  4,-60(1) 	Load left into ac1 
634:    SUB  3,4,3 	Op - 
635:     ST  3,-60(1) 	Save index 
636:    LDC  3,1(6) 	Load constant 
637:     LD  4,-58(1) 	load lhs variable p
638:    ADD  3,4,3 	op += 
639:     ST  3,-58(1) 	Store variable p
640:     LD  4,-60(1) 	Restore index 
641:    LDA  5,-4(1) 	Load address of base of array c
642:    SUB  5,5,4 	Compute offset of value 
643:     ST  3,0(5) 	Store variable c
* END compound statement
644:    LDA  7,-27(7) 	go to beginning of loop 
627:    LDA  7,17(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* EXPRESSION STMT
*                       Begin call to  showIntArray
645:     ST  1,-60(1) 	Store old fp in ghost frame 
*                       Load param 1
646:    LDA  3,-4(1) 	Load address of base of array c
647:     ST  3,-62(1) 	Store parameter 
*                       Load param 2
648:    LDC  3,10(6) 	Load constant 
649:     ST  3,-63(1) 	Store parameter 
*                       Jump to showIntArray
650:    LDA  1,-60(1) 	Load address of new frame 
651:    LDA  3,1(7) 	Return address in ac 
652:    LDA  7,-611(7) 	CALL showIntArray
653:    LDA  3,0(2) 	Save the result in ac 
*                       End call to showIntArray
* END compound statement
* Add standard closing in case there is no return statement
654:    LDC  2,0(6) 	Set return value to 0 
655:     LD  3,-1(1) 	Load return address 
656:     LD  1,0(1) 	Adjust fp 
657:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,657(7) 	Jump to init [backpatch] 
* BEGIN Init
658:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
659:    LDC  3,10(6) 	load size of array gl
660:     ST  3,0(0) 	save size of array gl
* END init of globals
661:    LDA  1,-12(0) 	set first frame at end of globals 
662:     ST  1,0(1) 	store old fp (point to self) 
663:    LDA  3,1(7) 	Return address in ac 
664:    LDA  7,-526(7) 	Jump to main 
665:   HALT  0,0,0 	DONE! 
* END Init
