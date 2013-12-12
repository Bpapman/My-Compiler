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
* BEGIN function main
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  outputb
 43:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 44:    LDC  3,1(6) 	Load constant 
 45:     ST  3,-4(1) 	Store parameter 
 46:     ST  3,-2(1) 	Save left side 
 47:    LDC  3,2(6) 	Load constant 
 48:     ST  3,-5(1) 	Store parameter 
 49:     LD  4,-2(1) 	Load left into ac1 
 50:    SUB  4,4,3 	Op < 
 51:    LDC  3,1(6) 	True case 
 52:    JLT  4,1(7) 	Jump if true 
 53:    LDC  3,0(6) 	False case 
 54:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
 55:    LDA  1,-2(1) 	Load address of new frame 
 56:    LDA  3,1(7) 	Return address in ac 
 57:    LDA  7,-40(7) 	Call  outputb
 58:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 59:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 60:    LDC  3,1(6) 	Load constant 
 61:     ST  3,-4(1) 	Store parameter 
 62:     ST  3,-2(1) 	Save left side 
 63:    LDC  3,2(6) 	Load constant 
 64:     ST  3,-5(1) 	Store parameter 
 65:     LD  4,-2(1) 	Load left into ac1 
 66:    SUB  4,4,3 	Op < 
 67:    LDC  3,1(6) 	True case 
 68:    JGT  4,1(7) 	Jump if true 
 69:    LDC  3,0(6) 	False case 
 70:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
 71:    LDA  1,-2(1) 	Load address of new frame 
 72:    LDA  3,1(7) 	Return address in ac 
 73:    LDA  7,-56(7) 	Call  outputb
 74:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 75:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 76:    LDC  3,1(6) 	Load constant 
 77:     ST  3,-4(1) 	Store parameter 
 78:     ST  3,-2(1) 	Save left side 
 79:    LDC  3,2(6) 	Load constant 
 80:     ST  3,-5(1) 	Store parameter 
 81:     LD  4,-2(1) 	Load left into ac1 
 82:    SUB  4,4,3 	Op == 
 83:    LDC  3,1(6) 	True case 
 84:    JEQ  4,1(7) 	Jump if true 
 85:    LDC  3,0(6) 	False case 
 86:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
 87:    LDA  1,-2(1) 	Load address of new frame 
 88:    LDA  3,1(7) 	Return address in ac 
 89:    LDA  7,-72(7) 	Call  outputb
 90:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 91:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 92:    LDC  3,1(6) 	Load constant 
 93:     ST  3,-4(1) 	Store parameter 
 94:     ST  3,-2(1) 	Save left side 
 95:    LDC  3,2(6) 	Load constant 
 96:     ST  3,-5(1) 	Store parameter 
 97:     LD  4,-2(1) 	Load left into ac1 
 98:    SUB  3,4,3 	Op != 
 99:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
