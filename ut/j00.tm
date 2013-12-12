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
* BEGIN function cat
 42:     ST  3,-1(1) 	Store return address. 
* RETURN
* EXPRESSION STMT
 43:     LD  3,-3(1) 	Load variable i
 44:     LD  3,-3(1) 	Load variable x
 45:    LDA  2,0(3) 	Copy result to rt register 
 46:     LD  3,-1(1) 	Load return address 
 47:     LD  1,0(1) 	Adjust fp 
 48:    LDA  7,0(3) 	Return 
* Add standard closing in case there is no return statement
 49:    LDC  2,0(6) 	Set return value to 0 
 50:     LD  3,-1(1) 	Load return address 
 51:     LD  1,0(1) 	Adjust fp 
 52:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function dog
 53:     ST  3,-1(1) 	Store return address. 
* RETURN
* EXPRESSION STMT
* 			Begin call to  cat
 54:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 55:     LD  3,-2(1) 	Load variable x
 56:     ST  3,-6(1) 	Store parameter 
 57:     LD  3,-3(1) 	Load variable i
 58:     ST  3,-6(1) 	Store parameter 
* 			Load Param 1
 59:     LD  3,-3(1) 	Load variable i
 60:     ST  3,-7(1) 	Store parameter 
* 			Jump to  cat
 61:    LDA  1,-4(1) 	Load address of new frame 
 62:    LDA  3,1(7) 	Return address in ac 
 63:    LDA  7,-22(7) 	Call  cat
 64:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
 65:    LDA  2,0(3) 	Copy result to rt register 
 66:     LD  3,-1(1) 	Load return address 
 67:     LD  1,0(1) 	Adjust fp 
 68:    LDA  7,0(3) 	Return 
* Add standard closing in case there is no return statement
 69:    LDC  2,0(6) 	Set return value to 0 
 70:     LD  3,-1(1) 	Load return address 
 71:     LD  1,0(1) 	Adjust fp 
 72:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function fox
 73:     ST  3,-1(1) 	Store return address. 
* RETURN
* EXPRESSION STMT
* 			Begin call to  dog
 74:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 75:     LD  3,-2(1) 	Load variable x
 76:     ST  3,-6(1) 	Store parameter 
 77:     LD  3,-3(1) 	Load variable i
 78:     ST  3,-6(1) 	Store parameter 
* 			Load Param 1
 79:     LD  3,-3(1) 	Load variable i
 80:     ST  3,-7(1) 	Store parameter 
