* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  ops.c-
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
 43:    LDC  3,0(6) 	Load constant 
 44:     ST  3,-6(1) 	Save index 
 45:    LDC  3,50(6) 	Load constant 
 46:     LD  4,-6(1) 	Restore index 
 47:    LDA  5,-1(0) 	Load address of base of array y
 48:    SUB  5,5,4 	Compute offset of value 
 49:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
 50:    LDC  3,5(6) 	Load constant 
 51:     ST  3,-6(1) 	Save index 
 52:    LDC  3,1(6) 	Load constant 
 53:     LD  4,-6(1) 	Restore index 
 54:    LDA  5,-1(0) 	Load address of base of array y
 55:    SUB  5,5,4 	Compute offset of value 
 56:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
 57:    LDC  3,8(6) 	Load constant 
 58:     ST  3,-6(1) 	Save index 
 59:    LDC  3,2(6) 	Load constant 
 60:     LD  4,-6(1) 	Restore index 
 61:    LDA  5,-1(0) 	Load address of base of array y
 62:    SUB  5,5,4 	Compute offset of value 
 63:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
 64:    LDC  3,50(6) 	Load constant 
 65:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
 66:    LDC  3,1(6) 	Load constant 
 67:     ST  3,-3(1) 	Store variable b
* EXPRESSION STMT
 68:    LDC  3,8(6) 	Load constant 
 69:     ST  3,-4(1) 	Store variable c
* EXPRESSION STMT
 70:    LDC  3,0(6) 	Load constant 
 71:     ST  3,-11(0) 	Store variable x
* EXPRESSION STMT
 72:    LDC  3,1(6) 	Load constant 
 73:     ST  3,-5(1) 	Store variable z
* EXPRESSION STMT
*                       Begin call to  outputb
 74:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 75:     LD  3,-2(1) 	Load variable a
 76:     ST  3,-8(1) 	Save left side 
 77:    LDC  3,1(6) 	Load constant 
 78:     LD  4,-8(1) 	Load left into ac1 
 79:    SUB  4,4,3 	Op <= 
 80:    LDC  3,1(6) 	True case 
 81:    JLE  4,1(7) 	Jump if true 
 82:    LDC  3,0(6) 	False case 
 83:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
 84:    LDA  1,-6(1) 	Load address of new frame 
 85:    LDA  3,1(7) 	Return address in ac 
 86:    LDA  7,-69(7) 	CALL outputb
 87:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
 88:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 89:     LD  3,-3(1) 	Load variable b
 90:     ST  3,-8(1) 	Save left side 
 91:    LDC  3,50(6) 	Load constant 
 92:     LD  4,-8(1) 	Load left into ac1 
 93:    SUB  4,4,3 	Op <= 
 94:    LDC  3,1(6) 	True case 
 95:    JLE  4,1(7) 	Jump if true 
 96:    LDC  3,0(6) 	False case 
 97:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
 98:    LDA  1,-6(1) 	Load address of new frame 
 99:    LDA  3,1(7) 	Return address in ac 
