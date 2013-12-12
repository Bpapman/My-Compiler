* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  factor.c-
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
* BEGIN function sqrt
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
 43:     LD  3,-2(1) 	Load variable x
 44:     ST  3,-5(1) 	Save left side 
 45:    LDC  3,1(6) 	Load constant 
 46:     LD  4,-5(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op == 
 48:    LDC  3,1(6) 	True case 
 49:    JEQ  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 53:    LDC  3,1(6) 	Load constant 
 54:    LDA  2,0(3) 	Copy result to rt register 
 55:     LD  3,-1(1) 	Load return address 
 56:     LD  1,0(1) 	Adjust fp 
 57:    LDA  7,0(3) 	Return 
 52:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 58:     LD  3,-2(1) 	Load variable x
 59:     ST  3,-5(1) 	Save left side 
 60:    LDC  3,2(6) 	Load constant 
 61:     LD  4,-5(1) 	Load left into ac1 
 62:    DIV  3,4,3 	Op / 
 63:     ST  3,-3(1) 	Store variable guess
* EXPRESSION STMT
 64:     LD  3,-2(1) 	Load variable x
 65:     ST  3,-5(1) 	Save left side 
 66:     LD  3,-3(1) 	Load variable guess
 67:     LD  4,-5(1) 	Load left into ac1 
 68:    DIV  3,4,3 	Op / 
 69:     ST  3,-5(1) 	Save left side 
 70:     LD  3,-3(1) 	Load variable guess
 71:     LD  4,-5(1) 	Load left into ac1 
 72:    ADD  3,4,3 	Op + 
 73:     ST  3,-5(1) 	Save left side 
 74:    LDC  3,2(6) 	Load constant 
 75:     LD  4,-5(1) 	Load left into ac1 
 76:    DIV  3,4,3 	Op / 
 77:     ST  3,-4(1) 	Store variable newguess
* WHILE
 78:     LD  3,-3(1) 	Load variable guess
 79:     ST  3,-5(1) 	Save left side 
 80:     LD  3,-4(1) 	Load variable newguess
 81:     LD  4,-5(1) 	Load left into ac1 
 82:    SUB  3,4,3 	Op - 
 83:     ST  3,-5(1) 	Save left side 
 84:    LDC  3,1(6) 	Load constant 
 85:     LD  4,-5(1) 	Load left into ac1 
 86:    SUB  4,4,3 	Op > 
 87:    LDC  3,1(6) 	True case 
 88:    JGT  4,1(7) 	Jump if true 
 89:    LDC  3,0(6) 	False case 
 90:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 92:     LD  3,-4(1) 	Load variable newguess
 93:     ST  3,-3(1) 	Store variable guess
* EXPRESSION STMT
 94:     LD  3,-2(1) 	Load variable x
 95:     ST  3,-5(1) 	Save left side 
 96:     LD  3,-3(1) 	Load variable guess
 97:     LD  4,-5(1) 	Load left into ac1 
 98:    DIV  3,4,3 	Op / 
 99:     ST  3,-5(1) 	Save left side 
100:     LD  3,-3(1) 	Load variable guess
101:     LD  4,-5(1) 	Load left into ac1 
102:    ADD  3,4,3 	Op + 
103:     ST  3,-5(1) 	Save left side 
104:    LDC  3,2(6) 	Load constant 
105:     LD  4,-5(1) 	Load left into ac1 
106:    DIV  3,4,3 	Op / 
107:     ST  3,-4(1) 	Store variable newguess
* END compound statement
108:    LDA  7,-31(7) 	go to beginning of loop 
 91:    LDA  7,17(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
109:     LD  3,-4(1) 	Load variable newguess
110:     ST  3,-5(1) 	Save left side 
111:     LD  3,-4(1) 	Load variable newguess
112:     LD  4,-5(1) 	Load left into ac1 
113:    MUL  3,4,3 	Op * 
114:     ST  3,-5(1) 	Save left side 
115:     LD  3,-2(1) 	Load variable x
116:     LD  4,-5(1) 	Load left into ac1 
117:    SUB  4,4,3 	Op > 
118:    LDC  3,1(6) 	True case 
119:    JGT  4,1(7) 	Jump if true 
120:    LDC  3,0(6) 	False case 
121:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
123:     LD  3,-4(1) 	Load variable newguess
124:     ST  3,-5(1) 	Save left side 
125:    LDC  3,1(6) 	Load constant 
126:     LD  4,-5(1) 	Load left into ac1 
127:    SUB  3,4,3 	Op - 
128:     ST  3,-4(1) 	Store variable newguess
122:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
129:     LD  3,-4(1) 	Load variable newguess
130:    LDA  2,0(3) 	Copy result to rt register 
131:     LD  3,-1(1) 	Load return address 
132:     LD  1,0(1) 	Adjust fp 
133:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
134:    LDC  2,0(6) 	Set return value to 0 
135:     LD  3,-1(1) 	Load return address 
136:     LD  1,0(1) 	Adjust fp 
137:    LDA  7,0(3) 	Return 
* END of function sqrt
* BEGIN function main
138:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* WHILE
*                       Begin call to  input
139:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to input
140:    LDA  1,-5(1) 	Load address of new frame 
141:    LDA  3,1(7) 	Return address in ac 
142:    LDA  7,-142(7) 	CALL input
143:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
144:     ST  3,-2(1) 	Store variable n
145:     ST  3,-5(1) 	Save left side 
146:    LDC  3,1(6) 	Load constant 
147:     LD  4,-5(1) 	Load left into ac1 
148:    SUB  4,4,3 	Op > 
149:    LDC  3,1(6) 	True case 
150:    JGT  4,1(7) 	Jump if true 
151:    LDC  3,0(6) 	False case 
152:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  sqrt
154:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
155:     LD  3,-2(1) 	Load variable n
156:     ST  3,-7(1) 	Store parameter 
*                       Jump to sqrt
157:    LDA  1,-5(1) 	Load address of new frame 
158:    LDA  3,1(7) 	Return address in ac 
159:    LDA  7,-118(7) 	CALL sqrt
160:    LDA  3,0(2) 	Save the result in ac 
*                       End call to sqrt
161:     ST  3,-4(1) 	Store variable limit
* WHILE
162:     LD  3,-2(1) 	Load variable n
163:     ST  3,-5(1) 	Save left side 
164:    LDC  3,2(6) 	Load constant 
165:     LD  4,-5(1) 	Load left into ac1 
166:    DIV  5,4,3 	Op % 
167:    MUL  5,5,3 	 
168:    SUB  3,4,5 	 
169:     ST  3,-5(1) 	Save left side 
170:    LDC  3,0(6) 	Load constant 
171:     LD  4,-5(1) 	Load left into ac1 
172:    SUB  4,4,3 	Op == 
173:    LDC  3,1(6) 	True case 
174:    JEQ  4,1(7) 	Jump if true 
175:    LDC  3,0(6) 	False case 
176:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
178:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
179:    LDC  3,2(6) 	Load constant 
180:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
181:    LDA  1,-5(1) 	Load address of new frame 
182:    LDA  3,1(7) 	Return address in ac 
183:    LDA  7,-178(7) 	CALL output
184:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
185:     LD  3,-2(1) 	Load variable n
186:     ST  3,-5(1) 	Save left side 
187:    LDC  3,2(6) 	Load constant 
188:     LD  4,-5(1) 	Load left into ac1 
189:    DIV  3,4,3 	Op / 
190:     ST  3,-2(1) 	Store variable n
* END compound statement
191:    LDA  7,-30(7) 	go to beginning of loop 
177:    LDA  7,14(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
192:    LDC  3,3(6) 	Load constant 
193:     ST  3,-3(1) 	Store variable i
* WHILE
194:     LD  3,-3(1) 	Load variable i
195:     ST  3,-5(1) 	Save left side 
196:     LD  3,-4(1) 	Load variable limit
197:     LD  4,-5(1) 	Load left into ac1 
198:    SUB  4,4,3 	Op <= 
199:    LDC  3,1(6) 	True case 
200:    JLE  4,1(7) 	Jump if true 
201:    LDC  3,0(6) 	False case 
202:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* WHILE
204:     LD  3,-2(1) 	Load variable n
205:     ST  3,-5(1) 	Save left side 
206:     LD  3,-3(1) 	Load variable i
207:     LD  4,-5(1) 	Load left into ac1 
208:    DIV  5,4,3 	Op % 
209:    MUL  5,5,3 	 
210:    SUB  3,4,5 	 
211:     ST  3,-5(1) 	Save left side 
212:    LDC  3,0(6) 	Load constant 
213:     LD  4,-5(1) 	Load left into ac1 
214:    SUB  4,4,3 	Op == 
215:    LDC  3,1(6) 	True case 
216:    JEQ  4,1(7) 	Jump if true 
217:    LDC  3,0(6) 	False case 
218:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
220:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
221:     LD  3,-3(1) 	Load variable i
222:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
223:    LDA  1,-5(1) 	Load address of new frame 
224:    LDA  3,1(7) 	Return address in ac 
225:    LDA  7,-220(7) 	CALL output
226:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
227:     LD  3,-2(1) 	Load variable n
228:     ST  3,-5(1) 	Save left side 
229:     LD  3,-3(1) 	Load variable i
230:     LD  4,-5(1) 	Load left into ac1 
231:    DIV  3,4,3 	Op / 
232:     ST  3,-2(1) 	Store variable n
* EXPRESSION STMT
*                       Begin call to  sqrt
233:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
234:     LD  3,-2(1) 	Load variable n
235:     ST  3,-7(1) 	Store parameter 
*                       Jump to sqrt
236:    LDA  1,-5(1) 	Load address of new frame 
237:    LDA  3,1(7) 	Return address in ac 
238:    LDA  7,-197(7) 	CALL sqrt
239:    LDA  3,0(2) 	Save the result in ac 
*                       End call to sqrt
240:     ST  3,-4(1) 	Store variable limit
* END compound statement
241:    LDA  7,-38(7) 	go to beginning of loop 
219:    LDA  7,22(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
242:     LD  3,-3(1) 	Load variable i
243:     ST  3,-5(1) 	Save left side 
244:    LDC  3,2(6) 	Load constant 
245:     LD  4,-5(1) 	Load left into ac1 
246:    ADD  3,4,3 	Op + 
247:     ST  3,-3(1) 	Store variable i
* END compound statement
248:    LDA  7,-55(7) 	go to beginning of loop 
203:    LDA  7,45(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
249:     LD  3,-2(1) 	Load variable n
250:     ST  3,-5(1) 	Save left side 
251:    LDC  3,1(6) 	Load constant 
252:     LD  4,-5(1) 	Load left into ac1 
253:    SUB  4,4,3 	Op > 
254:    LDC  3,1(6) 	True case 
255:    JGT  4,1(7) 	Jump if true 
256:    LDC  3,0(6) 	False case 
257:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  output
259:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
260:     LD  3,-2(1) 	Load variable n
261:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
262:    LDA  1,-5(1) 	Load address of new frame 
263:    LDA  3,1(7) 	Return address in ac 
264:    LDA  7,-259(7) 	CALL output
265:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
258:    LDA  7,7(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
*                       Begin call to  outnl
266:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
267:    LDA  1,-5(1) 	Load address of new frame 
268:    LDA  3,1(7) 	Return address in ac 
269:    LDA  7,-233(7) 	CALL outnl
270:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
271:    LDA  7,-133(7) 	go to beginning of loop 
153:    LDA  7,118(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
272:    LDC  2,0(6) 	Set return value to 0 
273:     LD  3,-1(1) 	Load return address 
274:     LD  1,0(1) 	Adjust fp 
275:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,275(7) 	Jump to init [backpatch] 
* BEGIN Init
276:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
277:    LDA  1,0(0) 	set first frame at end of globals 
278:     ST  1,0(1) 	store old fp (point to self) 
279:    LDA  3,1(7) 	Return address in ac 
280:    LDA  7,-143(7) 	Jump to main 
281:   HALT  0,0,0 	DONE! 
* END Init
