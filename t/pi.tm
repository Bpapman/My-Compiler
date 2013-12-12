* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  pi.c-
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
 43:    LDC  3,340(6) 	load size of array a
 44:     ST  3,-11(1) 	save size of array a
* EXPRESSION STMT
 45:    LDC  3,100(6) 	Load constant 
 46:     ST  3,-2(1) 	Store variable N
* EXPRESSION STMT
 47:     LD  3,-2(1) 	Load variable N
 48:     ST  3,-352(1) 	Save left side 
 49:    LDC  3,10(6) 	Load constant 
 50:     LD  4,-352(1) 	Load left into ac1 
 51:    MUL  3,4,3 	Op * 
 52:     ST  3,-352(1) 	Save left side 
 53:    LDC  3,3(6) 	Load constant 
 54:     LD  4,-352(1) 	Load left into ac1 
 55:    DIV  3,4,3 	Op / 
 56:     ST  3,-3(1) 	Store variable LEN
* EXPRESSION STMT
 57:    LDC  3,0(6) 	Load constant 
 58:     ST  3,-5(1) 	Store variable j
* WHILE
 59:     LD  3,-5(1) 	Load variable j
 60:     ST  3,-352(1) 	Save left side 
 61:     LD  3,-3(1) 	Load variable LEN
 62:     LD  4,-352(1) 	Load left into ac1 
 63:    SUB  4,4,3 	Op < 
 64:    LDC  3,1(6) 	True case 
 65:    JLT  4,1(7) 	Jump if true 
 66:    LDC  3,0(6) 	False case 
 67:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 69:     LD  3,-5(1) 	Load variable j
 70:     ST  3,-352(1) 	Save index 
 71:    LDC  3,2(6) 	Load constant 
 72:     LD  4,-352(1) 	Restore index 
 73:    LDA  5,-12(1) 	Load address of base of array a
 74:    SUB  5,5,4 	Compute offset of value 
 75:     ST  3,0(5) 	Store variable a
* EXPRESSION STMT
 76:     LD  3,-5(1) 	load lhs variable j
 77:    LDA  3,1(3) 	increment value of j
 78:     ST  3,-5(1) 	Store variable j
* END compound statement
 79:    LDA  7,-21(7) 	go to beginning of loop 
 68:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
 80:    LDC  3,0(6) 	Load constant 
 81:     ST  3,-9(1) 	Store variable nines
* EXPRESSION STMT
 82:    LDC  3,0(6) 	Load constant 
 83:     ST  3,-10(1) 	Store variable predigit
* EXPRESSION STMT
 84:    LDC  3,0(6) 	Load constant 
 85:     ST  3,-5(1) 	Store variable j
* WHILE
 86:     LD  3,-5(1) 	Load variable j
 87:     ST  3,-352(1) 	Save left side 
 88:     LD  3,-2(1) 	Load variable N
 89:     LD  4,-352(1) 	Load left into ac1 
 90:    SUB  4,4,3 	Op < 
 91:    LDC  3,1(6) 	True case 
 92:    JLT  4,1(7) 	Jump if true 
 93:    LDC  3,0(6) 	False case 
 94:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 96:    LDC  3,0(6) 	Load constant 
 97:     ST  3,-7(1) 	Store variable q
* EXPRESSION STMT
 98:     LD  3,-3(1) 	Load variable LEN
 99:     ST  3,-4(1) 	Store variable i