100:    LDA  1,-2(1) 	Load address of new frame 
101:    LDA  3,1(7) 	Return address in ac 
102:    LDA  7,-85(7) 	Call  outputb
103:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
104:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
105:    LDC  3,1(6) 	Load constant 
106:     ST  3,-4(1) 	Store parameter 
107:     ST  3,-2(1) 	Save left side 
108:    LDC  3,2(6) 	Load constant 
109:     ST  3,-5(1) 	Store parameter 
110:     LD  4,-2(1) 	Load left into ac1 
111:    SUB  4,4,3 	Op >= 
112:    LDC  3,1(6) 	True case 
113:    JTE  4,1(7) 	Jump if true 
114:    LDC  3,0(6) 	False case 
115:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
116:    LDA  1,-2(1) 	Load address of new frame 
117:    LDA  3,1(7) 	Return address in ac 
118:    LDA  7,-101(7) 	Call  outputb
119:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
120:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
121:    LDC  3,1(6) 	Load constant 
122:     ST  3,-4(1) 	Store parameter 
123:     ST  3,-2(1) 	Save left side 
124:    LDC  3,2(6) 	Load constant 
125:     ST  3,-5(1) 	Store parameter 
126:     LD  4,-2(1) 	Load left into ac1 
127:    SUB  4,4,3 	Op <= 
128:    LDC  3,1(6) 	True case 
129:    JLE  4,1(7) 	Jump if true 
130:    LDC  3,0(6) 	False case 
131:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
132:    LDA  1,-2(1) 	Load address of new frame 
133:    LDA  3,1(7) 	Return address in ac 
134:    LDA  7,-117(7) 	Call  outputb
135:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
136:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
137:    LDC  3,2(6) 	Load constant 
138:     ST  3,-4(1) 	Store parameter 
139:     ST  3,-2(1) 	Save left side 
140:    LDC  3,2(6) 	Load constant 
141:     ST  3,-5(1) 	Store parameter 
142:     LD  4,-2(1) 	Load left into ac1 
143:    SUB  4,4,3 	Op == 
144:    LDC  3,1(6) 	True case 
145:    JEQ  4,1(7) 	Jump if true 
146:    LDC  3,0(6) 	False case 
147:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
148:    LDA  1,-2(1) 	Load address of new frame 
149:    LDA  3,1(7) 	Return address in ac 
150:    LDA  7,-133(7) 	Call  outputb
151:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
152:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
153:    LDC  3,2(6) 	Load constant 
154:     ST  3,-4(1) 	Store parameter 
155:     ST  3,-2(1) 	Save left side 
156:    LDC  3,2(6) 	Load constant 
157:     ST  3,-5(1) 	Store parameter 
158:     LD  4,-2(1) 	Load left into ac1 
159:    SUB  3,4,3 	Op != 
160:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
161:    LDA  1,-2(1) 	Load address of new frame 
162:    LDA  3,1(7) 	Return address in ac 
163:    LDA  7,-146(7) 	Call  outputb
164:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
165:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
166:    LDC  3,2(6) 	Load constant 
167:     ST  3,-4(1) 	Store parameter 
168:     ST  3,-2(1) 	Save left side 
169:    LDC  3,2(6) 	Load constant 
170:     ST  3,-5(1) 	Store parameter 
171:     LD  4,-2(1) 	Load left into ac1 
172:    SUB  4,4,3 	Op >= 
173:    LDC  3,1(6) 	True case 
174:    JTE  4,1(7) 	Jump if true 
175:    LDC  3,0(6) 	False case 
176:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
177:    LDA  1,-2(1) 	Load address of new frame 
178:    LDA  3,1(7) 	Return address in ac 
179:    LDA  7,-162(7) 	Call  outputb
180:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
181:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
182:    LDC  3,2(6) 	Load constant 
183:     ST  3,-4(1) 	Store parameter 
184:     ST  3,-2(1) 	Save left side 
185:    LDC  3,2(6) 	Load constant 
186:     ST  3,-5(1) 	Store parameter 
187:     LD  4,-2(1) 	Load left into ac1 
188:    SUB  4,4,3 	Op <= 
189:    LDC  3,1(6) 	True case 
190:    JLE  4,1(7) 	Jump if true 
191:    LDC  3,0(6) 	False case 
192:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
193:    LDA  1,-2(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-178(7) 	Call  outputb
196:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
197:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
198:    LDC  3,1(6) 	Load constant 
199:     ST  3,-4(1) 	Store parameter 
200:     ST  3,-2(1) 	Save left side 
201:    LDC  3,1(6) 	Load constant 
202:     ST  3,-5(1) 	Store parameter 
203:     LD  4,-2(1) 	Load left into ac1 
204:    SUB  4,4,3 	Op == 
205:    LDC  3,1(6) 	True case 
206:    JEQ  4,1(7) 	Jump if true 
207:    LDC  3,0(6) 	False case 
208:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
209:    LDA  1,-2(1) 	Load address of new frame 
210:    LDA  3,1(7) 	Return address in ac 
211:    LDA  7,-194(7) 	Call  outputb
212:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
213:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
214:    LDC  3,1(6) 	Load constant 
215:     ST  3,-4(1) 	Store parameter 
216:     ST  3,-2(1) 	Save left side 
217:    LDC  3,1(6) 	Load constant 
218:     ST  3,-5(1) 	Store parameter 
219:     LD  4,-2(1) 	Load left into ac1 
220:    SUB  3,4,3 	Op != 
221:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
222:    LDA  1,-2(1) 	Load address of new frame 
223:    LDA  3,1(7) 	Return address in ac 
224:    LDA  7,-207(7) 	Call  outputb
225:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
226:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
227:    LDC  3,0(6) 	Load constant 
228:     ST  3,-4(1) 	Store parameter 
229:     ST  3,-2(1) 	Save left side 
230:    LDC  3,1(6) 	Load constant 
231:     ST  3,-5(1) 	Store parameter 
232:     LD  4,-2(1) 	Load left into ac1 
233:    SUB  4,4,3 	Op == 
234:    LDC  3,1(6) 	True case 
235:    JEQ  4,1(7) 	Jump if true 
236:    LDC  3,0(6) 	False case 
237:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
238:    LDA  1,-2(1) 	Load address of new frame 
239:    LDA  3,1(7) 	Return address in ac 
240:    LDA  7,-223(7) 	Call  outputb
241:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
242:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
243:    LDC  3,0(6) 	Load constant 
244:     ST  3,-4(1) 	Store parameter 
245:     ST  3,-2(1) 	Save left side 
246:    LDC  3,1(6) 	Load constant 
247:     ST  3,-5(1) 	Store parameter 
248:     LD  4,-2(1) 	Load left into ac1 
249:    SUB  3,4,3 	Op != 
250:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
251:    LDA  1,-2(1) 	Load address of new frame 
252:    LDA  3,1(7) 	Return address in ac 
253:    LDA  7,-236(7) 	Call  outputb
254:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
255:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
256:    LDC  3,0(6) 	Load constant 
257:     ST  3,-4(1) 	Store parameter 
258:     ST  3,-2(1) 	Save left side 
259:    LDC  3,0(6) 	Load constant 
260:     ST  3,-5(1) 	Store parameter 
261:     LD  4,-2(1) 	Load left into ac1 
262:    SUB  4,4,3 	Op == 
263:    LDC  3,1(6) 	True case 
264:    JEQ  4,1(7) 	Jump if true 
265:    LDC  3,0(6) 	False case 
266:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
267:    LDA  1,-2(1) 	Load address of new frame 
268:    LDA  3,1(7) 	Return address in ac 
269:    LDA  7,-252(7) 	Call  outputb
270:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
271:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
272:    LDC  3,0(6) 	Load constant 
273:     ST  3,-4(1) 	Store parameter 
274:     ST  3,-2(1) 	Save left side 
275:    LDC  3,0(6) 	Load constant 
276:     ST  3,-5(1) 	Store parameter 
277:     LD  4,-2(1) 	Load left into ac1 
278:    SUB  3,4,3 	Op != 
279:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
280:    LDA  1,-2(1) 	Load address of new frame 
281:    LDA  3,1(7) 	Return address in ac 
282:    LDA  7,-265(7) 	Call  outputb
283:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
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
289:    LDA  1,0(0) 	set first frame at end of globals 
290:     ST  1,0(1) 	store old fp (point to self) 
291:    LDA  3,0(7) 	return address in ac 
292:    LDA  7,-251(7) 	Jump to main 
293:   HALT  0,0,0 	DONE 
* END init