100:    LDA  7,-83(7) 	CALL outputb
101:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
102:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
103:    LDC  3,50(6) 	Load constant 
104:     ST  3,-8(1) 	Save left side 
105:    LDC  3,50(6) 	Load constant 
106:     LD  4,-8(1) 	Load left into ac1 
107:    SUB  4,4,3 	Op <= 
108:    LDC  3,1(6) 	True case 
109:    JLE  4,1(7) 	Jump if true 
110:    LDC  3,0(6) 	False case 
111:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
112:    LDA  1,-6(1) 	Load address of new frame 
113:    LDA  3,1(7) 	Return address in ac 
114:    LDA  7,-97(7) 	CALL outputb
115:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
116:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
117:    LDA  1,-6(1) 	Load address of new frame 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-83(7) 	CALL outnl
120:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
121:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
122:    LDC  3,50(6) 	Load constant 
123:     ST  3,-8(1) 	Save left side 
124:    LDC  3,1(6) 	Load constant 
125:     LD  4,-8(1) 	Load left into ac1 
126:    SUB  4,4,3 	Op < 
127:    LDC  3,1(6) 	True case 
128:    JLT  4,1(7) 	Jump if true 
129:    LDC  3,0(6) 	False case 
130:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
131:    LDA  1,-6(1) 	Load address of new frame 
132:    LDA  3,1(7) 	Return address in ac 
133:    LDA  7,-116(7) 	CALL outputb
134:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
135:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
136:     LD  3,-3(1) 	Load variable b
137:     ST  3,-8(1) 	Save left side 
138:     LD  3,-2(1) 	Load variable a
139:     LD  4,-8(1) 	Load left into ac1 
140:    SUB  4,4,3 	Op < 
141:    LDC  3,1(6) 	True case 
142:    JLT  4,1(7) 	Jump if true 
143:    LDC  3,0(6) 	False case 
144:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
145:    LDA  1,-6(1) 	Load address of new frame 
146:    LDA  3,1(7) 	Return address in ac 
147:    LDA  7,-130(7) 	CALL outputb
148:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
149:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
150:     LD  3,-2(1) 	Load variable a
151:     ST  3,-8(1) 	Save left side 
152:     LD  3,-2(1) 	Load variable a
153:     LD  4,-8(1) 	Load left into ac1 
154:    SUB  4,4,3 	Op < 
155:    LDC  3,1(6) 	True case 
156:    JLT  4,1(7) 	Jump if true 
157:    LDC  3,0(6) 	False case 
158:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
159:    LDA  1,-6(1) 	Load address of new frame 
160:    LDA  3,1(7) 	Return address in ac 
161:    LDA  7,-144(7) 	CALL outputb
162:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
163:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
164:    LDA  1,-6(1) 	Load address of new frame 
165:    LDA  3,1(7) 	Return address in ac 
166:    LDA  7,-130(7) 	CALL outnl
167:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
168:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
169:    LDC  3,50(6) 	Load constant 
170:     ST  3,-8(1) 	Save left side 
171:    LDC  3,1(6) 	Load constant 
172:     LD  4,-8(1) 	Load left into ac1 
173:    SUB  4,4,3 	Op > 
174:    LDC  3,1(6) 	True case 
175:    JGT  4,1(7) 	Jump if true 
176:    LDC  3,0(6) 	False case 
177:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
178:    LDA  1,-6(1) 	Load address of new frame 
179:    LDA  3,1(7) 	Return address in ac 
180:    LDA  7,-163(7) 	CALL outputb
181:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
182:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
183:    LDC  3,1(6) 	Load constant 
184:     ST  3,-8(1) 	Save left side 
185:    LDC  3,50(6) 	Load constant 
186:     LD  4,-8(1) 	Load left into ac1 
187:    SUB  4,4,3 	Op > 
188:    LDC  3,1(6) 	True case 
189:    JGT  4,1(7) 	Jump if true 
190:    LDC  3,0(6) 	False case 
191:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
192:    LDA  1,-6(1) 	Load address of new frame 
193:    LDA  3,1(7) 	Return address in ac 
194:    LDA  7,-177(7) 	CALL outputb
195:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
196:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
197:    LDC  3,50(6) 	Load constant 
198:     ST  3,-8(1) 	Save left side 
199:    LDC  3,50(6) 	Load constant 
200:     LD  4,-8(1) 	Load left into ac1 
201:    SUB  4,4,3 	Op > 
202:    LDC  3,1(6) 	True case 
203:    JGT  4,1(7) 	Jump if true 
204:    LDC  3,0(6) 	False case 
205:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
206:    LDA  1,-6(1) 	Load address of new frame 
207:    LDA  3,1(7) 	Return address in ac 
208:    LDA  7,-191(7) 	CALL outputb
209:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
210:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
211:    LDA  1,-6(1) 	Load address of new frame 
212:    LDA  3,1(7) 	Return address in ac 
213:    LDA  7,-177(7) 	CALL outnl
214:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
215:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
216:    LDC  3,50(6) 	Load constant 
217:     ST  3,-8(1) 	Save left side 
218:    LDC  3,1(6) 	Load constant 
219:     LD  4,-8(1) 	Load left into ac1 
220:    SUB  4,4,3 	Op >= 
221:    LDC  3,1(6) 	True case 
222:    JGE  4,1(7) 	Jump if true 
223:    LDC  3,0(6) 	False case 
224:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
225:    LDA  1,-6(1) 	Load address of new frame 
226:    LDA  3,1(7) 	Return address in ac 
227:    LDA  7,-210(7) 	CALL outputb
228:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
229:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
230:    LDC  3,1(6) 	Load constant 
231:     ST  3,-8(1) 	Save left side 
232:    LDC  3,50(6) 	Load constant 
233:     LD  4,-8(1) 	Load left into ac1 
234:    SUB  4,4,3 	Op >= 
235:    LDC  3,1(6) 	True case 
236:    JGE  4,1(7) 	Jump if true 
237:    LDC  3,0(6) 	False case 
238:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
239:    LDA  1,-6(1) 	Load address of new frame 
240:    LDA  3,1(7) 	Return address in ac 
241:    LDA  7,-224(7) 	CALL outputb
242:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
243:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
244:    LDC  3,50(6) 	Load constant 
245:     ST  3,-8(1) 	Save left side 
246:    LDC  3,50(6) 	Load constant 
247:     LD  4,-8(1) 	Load left into ac1 
248:    SUB  4,4,3 	Op >= 
249:    LDC  3,1(6) 	True case 
250:    JGE  4,1(7) 	Jump if true 
251:    LDC  3,0(6) 	False case 
252:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
253:    LDA  1,-6(1) 	Load address of new frame 
254:    LDA  3,1(7) 	Return address in ac 
255:    LDA  7,-238(7) 	CALL outputb
256:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
257:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
258:    LDA  1,-6(1) 	Load address of new frame 
259:    LDA  3,1(7) 	Return address in ac 
260:    LDA  7,-224(7) 	CALL outnl
261:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
262:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
263:    LDC  3,0(6) 	Load constant 
264:    LDA  4,-1(0) 	Load address of base of array y
265:    SUB  3,4,3 	Compute offset of value 
266:     LD  3,0(3) 	Load the value 
267:     ST  3,-8(1) 	Save left side 
268:     LD  3,-3(1) 	Load variable b
269:     LD  4,-8(1) 	Load left into ac1 
270:    SUB  4,4,3 	Op == 
271:    LDC  3,1(6) 	True case 
272:    JEQ  4,1(7) 	Jump if true 
273:    LDC  3,0(6) 	False case 
274:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
275:    LDA  1,-6(1) 	Load address of new frame 
276:    LDA  3,1(7) 	Return address in ac 
277:    LDA  7,-260(7) 	CALL outputb
278:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
279:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
280:     LD  3,-2(1) 	Load variable a
281:     ST  3,-8(1) 	Save left side 
282:     LD  3,-3(1) 	Load variable b
283:     LD  4,-8(1) 	Load left into ac1 
284:    SUB  4,4,3 	Op == 
285:    LDC  3,1(6) 	True case 
286:    JEQ  4,1(7) 	Jump if true 
287:    LDC  3,0(6) 	False case 
288:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
289:    LDA  1,-6(1) 	Load address of new frame 
290:    LDA  3,1(7) 	Return address in ac 
291:    LDA  7,-274(7) 	CALL outputb
292:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
293:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
294:     LD  3,-3(1) 	Load variable b
295:     ST  3,-8(1) 	Save left side 
296:     LD  3,-3(1) 	Load variable b
297:     LD  4,-8(1) 	Load left into ac1 
298:    SUB  4,4,3 	Op == 
299:    LDC  3,1(6) 	True case 
300:    JEQ  4,1(7) 	Jump if true 
301:    LDC  3,0(6) 	False case 
302:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
303:    LDA  1,-6(1) 	Load address of new frame 
304:    LDA  3,1(7) 	Return address in ac 
305:    LDA  7,-288(7) 	CALL outputb
306:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
307:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
308:    LDA  1,-6(1) 	Load address of new frame 
309:    LDA  3,1(7) 	Return address in ac 
310:    LDA  7,-274(7) 	CALL outnl
311:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
312:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
313:    LDC  3,0(6) 	Load constant 
314:    LDA  4,-1(0) 	Load address of base of array y
315:    SUB  3,4,3 	Compute offset of value 
316:     LD  3,0(3) 	Load the value 
317:     ST  3,-8(1) 	Save left side 
318:     LD  3,-2(1) 	Load variable a
319:     LD  4,-8(1) 	Load left into ac1 
320:    SUB  3,4,3 	Op != 
321:    JEQ  3,1(7) 	Jump if true 
322:    LDC  3,1(6) 	True case 
323:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
324:    LDA  1,-6(1) 	Load address of new frame 
325:    LDA  3,1(7) 	Return address in ac 
326:    LDA  7,-309(7) 	CALL outputb
327:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
328:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
329:    LDC  3,0(6) 	Load constant 
330:    LDA  4,-1(0) 	Load address of base of array y
331:    SUB  3,4,3 	Compute offset of value 
332:     LD  3,0(3) 	Load the value 
333:     ST  3,-8(1) 	Save left side 
334:     LD  3,-3(1) 	Load variable b
335:     LD  4,-8(1) 	Load left into ac1 
336:    SUB  3,4,3 	Op != 
337:    JEQ  3,1(7) 	Jump if true 
338:    LDC  3,1(6) 	True case 
339:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
340:    LDA  1,-6(1) 	Load address of new frame 
341:    LDA  3,1(7) 	Return address in ac 
342:    LDA  7,-325(7) 	CALL outputb
343:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
344:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
345:     LD  3,-2(1) 	Load variable a
346:     ST  3,-8(1) 	Save left side 
347:     LD  3,-3(1) 	Load variable b
348:     LD  4,-8(1) 	Load left into ac1 
349:    SUB  3,4,3 	Op != 
350:    JEQ  3,1(7) 	Jump if true 
351:    LDC  3,1(6) 	True case 
352:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
353:    LDA  1,-6(1) 	Load address of new frame 
354:    LDA  3,1(7) 	Return address in ac 
355:    LDA  7,-338(7) 	CALL outputb
356:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
357:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
358:     LD  3,-3(1) 	Load variable b
359:     ST  3,-8(1) 	Save left side 
360:     LD  3,-3(1) 	Load variable b
361:     LD  4,-8(1) 	Load left into ac1 
362:    SUB  3,4,3 	Op != 
363:    JEQ  3,1(7) 	Jump if true 
364:    LDC  3,1(6) 	True case 
365:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
366:    LDA  1,-6(1) 	Load address of new frame 
367:    LDA  3,1(7) 	Return address in ac 
368:    LDA  7,-351(7) 	CALL outputb
369:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
370:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
371:    LDA  1,-6(1) 	Load address of new frame 
372:    LDA  3,1(7) 	Return address in ac 
373:    LDA  7,-337(7) 	CALL outnl
374:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
375:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
376:    LDC  3,1(6) 	Load constant 
377:     ST  3,-8(1) 	Save left side 
378:    LDC  3,1(6) 	Load constant 
379:     LD  4,-8(1) 	Load left into ac1 
380:    JEQ  3,1(7) 	Op AND 
381:    LDA  3,0(4) 	 
382:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
383:    LDA  1,-6(1) 	Load address of new frame 
384:    LDA  3,1(7) 	Return address in ac 
385:    LDA  7,-368(7) 	CALL outputb
386:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
387:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
388:    LDC  3,1(6) 	Load constant 
389:     ST  3,-8(1) 	Save left side 
390:    LDC  3,0(6) 	Load constant 
391:     LD  4,-8(1) 	Load left into ac1 
392:    JEQ  3,1(7) 	Op AND 
393:    LDA  3,0(4) 	 
394:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
395:    LDA  1,-6(1) 	Load address of new frame 
396:    LDA  3,1(7) 	Return address in ac 
397:    LDA  7,-380(7) 	CALL outputb
398:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
399:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
400:    LDC  3,0(6) 	Load constant 
401:     ST  3,-8(1) 	Save left side 
402:    LDC  3,1(6) 	Load constant 
403:     LD  4,-8(1) 	Load left into ac1 
404:    JEQ  3,1(7) 	Op AND 
405:    LDA  3,0(4) 	 
406:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
407:    LDA  1,-6(1) 	Load address of new frame 
408:    LDA  3,1(7) 	Return address in ac 
409:    LDA  7,-392(7) 	CALL outputb
410:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
411:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
412:    LDC  3,0(6) 	Load constant 
413:     ST  3,-8(1) 	Save left side 
414:    LDC  3,0(6) 	Load constant 
415:     LD  4,-8(1) 	Load left into ac1 
416:    JEQ  3,1(7) 	Op AND 
417:    LDA  3,0(4) 	 
418:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
419:    LDA  1,-6(1) 	Load address of new frame 
420:    LDA  3,1(7) 	Return address in ac 
421:    LDA  7,-404(7) 	CALL outputb
422:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
423:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
424:    LDA  1,-6(1) 	Load address of new frame 
425:    LDA  3,1(7) 	Return address in ac 
426:    LDA  7,-390(7) 	CALL outnl
427:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
428:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
429:    LDC  3,1(6) 	Load constant 
430:     ST  3,-8(1) 	Save left side 
431:    LDC  3,1(6) 	Load constant 
432:     LD  4,-8(1) 	Load left into ac1 
433:    JGT  3,1(7) 	Op OR 
434:    LDA  3,0(4) 	 
435:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
436:    LDA  1,-6(1) 	Load address of new frame 
437:    LDA  3,1(7) 	Return address in ac 
438:    LDA  7,-421(7) 	CALL outputb
439:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
440:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
441:     LD  3,-5(1) 	Load variable z
442:     ST  3,-8(1) 	Save left side 
443:    LDC  3,0(6) 	Load constant 
444:     LD  4,-8(1) 	Load left into ac1 
445:    JGT  3,1(7) 	Op OR 
446:    LDA  3,0(4) 	 
447:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
448:    LDA  1,-6(1) 	Load address of new frame 
449:    LDA  3,1(7) 	Return address in ac 
450:    LDA  7,-433(7) 	CALL outputb
451:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
452:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
453:    LDC  3,0(6) 	Load constant 
454:     ST  3,-8(1) 	Save left side 
455:    LDC  3,1(6) 	Load constant 
456:     LD  4,-8(1) 	Load left into ac1 
457:    JGT  3,1(7) 	Op OR 
458:    LDA  3,0(4) 	 
459:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
460:    LDA  1,-6(1) 	Load address of new frame 
461:    LDA  3,1(7) 	Return address in ac 
462:    LDA  7,-445(7) 	CALL outputb
463:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
464:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
465:    LDC  3,0(6) 	Load constant 
466:     ST  3,-8(1) 	Save left side 
467:    LDC  3,0(6) 	Load constant 
468:     LD  4,-8(1) 	Load left into ac1 
469:    JGT  3,1(7) 	Op OR 
470:    LDA  3,0(4) 	 
471:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
472:    LDA  1,-6(1) 	Load address of new frame 
473:    LDA  3,1(7) 	Return address in ac 
474:    LDA  7,-457(7) 	CALL outputb
475:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
476:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
477:    LDA  1,-6(1) 	Load address of new frame 
478:    LDA  3,1(7) 	Return address in ac 
479:    LDA  7,-443(7) 	CALL outnl
480:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
481:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
482:    LDC  3,1(6) 	Load constant 
483:    LDC  4,1(6) 	Load 1 
484:    SUB  3,4,3 	Op NOT 
485:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
486:    LDA  1,-6(1) 	Load address of new frame 
487:    LDA  3,1(7) 	Return address in ac 
488:    LDA  7,-471(7) 	CALL outputb
489:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
490:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
491:     LD  3,-11(0) 	Load variable x
492:    LDC  4,1(6) 	Load 1 
493:    SUB  3,4,3 	Op NOT 
494:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
495:    LDA  1,-6(1) 	Load address of new frame 
496:    LDA  3,1(7) 	Return address in ac 
497:    LDA  7,-480(7) 	CALL outputb
498:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
499:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
500:    LDA  1,-6(1) 	Load address of new frame 
501:    LDA  3,1(7) 	Return address in ac 
502:    LDA  7,-466(7) 	CALL outnl
503:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
504:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
505:    LDC  3,5(6) 	Load constant 
506:     ST  3,-8(1) 	Save left side 
507:    LDC  3,50(6) 	Load constant 
508:     LD  4,-8(1) 	Load left into ac1 
509:    ADD  3,4,3 	Op + 
510:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
511:    LDA  1,-6(1) 	Load address of new frame 
512:    LDA  3,1(7) 	Return address in ac 
513:    LDA  7,-508(7) 	CALL output
514:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
515:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
516:     LD  3,-4(1) 	Load variable c
517:    LDA  4,-1(0) 	Load address of base of array y
518:    SUB  3,4,3 	Compute offset of value 
519:     LD  3,0(3) 	Load the value 
520:     ST  3,-8(1) 	Save left side 
521:    LDC  3,50(6) 	Load constant 
522:     LD  4,-8(1) 	Load left into ac1 
523:    ADD  3,4,3 	Op + 
524:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
525:    LDA  1,-6(1) 	Load address of new frame 
526:    LDA  3,1(7) 	Return address in ac 
527:    LDA  7,-522(7) 	CALL output
528:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
529:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
530:    LDA  1,-6(1) 	Load address of new frame 
531:    LDA  3,1(7) 	Return address in ac 
532:    LDA  7,-496(7) 	CALL outnl
533:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
534:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
535:    LDC  3,5(6) 	Load constant 
536:     ST  3,-8(1) 	Save left side 
537:    LDC  3,50(6) 	Load constant 
538:     LD  4,-8(1) 	Load left into ac1 
539:    SUB  3,4,3 	Op - 
540:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
541:    LDA  1,-6(1) 	Load address of new frame 
542:    LDA  3,1(7) 	Return address in ac 
543:    LDA  7,-538(7) 	CALL output
544:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
545:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
546:    LDC  3,30(6) 	Load constant 
547:     ST  3,-8(1) 	Save left side 
548:    LDC  3,5(6) 	Load constant 
549:     LD  4,-8(1) 	Load left into ac1 
550:    SUB  3,4,3 	Op - 
551:     ST  3,-8(1) 	Save left side 
552:    LDC  3,50(6) 	Load constant 
553:     LD  4,-8(1) 	Load left into ac1 
554:    SUB  3,4,3 	Op - 
555:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
556:    LDA  1,-6(1) 	Load address of new frame 
557:    LDA  3,1(7) 	Return address in ac 
558:    LDA  7,-553(7) 	CALL output
559:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
560:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
561:    LDA  1,-6(1) 	Load address of new frame 
562:    LDA  3,1(7) 	Return address in ac 
563:    LDA  7,-527(7) 	CALL outnl
564:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
565:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
566:     LD  3,-2(1) 	Load variable a
567:    LDC  4,0(6) 	Load 0 
568:    SUB  3,4,3 	Op unary - 
569:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
570:    LDA  1,-6(1) 	Load address of new frame 
571:    LDA  3,1(7) 	Return address in ac 
572:    LDA  7,-567(7) 	CALL output
573:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
574:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
575:    LDC  3,0(6) 	Load constant 
576:    LDC  4,0(6) 	Load 0 
577:    SUB  3,4,3 	Op unary - 
578:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
579:    LDA  1,-6(1) 	Load address of new frame 
580:    LDA  3,1(7) 	Return address in ac 
581:    LDA  7,-576(7) 	CALL output
582:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
583:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
584:    LDC  3,1(6) 	Load constant 
585:    LDC  4,0(6) 	Load 0 
586:    SUB  3,4,3 	Op unary - 
587:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
588:    LDA  1,-6(1) 	Load address of new frame 
589:    LDA  3,1(7) 	Return address in ac 
590:    LDA  7,-585(7) 	CALL output
591:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
592:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
593:    LDA  1,-6(1) 	Load address of new frame 
594:    LDA  3,1(7) 	Return address in ac 
595:    LDA  7,-559(7) 	CALL outnl
596:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
597:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
598:    LDC  3,2(6) 	Load constant 
599:     ST  3,-8(1) 	Save left side 
600:    LDC  3,3(6) 	Load constant 
601:     LD  4,-8(1) 	Load left into ac1 
602:    MUL  3,4,3 	Op * 
603:     ST  3,-8(1) 	Save left side 
604:    LDC  3,5(6) 	Load constant 
605:     LD  4,-8(1) 	Load left into ac1 
606:    MUL  3,4,3 	Op * 
607:     ST  3,-8(1) 	Save left side 
608:    LDC  3,7(6) 	Load constant 
609:     LD  4,-8(1) 	Load left into ac1 
610:    MUL  3,4,3 	Op * 
611:     ST  3,-8(1) 	Save left side 
612:    LDC  3,11(6) 	Load constant 
613:     LD  4,-8(1) 	Load left into ac1 
614:    MUL  3,4,3 	Op * 
615:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
616:    LDA  1,-6(1) 	Load address of new frame 
617:    LDA  3,1(7) 	Return address in ac 
618:    LDA  7,-613(7) 	CALL output
619:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
620:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
621:    LDC  3,50(6) 	Load constant 
622:     ST  3,-8(1) 	Save left side 
623:    LDC  3,8(6) 	Load constant 
624:    LDA  4,-1(0) 	Load address of base of array y
625:    SUB  3,4,3 	Compute offset of value 
626:     LD  3,0(3) 	Load the value 
627:     LD  4,-8(1) 	Load left into ac1 
628:    MUL  3,4,3 	Op * 
629:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
630:    LDA  1,-6(1) 	Load address of new frame 
631:    LDA  3,1(7) 	Return address in ac 
632:    LDA  7,-627(7) 	CALL output
633:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
634:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
635:    LDC  3,8(6) 	Load constant 
636:    LDA  4,-1(0) 	Load address of base of array y
637:    SUB  3,4,3 	Compute offset of value 
638:     LD  3,0(3) 	Load the value 
639:     ST  3,-8(1) 	Save left side 
640:    LDC  3,50(6) 	Load constant 
641:     LD  4,-8(1) 	Load left into ac1 
642:    MUL  3,4,3 	Op * 
643:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
644:    LDA  1,-6(1) 	Load address of new frame 
645:    LDA  3,1(7) 	Return address in ac 
646:    LDA  7,-641(7) 	CALL output
647:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
648:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
649:    LDA  1,-6(1) 	Load address of new frame 
650:    LDA  3,1(7) 	Return address in ac 
651:    LDA  7,-615(7) 	CALL outnl
652:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
653:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
654:    LDC  3,50(6) 	Load constant 
655:     ST  3,-8(1) 	Save left side 
656:    LDC  3,8(6) 	Load constant 
657:    LDA  4,-1(0) 	Load address of base of array y
658:    SUB  3,4,3 	Compute offset of value 
659:     LD  3,0(3) 	Load the value 
660:     LD  4,-8(1) 	Load left into ac1 
661:    DIV  3,4,3 	Op / 
662:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
663:    LDA  1,-6(1) 	Load address of new frame 
664:    LDA  3,1(7) 	Return address in ac 
665:    LDA  7,-660(7) 	CALL output
666:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
667:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
668:    LDC  3,8(6) 	Load constant 
669:    LDA  4,-1(0) 	Load address of base of array y
670:    SUB  3,4,3 	Compute offset of value 
671:     LD  3,0(3) 	Load the value 
672:     ST  3,-8(1) 	Save left side 
673:    LDC  3,50(6) 	Load constant 
674:     LD  4,-8(1) 	Load left into ac1 
675:    DIV  3,4,3 	Op / 
676:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
677:    LDA  1,-6(1) 	Load address of new frame 
678:    LDA  3,1(7) 	Return address in ac 
679:    LDA  7,-674(7) 	CALL output
680:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
681:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
682:    LDC  3,8(6) 	Load constant 
683:    LDA  4,-1(0) 	Load address of base of array y
684:    SUB  3,4,3 	Compute offset of value 
685:     LD  3,0(3) 	Load the value 
686:     ST  3,-8(1) 	Save left side 
687:     LD  3,-3(1) 	Load variable b
688:     LD  4,-8(1) 	Load left into ac1 
689:    DIV  3,4,3 	Op / 
690:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
691:    LDA  1,-6(1) 	Load address of new frame 
692:    LDA  3,1(7) 	Return address in ac 
693:    LDA  7,-688(7) 	CALL output
694:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
695:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
696:    LDC  3,210(6) 	Load constant 
697:     ST  3,-8(1) 	Save left side 
698:    LDC  3,7(6) 	Load constant 
699:     LD  4,-8(1) 	Load left into ac1 
700:    DIV  3,4,3 	Op / 
701:     ST  3,-8(1) 	Save left side 
702:    LDC  3,3(6) 	Load constant 
703:     LD  4,-8(1) 	Load left into ac1 
704:    DIV  3,4,3 	Op / 
705:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
706:    LDA  1,-6(1) 	Load address of new frame 
707:    LDA  3,1(7) 	Return address in ac 
708:    LDA  7,-703(7) 	CALL output
709:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
710:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
711:    LDA  1,-6(1) 	Load address of new frame 
712:    LDA  3,1(7) 	Return address in ac 
713:    LDA  7,-677(7) 	CALL outnl
714:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
715:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
716:    LDC  3,211(6) 	Load constant 
717:     ST  3,-8(1) 	Save left side 
718:    LDC  3,7(6) 	Load constant 
719:     LD  4,-8(1) 	Load left into ac1 
720:    DIV  5,4,3 	Op % 
721:    MUL  5,5,3 	 
722:    SUB  3,4,5 	 
723:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
724:    LDA  1,-6(1) 	Load address of new frame 
725:    LDA  3,1(7) 	Return address in ac 
726:    LDA  7,-721(7) 	CALL output
727:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
728:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
729:    LDC  3,211(6) 	Load constant 
730:     ST  3,-8(1) 	Save left side 
731:    LDC  3,6(6) 	Load constant 
732:     LD  4,-8(1) 	Load left into ac1 
733:    DIV  5,4,3 	Op % 
734:    MUL  5,5,3 	 
735:    SUB  3,4,5 	 
736:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
737:    LDA  1,-6(1) 	Load address of new frame 
738:    LDA  3,1(7) 	Return address in ac 
739:    LDA  7,-734(7) 	CALL output
740:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
741:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
742:    LDC  3,211(6) 	Load constant 
743:     ST  3,-8(1) 	Save left side 
744:    LDC  3,5(6) 	Load constant 
745:     LD  4,-8(1) 	Load left into ac1 
746:    DIV  5,4,3 	Op % 
747:    MUL  5,5,3 	 
748:    SUB  3,4,5 	 
749:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
750:    LDA  1,-6(1) 	Load address of new frame 
751:    LDA  3,1(7) 	Return address in ac 
752:    LDA  7,-747(7) 	CALL output
753:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
754:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
755:    LDC  3,211(6) 	Load constant 
756:     ST  3,-8(1) 	Save left side 
757:    LDC  3,4(6) 	Load constant 
758:     LD  4,-8(1) 	Load left into ac1 
759:    DIV  5,4,3 	Op % 
760:    MUL  5,5,3 	 
761:    SUB  3,4,5 	 
762:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
763:    LDA  1,-6(1) 	Load address of new frame 
764:    LDA  3,1(7) 	Return address in ac 
765:    LDA  7,-760(7) 	CALL output
766:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
767:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
768:    LDC  3,211(6) 	Load constant 
769:     ST  3,-8(1) 	Save left side 
770:    LDC  3,100(6) 	Load constant 
771:     LD  4,-8(1) 	Load left into ac1 
772:    DIV  5,4,3 	Op % 
773:    MUL  5,5,3 	 
774:    SUB  3,4,5 	 
775:     ST  3,-8(1) 	Save left side 
776:    LDC  3,3(6) 	Load constant 
777:     LD  4,-8(1) 	Load left into ac1 
778:    DIV  5,4,3 	Op % 
779:    MUL  5,5,3 	 
780:    SUB  3,4,5 	 
781:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
782:    LDA  1,-6(1) 	Load address of new frame 
783:    LDA  3,1(7) 	Return address in ac 
784:    LDA  7,-779(7) 	CALL output
785:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
786:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
787:    LDA  1,-6(1) 	Load address of new frame 
788:    LDA  3,1(7) 	Return address in ac 
789:    LDA  7,-753(7) 	CALL outnl
790:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
791:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
792:    LDC  3,43(6) 	Load constant 
793:     ST  3,-4(1) 	Store variable c
794:     ST  3,-3(1) 	Store variable b
795:     ST  3,-2(1) 	Store variable a
796:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
797:    LDA  1,-6(1) 	Load address of new frame 
798:    LDA  3,1(7) 	Return address in ac 
799:    LDA  7,-794(7) 	CALL output
800:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
801:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
802:     LD  3,-2(1) 	Load variable a
803:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
804:    LDA  1,-6(1) 	Load address of new frame 
805:    LDA  3,1(7) 	Return address in ac 
806:    LDA  7,-801(7) 	CALL output
807:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
808:    LDC  3,3(6) 	Load constant 
809:     ST  3,-3(1) 	Store variable b
810:     ST  3,-6(1) 	Save left side 
811:    LDC  3,4(6) 	Load constant 
812:     ST  3,-4(1) 	Store variable c
813:     LD  4,-6(1) 	Load left into ac1 
814:    MUL  3,4,3 	Op * 
815:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
*                       Begin call to  output
816:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
817:     LD  3,-2(1) 	Load variable a
818:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
819:    LDA  1,-6(1) 	Load address of new frame 
820:    LDA  3,1(7) 	Return address in ac 
821:    LDA  7,-816(7) 	CALL output
822:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
823:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
824:    LDA  1,-6(1) 	Load address of new frame 
825:    LDA  3,1(7) 	Return address in ac 
826:    LDA  7,-790(7) 	CALL outnl
827:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
828:    LDC  3,44(6) 	Load constant 
829:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
830:    LDC  3,2(6) 	Load constant 
831:     ST  3,-3(1) 	Store variable b
* EXPRESSION STMT
*                       Begin call to  output
832:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
833:     LD  3,-3(1) 	Load variable b
834:     LD  4,-2(1) 	load lhs variable a
835:    ADD  3,4,3 	op += 
836:     ST  3,-2(1) 	Store variable a
837:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
838:    LDA  1,-6(1) 	Load address of new frame 
839:    LDA  3,1(7) 	Return address in ac 
840:    LDA  7,-835(7) 	CALL output
841:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
842:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
843:     LD  3,-3(1) 	Load variable b
844:     LD  4,-2(1) 	load lhs variable a
845:    SUB  3,4,3 	op -= 
846:     ST  3,-2(1) 	Store variable a
847:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
848:    LDA  1,-6(1) 	Load address of new frame 
849:    LDA  3,1(7) 	Return address in ac 
850:    LDA  7,-845(7) 	CALL output
851:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
852:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
853:     LD  3,-2(1) 	Load variable a
854:     LD  4,-2(1) 	load lhs variable a
855:    SUB  3,4,3 	op -= 
856:     ST  3,-2(1) 	Store variable a
857:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
858:    LDA  1,-6(1) 	Load address of new frame 
859:    LDA  3,1(7) 	Return address in ac 
860:    LDA  7,-855(7) 	CALL output
861:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
862:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
863:    LDC  3,10(6) 	Load constant 
864:     LD  4,-3(1) 	load lhs variable b
865:    ADD  3,4,3 	op += 
866:     ST  3,-3(1) 	Store variable b
867:     LD  4,-2(1) 	load lhs variable a
868:    ADD  3,4,3 	op += 
869:     ST  3,-2(1) 	Store variable a
870:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
871:    LDA  1,-6(1) 	Load address of new frame 
872:    LDA  3,1(7) 	Return address in ac 
873:    LDA  7,-868(7) 	CALL output
874:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
875:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
876:    LDA  1,-6(1) 	Load address of new frame 
877:    LDA  3,1(7) 	Return address in ac 
878:    LDA  7,-842(7) 	CALL outnl
879:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
880:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
881:    LDC  3,3(6) 	Load constant 
882:     ST  3,-8(1) 	Save left side 
883:    LDC  3,4(6) 	Load constant 
884:     LD  4,-8(1) 	Load left into ac1 
885:    SUB  3,4,3 	Op - 
886:     ST  3,-8(1) 	Save left side 
887:    LDC  3,5(6) 	Load constant 
888:     LD  4,-8(1) 	Load left into ac1 
889:    SUB  3,4,3 	Op - 
890:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
891:    LDA  1,-6(1) 	Load address of new frame 
892:    LDA  3,1(7) 	Return address in ac 
893:    LDA  7,-888(7) 	CALL output
894:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
895:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
896:    LDC  3,211(6) 	Load constant 
897:     ST  3,-8(1) 	Save left side 
898:    LDC  3,17(6) 	Load constant 
899:     LD  4,-8(1) 	Load left into ac1 
900:    DIV  3,4,3 	Op / 
901:     ST  3,-8(1) 	Save left side 
902:    LDC  3,5(6) 	Load constant 
903:     LD  4,-8(1) 	Load left into ac1 
904:    DIV  3,4,3 	Op / 
905:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
906:    LDA  1,-6(1) 	Load address of new frame 
907:    LDA  3,1(7) 	Return address in ac 
908:    LDA  7,-903(7) 	CALL output
909:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
910:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
911:    LDC  3,211(6) 	Load constant 
912:     ST  3,-8(1) 	Save left side 
913:    LDC  3,17(6) 	Load constant 
914:     ST  3,-9(1) 	Save left side 
915:    LDC  3,5(6) 	Load constant 
916:     LD  4,-9(1) 	Load left into ac1 
917:    DIV  3,4,3 	Op / 
918:     LD  4,-8(1) 	Load left into ac1 
919:    DIV  3,4,3 	Op / 
920:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
921:    LDA  1,-6(1) 	Load address of new frame 
922:    LDA  3,1(7) 	Return address in ac 
923:    LDA  7,-918(7) 	CALL output
924:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outputb
925:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
926:    LDC  3,1(6) 	Load constant 
927:     ST  3,-8(1) 	Save left side 
928:    LDC  3,0(6) 	Load constant 
929:     LD  4,-8(1) 	Load left into ac1 
930:    JGT  3,1(7) 	Op OR 
931:    LDA  3,0(4) 	 
932:     ST  3,-8(1) 	Save left side 
933:    LDC  3,0(6) 	Load constant 
934:     LD  4,-8(1) 	Load left into ac1 
935:    JEQ  3,1(7) 	Op AND 
936:    LDA  3,0(4) 	 
937:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
938:    LDA  1,-6(1) 	Load address of new frame 
939:    LDA  3,1(7) 	Return address in ac 
940:    LDA  7,-923(7) 	CALL outputb
941:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
942:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
943:    LDC  3,1(6) 	Load constant 
944:     ST  3,-8(1) 	Save left side 
945:    LDC  3,0(6) 	Load constant 
946:     ST  3,-9(1) 	Save left side 
947:    LDC  3,0(6) 	Load constant 
948:     LD  4,-9(1) 	Load left into ac1 
949:    JEQ  3,1(7) 	Op AND 
950:    LDA  3,0(4) 	 
951:     LD  4,-8(1) 	Load left into ac1 
952:    JGT  3,1(7) 	Op OR 
953:    LDA  3,0(4) 	 
954:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
955:    LDA  1,-6(1) 	Load address of new frame 
956:    LDA  3,1(7) 	Return address in ac 
957:    LDA  7,-940(7) 	CALL outputb
958:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
959:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
960:    LDC  3,1(6) 	Load constant 
961:     ST  3,-8(1) 	Save left side 
962:    LDC  3,0(6) 	Load constant 
963:     ST  3,-9(1) 	Save left side 
964:    LDC  3,0(6) 	Load constant 
965:     LD  4,-9(1) 	Load left into ac1 
966:    JEQ  3,1(7) 	Op AND 
967:    LDA  3,0(4) 	 
968:     LD  4,-8(1) 	Load left into ac1 
969:    JGT  3,1(7) 	Op OR 
970:    LDA  3,0(4) 	 
971:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputb
972:    LDA  1,-6(1) 	Load address of new frame 
973:    LDA  3,1(7) 	Return address in ac 
974:    LDA  7,-957(7) 	CALL outputb
975:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
976:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
977:    LDA  1,-6(1) 	Load address of new frame 
978:    LDA  3,1(7) 	Return address in ac 
979:    LDA  7,-943(7) 	CALL outnl
980:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
981:    LDC  2,0(6) 	Set return value to 0 
982:     LD  3,-1(1) 	Load return address 
983:     LD  1,0(1) 	Adjust fp 
984:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,984(7) 	Jump to init [backpatch] 
* BEGIN Init
985:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
986:    LDC  3,10(6) 	load size of array y
987:     ST  3,0(0) 	save size of array y
* END init of globals
988:    LDA  1,-12(0) 	set first frame at end of globals 
989:     ST  1,0(1) 	store old fp (point to self) 
990:    LDA  3,1(7) 	Return address in ac 
991:    LDA  7,-950(7) 	Jump to main 
992:   HALT  0,0,0 	DONE! 
* END Init