* 			Jump to  dog
 81:    LDA  1,-4(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-31(7) 	Call  dog
 84:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
 85:    LDA  2,0(3) 	Copy result to rt register 
 86:     LD  3,-1(1) 	Load return address 
 87:     LD  1,0(1) 	Adjust fp 
 88:    LDA  7,0(3) 	Return 
* Add standard closing in case there is no return statement
 89:    LDC  2,0(6) 	Set return value to 0 
 90:     LD  3,-1(1) 	Load return address 
 91:     LD  1,0(1) 	Adjust fp 
 92:    LDA  7,0(3) 	Return 
* END of function fox
 93:    LDC  3,10(6) 	Load size of array g
 94:     ST  3,0(1) 	Load size of array g
* BEGIN function main
 95:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 96:    LDC  3,10(6) 	Load size of array h
 97:     ST  3,-3(1) 	Load size of array h
 98:    LDC  3,10(6) 	Load size of array s0
 99:     ST  3,-1(1) 	Load size of array s0
* EXPRESSION STMT
100:    LDC  3,1(6) 	Load constant 
101:     ST  3,-2(1) 	Store variable i
* WHILE
102:     LD  3,-2(1) 	Load variable i
103:     ST  3,-25(1) 	Save left side 
104:    LDC  3,10(6) 	Load constant 
105:     LD  4,-25(1) 	Load left into ac1 
106:    SUB  4,4,3 	Op < 
107:    LDC  3,1(6) 	True case 
108:    JLT  4,1(7) 	Jump if true 
109:    LDC  3,0(6) 	False case 
110:    JGT  3,1(7) 	Jump to while part 
* DO
112:     LD  3,-2(1) 	load lhs variable i
113:    LDA  3,1(3) 	increment value of i
114:     ST  3,-2(1) 	Store variable i
115:     ST  3,0(1) 	Store variable s
116:     ST  3,-2(0) 	Store variable g
117:     ST  3,-2(1) 	Store variable h
118:    LDA  7,-17(7) 	go to beginning of loop 
111:    LDA  7,7(7) 	No more loop 
* ENDWHILE
* 			Begin call to  output
119:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
120:    LDC  3,6(6) 	Load constant 
121:     ST  3,-27(1) 	Store parameter 
122:     LD  3,0(0) 	Load variable g
123:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
124:    LDA  1,-25(1) 	Load address of new frame 
125:    LDA  3,1(7) 	Return address in ac 
126:    LDA  7,-121(7) 	Call  output
127:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
128:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
129:    LDC  3,6(6) 	Load constant 
130:     ST  3,-27(1) 	Store parameter 
131:     LD  3,-3(1) 	Load variable h
132:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
133:    LDA  1,-25(1) 	Load address of new frame 
134:    LDA  3,1(7) 	Return address in ac 
135:    LDA  7,-130(7) 	Call  output
136:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
137:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
138:    LDC  3,6(6) 	Load constant 
139:     ST  3,-27(1) 	Store parameter 
140:     LD  3,0(1) 	Load variable s
141:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
142:    LDA  1,-25(1) 	Load address of new frame 
143:    LDA  3,1(7) 	Return address in ac 
144:    LDA  7,-139(7) 	Call  output
145:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
146:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
147:    LDA  1,-25(1) 	Load address of new frame 
148:    LDA  3,1(7) 	Return address in ac 
149:    LDA  7,-113(7) 	Call  outnl
150:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
151:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  cat
152:     ST  1,-27(1) 	Store old fp in ghost frame 
* 			Load Param 1
153:     LD  3,0(0) 	Load variable g
154:     ST  3,-29(1) 	Store parameter 
155:    LDC  3,6(6) 	Load constant 
156:     ST  3,-29(1) 	Store parameter 
* 			Load Param 1
157:    LDC  3,6(6) 	Load constant 
158:     ST  3,-30(1) 	Store parameter 
* 			Jump to  cat
159:    LDA  1,-27(1) 	Load address of new frame 
160:    LDA  3,1(7) 	Return address in ac 
161:    LDA  7,-120(7) 	Call  cat
162:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
163:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
164:    LDA  1,-25(1) 	Load address of new frame 
165:    LDA  3,1(7) 	Return address in ac 
166:    LDA  7,-161(7) 	Call  output
167:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
168:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  cat
169:     ST  1,-27(1) 	Store old fp in ghost frame 
* 			Load Param 1
170:     LD  3,-3(1) 	Load variable h
171:     ST  3,-29(1) 	Store parameter 
172:    LDC  3,6(6) 	Load constant 
173:     ST  3,-29(1) 	Store parameter 
* 			Load Param 1
174:    LDC  3,6(6) 	Load constant 
175:     ST  3,-30(1) 	Store parameter 
* 			Jump to  cat
176:    LDA  1,-27(1) 	Load address of new frame 
177:    LDA  3,1(7) 	Return address in ac 
178:    LDA  7,-137(7) 	Call  cat
179:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
180:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
181:    LDA  1,-25(1) 	Load address of new frame 
182:    LDA  3,1(7) 	Return address in ac 
183:    LDA  7,-178(7) 	Call  output
184:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
185:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  cat
186:     ST  1,-27(1) 	Store old fp in ghost frame 
* 			Load Param 1
187:     LD  3,0(1) 	Load variable s
188:     ST  3,-29(1) 	Store parameter 
189:    LDC  3,6(6) 	Load constant 
190:     ST  3,-29(1) 	Store parameter 
* 			Load Param 1
191:    LDC  3,6(6) 	Load constant 
192:     ST  3,-30(1) 	Store parameter 
* 			Jump to  cat
193:    LDA  1,-27(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-154(7) 	Call  cat
196:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
197:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
198:    LDA  1,-25(1) 	Load address of new frame 
199:    LDA  3,1(7) 	Return address in ac 
200:    LDA  7,-195(7) 	Call  output
201:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
202:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
203:    LDA  1,-25(1) 	Load address of new frame 
204:    LDA  3,1(7) 	Return address in ac 
205:    LDA  7,-169(7) 	Call  outnl
206:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
207:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  dog
208:     ST  1,-27(1) 	Store old fp in ghost frame 
* 			Load Param 1
209:     LD  3,0(0) 	Load variable g
210:     ST  3,-29(1) 	Store parameter 
211:    LDC  3,6(6) 	Load constant 
212:     ST  3,-29(1) 	Store parameter 
* 			Load Param 1
213:    LDC  3,6(6) 	Load constant 
214:     ST  3,-30(1) 	Store parameter 
* 			Jump to  dog
215:    LDA  1,-27(1) 	Load address of new frame 
216:    LDA  3,1(7) 	Return address in ac 
217:    LDA  7,-165(7) 	Call  dog
218:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
219:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
220:    LDA  1,-25(1) 	Load address of new frame 
221:    LDA  3,1(7) 	Return address in ac 
222:    LDA  7,-217(7) 	Call  output
223:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
224:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  dog
225:     ST  1,-27(1) 	Store old fp in ghost frame 
* 			Load Param 1
226:     LD  3,-3(1) 	Load variable h
227:     ST  3,-29(1) 	Store parameter 
228:    LDC  3,6(6) 	Load constant 
229:     ST  3,-29(1) 	Store parameter 
* 			Load Param 1
230:    LDC  3,6(6) 	Load constant 
231:     ST  3,-30(1) 	Store parameter 
* 			Jump to  dog
232:    LDA  1,-27(1) 	Load address of new frame 
233:    LDA  3,1(7) 	Return address in ac 
234:    LDA  7,-182(7) 	Call  dog
235:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
236:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
237:    LDA  1,-25(1) 	Load address of new frame 
238:    LDA  3,1(7) 	Return address in ac 
239:    LDA  7,-234(7) 	Call  output
240:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
241:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  dog
242:     ST  1,-27(1) 	Store old fp in ghost frame 
* 			Load Param 1
243:     LD  3,0(1) 	Load variable s
244:     ST  3,-29(1) 	Store parameter 
245:    LDC  3,6(6) 	Load constant 
246:     ST  3,-29(1) 	Store parameter 
* 			Load Param 1
247:    LDC  3,6(6) 	Load constant 
248:     ST  3,-30(1) 	Store parameter 
* 			Jump to  dog
249:    LDA  1,-27(1) 	Load address of new frame 
250:    LDA  3,1(7) 	Return address in ac 
251:    LDA  7,-199(7) 	Call  dog
252:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
253:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
254:    LDA  1,-25(1) 	Load address of new frame 
255:    LDA  3,1(7) 	Return address in ac 
256:    LDA  7,-251(7) 	Call  output
257:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
258:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
259:    LDA  1,-25(1) 	Load address of new frame 
260:    LDA  3,1(7) 	Return address in ac 
261:    LDA  7,-225(7) 	Call  outnl
262:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
263:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  fox
264:     ST  1,-27(1) 	Store old fp in ghost frame 
* 			Load Param 1
265:     LD  3,0(0) 	Load variable g
266:     ST  3,-29(1) 	Store parameter 
267:    LDC  3,6(6) 	Load constant 
268:     ST  3,-29(1) 	Store parameter 
* 			Load Param 1
269:    LDC  3,6(6) 	Load constant 
270:     ST  3,-30(1) 	Store parameter 
* 			Jump to  fox
271:    LDA  1,-27(1) 	Load address of new frame 
272:    LDA  3,1(7) 	Return address in ac 
273:    LDA  7,-201(7) 	Call  fox
274:    LDA  3,0(2) 	Save the result in ac 
* 			End call to fox
275:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
276:    LDA  1,-25(1) 	Load address of new frame 
277:    LDA  3,1(7) 	Return address in ac 
278:    LDA  7,-273(7) 	Call  output
279:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
280:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  fox
281:     ST  1,-27(1) 	Store old fp in ghost frame 
* 			Load Param 1
282:     LD  3,-3(1) 	Load variable h
283:     ST  3,-29(1) 	Store parameter 
284:    LDC  3,6(6) 	Load constant 
285:     ST  3,-29(1) 	Store parameter 
* 			Load Param 1
286:    LDC  3,6(6) 	Load constant 
287:     ST  3,-30(1) 	Store parameter 
* 			Jump to  fox
288:    LDA  1,-27(1) 	Load address of new frame 
289:    LDA  3,1(7) 	Return address in ac 
290:    LDA  7,-218(7) 	Call  fox
291:    LDA  3,0(2) 	Save the result in ac 
* 			End call to fox
292:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
293:    LDA  1,-25(1) 	Load address of new frame 
294:    LDA  3,1(7) 	Return address in ac 
295:    LDA  7,-290(7) 	Call  output
296:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
297:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  fox
298:     ST  1,-27(1) 	Store old fp in ghost frame 
* 			Load Param 1
299:     LD  3,0(1) 	Load variable s
300:     ST  3,-29(1) 	Store parameter 
301:    LDC  3,6(6) 	Load constant 
302:     ST  3,-29(1) 	Store parameter 
* 			Load Param 1
303:    LDC  3,6(6) 	Load constant 
304:     ST  3,-30(1) 	Store parameter 
* 			Jump to  fox
305:    LDA  1,-27(1) 	Load address of new frame 
306:    LDA  3,1(7) 	Return address in ac 
307:    LDA  7,-235(7) 	Call  fox
308:    LDA  3,0(2) 	Save the result in ac 
* 			End call to fox
309:     ST  3,-27(1) 	Store parameter 
* 			Jump to  output
310:    LDA  1,-25(1) 	Load address of new frame 
311:    LDA  3,1(7) 	Return address in ac 
312:    LDA  7,-307(7) 	Call  output
313:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
314:     ST  1,-25(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
315:    LDA  1,-25(1) 	Load address of new frame 
316:    LDA  3,1(7) 	Return address in ac 
317:    LDA  7,-281(7) 	Call  outnl
318:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
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
326:    LDA  3,0(7) 	return address in ac 
327:    LDA  7,-233(7) 	Jump to main 
328:   HALT  0,0,0 	DONE 
* END init
