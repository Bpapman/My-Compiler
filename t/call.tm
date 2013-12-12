* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  call.c-
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
* BEGIN function showInt
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
 44:     LD  3,-2(1) 	Load variable x
 45:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
 46:    LDA  1,-3(1) 	Load address of new frame 
 47:    LDA  3,1(7) 	Return address in ac 
 48:    LDA  7,-43(7) 	CALL output
 49:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 50:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 51:    LDA  1,-3(1) 	Load address of new frame 
 52:    LDA  3,1(7) 	Return address in ac 
 53:    LDA  7,-17(7) 	CALL outnl
 54:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 55:    LDC  2,0(6) 	Set return value to 0 
 56:     LD  3,-1(1) 	Load return address 
 57:     LD  1,0(1) 	Adjust fp 
 58:    LDA  7,0(3) 	Return 
* END of function showInt
* BEGIN function showIntArray
 59:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 60:    LDC  3,0(6) 	Load constant 
 61:     ST  3,-4(1) 	Store variable i
* WHILE
 62:     LD  3,-4(1) 	Load variable i
 63:     ST  3,-5(1) 	Save left side 
 64:     LD  3,-3(1) 	Load variable size
 65:     LD  4,-5(1) 	Load left into ac1 
 66:    SUB  4,4,3 	Op < 
 67:    LDC  3,1(6) 	True case 
 68:    JLT  4,1(7) 	Jump if true 
 69:    LDC  3,0(6) 	False case 
 70:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
 72:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
 73:     LD  3,-4(1) 	Load variable i
 74:     LD  4,-2(1) 	Load address of base of array x
 75:    SUB  3,4,3 	Compute offset of value 
 76:     LD  3,0(3) 	Load the value 
 77:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
 78:    LDA  1,-5(1) 	Load address of new frame 
 79:    LDA  3,1(7) 	Return address in ac 
 80:    LDA  7,-75(7) 	CALL output
 81:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
 82:     LD  3,-4(1) 	Load variable i
 83:     ST  3,-5(1) 	Save left side 
 84:    LDC  3,1(6) 	Load constant 
 85:     LD  4,-5(1) 	Load left into ac1 
 86:    ADD  3,4,3 	Op + 
 87:     ST  3,-4(1) 	Store variable i
