* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  queens.c-
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
* BEGIN function printboard
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:    LDC  3,0(6) 	Load constant 
 44:     ST  3,-3(1) 	Store variable i
* WHILE
 45:     LD  3,-3(1) 	Load variable i
 46:     ST  3,-4(1) 	Save left side 
 47:     LD  3,-78(0) 	Load variable n
 48:     LD  4,-4(1) 	Load left into ac1 
 49:    SUB  4,4,3 	Op < 
 50:    LDC  3,1(6) 	True case 
 51:    JLT  4,1(7) 	Jump if true 
 52:    LDC  3,0(6) 	False case 
 53:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
 55:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 56:     LD  3,-3(1) 	Load variable i
 57:     LD  4,-2(1) 	Load address of base of array col
 58:    SUB  3,4,3 	Compute offset of value 
 59:     LD  3,0(3) 	Load the value 
 60:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
 61:    LDA  1,-4(1) 	Load address of new frame 
 62:    LDA  3,1(7) 	Return address in ac 
 63:    LDA  7,-58(7) 	CALL output
 64:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
 65:     LD  3,-3(1) 	load lhs variable i
 66:    LDA  3,1(3) 	increment value of i
 67:     ST  3,-3(1) 	Store variable i
* END compound statement
 68:    LDA  7,-24(7) 	go to beginning of loop 
 54:    LDA  7,14(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
 69:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 70:    LDA  1,-4(1) 	Load address of new frame 
 71:    LDA  3,1(7) 	Return address in ac 
 72:    LDA  7,-36(7) 	CALL outnl
 73:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
 74:     LD  3,-79(0) 	load lhs variable count
 75:    LDA  3,1(3) 	increment value of count
 76:     ST  3,-79(0) 	Store variable count
* END compound statement
* Add standard closing in case there is no return statement
 77:    LDC  2,0(6) 	Set return value to 0 
 78:     LD  3,-1(1) 	Load return address 
 79:     LD  1,0(1) 	Adjust fp 
 80:    LDA  7,0(3) 	Return 
* END of function printboard
* BEGIN function try
 81:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
 82:     LD  3,-2(1) 	Load variable c
 83:     ST  3,-4(1) 	Save left side 
 84:     LD  3,-78(0) 	Load variable n
 85:     LD  4,-4(1) 	Load left into ac1 
 86:    SUB  4,4,3 	Op == 
 87:    LDC  3,1(6) 	True case 
 88:    JEQ  4,1(7) 	Jump if true 
 89:    LDC  3,0(6) 	False case 
 90:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  printboard
 92:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 93:    LDA  3,-14(0) 	Load address of base of array col
 94:     ST  3,-6(1) 	Store parameter 
*                       Jump to printboard
 95:    LDA  1,-4(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-56(7) 	CALL printboard
 98:    LDA  3,0(2) 	Save the result in ac 
*                       End call to printboard
* ELSE
 91:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
100:    LDC  3,0(6) 	Load constant 
101:     ST  3,-3(1) 	Store variable r
* WHILE
102:     LD  3,-3(1) 	Load variable r
103:     ST  3,-4(1) 	Save left side 
104:     LD  3,-78(0) 	Load variable n
105:     LD  4,-4(1) 	Load left into ac1 
106:    SUB  4,4,3 	Op < 
107:    LDC  3,1(6) 	True case 
108:    JLT  4,1(7) 	Jump if true 
109:    LDC  3,0(6) 	False case 
110:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
112:     LD  3,-3(1) 	Load variable r
113:    LDA  4,-1(0) 	Load address of base of array row
114:    SUB  3,4,3 	Compute offset of value 
115:     LD  3,0(3) 	Load the value 
116:     ST  3,-4(1) 	Save left side 
117:    LDC  3,0(6) 	Load constant 
118:     LD  4,-4(1) 	Load left into ac1 
119:    SUB  4,4,3 	Op == 
120:    LDC  3,1(6) 	True case 
121:    JEQ  4,1(7) 	Jump if true 
122:    LDC  3,0(6) 	False case 
123:     ST  3,-4(1) 	Save left side 
124:     LD  3,-3(1) 	Load variable r
125:     ST  3,-5(1) 	Save left side 
126:     LD  3,-2(1) 	Load variable c
127:     LD  4,-5(1) 	Load left into ac1 
128:    ADD  3,4,3 	Op + 
129:    LDA  4,-27(0) 	Load address of base of array diagone
130:    SUB  3,4,3 	Compute offset of value 
131:     LD  3,0(3) 	Load the value 
132:     ST  3,-5(1) 	Save left side 
133:    LDC  3,0(6) 	Load constant 
134:     LD  4,-5(1) 	Load left into ac1 
135:    SUB  4,4,3 	Op == 
136:    LDC  3,1(6) 	True case 
137:    JEQ  4,1(7) 	Jump if true 
138:    LDC  3,0(6) 	False case 
139:     LD  4,-4(1) 	Load left into ac1 
140:    JEQ  3,1(7) 	Op AND 
141:    LDA  3,0(4) 	 
142:     ST  3,-4(1) 	Save left side 
143:     LD  3,-3(1) 	Load variable r
144:     ST  3,-5(1) 	Save left side 
145:     LD  3,-78(0) 	Load variable n
146:     ST  3,-6(1) 	Save left side 
147:    LDC  3,1(6) 	Load constant 
148:     LD  4,-6(1) 	Load left into ac1 
149:    SUB  3,4,3 	Op - 
150:     LD  4,-5(1) 	Load left into ac1 
151:    ADD  3,4,3 	Op + 
152:     ST  3,-5(1) 	Save left side 
153:     LD  3,-2(1) 	Load variable c
154:     LD  4,-5(1) 	Load left into ac1 
155:    SUB  3,4,3 	Op - 
156:    LDA  4,-53(0) 	Load address of base of array diagtwo
157:    SUB  3,4,3 	Compute offset of value 
158:     LD  3,0(3) 	Load the value 
159:     ST  3,-5(1) 	Save left side 
160:    LDC  3,0(6) 	Load constant 
161:     LD  4,-5(1) 	Load left into ac1 
162:    SUB  4,4,3 	Op == 
163:    LDC  3,1(6) 	True case 
164:    JEQ  4,1(7) 	Jump if true 
165:    LDC  3,0(6) 	False case 
166:     LD  4,-4(1) 	Load left into ac1 
167:    JEQ  3,1(7) 	Op AND 
168:    LDA  3,0(4) 	 
169:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
171:     LD  3,-3(1) 	Load variable r
172:     ST  3,-4(1) 	Save index 
173:    LDC  3,1(6) 	Load constant 
174:     LD  4,-4(1) 	Restore index 
175:    LDA  5,-1(0) 	Load address of base of array row
176:    SUB  5,5,4 	Compute offset of value 
177:     ST  3,0(5) 	Store variable row
* EXPRESSION STMT
178:     LD  3,-2(1) 	Load variable c
179:     ST  3,-4(1) 	Save index 
180:     LD  3,-3(1) 	Load variable r
181:     LD  4,-4(1) 	Restore index 
182:    LDA  5,-14(0) 	Load address of base of array col
183:    SUB  5,5,4 	Compute offset of value 
184:     ST  3,0(5) 	Store variable col
* EXPRESSION STMT
185:     LD  3,-3(1) 	Load variable r
186:     ST  3,-4(1) 	Save left side 
187:     LD  3,-2(1) 	Load variable c
188:     LD  4,-4(1) 	Load left into ac1 
189:    ADD  3,4,3 	Op + 
190:     ST  3,-4(1) 	Save index 
191:    LDC  3,1(6) 	Load constant 
192:     LD  4,-4(1) 	Restore index 
193:    LDA  5,-27(0) 	Load address of base of array diagone
194:    SUB  5,5,4 	Compute offset of value 
195:     ST  3,0(5) 	Store variable diagone
* EXPRESSION STMT
196:     LD  3,-3(1) 	Load variable r
197:     ST  3,-4(1) 	Save left side 
198:     LD  3,-78(0) 	Load variable n
199:     ST  3,-5(1) 	Save left side 
200:    LDC  3,1(6) 	Load constant 
201:     LD  4,-5(1) 	Load left into ac1 
202:    SUB  3,4,3 	Op - 
203:     LD  4,-4(1) 	Load left into ac1 
204:    ADD  3,4,3 	Op + 
205:     ST  3,-4(1) 	Save left side 
206:     LD  3,-2(1) 	Load variable c
207:     LD  4,-4(1) 	Load left into ac1 
208:    SUB  3,4,3 	Op - 
209:     ST  3,-4(1) 	Save index 
210:    LDC  3,1(6) 	Load constant 
211:     LD  4,-4(1) 	Restore index 
212:    LDA  5,-53(0) 	Load address of base of array diagtwo
213:    SUB  5,5,4 	Compute offset of value 
214:     ST  3,0(5) 	Store variable diagtwo
* EXPRESSION STMT
*                       Begin call to  try
215:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
216:     LD  3,-2(1) 	Load variable c
217:     ST  3,-6(1) 	Save left side 
218:    LDC  3,1(6) 	Load constant 
219:     LD  4,-6(1) 	Load left into ac1 
220:    ADD  3,4,3 	Op + 
221:     ST  3,-6(1) 	Store parameter 
*                       Jump to try
222:    LDA  1,-4(1) 	Load address of new frame 
223:    LDA  3,1(7) 	Return address in ac 
224:    LDA  7,-144(7) 	CALL try
225:    LDA  3,0(2) 	Save the result in ac 
*                       End call to try
* EXPRESSION STMT
226:     LD  3,-3(1) 	Load variable r
227:     ST  3,-4(1) 	Save index 
228:    LDC  3,0(6) 	Load constant 
229:     LD  4,-4(1) 	Restore index 
230:    LDA  5,-1(0) 	Load address of base of array row
231:    SUB  5,5,4 	Compute offset of value 
232:     ST  3,0(5) 	Store variable row
* EXPRESSION STMT
233:     LD  3,-3(1) 	Load variable r
234:     ST  3,-4(1) 	Save left side 
235:     LD  3,-2(1) 	Load variable c
236:     LD  4,-4(1) 	Load left into ac1 
237:    ADD  3,4,3 	Op + 
238:     ST  3,-4(1) 	Save index 
239:    LDC  3,0(6) 	Load constant 
240:     LD  4,-4(1) 	Restore index 
241:    LDA  5,-27(0) 	Load address of base of array diagone
242:    SUB  5,5,4 	Compute offset of value 
243:     ST  3,0(5) 	Store variable diagone
* EXPRESSION STMT
244:     LD  3,-3(1) 	Load variable r
245:     ST  3,-4(1) 	Save left side 
246:     LD  3,-78(0) 	Load variable n
247:     ST  3,-5(1) 	Save left side 
248:    LDC  3,1(6) 	Load constant 
249:     LD  4,-5(1) 	Load left into ac1 
250:    SUB  3,4,3 	Op - 
251:     LD  4,-4(1) 	Load left into ac1 
252:    ADD  3,4,3 	Op + 
253:     ST  3,-4(1) 	Save left side 
254:     LD  3,-2(1) 	Load variable c
255:     LD  4,-4(1) 	Load left into ac1 
256:    SUB  3,4,3 	Op - 
257:     ST  3,-4(1) 	Save index 
258:    LDC  3,0(6) 	Load constant 
259:     LD  4,-4(1) 	Restore index 
260:    LDA  5,-53(0) 	Load address of base of array diagtwo
261:    SUB  5,5,4 	Compute offset of value 
262:     ST  3,0(5) 	Store variable diagtwo
* END compound statement
170:    LDA  7,92(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
263:     LD  3,-3(1) 	load lhs variable r
264:    LDA  3,1(3) 	increment value of r
265:     ST  3,-3(1) 	Store variable r
* END compound statement
266:    LDA  7,-165(7) 	go to beginning of loop 
111:    LDA  7,155(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
 99:    LDA  7,167(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
267:    LDC  2,0(6) 	Set return value to 0 
268:     LD  3,-1(1) 	Load return address 
269:     LD  1,0(1) 	Adjust fp 
270:    LDA  7,0(3) 	Return 
* END of function try
* BEGIN function solve
271:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
272:     LD  3,-2(1) 	Load variable num
273:     ST  3,-78(0) 	Store variable n
* EXPRESSION STMT
274:    LDC  3,0(6) 	Load constant 
275:     ST  3,-79(0) 	Store variable count
* EXPRESSION STMT
*                       Begin call to  try
276:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
277:    LDC  3,0(6) 	Load constant 
278:     ST  3,-5(1) 	Store parameter 
*                       Jump to try
279:    LDA  1,-3(1) 	Load address of new frame 
280:    LDA  3,1(7) 	Return address in ac 
281:    LDA  7,-201(7) 	CALL try
282:    LDA  3,0(2) 	Save the result in ac 
*                       End call to try
* RETURN
283:     LD  3,-79(0) 	Load variable count
284:    LDA  2,0(3) 	Copy result to rt register 
285:     LD  3,-1(1) 	Load return address 
286:     LD  1,0(1) 	Adjust fp 
287:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
288:    LDC  2,0(6) 	Set return value to 0 
289:     LD  3,-1(1) 	Load return address 
290:     LD  1,0(1) 	Adjust fp 
291:    LDA  7,0(3) 	Return 
* END of function solve
* BEGIN function main
292:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* WHILE
*                       Begin call to  input
293:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to input
294:    LDA  1,-3(1) 	Load address of new frame 
295:    LDA  3,1(7) 	Return address in ac 
296:    LDA  7,-296(7) 	CALL input
297:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
298:     ST  3,-2(1) 	Store variable num
299:     ST  3,-3(1) 	Save left side 
300:    LDC  3,0(6) 	Load constant 
301:     LD  4,-3(1) 	Load left into ac1 
302:    SUB  4,4,3 	Op > 
303:    LDC  3,1(6) 	True case 
304:    JGT  4,1(7) 	Jump if true 
305:    LDC  3,0(6) 	False case 
306:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
308:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  solve
309:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
310:     LD  3,-2(1) 	Load variable num
311:     ST  3,-7(1) 	Store parameter 
*                       Jump to solve
312:    LDA  1,-5(1) 	Load address of new frame 
313:    LDA  3,1(7) 	Return address in ac 
314:    LDA  7,-44(7) 	CALL solve
315:    LDA  3,0(2) 	Save the result in ac 
*                       End call to solve
316:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
317:    LDA  1,-3(1) 	Load address of new frame 
318:    LDA  3,1(7) 	Return address in ac 
319:    LDA  7,-314(7) 	CALL output
320:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
321:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Jump to outnl
322:    LDA  1,-3(1) 	Load address of new frame 
323:    LDA  3,1(7) 	Return address in ac 
324:    LDA  7,-288(7) 	CALL outnl
325:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
326:    LDA  7,-34(7) 	go to beginning of loop 
307:    LDA  7,19(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
327:    LDC  2,0(6) 	Set return value to 0 
328:     LD  3,-1(1) 	Load return address 
329:     LD  1,0(1) 	Adjust fp 
330:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,330(7) 	Jump to init [backpatch] 
* BEGIN Init
331:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
332:    LDC  3,12(6) 	load size of array row
333:     ST  3,0(0) 	save size of array row
334:    LDC  3,12(6) 	load size of array col
335:     ST  3,-13(0) 	save size of array col
336:    LDC  3,25(6) 	load size of array diagone
337:     ST  3,-26(0) 	save size of array diagone
338:    LDC  3,25(6) 	load size of array diagtwo
339:     ST  3,-52(0) 	save size of array diagtwo
* END init of globals
340:    LDA  1,-80(0) 	set first frame at end of globals 
341:     ST  1,0(1) 	store old fp (point to self) 
342:    LDA  3,1(7) 	Return address in ac 
343:    LDA  7,-52(7) 	Jump to main 
344:   HALT  0,0,0 	DONE! 
* END Init
