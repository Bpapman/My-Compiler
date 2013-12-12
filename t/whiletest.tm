* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  whiletest.c-
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
* IF
 43:    LDC  3,1(6) 	Load constant 
 44:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 46:    LDC  3,0(6) 	Load constant 
 45:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 47:    LDC  3,1(6) 	Load constant 
 48:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 50:    LDC  3,0(6) 	Load constant 
* ELSE
 49:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
 52:    LDC  3,1(6) 	Load constant 
 51:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
 53:    LDC  3,0(6) 	Load constant 
 54:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 56:    LDC  3,1(6) 	Load constant 
* ELSE
 55:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* IF
 58:    LDC  3,0(6) 	Load constant 
 59:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 61:    LDC  3,1(6) 	Load constant 
 60:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
 57:    LDA  7,4(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
 62:    LDC  3,0(6) 	Load constant 
 63:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 65:    LDC  3,1(6) 	Load constant 
* ELSE
 64:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* IF
 67:    LDC  3,0(6) 	Load constant 
 68:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 70:    LDC  3,1(6) 	Load constant 
* ELSE
 69:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
 72:    LDC  3,0(6) 	Load constant 
 71:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
 66:    LDA  7,6(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
 73:    LDC  3,1(6) 	Load constant 
 74:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 76:    LDC  3,0(6) 	Load constant 
* ELSE
 75:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* IF
 78:    LDC  3,1(6) 	Load constant 
 79:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
 81:    LDC  3,0(6) 	Load constant 
 82:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 84:    LDC  3,1(6) 	Load constant 
 83:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
 80:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
 77:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
 85:    LDC  3,0(6) 	Load constant 
 86:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 88:    LDC  3,1(6) 	Load constant 
* ELSE
 87:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* IF
 90:    LDC  3,0(6) 	Load constant 
 91:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
 93:    LDC  3,1(6) 	Load constant 
 94:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
 96:    LDC  3,0(6) 	Load constant 
 97:    LDA  7,-5(7) 	go to beginning of loop 
 95:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
 92:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
 89:    LDA  7,8(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
 98:    LDC  3,1(6) 	Load constant 
 99:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
101:    LDC  3,0(6) 	Load constant 
* ELSE
100:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* WHILE
103:    LDC  3,1(6) 	Load constant 
104:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
106:    LDC  3,0(6) 	Load constant 
107:    LDA  7,-5(7) 	go to beginning of loop 
105:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
102:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
108:    LDC  3,1(6) 	Load constant 
109:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
111:    LDC  3,0(6) 	Load constant 
* ELSE
110:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* WHILE
113:    LDC  3,1(6) 	Load constant 
114:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
116:    LDC  3,0(6) 	Load constant 
117:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
119:    LDC  3,1(6) 	Load constant 
118:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
120:    LDA  7,-8(7) 	go to beginning of loop 
115:    LDA  7,5(7) 	No more loop [backpatch] 
* ENDWHILE
112:    LDA  7,8(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
121:    LDC  3,0(6) 	Load constant 
122:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
124:    LDC  3,1(6) 	Load constant 
* ELSE
123:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* WHILE
126:    LDC  3,0(6) 	Load constant 
127:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
129:    LDC  3,1(6) 	Load constant 
130:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
132:    LDC  3,0(6) 	Load constant 
133:    LDA  7,-5(7) 	go to beginning of loop 
131:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
134:    LDA  7,-9(7) 	go to beginning of loop 
128:    LDA  7,6(7) 	No more loop [backpatch] 
* ENDWHILE
125:    LDA  7,9(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
135:    LDC  3,1(6) 	Load constant 
136:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
138:    LDC  3,0(6) 	Load constant 
139:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
141:    LDC  3,1(6) 	Load constant 
140:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
137:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
142:    LDC  3,0(6) 	Load constant 
143:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
145:    LDC  3,1(6) 	Load constant 
146:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
148:    LDC  3,0(6) 	Load constant 
* ELSE
147:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
150:    LDC  3,1(6) 	Load constant 
149:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
144:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
151:    LDC  3,0(6) 	Load constant 
152:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
154:    LDC  3,1(6) 	Load constant 
155:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
157:    LDC  3,0(6) 	Load constant 
* ELSE
156:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
159:    LDC  3,1(6) 	Load constant 
158:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* ELSE
153:    LDA  7,7(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
161:    LDC  3,0(6) 	Load constant 
160:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
162:    LDC  3,1(6) 	Load constant 
163:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
165:    LDC  3,0(6) 	Load constant 
166:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
168:    LDC  3,1(6) 	Load constant 
* ELSE
167:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* IF
170:    LDC  3,0(6) 	Load constant 
171:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
173:    LDC  3,1(6) 	Load constant 
172:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
169:    LDA  7,4(7) 	Jump around the ELSE [backpatch] 
* ENDIF
164:    LDA  7,9(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
174:    LDC  3,0(6) 	Load constant 
175:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
177:    LDC  3,1(6) 	Load constant 
178:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
180:    LDC  3,0(6) 	Load constant 
* ELSE
179:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* WHILE
182:    LDC  3,1(6) 	Load constant 
183:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
185:    LDC  3,0(6) 	Load constant 
186:    LDA  7,-5(7) 	go to beginning of loop 
184:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
181:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
176:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
187:    LDC  3,1(6) 	Load constant 
188:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
190:    LDC  3,0(6) 	Load constant 
191:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
193:    LDC  3,1(6) 	Load constant 
194:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
196:    LDC  3,0(6) 	Load constant 
195:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
192:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
189:    LDA  7,7(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
197:    LDC  3,1(6) 	Load constant 
198:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
200:    LDC  3,0(6) 	Load constant 
201:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
203:    LDC  3,1(6) 	Load constant 
204:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
206:    LDC  3,0(6) 	Load constant 
* ELSE
205:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
208:    LDC  3,1(6) 	Load constant 
207:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
202:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
199:    LDA  7,9(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
209:    LDC  3,0(6) 	Load constant 
210:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
212:    LDC  3,1(6) 	Load constant 
213:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
215:    LDC  3,0(6) 	Load constant 
216:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
218:    LDC  3,1(6) 	Load constant 
219:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
221:    LDC  3,0(6) 	Load constant 
220:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
217:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
214:    LDA  7,7(7) 	Jump around the THEN [backpatch] 
* ENDIF
211:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
222:    LDC  3,1(6) 	Load constant 
223:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
225:    LDC  3,0(6) 	Load constant 
226:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
228:    LDC  3,1(6) 	Load constant 
229:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
231:    LDC  3,0(6) 	Load constant 
232:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
234:    LDC  3,1(6) 	Load constant 
235:    LDA  7,-5(7) 	go to beginning of loop 
233:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
230:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
227:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* ENDIF
224:    LDA  7,11(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
236:    LDC  3,0(6) 	Load constant 
237:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
239:    LDC  3,1(6) 	Load constant 
240:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
242:    LDC  3,0(6) 	Load constant 
243:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
245:    LDC  3,1(6) 	Load constant 
246:    LDA  7,-5(7) 	go to beginning of loop 
244:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
241:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
238:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
247:    LDC  3,0(6) 	Load constant 
248:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
250:    LDC  3,1(6) 	Load constant 
251:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
253:    LDC  3,0(6) 	Load constant 
254:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
256:    LDC  3,1(6) 	Load constant 
257:    LDA  7,-5(7) 	go to beginning of loop 
255:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
252:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
259:    LDC  3,0(6) 	Load constant 
258:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
249:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
260:    LDC  3,1(6) 	Load constant 
261:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
263:    LDC  3,0(6) 	Load constant 
264:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
266:    LDC  3,1(6) 	Load constant 
267:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
269:    LDC  3,0(6) 	Load constant 
270:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
272:    LDC  3,1(6) 	Load constant 
271:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
273:    LDA  7,-8(7) 	go to beginning of loop 
268:    LDA  7,5(7) 	No more loop [backpatch] 
* ENDWHILE
265:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* ENDIF
262:    LDA  7,11(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
274:    LDC  3,0(6) 	Load constant 
275:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
277:    LDC  3,1(6) 	Load constant 
278:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
280:    LDC  3,0(6) 	Load constant 
281:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
283:    LDC  3,1(6) 	Load constant 
284:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
286:    LDC  3,0(6) 	Load constant 
287:    LDA  7,-5(7) 	go to beginning of loop 
285:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
288:    LDA  7,-9(7) 	go to beginning of loop 
282:    LDA  7,6(7) 	No more loop [backpatch] 
* ENDWHILE
279:    LDA  7,9(7) 	Jump around the THEN [backpatch] 
* ENDIF
276:    LDA  7,12(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
289:    LDC  3,1(6) 	Load constant 
290:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
292:    LDC  3,0(6) 	Load constant 
293:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
295:    LDC  3,1(6) 	Load constant 
296:    LDA  7,-5(7) 	go to beginning of loop 
294:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
291:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
297:    LDC  3,0(6) 	Load constant 
298:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
300:    LDC  3,1(6) 	Load constant 
301:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
303:    LDC  3,0(6) 	Load constant 
304:    LDA  7,-5(7) 	go to beginning of loop 
302:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
299:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
306:    LDC  3,1(6) 	Load constant 
305:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
307:    LDC  3,0(6) 	Load constant 
308:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
310:    LDC  3,1(6) 	Load constant 
311:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
313:    LDC  3,0(6) 	Load constant 
314:    LDA  7,-5(7) 	go to beginning of loop 
312:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
309:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* IF
316:    LDC  3,1(6) 	Load constant 
317:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
319:    LDC  3,0(6) 	Load constant 
318:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
315:    LDA  7,4(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
320:    LDC  3,1(6) 	Load constant 
321:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
323:    LDC  3,0(6) 	Load constant 
324:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
326:    LDC  3,1(6) 	Load constant 
327:    LDA  7,-5(7) 	go to beginning of loop 
325:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
322:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* WHILE
329:    LDC  3,0(6) 	Load constant 
330:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
332:    LDC  3,1(6) 	Load constant 
333:    LDA  7,-5(7) 	go to beginning of loop 
331:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
328:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
334:    LDC  3,0(6) 	Load constant 
335:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
337:    LDC  3,1(6) 	Load constant 
338:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
340:    LDC  3,0(6) 	Load constant 
341:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
343:    LDC  3,1(6) 	Load constant 
342:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
344:    LDA  7,-8(7) 	go to beginning of loop 
339:    LDA  7,5(7) 	No more loop [backpatch] 
* ENDWHILE
336:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
345:    LDC  3,0(6) 	Load constant 
346:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
348:    LDC  3,1(6) 	Load constant 
349:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
351:    LDC  3,0(6) 	Load constant 
352:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
354:    LDC  3,1(6) 	Load constant 
* ELSE
353:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
356:    LDC  3,0(6) 	Load constant 
355:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
357:    LDA  7,-10(7) 	go to beginning of loop 
350:    LDA  7,7(7) 	No more loop [backpatch] 
* ENDWHILE
347:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
358:    LDC  3,1(6) 	Load constant 
359:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
361:    LDC  3,0(6) 	Load constant 
362:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
364:    LDC  3,1(6) 	Load constant 
365:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
367:    LDC  3,0(6) 	Load constant 
368:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
370:    LDC  3,1(6) 	Load constant 
369:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
366:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
371:    LDA  7,-11(7) 	go to beginning of loop 
363:    LDA  7,8(7) 	No more loop [backpatch] 
* ENDWHILE
360:    LDA  7,11(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
372:    LDC  3,0(6) 	Load constant 
373:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
375:    LDC  3,1(6) 	Load constant 
376:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
378:    LDC  3,0(6) 	Load constant 
379:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
381:    LDC  3,1(6) 	Load constant 
382:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
384:    LDC  3,0(6) 	Load constant 
385:    LDA  7,-5(7) 	go to beginning of loop 
383:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
380:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
386:    LDA  7,-12(7) 	go to beginning of loop 
377:    LDA  7,9(7) 	No more loop [backpatch] 
* ENDWHILE
374:    LDA  7,12(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
387:    LDC  3,1(6) 	Load constant 
388:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
390:    LDC  3,0(6) 	Load constant 
391:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
393:    LDC  3,1(6) 	Load constant 
394:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
396:    LDC  3,0(6) 	Load constant 
397:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
399:    LDC  3,1(6) 	Load constant 
400:    LDA  7,-5(7) 	go to beginning of loop 
398:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
395:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
402:    LDC  3,0(6) 	Load constant 
401:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
403:    LDA  7,-14(7) 	go to beginning of loop 
392:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
389:    LDA  7,14(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
404:    LDC  3,1(6) 	Load constant 
405:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
407:    LDC  3,0(6) 	Load constant 
408:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
410:    LDC  3,1(6) 	Load constant 
411:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
413:    LDC  3,0(6) 	Load constant 
414:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
416:    LDC  3,1(6) 	Load constant 
417:    LDA  7,-5(7) 	go to beginning of loop 
415:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
412:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
419:    LDC  3,0(6) 	Load constant 
418:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
420:    LDA  7,-14(7) 	go to beginning of loop 
409:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
406:    LDA  7,15(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
422:    LDC  3,1(6) 	Load constant 
421:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
423:    LDC  3,0(6) 	Load constant 
424:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
426:    LDC  3,1(6) 	Load constant 
427:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
429:    LDC  3,0(6) 	Load constant 
430:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
432:    LDC  3,1(6) 	Load constant 
433:    LDA  7,-5(7) 	go to beginning of loop 
431:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
434:    LDA  7,-9(7) 	go to beginning of loop 
428:    LDA  7,6(7) 	No more loop [backpatch] 
* ENDWHILE
425:    LDA  7,9(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
435:    LDC  3,0(6) 	Load constant 
436:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
438:    LDC  3,1(6) 	Load constant 
439:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
441:    LDC  3,0(6) 	Load constant 
442:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
444:    LDC  3,1(6) 	Load constant 
445:    LDA  7,-5(7) 	go to beginning of loop 
443:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
446:    LDA  7,-9(7) 	go to beginning of loop 
440:    LDA  7,6(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
437:    LDA  7,10(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
448:    LDC  3,0(6) 	Load constant 
447:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* IF
449:    LDC  3,1(6) 	Load constant 
450:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
452:    LDC  3,0(6) 	Load constant 
453:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
455:    LDC  3,1(6) 	Load constant 
456:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
458:    LDC  3,0(6) 	Load constant 
459:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
461:    LDC  3,1(6) 	Load constant 
460:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
462:    LDA  7,-8(7) 	go to beginning of loop 
457:    LDA  7,5(7) 	No more loop [backpatch] 
* ENDWHILE
463:    LDA  7,-12(7) 	go to beginning of loop 
454:    LDA  7,9(7) 	No more loop [backpatch] 
* ENDWHILE
451:    LDA  7,12(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
464:    LDC  3,0(6) 	Load constant 
465:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
467:    LDC  3,1(6) 	Load constant 
468:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
470:    LDC  3,0(6) 	Load constant 
471:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
473:    LDC  3,1(6) 	Load constant 
474:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
476:    LDC  3,0(6) 	Load constant 
* ELSE
475:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
478:    LDC  3,1(6) 	Load constant 
477:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
479:    LDA  7,-10(7) 	go to beginning of loop 
472:    LDA  7,7(7) 	No more loop [backpatch] 
* ENDWHILE
480:    LDA  7,-14(7) 	go to beginning of loop 
469:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
466:    LDA  7,14(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
481:    LDC  3,0(6) 	Load constant 
482:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
484:    LDC  3,1(6) 	Load constant 
485:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
487:    LDC  3,0(6) 	Load constant 
488:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
490:    LDC  3,1(6) 	Load constant 
491:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
493:    LDC  3,0(6) 	Load constant 
494:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
496:    LDC  3,1(6) 	Load constant 
495:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
492:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
497:    LDA  7,-11(7) 	go to beginning of loop 
489:    LDA  7,8(7) 	No more loop [backpatch] 
* ENDWHILE
498:    LDA  7,-15(7) 	go to beginning of loop 
486:    LDA  7,12(7) 	No more loop [backpatch] 
* ENDWHILE
483:    LDA  7,15(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
499:    LDC  3,0(6) 	Load constant 
500:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
502:    LDC  3,1(6) 	Load constant 
503:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
505:    LDC  3,0(6) 	Load constant 
506:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
508:    LDC  3,1(6) 	Load constant 
509:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
511:    LDC  3,0(6) 	Load constant 
512:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
514:    LDC  3,1(6) 	Load constant 
* ELSE
513:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
516:    LDC  3,0(6) 	Load constant 
515:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
510:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
517:    LDA  7,-13(7) 	go to beginning of loop 
507:    LDA  7,10(7) 	No more loop [backpatch] 
* ENDWHILE
518:    LDA  7,-17(7) 	go to beginning of loop 
504:    LDA  7,14(7) 	No more loop [backpatch] 
* ENDWHILE
501:    LDA  7,17(7) 	Jump around the THEN [backpatch] 
* ENDIF
* WHILE
519:    LDC  3,1(6) 	Load constant 
520:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
522:    LDC  3,0(6) 	Load constant 
523:    LDA  7,-5(7) 	go to beginning of loop 
521:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
524:    LDC  3,1(6) 	Load constant 
525:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
527:    LDC  3,0(6) 	Load constant 
528:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
530:    LDC  3,1(6) 	Load constant 
529:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
531:    LDA  7,-8(7) 	go to beginning of loop 
526:    LDA  7,5(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
532:    LDC  3,0(6) 	Load constant 
533:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
535:    LDC  3,1(6) 	Load constant 
536:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
538:    LDC  3,0(6) 	Load constant 
* ELSE
537:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
540:    LDC  3,1(6) 	Load constant 
539:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
541:    LDA  7,-10(7) 	go to beginning of loop 
534:    LDA  7,7(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
542:    LDC  3,0(6) 	Load constant 
543:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
545:    LDC  3,1(6) 	Load constant 
546:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
548:    LDC  3,0(6) 	Load constant 
* ELSE
547:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* IF
550:    LDC  3,1(6) 	Load constant 
551:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
553:    LDC  3,0(6) 	Load constant 
552:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
549:    LDA  7,4(7) 	Jump around the ELSE [backpatch] 
* ENDIF
554:    LDA  7,-13(7) 	go to beginning of loop 
544:    LDA  7,10(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
555:    LDC  3,1(6) 	Load constant 
556:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
558:    LDC  3,0(6) 	Load constant 
559:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
561:    LDC  3,1(6) 	Load constant 
* ELSE
560:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* WHILE
563:    LDC  3,0(6) 	Load constant 
564:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
566:    LDC  3,1(6) 	Load constant 
567:    LDA  7,-5(7) 	go to beginning of loop 
565:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
562:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
568:    LDA  7,-14(7) 	go to beginning of loop 
557:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
569:    LDC  3,0(6) 	Load constant 
570:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
572:    LDC  3,1(6) 	Load constant 
573:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
575:    LDC  3,0(6) 	Load constant 
576:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
578:    LDC  3,1(6) 	Load constant 
577:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
574:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
579:    LDA  7,-11(7) 	go to beginning of loop 
571:    LDA  7,8(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
580:    LDC  3,0(6) 	Load constant 
581:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
583:    LDC  3,1(6) 	Load constant 
584:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
586:    LDC  3,0(6) 	Load constant 
587:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
589:    LDC  3,1(6) 	Load constant 
* ELSE
588:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
591:    LDC  3,0(6) 	Load constant 
590:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
585:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
592:    LDA  7,-13(7) 	go to beginning of loop 
582:    LDA  7,10(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
593:    LDC  3,1(6) 	Load constant 
594:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
596:    LDC  3,0(6) 	Load constant 
597:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
599:    LDC  3,1(6) 	Load constant 
600:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
602:    LDC  3,0(6) 	Load constant 
603:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
605:    LDC  3,1(6) 	Load constant 
604:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
601:    LDA  7,4(7) 	Jump around the THEN [backpatch] 
* ENDIF
598:    LDA  7,7(7) 	Jump around the THEN [backpatch] 
* ENDIF
606:    LDA  7,-14(7) 	go to beginning of loop 
595:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
607:    LDC  3,0(6) 	Load constant 
608:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
610:    LDC  3,1(6) 	Load constant 
611:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
613:    LDC  3,0(6) 	Load constant 
614:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
616:    LDC  3,1(6) 	Load constant 
617:    LDA  7,-5(7) 	go to beginning of loop 
615:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
612:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
618:    LDA  7,-12(7) 	go to beginning of loop 
609:    LDA  7,9(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
619:    LDC  3,0(6) 	Load constant 
620:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
622:    LDC  3,1(6) 	Load constant 
623:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
625:    LDC  3,0(6) 	Load constant 
626:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
628:    LDC  3,1(6) 	Load constant 
629:    LDA  7,-5(7) 	go to beginning of loop 
627:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
624:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
631:    LDC  3,0(6) 	Load constant 
630:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
632:    LDA  7,-14(7) 	go to beginning of loop 
621:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
633:    LDC  3,1(6) 	Load constant 
634:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
636:    LDC  3,0(6) 	Load constant 
637:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
639:    LDC  3,1(6) 	Load constant 
640:    LDA  7,-5(7) 	go to beginning of loop 
638:    LDA  7,2(7) 	No more loop [backpatch] 
* ENDWHILE
641:    LDA  7,-9(7) 	go to beginning of loop 
635:    LDA  7,6(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
642:    LDC  3,0(6) 	Load constant 
643:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
645:    LDC  3,1(6) 	Load constant 
646:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
648:    LDC  3,0(6) 	Load constant 
649:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
651:    LDC  3,1(6) 	Load constant 
650:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
652:    LDA  7,-8(7) 	go to beginning of loop 
647:    LDA  7,5(7) 	No more loop [backpatch] 
* ENDWHILE
653:    LDA  7,-12(7) 	go to beginning of loop 
644:    LDA  7,9(7) 	No more loop [backpatch] 
* ENDWHILE
* WHILE
654:    LDC  3,0(6) 	Load constant 
655:    JGT  3,1(7) 	Jump to while part 
* DO
* WHILE
657:    LDC  3,1(6) 	Load constant 
658:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
660:    LDC  3,0(6) 	Load constant 
661:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
663:    LDC  3,1(6) 	Load constant 
* ELSE
662:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
665:    LDC  3,0(6) 	Load constant 
664:    LDA  7,1(7) 	Jump around the ELSE [backpatch] 
* ENDIF
666:    LDA  7,-10(7) 	go to beginning of loop 
659:    LDA  7,7(7) 	No more loop [backpatch] 
* ENDWHILE
667:    LDA  7,-14(7) 	go to beginning of loop 
656:    LDA  7,11(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
668:    LDC  2,0(6) 	Set return value to 0 
669:     LD  3,-1(1) 	Load return address 
670:     LD  1,0(1) 	Adjust fp 
671:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,671(7) 	Jump to init [backpatch] 
* BEGIN Init
672:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
673:    LDA  1,0(0) 	set first frame at end of globals 
674:     ST  1,0(1) 	store old fp (point to self) 
675:    LDA  3,1(7) 	Return address in ac 
676:    LDA  7,-635(7) 	Jump to main 
677:   HALT  0,0,0 	DONE! 
* END Init