* END compound statement
 88:    LDA  7,-27(7) 	go to beginning of loop 
 71:    LDA  7,17(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
 89:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 90:    LDA  1,-5(1) 	Load address of new frame 
 91:    LDA  3,1(7) 	Return address in ac 
 92:    LDA  7,-56(7) 	CALL outnl
 93:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 94:    LDC  2,0(6) 	Set return value to 0 
 95:     LD  3,-1(1) 	Load return address 
 96:     LD  1,0(1) 	Adjust fp 
 97:    LDA  7,0(3) 	Return 
* END of function showIntArray
* BEGIN function showBool
 98:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  outputb
 99:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
100:     LD  3,-2(1) 	Load variable x
101:     ST  3,-5(1) 	Store parameter 
*                       Jump to outputb
102:    LDA  1,-3(1) 	Load address of new frame 
103:    LDA  3,1(7) 	Return address in ac 
104:    LDA  7,-87(7) 	CALL outputb
105:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
106:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
107:    LDA  1,-3(1) 	Load address of new frame 
108:    LDA  3,1(7) 	Return address in ac 
109:    LDA  7,-73(7) 	CALL outnl
110:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
111:    LDC  2,0(6) 	Set return value to 0 
112:     LD  3,-1(1) 	Load return address 
113:     LD  1,0(1) 	Adjust fp 
114:    LDA  7,0(3) 	Return 
* END of function showBool
* BEGIN function truth
115:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
116:    LDC  3,1(6) 	Load constant 
117:    LDA  2,0(3) 	Copy result to rt register 
118:     LD  3,-1(1) 	Load return address 
119:     LD  1,0(1) 	Adjust fp 
120:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
121:    LDC  2,0(6) 	Set return value to 0 
122:     LD  3,-1(1) 	Load return address 
123:     LD  1,0(1) 	Adjust fp 
124:    LDA  7,0(3) 	Return 
* END of function truth
* BEGIN function magic
125:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
126:    LDC  3,666(6) 	Load constant 
127:    LDA  2,0(3) 	Copy result to rt register 
128:     LD  3,-1(1) 	Load return address 
129:     LD  1,0(1) 	Adjust fp 
130:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
131:    LDC  2,0(6) 	Set return value to 0 
132:     LD  3,-1(1) 	Load return address 
133:     LD  1,0(1) 	Adjust fp 
134:    LDA  7,0(3) 	Return 
* END of function magic
* BEGIN function sqr
135:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
136:     LD  3,-2(1) 	Load variable x
137:     ST  3,-3(1) 	Save left side 
138:     LD  3,-2(1) 	Load variable x
139:     LD  4,-3(1) 	Load left into ac1 
140:    MUL  3,4,3 	Op * 
141:    LDA  2,0(3) 	Copy result to rt register 
142:     LD  3,-1(1) 	Load return address 
143:     LD  1,0(1) 	Adjust fp 
144:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
145:    LDC  2,0(6) 	Set return value to 0 
146:     LD  3,-1(1) 	Load return address 
147:     LD  1,0(1) 	Adjust fp 
148:    LDA  7,0(3) 	Return 
* END of function sqr
* BEGIN function add
149:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
150:     LD  3,-2(1) 	Load variable x
151:     ST  3,-4(1) 	Save left side 
152:     LD  3,-3(1) 	Load variable y
153:     LD  4,-4(1) 	Load left into ac1 
154:    ADD  3,4,3 	Op + 
155:    LDA  2,0(3) 	Copy result to rt register 
156:     LD  3,-1(1) 	Load return address 
157:     LD  1,0(1) 	Adjust fp 
158:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
159:    LDC  2,0(6) 	Set return value to 0 
160:     LD  3,-1(1) 	Load return address 
161:     LD  1,0(1) 	Adjust fp 
162:    LDA  7,0(3) 	Return 
* END of function add
* BEGIN function mul
163:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* RETURN
164:     LD  3,-2(1) 	Load variable x
165:     ST  3,-4(1) 	Save left side 
166:     LD  3,-3(1) 	Load variable y
167:     LD  4,-4(1) 	Load left into ac1 
168:    MUL  3,4,3 	Op * 
169:    LDA  2,0(3) 	Copy result to rt register 
170:     LD  3,-1(1) 	Load return address 
171:     LD  1,0(1) 	Adjust fp 
172:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
173:    LDC  2,0(6) 	Set return value to 0 
174:     LD  3,-1(1) 	Load return address 
175:     LD  1,0(1) 	Adjust fp 
176:    LDA  7,0(3) 	Return 
* END of function mul
* BEGIN function caller
177:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
178:    LDC  3,666(6) 	Load constant 
179:     ST  3,-5(1) 	Store variable a
* EXPRESSION STMT
180:    LDC  3,777(6) 	Load constant 
181:     ST  3,0(0) 	Store variable g
* EXPRESSION STMT
*                       Begin call to  sqr
182:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
183:     LD  3,-2(1) 	Load variable x
184:     ST  3,-8(1) 	Store parameter 
*                       Jump to sqr
185:    LDA  1,-6(1) 	Load address of new frame 
186:    LDA  3,1(7) 	Return address in ac 
187:    LDA  7,-53(7) 	CALL sqr
188:    LDA  3,0(2) 	Save the result in ac 
*                       End call to sqr
189:     ST  3,-4(1) 	Store variable z
* EXPRESSION STMT
*                       Begin call to  output
190:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
191:     LD  3,-4(1) 	Load variable z
192:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
193:    LDA  1,-6(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-190(7) 	CALL output
196:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
197:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
198:    LDA  1,-6(1) 	Load address of new frame 
199:    LDA  3,1(7) 	Return address in ac 
200:    LDA  7,-164(7) 	CALL outnl
201:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  sqr
202:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
203:    LDC  3,7(6) 	Load constant 
204:     LD  4,-3(1) 	Load address of base of array y
205:    SUB  3,4,3 	Compute offset of value 
206:     LD  3,0(3) 	Load the value 
207:     ST  3,-8(1) 	Store parameter 
*                       Jump to sqr
208:    LDA  1,-6(1) 	Load address of new frame 
209:    LDA  3,1(7) 	Return address in ac 
210:    LDA  7,-76(7) 	CALL sqr
211:    LDA  3,0(2) 	Save the result in ac 
*                       End call to sqr
212:     ST  3,-4(1) 	Store variable z
* EXPRESSION STMT
*                       Begin call to  output
213:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
214:     LD  3,-4(1) 	Load variable z
215:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
216:    LDA  1,-6(1) 	Load address of new frame 
217:    LDA  3,1(7) 	Return address in ac 
218:    LDA  7,-213(7) 	CALL output
219:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
220:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
221:    LDA  1,-6(1) 	Load address of new frame 
222:    LDA  3,1(7) 	Return address in ac 
223:    LDA  7,-187(7) 	CALL outnl
224:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  sqr
225:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
226:     LD  3,-5(1) 	Load variable a
227:     ST  3,-8(1) 	Store parameter 
*                       Jump to sqr
228:    LDA  1,-6(1) 	Load address of new frame 
229:    LDA  3,1(7) 	Return address in ac 
230:    LDA  7,-96(7) 	CALL sqr
231:    LDA  3,0(2) 	Save the result in ac 
*                       End call to sqr
232:     ST  3,-4(1) 	Store variable z
* EXPRESSION STMT
*                       Begin call to  output
233:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
234:     LD  3,-4(1) 	Load variable z
235:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
236:    LDA  1,-6(1) 	Load address of new frame 
237:    LDA  3,1(7) 	Return address in ac 
238:    LDA  7,-233(7) 	CALL output
239:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
240:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
241:    LDA  1,-6(1) 	Load address of new frame 
242:    LDA  3,1(7) 	Return address in ac 
243:    LDA  7,-207(7) 	CALL outnl
244:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  sqr
245:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
246:     LD  3,0(0) 	Load variable g
247:     ST  3,-8(1) 	Store parameter 
*                       Jump to sqr
248:    LDA  1,-6(1) 	Load address of new frame 
249:    LDA  3,1(7) 	Return address in ac 
250:    LDA  7,-116(7) 	CALL sqr
251:    LDA  3,0(2) 	Save the result in ac 
*                       End call to sqr
252:     ST  3,-4(1) 	Store variable z
* EXPRESSION STMT
*                       Begin call to  output
253:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
254:     LD  3,-4(1) 	Load variable z
255:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
256:    LDA  1,-6(1) 	Load address of new frame 
257:    LDA  3,1(7) 	Return address in ac 
258:    LDA  7,-253(7) 	CALL output
259:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
260:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
261:    LDA  1,-6(1) 	Load address of new frame 
262:    LDA  3,1(7) 	Return address in ac 
263:    LDA  7,-227(7) 	CALL outnl
264:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
265:    LDC  2,0(6) 	Set return value to 0 
266:     LD  3,-1(1) 	Load return address 
267:     LD  1,0(1) 	Adjust fp 
268:    LDA  7,0(3) 	Return 
* END of function caller
* BEGIN function swap
269:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
270:     LD  3,-3(1) 	Load variable z1
271:     LD  4,-2(1) 	Load address of base of array x
272:    SUB  3,4,3 	Compute offset of value 
273:     LD  3,0(3) 	Load the value 
274:     ST  3,-5(1) 	Store variable tmp
* EXPRESSION STMT
275:     LD  3,-3(1) 	Load variable z1
276:     ST  3,-6(1) 	Save index 
277:     LD  3,-4(1) 	Load variable z2
278:     LD  4,-2(1) 	Load address of base of array x
279:    SUB  3,4,3 	Compute offset of value 
280:     LD  3,0(3) 	Load the value 
281:     LD  4,-6(1) 	Restore index 
282:     LD  5,-2(1) 	Load address of base of array x
283:    SUB  5,5,4 	Compute offset of value 
284:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
285:     LD  3,-4(1) 	Load variable z2
286:     ST  3,-6(1) 	Save index 
287:     LD  3,-5(1) 	Load variable tmp
288:     LD  4,-6(1) 	Restore index 
289:     LD  5,-2(1) 	Load address of base of array x
290:    SUB  5,5,4 	Compute offset of value 
291:     ST  3,0(5) 	Store variable x
* END compound statement
* Add standard closing in case there is no return statement
292:    LDC  2,0(6) 	Set return value to 0 
293:     LD  3,-1(1) 	Load return address 
294:     LD  1,0(1) 	Adjust fp 
295:    LDA  7,0(3) 	Return 
* END of function swap
* BEGIN function main
296:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
297:    LDC  3,10(6) 	load size of array r
298:     ST  3,-4(1) 	save size of array r
299:    LDC  3,10(6) 	load size of array s
300:     ST  3,-15(1) 	save size of array s
* EXPRESSION STMT
301:    LDC  3,0(6) 	Load constant 
302:     ST  3,-2(1) 	Store variable p
* WHILE
303:     LD  3,-2(1) 	Load variable p
304:     ST  3,-26(1) 	Save left side 
305:    LDC  3,10(6) 	Load constant 
306:     LD  4,-26(1) 	Load left into ac1 
307:    SUB  4,4,3 	Op < 
308:    LDC  3,1(6) 	True case 
309:    JLT  4,1(7) 	Jump if true 
310:    LDC  3,0(6) 	False case 
311:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
313:     LD  3,-2(1) 	Load variable p
314:     ST  3,-26(1) 	Save index 
315:     LD  3,-2(1) 	Load variable p
316:     LD  4,-26(1) 	Restore index 
317:    LDA  5,-5(1) 	Load address of base of array r
318:    SUB  5,5,4 	Compute offset of value 
319:     ST  3,0(5) 	Store variable r
* EXPRESSION STMT
320:     LD  3,-2(1) 	load lhs variable p
321:    LDA  3,1(3) 	increment value of p
322:     ST  3,-2(1) 	Store variable p
* END compound statement
323:    LDA  7,-21(7) 	go to beginning of loop 
312:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
324:    LDC  3,111(6) 	Load constant 
325:     ST  3,-2(1) 	Store variable p
* EXPRESSION STMT
326:    LDC  3,222(6) 	Load constant 
327:     ST  3,-3(1) 	Store variable q
* EXPRESSION STMT
328:    LDC  3,7(6) 	Load constant 
329:     ST  3,-26(1) 	Save index 
330:    LDC  3,333(6) 	Load constant 
331:     LD  4,-26(1) 	Restore index 
332:    LDA  5,-5(1) 	Load address of base of array r
333:    SUB  5,5,4 	Compute offset of value 
334:     ST  3,0(5) 	Store variable r
* EXPRESSION STMT
335:    LDC  3,7(6) 	Load constant 
336:     ST  3,-26(1) 	Save index 
337:    LDC  3,444(6) 	Load constant 
338:     LD  4,-26(1) 	Restore index 
339:    LDA  5,-16(1) 	Load address of base of array s
340:    SUB  5,5,4 	Compute offset of value 
341:     ST  3,0(5) 	Store variable s
* EXPRESSION STMT
*                       Begin call to  showInt
342:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
343:     LD  3,-2(1) 	Load variable p
344:     ST  3,-28(1) 	Store parameter 
*                       Jump to showInt
345:    LDA  1,-26(1) 	Load address of new frame 
346:    LDA  3,1(7) 	Return address in ac 
347:    LDA  7,-306(7) 	CALL showInt
348:    LDA  3,0(2) 	Save the result in ac 
*                       End call to showInt
* EXPRESSION STMT
*                       Begin call to  showIntArray
349:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
350:    LDA  3,-5(1) 	Load address of base of array r
351:     ST  3,-28(1) 	Store parameter 
*                       Load param 2
352:    LDC  3,10(6) 	Load constant 
353:     ST  3,-29(1) 	Store parameter 
*                       Jump to showIntArray
354:    LDA  1,-26(1) 	Load address of new frame 
355:    LDA  3,1(7) 	Return address in ac 
356:    LDA  7,-298(7) 	CALL showIntArray
357:    LDA  3,0(2) 	Save the result in ac 
*                       End call to showIntArray
* EXPRESSION STMT
*                       Begin call to  showBool
358:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  truth
359:     ST  1,-28(1) 	Store old fp in ghost frame 
*                       Jump to truth
360:    LDA  1,-28(1) 	Load address of new frame 
361:    LDA  3,1(7) 	Return address in ac 
362:    LDA  7,-248(7) 	CALL truth
363:    LDA  3,0(2) 	Save the result in ac 
*                       End call to truth
364:     ST  3,-28(1) 	Store parameter 
*                       Jump to showBool
365:    LDA  1,-26(1) 	Load address of new frame 
366:    LDA  3,1(7) 	Return address in ac 
367:    LDA  7,-270(7) 	CALL showBool
368:    LDA  3,0(2) 	Save the result in ac 
*                       End call to showBool
* EXPRESSION STMT
*                       Begin call to  output
369:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  showInt
370:     ST  1,-28(1) 	Store old fp in ghost frame 
*                       Load param 1
371:     LD  3,-2(1) 	Load variable p
372:     ST  3,-30(1) 	Store parameter 
*                       Jump to showInt
373:    LDA  1,-28(1) 	Load address of new frame 
374:    LDA  3,1(7) 	Return address in ac 
375:    LDA  7,-334(7) 	CALL showInt
376:    LDA  3,0(2) 	Save the result in ac 
*                       End call to showInt
377:     ST  3,-28(1) 	Store parameter 
*                       Jump to output
378:    LDA  1,-26(1) 	Load address of new frame 
379:    LDA  3,1(7) 	Return address in ac 
380:    LDA  7,-375(7) 	CALL output
381:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
382:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  showBool
383:     ST  1,-28(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  truth
384:     ST  1,-30(1) 	Store old fp in ghost frame 
*                       Jump to truth
385:    LDA  1,-30(1) 	Load address of new frame 
386:    LDA  3,1(7) 	Return address in ac 
387:    LDA  7,-273(7) 	CALL truth
388:    LDA  3,0(2) 	Save the result in ac 
*                       End call to truth
389:     ST  3,-30(1) 	Store parameter 
*                       Jump to showBool
390:    LDA  1,-28(1) 	Load address of new frame 
391:    LDA  3,1(7) 	Return address in ac 
392:    LDA  7,-295(7) 	CALL showBool
393:    LDA  3,0(2) 	Save the result in ac 
*                       End call to showBool
394:     ST  3,-28(1) 	Store parameter 
*                       Jump to output
395:    LDA  1,-26(1) 	Load address of new frame 
396:    LDA  3,1(7) 	Return address in ac 
397:    LDA  7,-392(7) 	CALL output
398:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  caller
399:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
400:     LD  3,-2(1) 	Load variable p
401:     ST  3,-28(1) 	Store parameter 
*                       Load param 2
402:    LDA  3,-5(1) 	Load address of base of array r
403:     ST  3,-29(1) 	Store parameter 
*                       Jump to caller
404:    LDA  1,-26(1) 	Load address of new frame 
405:    LDA  3,1(7) 	Return address in ac 
406:    LDA  7,-230(7) 	CALL caller
407:    LDA  3,0(2) 	Save the result in ac 
*                       End call to caller
* EXPRESSION STMT
*                       Begin call to  output
408:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  add
409:     ST  1,-28(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  add
410:     ST  1,-30(1) 	Store old fp in ghost frame 
*                       Load param 1
411:     LD  3,-2(1) 	Load variable p
412:     ST  3,-32(1) 	Store parameter 
*                       Load param 2
413:     LD  3,-3(1) 	Load variable q
414:     ST  3,-33(1) 	Store parameter 
*                       Jump to add
415:    LDA  1,-30(1) 	Load address of new frame 
416:    LDA  3,1(7) 	Return address in ac 
417:    LDA  7,-269(7) 	CALL add
418:    LDA  3,0(2) 	Save the result in ac 
*                       End call to add
419:     ST  3,-30(1) 	Store parameter 
*                       Load param 2
*                       Begin call to  mul
420:     ST  1,-31(1) 	Store old fp in ghost frame 
*                       Load param 1
421:     LD  3,-2(1) 	Load variable p
422:     ST  3,-33(1) 	Store parameter 
*                       Load param 2
423:     LD  3,-3(1) 	Load variable q
424:     ST  3,-34(1) 	Store parameter 
*                       Jump to mul
425:    LDA  1,-31(1) 	Load address of new frame 
426:    LDA  3,1(7) 	Return address in ac 
427:    LDA  7,-265(7) 	CALL mul
428:    LDA  3,0(2) 	Save the result in ac 
*                       End call to mul
429:     ST  3,-31(1) 	Store parameter 
*                       Jump to add
430:    LDA  1,-28(1) 	Load address of new frame 
431:    LDA  3,1(7) 	Return address in ac 
432:    LDA  7,-284(7) 	CALL add
433:    LDA  3,0(2) 	Save the result in ac 
*                       End call to add
434:     ST  3,-28(1) 	Store parameter 
*                       Jump to output
435:    LDA  1,-26(1) 	Load address of new frame 
436:    LDA  3,1(7) 	Return address in ac 
437:    LDA  7,-432(7) 	CALL output
438:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
439:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Jump to outnl
440:    LDA  1,-26(1) 	Load address of new frame 
441:    LDA  3,1(7) 	Return address in ac 
442:    LDA  7,-406(7) 	CALL outnl
443:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
444:    LDC  3,9(6) 	Load constant 
445:     ST  3,-26(1) 	Save index 
446:    LDC  3,555(6) 	Load constant 
447:     LD  4,-26(1) 	Restore index 
448:    LDA  5,-5(1) 	Load address of base of array r
449:    SUB  5,5,4 	Compute offset of value 
450:     ST  3,0(5) 	Store variable r
* EXPRESSION STMT
*                       Begin call to  swap
451:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
452:    LDA  3,-5(1) 	Load address of base of array r
453:     ST  3,-28(1) 	Store parameter 
*                       Load param 2
454:    LDC  3,7(6) 	Load constant 
455:     ST  3,-29(1) 	Store parameter 
*                       Load param 3
456:    LDC  3,9(6) 	Load constant 
457:     ST  3,-30(1) 	Store parameter 
*                       Jump to swap
458:    LDA  1,-26(1) 	Load address of new frame 
459:    LDA  3,1(7) 	Return address in ac 
460:    LDA  7,-192(7) 	CALL swap
461:    LDA  3,0(2) 	Save the result in ac 
*                       End call to swap
* EXPRESSION STMT
*                       Begin call to  output
462:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
463:    LDC  3,9(6) 	Load constant 
464:    LDA  4,-5(1) 	Load address of base of array r
465:    SUB  3,4,3 	Compute offset of value 
466:     LD  3,0(3) 	Load the value 
467:     ST  3,-28(1) 	Store parameter 
*                       Jump to output
468:    LDA  1,-26(1) 	Load address of new frame 
469:    LDA  3,1(7) 	Return address in ac 
470:    LDA  7,-465(7) 	CALL output
471:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
472:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Jump to outnl
473:    LDA  1,-26(1) 	Load address of new frame 
474:    LDA  3,1(7) 	Return address in ac 
475:    LDA  7,-439(7) 	CALL outnl
476:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
477:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
478:    LDC  3,2(6) 	Load constant 
479:     ST  3,-28(1) 	Save left side 
*                       Begin call to  add
480:     ST  1,-29(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  add
481:     ST  1,-31(1) 	Store old fp in ghost frame 
*                       Load param 1
482:    LDC  3,3(6) 	Load constant 
483:     ST  3,-33(1) 	Save left side 
484:    LDC  3,4(6) 	Load constant 
485:     LD  4,-33(1) 	Load left into ac1 
486:    MUL  3,4,3 	Op * 
487:     ST  3,-33(1) 	Store parameter 
*                       Load param 2
488:    LDC  3,5(6) 	Load constant 
489:     ST  3,-34(1) 	Save left side 
490:    LDC  3,6(6) 	Load constant 
491:     LD  4,-34(1) 	Load left into ac1 
492:    MUL  3,4,3 	Op * 
493:     ST  3,-34(1) 	Store parameter 
*                       Jump to add
494:    LDA  1,-31(1) 	Load address of new frame 
495:    LDA  3,1(7) 	Return address in ac 
496:    LDA  7,-348(7) 	CALL add
497:    LDA  3,0(2) 	Save the result in ac 
*                       End call to add
498:     ST  3,-31(1) 	Save left side 
499:    LDC  3,7(6) 	Load constant 
500:     LD  4,-31(1) 	Load left into ac1 
501:    MUL  3,4,3 	Op * 
502:     ST  3,-31(1) 	Store parameter 
*                       Load param 2
*                       Begin call to  add
503:     ST  1,-32(1) 	Store old fp in ghost frame 
*                       Load param 1
504:    LDC  3,9(6) 	Load constant 
505:     ST  3,-34(1) 	Save left side 
506:    LDC  3,10(6) 	Load constant 
507:     LD  4,-34(1) 	Load left into ac1 
508:    MUL  3,4,3 	Op * 
509:     ST  3,-34(1) 	Store parameter 
*                       Load param 2
510:    LDC  3,11(6) 	Load constant 
511:     ST  3,-35(1) 	Save left side 
512:    LDC  3,12(6) 	Load constant 
513:     LD  4,-35(1) 	Load left into ac1 
514:    MUL  3,4,3 	Op * 
515:     ST  3,-35(1) 	Store parameter 
*                       Jump to add
516:    LDA  1,-32(1) 	Load address of new frame 
517:    LDA  3,1(7) 	Return address in ac 
518:    LDA  7,-370(7) 	CALL add
519:    LDA  3,0(2) 	Save the result in ac 
*                       End call to add
520:     ST  3,-32(1) 	Save left side 
521:    LDC  3,13(6) 	Load constant 
522:     LD  4,-32(1) 	Load left into ac1 
523:    MUL  3,4,3 	Op * 
524:     ST  3,-32(1) 	Store parameter 
*                       Jump to add
525:    LDA  1,-29(1) 	Load address of new frame 
526:    LDA  3,1(7) 	Return address in ac 
527:    LDA  7,-379(7) 	CALL add
528:    LDA  3,0(2) 	Save the result in ac 
*                       End call to add
529:     LD  4,-28(1) 	Load left into ac1 
530:    MUL  3,4,3 	Op * 
531:     ST  3,-28(1) 	Store parameter 
*                       Jump to output
532:    LDA  1,-26(1) 	Load address of new frame 
533:    LDA  3,1(7) 	Return address in ac 
534:    LDA  7,-529(7) 	CALL output
535:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
536:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Jump to outnl
537:    LDA  1,-26(1) 	Load address of new frame 
538:    LDA  3,1(7) 	Return address in ac 
539:    LDA  7,-503(7) 	CALL outnl
540:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
541:    LDC  2,0(6) 	Set return value to 0 
542:     LD  3,-1(1) 	Load return address 
543:     LD  1,0(1) 	Adjust fp 
544:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,544(7) 	Jump to init [backpatch] 
* BEGIN Init
545:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
546:    LDA  1,-1(0) 	set first frame at end of globals 
547:     ST  1,0(1) 	store old fp (point to self) 
548:    LDA  3,1(7) 	Return address in ac 
549:    LDA  7,-254(7) 	Jump to main 
550:   HALT  0,0,0 	DONE! 
* END Init