* WHILE
100:     LD  3,-4(1) 	Load variable i
101:     ST  3,-352(1) 	Save left side 
102:    LDC  3,0(6) 	Load constant 
103:     LD  4,-352(1) 	Load left into ac1 
104:    SUB  4,4,3 	Op > 
105:    LDC  3,1(6) 	True case 
106:    JGT  4,1(7) 	Jump if true 
107:    LDC  3,0(6) 	False case 
108:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
110:    LDC  3,10(6) 	Load constant 
111:     ST  3,-352(1) 	Save left side 
112:     LD  3,-4(1) 	Load variable i
113:     ST  3,-353(1) 	Save left side 
114:    LDC  3,1(6) 	Load constant 
115:     LD  4,-353(1) 	Load left into ac1 
116:    SUB  3,4,3 	Op - 
117:    LDA  4,-12(1) 	Load address of base of array a
118:    SUB  3,4,3 	Compute offset of value 
119:     LD  3,0(3) 	Load the value 
120:     LD  4,-352(1) 	Load left into ac1 
121:    MUL  3,4,3 	Op * 
122:     ST  3,-352(1) 	Save left side 
123:     LD  3,-7(1) 	Load variable q
124:     ST  3,-353(1) 	Save left side 
125:     LD  3,-4(1) 	Load variable i
126:     LD  4,-353(1) 	Load left into ac1 
127:    MUL  3,4,3 	Op * 
128:     LD  4,-352(1) 	Load left into ac1 
129:    ADD  3,4,3 	Op + 
130:     ST  3,-8(1) 	Store variable x
* EXPRESSION STMT
131:     LD  3,-4(1) 	Load variable i
132:     ST  3,-352(1) 	Save left side 
133:    LDC  3,1(6) 	Load constant 
134:     LD  4,-352(1) 	Load left into ac1 
135:    SUB  3,4,3 	Op - 
136:     ST  3,-352(1) 	Save index 
137:     LD  3,-8(1) 	Load variable x
138:     ST  3,-353(1) 	Save left side 
139:    LDC  3,2(6) 	Load constant 
140:     ST  3,-354(1) 	Save left side 
141:     LD  3,-4(1) 	Load variable i
142:     LD  4,-354(1) 	Load left into ac1 
143:    MUL  3,4,3 	Op * 
144:     ST  3,-354(1) 	Save left side 
145:    LDC  3,1(6) 	Load constant 
146:     LD  4,-354(1) 	Load left into ac1 
147:    SUB  3,4,3 	Op - 
148:     LD  4,-353(1) 	Load left into ac1 
149:    DIV  5,4,3 	Op % 
150:    MUL  5,5,3 	 
151:    SUB  3,4,5 	 
152:     LD  4,-352(1) 	Restore index 
153:    LDA  5,-12(1) 	Load address of base of array a
154:    SUB  5,5,4 	Compute offset of value 
155:     ST  3,0(5) 	Store variable a
* EXPRESSION STMT
156:     LD  3,-8(1) 	Load variable x
157:     ST  3,-352(1) 	Save left side 
158:    LDC  3,2(6) 	Load constant 
159:     ST  3,-353(1) 	Save left side 
160:     LD  3,-4(1) 	Load variable i
161:     LD  4,-353(1) 	Load left into ac1 
162:    MUL  3,4,3 	Op * 
163:     ST  3,-353(1) 	Save left side 
164:    LDC  3,1(6) 	Load constant 
165:     LD  4,-353(1) 	Load left into ac1 
166:    SUB  3,4,3 	Op - 
167:     LD  4,-352(1) 	Load left into ac1 
168:    DIV  3,4,3 	Op / 
169:     ST  3,-7(1) 	Store variable q
* EXPRESSION STMT
170:    LDC  3,1(6) 	Load constant 
171:     LD  4,-4(1) 	load lhs variable i
172:    SUB  3,4,3 	op -= 
173:     ST  3,-4(1) 	Store variable i
* END compound statement
174:    LDA  7,-75(7) 	go to beginning of loop 
109:    LDA  7,65(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
175:    LDC  3,0(6) 	Load constant 
176:     ST  3,-352(1) 	Save index 
177:     LD  3,-7(1) 	Load variable q
178:     ST  3,-353(1) 	Save left side 
179:    LDC  3,10(6) 	Load constant 
180:     LD  4,-353(1) 	Load left into ac1 
181:    DIV  5,4,3 	Op % 
182:    MUL  5,5,3 	 
183:    SUB  3,4,5 	 
184:     LD  4,-352(1) 	Restore index 
185:    LDA  5,-12(1) 	Load address of base of array a
186:    SUB  5,5,4 	Compute offset of value 
187:     ST  3,0(5) 	Store variable a
* EXPRESSION STMT
188:     LD  3,-7(1) 	Load variable q
189:     ST  3,-352(1) 	Save left side 
190:    LDC  3,10(6) 	Load constant 
191:     LD  4,-352(1) 	Load left into ac1 
192:    DIV  3,4,3 	Op / 
193:     ST  3,-7(1) 	Store variable q
* IF
194:     LD  3,-7(1) 	Load variable q
195:     ST  3,-352(1) 	Save left side 
196:    LDC  3,9(6) 	Load constant 
197:     LD  4,-352(1) 	Load left into ac1 
198:    SUB  4,4,3 	Op == 
199:    LDC  3,1(6) 	True case 
200:    JEQ  4,1(7) 	Jump if true 
201:    LDC  3,0(6) 	False case 
202:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
204:     LD  3,-9(1) 	load lhs variable nines
205:    LDA  3,1(3) 	increment value of nines
206:     ST  3,-9(1) 	Store variable nines
* END compound statement
* ELSE
203:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* IF
208:     LD  3,-7(1) 	Load variable q
209:     ST  3,-352(1) 	Save left side 
210:    LDC  3,10(6) 	Load constant 
211:     LD  4,-352(1) 	Load left into ac1 
212:    SUB  4,4,3 	Op == 
213:    LDC  3,1(6) 	True case 
214:    JEQ  4,1(7) 	Jump if true 
215:    LDC  3,0(6) 	False case 
216:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
218:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Load param 1
219:     LD  3,-10(1) 	Load variable predigit
220:     ST  3,-354(1) 	Save left side 
221:    LDC  3,1(6) 	Load constant 
222:     LD  4,-354(1) 	Load left into ac1 
223:    ADD  3,4,3 	Op + 
224:     ST  3,-354(1) 	Store parameter 
*                       Jump to output
225:    LDA  1,-352(1) 	Load address of new frame 
226:    LDA  3,1(7) 	Return address in ac 
227:    LDA  7,-222(7) 	CALL output
228:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
229:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Jump to outnl
230:    LDA  1,-352(1) 	Load address of new frame 
231:    LDA  3,1(7) 	Return address in ac 
232:    LDA  7,-196(7) 	CALL outnl
233:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
234:    LDC  3,0(6) 	Load constant 
235:     ST  3,-10(1) 	Store variable predigit
* WHILE
236:     LD  3,-9(1) 	Load variable nines
237:     ST  3,-352(1) 	Save left side 
238:    LDC  3,0(6) 	Load constant 
239:     LD  4,-352(1) 	Load left into ac1 
240:    SUB  4,4,3 	Op > 
241:    LDC  3,1(6) 	True case 
242:    JGT  4,1(7) 	Jump if true 
243:    LDC  3,0(6) 	False case 
244:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
246:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Load param 1
247:    LDC  3,0(6) 	Load constant 
248:     ST  3,-354(1) 	Store parameter 
*                       Jump to output
249:    LDA  1,-352(1) 	Load address of new frame 
250:    LDA  3,1(7) 	Return address in ac 
251:    LDA  7,-246(7) 	CALL output
252:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
253:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Jump to outnl
254:    LDA  1,-352(1) 	Load address of new frame 
255:    LDA  3,1(7) 	Return address in ac 
256:    LDA  7,-220(7) 	CALL outnl
257:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
258:     LD  3,-9(1) 	load lhs variable nines
259:    LDA  3,-1(3) 	decrement value of nines
260:     ST  3,-9(1) 	Store variable nines
* END compound statement
261:    LDA  7,-26(7) 	go to beginning of loop 
245:    LDA  7,16(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* ELSE
217:    LDA  7,45(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
263:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Load param 1
264:     LD  3,-10(1) 	Load variable predigit
265:     ST  3,-354(1) 	Store parameter 
*                       Jump to output
266:    LDA  1,-352(1) 	Load address of new frame 
267:    LDA  3,1(7) 	Return address in ac 
268:    LDA  7,-263(7) 	CALL output
269:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
270:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Jump to outnl
271:    LDA  1,-352(1) 	Load address of new frame 
272:    LDA  3,1(7) 	Return address in ac 
273:    LDA  7,-237(7) 	CALL outnl
274:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
275:     LD  3,-7(1) 	Load variable q
276:     ST  3,-10(1) 	Store variable predigit
* WHILE
277:     LD  3,-9(1) 	Load variable nines
278:     ST  3,-352(1) 	Save left side 
279:    LDC  3,0(6) 	Load constant 
280:     LD  4,-352(1) 	Load left into ac1 
281:    SUB  4,4,3 	Op > 
282:    LDC  3,1(6) 	True case 
283:    JGT  4,1(7) 	Jump if true 
284:    LDC  3,0(6) 	False case 
285:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
287:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Load param 1
288:    LDC  3,9(6) 	Load constant 
289:     ST  3,-354(1) 	Store parameter 
*                       Jump to output
290:    LDA  1,-352(1) 	Load address of new frame 
291:    LDA  3,1(7) 	Return address in ac 
292:    LDA  7,-287(7) 	CALL output
293:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
294:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Jump to outnl
295:    LDA  1,-352(1) 	Load address of new frame 
296:    LDA  3,1(7) 	Return address in ac 
297:    LDA  7,-261(7) 	CALL outnl
298:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
299:     LD  3,-9(1) 	load lhs variable nines
300:    LDA  3,-1(3) 	decrement value of nines
301:     ST  3,-9(1) 	Store variable nines
* END compound statement
302:    LDA  7,-26(7) 	go to beginning of loop 
286:    LDA  7,16(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
262:    LDA  7,40(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
207:    LDA  7,95(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
303:     LD  3,-5(1) 	load lhs variable j
304:    LDA  3,1(3) 	increment value of j
305:     ST  3,-5(1) 	Store variable j
* END compound statement
306:    LDA  7,-221(7) 	go to beginning of loop 
 95:    LDA  7,211(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  output
307:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Load param 1
308:     LD  3,-10(1) 	Load variable predigit
309:     ST  3,-354(1) 	Store parameter 
*                       Jump to output
310:    LDA  1,-352(1) 	Load address of new frame 
311:    LDA  3,1(7) 	Return address in ac 
312:    LDA  7,-307(7) 	CALL output
313:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
314:     ST  1,-352(1) 	Store old fp in ghost frame 
*                       Jump to outnl
315:    LDA  1,-352(1) 	Load address of new frame 
316:    LDA  3,1(7) 	Return address in ac 
317:    LDA  7,-281(7) 	CALL outnl
318:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
319:    LDC  2,0(6) 	Set return value to 0 
320:     LD  3,-1(1) 	Load return address 
321:     LD  1,0(1) 	Adjust fp 
322:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,322(7) 	Jump to init [backpatch] 
* BEGIN Init
323:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
324:    LDA  1,0(0) 	set first frame at end of globals 
325:     ST  1,0(1) 	store old fp (point to self) 
326:    LDA  3,1(7) 	Return address in ac 
327:    LDA  7,-286(7) 	Jump to main 
328:   HALT  0,0,0 	DONE! 
* END Init
