* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  init.c-
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
 43:    LDC  3,666(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable i
 45:    LDC  3,97(6) 	Load constant 
 46:     ST  3,-3(1) 	Store variable y
 47:    LDC  3,1(6) 	Load constant 
 48:     ST  3,-4(1) 	Store variable ba
 49:    LDC  3,1(6) 	Load constant 
 50:     ST  3,-42(1) 	Save left side 
 51:    LDC  3,0(6) 	Load constant 
 52:    LDC  4,1(6) 	Load 1 
 53:    SUB  3,4,3 	Op NOT 
 54:     LD  4,-42(1) 	Load left into ac1 
 55:    JEQ  3,1(7) 	Op AND 
 56:    LDA  3,0(4) 	 
 57:     ST  3,-5(1) 	Store variable bb
 58:    LDC  3,5(6) 	Load constant 
 59:     ST  3,-42(1) 	Save left side 
 60:    LDC  3,4(6) 	Load constant 
 61:     LD  4,-42(1) 	Load left into ac1 
 62:    SUB  4,4,3 	Op > 
 63:    LDC  3,1(6) 	True case 
 64:    JGT  4,1(7) 	Jump if true 
 65:    LDC  3,0(6) 	False case 
 66:     ST  3,-6(1) 	Store variable bc
 67:    LDC  3,10(6) 	load size of array x
 68:     ST  3,-7(1) 	save size of array x
 69:    LDC  3,4(6) 	Load constant 
 70:     ST  3,-42(1) 	Save left side 
 71:    LDC  3,5(6) 	Load constant 
 72:     LD  4,-42(1) 	Load left into ac1 
 73:    MUL  3,4,3 	Op * 
 74:     ST  3,-42(1) 	Save left side 
 75:    LDC  3,3(6) 	Load constant 
 76:     ST  3,-43(1) 	Save left side 
 77:    LDC  3,2(6) 	Load constant 
 78:     LD  4,-43(1) 	Load left into ac1 
 79:    MUL  3,4,3 	Op * 
 80:     LD  4,-42(1) 	Load left into ac1 
 81:    ADD  3,4,3 	Op + 
 82:     ST  3,-18(1) 	Store variable k
 83:    LDC  3,46(6) 	Load constant 
 84:    LDC  4,0(6) 	Load 0 
 85:    SUB  3,4,3 	Op unary - 
 86:     ST  3,-19(1) 	Store variable l
* EXPRESSION STMT
*                       Begin call to  output
 87:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
 88:     LD  3,0(0) 	Load variable ga
 89:     ST  3,-44(1) 	Store parameter 
*                       Jump to output
 90:    LDA  1,-42(1) 	Load address of new frame 
 91:    LDA  3,1(7) 	Return address in ac 
 92:    LDA  7,-87(7) 	CALL output
 93:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 94:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 95:    LDA  1,-42(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-61(7) 	CALL outnl
 98:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
 99:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
100:     LD  3,-1(0) 	Load variable gb
101:     ST  3,-44(1) 	Store parameter 
*                       Jump to outputb
102:    LDA  1,-42(1) 	Load address of new frame 
103:    LDA  3,1(7) 	Return address in ac 
104:    LDA  7,-87(7) 	CALL outputb
105:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
106:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
107:    LDA  1,-42(1) 	Load address of new frame 
108:    LDA  3,1(7) 	Return address in ac 
109:    LDA  7,-73(7) 	CALL outnl
110:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
111:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
112:    LDA  3,-3(0) 	Load address of base of array gc
113:     LD  3,1(3) 	Load array size 
114:     ST  3,-44(1) 	Store parameter 
*                       Jump to output
115:    LDA  1,-42(1) 	Load address of new frame 
116:    LDA  3,1(7) 	Return address in ac 
117:    LDA  7,-112(7) 	CALL output
118:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
119:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
120:    LDA  1,-42(1) 	Load address of new frame 
121:    LDA  3,1(7) 	Return address in ac 
122:    LDA  7,-86(7) 	CALL outnl
123:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
124:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
125:     LD  3,-2(1) 	Load variable i
126:     ST  3,-44(1) 	Store parameter 
*                       Jump to output
127:    LDA  1,-42(1) 	Load address of new frame 
128:    LDA  3,1(7) 	Return address in ac 
129:    LDA  7,-124(7) 	CALL output
130:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
131:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
132:    LDA  1,-42(1) 	Load address of new frame 
133:    LDA  3,1(7) 	Return address in ac 
134:    LDA  7,-98(7) 	CALL outnl
135:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputc
136:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
137:     LD  3,-3(1) 	Load variable y
138:     ST  3,-44(1) 	Store parameter 
*                       Jump to outputc
139:    LDA  1,-42(1) 	Load address of new frame 
140:    LDA  3,1(7) 	Return address in ac 
141:    LDA  7,-112(7) 	CALL outputc
142:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
*                       Begin call to  outnl
143:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
144:    LDA  1,-42(1) 	Load address of new frame 
145:    LDA  3,1(7) 	Return address in ac 
146:    LDA  7,-110(7) 	CALL outnl
147:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
148:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
149:     LD  3,-4(1) 	Load variable ba
150:     ST  3,-44(1) 	Store parameter 
*                       Jump to outputb
151:    LDA  1,-42(1) 	Load address of new frame 
152:    LDA  3,1(7) 	Return address in ac 
153:    LDA  7,-136(7) 	CALL outputb
154:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
155:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
156:    LDA  1,-42(1) 	Load address of new frame 
157:    LDA  3,1(7) 	Return address in ac 
158:    LDA  7,-122(7) 	CALL outnl
159:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
160:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
161:     LD  3,-5(1) 	Load variable bb
162:     ST  3,-44(1) 	Store parameter 
*                       Jump to outputb
163:    LDA  1,-42(1) 	Load address of new frame 
164:    LDA  3,1(7) 	Return address in ac 
165:    LDA  7,-148(7) 	CALL outputb
166:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
167:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
168:    LDA  1,-42(1) 	Load address of new frame 
169:    LDA  3,1(7) 	Return address in ac 
170:    LDA  7,-134(7) 	CALL outnl
171:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
172:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
173:     LD  3,-6(1) 	Load variable bc
174:     ST  3,-44(1) 	Store parameter 
*                       Jump to outputb
175:    LDA  1,-42(1) 	Load address of new frame 
176:    LDA  3,1(7) 	Return address in ac 
177:    LDA  7,-160(7) 	CALL outputb
178:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
179:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
180:    LDA  1,-42(1) 	Load address of new frame 
181:    LDA  3,1(7) 	Return address in ac 
182:    LDA  7,-146(7) 	CALL outnl
183:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
184:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
185:    LDA  3,-8(1) 	Load address of base of array x
186:     LD  3,1(3) 	Load array size 
187:     ST  3,-44(1) 	Store parameter 
*                       Jump to output
188:    LDA  1,-42(1) 	Load address of new frame 
189:    LDA  3,1(7) 	Return address in ac 
190:    LDA  7,-185(7) 	CALL output
191:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
192:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
193:    LDA  1,-42(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-159(7) 	CALL outnl
196:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
197:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
198:     LD  3,-18(1) 	Load variable k
199:     ST  3,-44(1) 	Store parameter 
*                       Jump to output
200:    LDA  1,-42(1) 	Load address of new frame 
201:    LDA  3,1(7) 	Return address in ac 
202:    LDA  7,-197(7) 	CALL output
203:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
204:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
205:    LDA  1,-42(1) 	Load address of new frame 
206:    LDA  3,1(7) 	Return address in ac 
207:    LDA  7,-171(7) 	CALL outnl
208:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
209:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
210:     LD  3,-19(1) 	Load variable l
211:     ST  3,-44(1) 	Store parameter 
*                       Jump to output
212:    LDA  1,-42(1) 	Load address of new frame 
213:    LDA  3,1(7) 	Return address in ac 
214:    LDA  7,-209(7) 	CALL output
215:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
216:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
217:    LDA  1,-42(1) 	Load address of new frame 
218:    LDA  3,1(7) 	Return address in ac 
219:    LDA  7,-183(7) 	CALL outnl
220:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
221:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
222:     LD  3,-16(0) 	Load variable sia
223:     ST  3,-44(1) 	Store parameter 
*                       Jump to output
224:    LDA  1,-42(1) 	Load address of new frame 
225:    LDA  3,1(7) 	Return address in ac 
226:    LDA  7,-221(7) 	CALL output
227:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
228:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
229:    LDA  1,-42(1) 	Load address of new frame 
230:    LDA  3,1(7) 	Return address in ac 
231:    LDA  7,-195(7) 	CALL outnl
232:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
233:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
234:    LDA  3,-18(0) 	Load address of base of array sib
235:     LD  3,1(3) 	Load array size 
236:     ST  3,-44(1) 	Store parameter 
*                       Jump to output
237:    LDA  1,-42(1) 	Load address of new frame 
238:    LDA  3,1(7) 	Return address in ac 
239:    LDA  7,-234(7) 	CALL output
240:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
241:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
242:    LDA  1,-42(1) 	Load address of new frame 
243:    LDA  3,1(7) 	Return address in ac 
244:    LDA  7,-208(7) 	CALL outnl
245:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* BEGIN compound statement
246:    LDC  3,20(6) 	load size of array y
247:     ST  3,-20(1) 	save size of array y
248:    LDC  3,1(6) 	Load constant 
249:    LDC  4,1(6) 	Load 1 
250:    SUB  3,4,3 	Op NOT 
251:     ST  3,-41(1) 	Store variable t
* EXPRESSION STMT
*                       Begin call to  output
252:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
253:    LDA  3,-21(1) 	Load address of base of array y
254:     LD  3,1(3) 	Load array size 
255:     ST  3,-44(1) 	Store parameter 
*                       Jump to output
256:    LDA  1,-42(1) 	Load address of new frame 
257:    LDA  3,1(7) 	Return address in ac 
258:    LDA  7,-253(7) 	CALL output
259:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
260:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
261:    LDA  1,-42(1) 	Load address of new frame 
262:    LDA  3,1(7) 	Return address in ac 
263:    LDA  7,-227(7) 	CALL outnl
264:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  outputb
265:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Load param 1
266:     LD  3,-41(1) 	Load variable t
267:     ST  3,-44(1) 	Store parameter 
*                       Jump to outputb
268:    LDA  1,-42(1) 	Load address of new frame 
269:    LDA  3,1(7) 	Return address in ac 
270:    LDA  7,-253(7) 	CALL outputb
271:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
272:     ST  1,-42(1) 	Store old fp in ghost frame 
*                       Jump to outnl
273:    LDA  1,-42(1) 	Load address of new frame 
274:    LDA  3,1(7) 	Return address in ac 
275:    LDA  7,-239(7) 	CALL outnl
276:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* END compound statement
* Add standard closing in case there is no return statement
277:    LDC  2,0(6) 	Set return value to 0 
278:     LD  3,-1(1) 	Load return address 
279:     LD  1,0(1) 	Adjust fp 
280:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,280(7) 	Jump to init [backpatch] 
* BEGIN Init
281:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
282:    LDC  3,111(6) 	Load constant 
283:     ST  3,0(0) 	Store variable ga
284:    LDC  3,1(6) 	Load constant 
285:     ST  3,-1(0) 	Store variable gb
286:    LDC  3,13(6) 	load size of array gc
287:     ST  3,-2(0) 	save size of array gc
288:    LDC  3,666(6) 	Load constant 
289:     ST  3,-16(0) 	Store variable sia-1
290:    LDC  3,15(6) 	load size of array sib-2
291:     ST  3,-17(0) 	save size of array sib-2
* END init of globals
292:    LDA  1,-33(0) 	set first frame at end of globals 
293:     ST  1,0(1) 	store old fp (point to self) 
294:    LDA  3,1(7) 	Return address in ac 
295:    LDA  7,-254(7) 	Jump to main 
296:   HALT  0,0,0 	DONE! 
* END Init
