* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  permlist.c-
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
* BEGIN function put
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:    LDC  3,1(6) 	Load constant 
 44:     LD  4,-2(1) 	Load address of base of array p
 45:    SUB  3,4,3 	Compute offset of value 
 46:     LD  3,0(3) 	Load the value 
 47:     ST  3,-4(1) 	Store variable sum
* EXPRESSION STMT
 48:    LDC  3,2(6) 	Load constant 
 49:     ST  3,-3(1) 	Store variable j
* WHILE
 50:     LD  3,-3(1) 	Load variable j
 51:     ST  3,-5(1) 	Save left side 
 52:     LD  3,0(0) 	Load variable n
 53:     LD  4,-5(1) 	Load left into ac1 
 54:    SUB  4,4,3 	Op <= 
 55:    LDC  3,1(6) 	True case 
 56:    JLE  4,1(7) 	Jump if true 
 57:    LDC  3,0(6) 	False case 
 58:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 60:     LD  3,-4(1) 	Load variable sum
 61:     ST  3,-5(1) 	Save left side 
 62:    LDC  3,10(6) 	Load constant 
 63:     LD  4,-5(1) 	Load left into ac1 
 64:    MUL  3,4,3 	Op * 
 65:     ST  3,-5(1) 	Save left side 
 66:     LD  3,-3(1) 	Load variable j
 67:     LD  4,-2(1) 	Load address of base of array p
 68:    SUB  3,4,3 	Compute offset of value 
 69:     LD  3,0(3) 	Load the value 
 70:     LD  4,-5(1) 	Load left into ac1 
 71:    ADD  3,4,3 	Op + 
 72:     ST  3,-4(1) 	Store variable sum
* EXPRESSION STMT
 73:     LD  3,-3(1) 	Load variable j
 74:     ST  3,-5(1) 	Save left side 
 75:    LDC  3,1(6) 	Load constant 
 76:     LD  4,-5(1) 	Load left into ac1 
 77:    ADD  3,4,3 	Op + 
 78:     ST  3,-3(1) 	Store variable j
* END compound statement
 79:    LDA  7,-30(7) 	go to beginning of loop 
 59:    LDA  7,20(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  output
 80:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
 81:     LD  3,-4(1) 	Load variable sum
 82:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
 83:    LDA  1,-5(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-80(7) 	CALL output
 86:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 87:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 88:    LDA  1,-5(1) 	Load address of new frame 
 89:    LDA  3,1(7) 	Return address in ac 
 90:    LDA  7,-54(7) 	CALL outnl
 91:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 92:    LDC  2,0(6) 	Set return value to 0 
 93:     LD  3,-1(1) 	Load return address 
 94:     LD  1,0(1) 	Adjust fp 
 95:    LDA  7,0(3) 	Return 
* END of function put
* BEGIN function main
 96:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 97:    LDC  3,20(6) 	load size of array p
 98:     ST  3,-2(1) 	save size of array p
* EXPRESSION STMT
*                       Begin call to  input
 99:     ST  1,-28(1) 	Store old fp in ghost frame 
*                       Jump to input
100:    LDA  1,-28(1) 	Load address of new frame 
101:    LDA  3,1(7) 	Return address in ac 
102:    LDA  7,-102(7) 	CALL input
103:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
104:     ST  3,0(0) 	Store variable n
* EXPRESSION STMT
105:    LDC  3,0(6) 	Load constant 
106:     ST  3,-24(1) 	Store variable j
* WHILE
107:     LD  3,-24(1) 	Load variable j
108:     ST  3,-28(1) 	Save left side 
109:     LD  3,0(0) 	Load variable n
110:     LD  4,-28(1) 	Load left into ac1 
111:    SUB  4,4,3 	Op <= 
112:    LDC  3,1(6) 	True case 
113:    JLE  4,1(7) 	Jump if true 
114:    LDC  3,0(6) 	False case 
115:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
117:     LD  3,-24(1) 	Load variable j
118:     ST  3,-28(1) 	Save index 
119:     LD  3,-24(1) 	Load variable j
120:     LD  4,-28(1) 	Restore index 
121:    LDA  5,-3(1) 	Load address of base of array p
122:    SUB  5,5,4 	Compute offset of value 
123:     ST  3,0(5) 	Store variable p
* EXPRESSION STMT
124:     LD  3,-24(1) 	Load variable j
125:     ST  3,-28(1) 	Save left side 
126:    LDC  3,1(6) 	Load constant 
127:     LD  4,-28(1) 	Load left into ac1 
128:    ADD  3,4,3 	Op + 
129:     ST  3,-24(1) 	Store variable j
* END compound statement
130:    LDA  7,-24(7) 	go to beginning of loop 
116:    LDA  7,14(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
131:    LDC  3,1(6) 	Load constant 
132:     ST  3,-23(1) 	Store variable i
* WHILE
133:     LD  3,-23(1) 	Load variable i
134:     ST  3,-28(1) 	Save left side 
135:    LDC  3,0(6) 	Load constant 
136:     LD  4,-28(1) 	Load left into ac1 
137:    SUB  4,4,3 	Op > 
138:    LDC  3,1(6) 	True case 
139:    JGT  4,1(7) 	Jump if true 
140:    LDC  3,0(6) 	False case 
141:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  put
143:     ST  1,-28(1) 	Store old fp in ghost frame 
*                       Load param 1
144:    LDA  3,-3(1) 	Load address of base of array p
145:     ST  3,-30(1) 	Store parameter 
*                       Jump to put
146:    LDA  1,-28(1) 	Load address of new frame 
147:    LDA  3,1(7) 	Return address in ac 
148:    LDA  7,-107(7) 	CALL put
149:    LDA  3,0(2) 	Save the result in ac 
*                       End call to put
* EXPRESSION STMT
150:     LD  3,0(0) 	Load variable n
151:     ST  3,-28(1) 	Save left side 
152:    LDC  3,1(6) 	Load constant 
153:     LD  4,-28(1) 	Load left into ac1 
154:    SUB  3,4,3 	Op - 
155:     ST  3,-23(1) 	Store variable i
* WHILE
156:     LD  3,-23(1) 	Load variable i
157:    LDA  4,-3(1) 	Load address of base of array p
158:    SUB  3,4,3 	Compute offset of value 
159:     LD  3,0(3) 	Load the value 
160:     ST  3,-28(1) 	Save left side 
161:     LD  3,-23(1) 	Load variable i
162:     ST  3,-29(1) 	Save left side 
163:    LDC  3,1(6) 	Load constant 
164:     LD  4,-29(1) 	Load left into ac1 
165:    ADD  3,4,3 	Op + 
166:    LDA  4,-3(1) 	Load address of base of array p
167:    SUB  3,4,3 	Compute offset of value 
168:     LD  3,0(3) 	Load the value 
169:     LD  4,-28(1) 	Load left into ac1 
170:    SUB  4,4,3 	Op > 
171:    LDC  3,1(6) 	True case 
172:    JGT  4,1(7) 	Jump if true 
173:    LDC  3,0(6) 	False case 
174:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
176:     LD  3,-23(1) 	Load variable i
177:     ST  3,-28(1) 	Save left side 
178:    LDC  3,1(6) 	Load constant 
179:     LD  4,-28(1) 	Load left into ac1 
180:    SUB  3,4,3 	Op - 
181:     ST  3,-23(1) 	Store variable i
182:    LDA  7,-27(7) 	go to beginning of loop 
175:    LDA  7,7(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
183:     LD  3,0(0) 	Load variable n
184:     ST  3,-24(1) 	Store variable j
* WHILE
185:     LD  3,-23(1) 	Load variable i
186:    LDA  4,-3(1) 	Load address of base of array p
187:    SUB  3,4,3 	Compute offset of value 
188:     LD  3,0(3) 	Load the value 
189:     ST  3,-28(1) 	Save left side 
190:     LD  3,-24(1) 	Load variable j
191:    LDA  4,-3(1) 	Load address of base of array p
192:    SUB  3,4,3 	Compute offset of value 
193:     LD  3,0(3) 	Load the value 
194:     LD  4,-28(1) 	Load left into ac1 
195:    SUB  4,4,3 	Op > 
196:    LDC  3,1(6) 	True case 
197:    JGT  4,1(7) 	Jump if true 
198:    LDC  3,0(6) 	False case 
199:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
201:     LD  3,-24(1) 	Load variable j
202:     ST  3,-28(1) 	Save left side 
203:    LDC  3,1(6) 	Load constant 
204:     LD  4,-28(1) 	Load left into ac1 
205:    SUB  3,4,3 	Op - 
206:     ST  3,-24(1) 	Store variable j
207:    LDA  7,-23(7) 	go to beginning of loop 
200:    LDA  7,7(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
208:     LD  3,-23(1) 	Load variable i
209:    LDA  4,-3(1) 	Load address of base of array p
210:    SUB  3,4,3 	Compute offset of value 
211:     LD  3,0(3) 	Load the value 
212:     ST  3,-27(1) 	Store variable tmp
* EXPRESSION STMT
213:     LD  3,-23(1) 	Load variable i
214:     ST  3,-28(1) 	Save index 
215:     LD  3,-24(1) 	Load variable j
216:    LDA  4,-3(1) 	Load address of base of array p
217:    SUB  3,4,3 	Compute offset of value 
218:     LD  3,0(3) 	Load the value 
219:     LD  4,-28(1) 	Restore index 
220:    LDA  5,-3(1) 	Load address of base of array p
221:    SUB  5,5,4 	Compute offset of value 
222:     ST  3,0(5) 	Store variable p
* EXPRESSION STMT
223:     LD  3,-24(1) 	Load variable j
224:     ST  3,-28(1) 	Save index 
225:     LD  3,-27(1) 	Load variable tmp
226:     LD  4,-28(1) 	Restore index 
227:    LDA  5,-3(1) 	Load address of base of array p
228:    SUB  5,5,4 	Compute offset of value 
229:     ST  3,0(5) 	Store variable p
* EXPRESSION STMT
230:     LD  3,0(0) 	Load variable n
231:     ST  3,-25(1) 	Store variable r
* EXPRESSION STMT
232:     LD  3,-23(1) 	Load variable i
233:     ST  3,-28(1) 	Save left side 
234:    LDC  3,1(6) 	Load constant 
235:     LD  4,-28(1) 	Load left into ac1 
236:    ADD  3,4,3 	Op + 
237:     ST  3,-26(1) 	Store variable s
* WHILE
238:     LD  3,-25(1) 	Load variable r
239:     ST  3,-28(1) 	Save left side 
240:     LD  3,-26(1) 	Load variable s
241:     LD  4,-28(1) 	Load left into ac1 
242:    SUB  4,4,3 	Op > 
243:    LDC  3,1(6) 	True case 
244:    JGT  4,1(7) 	Jump if true 
245:    LDC  3,0(6) 	False case 
246:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
248:     LD  3,-25(1) 	Load variable r
249:    LDA  4,-3(1) 	Load address of base of array p
250:    SUB  3,4,3 	Compute offset of value 
251:     LD  3,0(3) 	Load the value 
252:     ST  3,-27(1) 	Store variable tmp
* EXPRESSION STMT
253:     LD  3,-25(1) 	Load variable r
254:     ST  3,-28(1) 	Save index 
255:     LD  3,-26(1) 	Load variable s
256:    LDA  4,-3(1) 	Load address of base of array p
257:    SUB  3,4,3 	Compute offset of value 
258:     LD  3,0(3) 	Load the value 
259:     LD  4,-28(1) 	Restore index 
260:    LDA  5,-3(1) 	Load address of base of array p
261:    SUB  5,5,4 	Compute offset of value 
262:     ST  3,0(5) 	Store variable p
* EXPRESSION STMT
263:     LD  3,-26(1) 	Load variable s
264:     ST  3,-28(1) 	Save index 
265:     LD  3,-27(1) 	Load variable tmp
266:     LD  4,-28(1) 	Restore index 
267:    LDA  5,-3(1) 	Load address of base of array p
268:    SUB  5,5,4 	Compute offset of value 
269:     ST  3,0(5) 	Store variable p
* EXPRESSION STMT
270:     LD  3,-25(1) 	Load variable r
271:     ST  3,-28(1) 	Save left side 
272:    LDC  3,1(6) 	Load constant 
273:     LD  4,-28(1) 	Load left into ac1 
274:    SUB  3,4,3 	Op - 
275:     ST  3,-25(1) 	Store variable r
* EXPRESSION STMT
276:     LD  3,-26(1) 	Load variable s
277:     ST  3,-28(1) 	Save left side 
278:    LDC  3,1(6) 	Load constant 
279:     LD  4,-28(1) 	Load left into ac1 
280:    ADD  3,4,3 	Op + 
281:     ST  3,-26(1) 	Store variable s
* END compound statement
282:    LDA  7,-45(7) 	go to beginning of loop 
247:    LDA  7,35(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
283:    LDA  7,-151(7) 	go to beginning of loop 
142:    LDA  7,141(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
284:    LDC  2,0(6) 	Set return value to 0 
285:     LD  3,-1(1) 	Load return address 
286:     LD  1,0(1) 	Adjust fp 
287:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,287(7) 	Jump to init [backpatch] 
* BEGIN Init
288:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
289:    LDA  1,-1(0) 	set first frame at end of globals 
290:     ST  1,0(1) 	store old fp (point to self) 
291:    LDA  3,1(7) 	Return address in ac 
292:    LDA  7,-197(7) 	Jump to main 
293:   HALT  0,0,0 	DONE! 
* END Init
