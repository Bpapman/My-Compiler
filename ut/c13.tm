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
 43:    LDC  3,5(6) 	Load constant 
 44:     ST  3,-303(1) 	Store variable z
 45:    LDC  3,73(6) 	Load constant 
 46:     ST  3,-303(1) 	Store variable x
* 			Begin call to  output
 47:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
 48:     LD  3,-303(1) 	Load variable z
 49:     ST  3,-306(1) 	Store parameter 
 50:     LD  3,-303(1) 	Load variable x
 51:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
 52:    LDA  1,-304(1) 	Load address of new frame 
 53:    LDA  3,1(7) 	Return address in ac 
 54:    LDA  7,-49(7) 	Call  output
 55:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 56:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 57:    LDA  1,-304(1) 	Load address of new frame 
 58:    LDA  3,1(7) 	Return address in ac 
 59:    LDA  7,-23(7) 	Call  outnl
 60:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
 61:    LDC  3,5(6) 	Load constant 
 62:     ST  3,-303(1) 	Store variable z
 63:    LDC  3,17(6) 	Load constant 
 64:     ST  3,-303(1) 	Store variable x
 65:    LDC  3,17(6) 	Load constant 
 66:     ST  3,-303(1) 	Store variable z
 67:    LDC  3,5(6) 	Load constant 
 68:     ST  3,-303(1) 	Store variable x
* 			Begin call to  output
 69:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
 70:     LD  3,-303(1) 	Load variable z
 71:     ST  3,-306(1) 	Store parameter 
 72:     LD  3,-303(1) 	Load variable x
 73:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
 74:    LDA  1,-304(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-71(7) 	Call  output
 77:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 78:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 79:    LDA  1,-304(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-45(7) 	Call  outnl
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 83:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
 84:     LD  3,-303(1) 	Load variable z
 85:     ST  3,-306(1) 	Store parameter 
 86:     LD  3,-303(1) 	Load variable x
 87:     ST  3,-306(1) 	Store parameter 
 88:     LD  3,-303(1) 	Load variable x
 89:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
 90:    LDA  1,-304(1) 	Load address of new frame 
 91:    LDA  3,1(7) 	Return address in ac 
 92:    LDA  7,-87(7) 	Call  output
 93:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 94:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 95:    LDA  1,-304(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-61(7) 	Call  outnl
 98:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
 99:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
100:     LD  3,-303(1) 	Load variable z
101:     ST  3,-306(1) 	Store parameter 
102:     LD  3,-303(1) 	Load variable x
103:     ST  3,-306(1) 	Store parameter 
104:     LD  3,-303(1) 	Load variable x
105:     ST  3,-306(1) 	Store parameter 
106:     LD  3,-303(1) 	Load variable x
107:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
108:    LDA  1,-304(1) 	Load address of new frame 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-105(7) 	Call  output
111:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
112:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
113:    LDA  1,-304(1) 	Load address of new frame 
114:    LDA  3,1(7) 	Return address in ac 
115:    LDA  7,-79(7) 	Call  outnl
116:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
117:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
118:     LD  3,-303(1) 	Load variable z
119:     ST  3,-306(1) 	Store parameter 
120:     LD  3,-303(1) 	Load variable x
121:     ST  3,-306(1) 	Store parameter 
122:     LD  3,-303(1) 	Load variable x
123:     ST  3,-306(1) 	Store parameter 
124:     LD  3,-303(1) 	Load variable x
125:     ST  3,-306(1) 	Store parameter 
126:     LD  3,-303(1) 	Load variable x
127:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
128:    LDA  1,-304(1) 	Load address of new frame 
129:    LDA  3,1(7) 	Return address in ac 
130:    LDA  7,-125(7) 	Call  output
131:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
132:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
133:    LDA  1,-304(1) 	Load address of new frame 
134:    LDA  3,1(7) 	Return address in ac 
135:    LDA  7,-99(7) 	Call  outnl
136:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
137:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
138:     LD  3,-303(1) 	Load variable z
139:     ST  3,-306(1) 	Store parameter 
140:     LD  3,-303(1) 	Load variable x
141:     ST  3,-306(1) 	Store parameter 
142:     LD  3,-303(1) 	Load variable x
143:     ST  3,-306(1) 	Store parameter 
144:     LD  3,-303(1) 	Load variable x
145:     ST  3,-306(1) 	Store parameter 
146:     LD  3,-303(1) 	Load variable x
147:     ST  3,-306(1) 	Store parameter 
148:     LD  3,-303(1) 	Load variable x
149:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
150:    LDA  1,-304(1) 	Load address of new frame 
151:    LDA  3,1(7) 	Return address in ac 
152:    LDA  7,-147(7) 	Call  output
153:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
154:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
155:    LDA  1,-304(1) 	Load address of new frame 
156:    LDA  3,1(7) 	Return address in ac 
157:    LDA  7,-121(7) 	Call  outnl
158:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
159:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
160:     LD  3,-303(1) 	Load variable z
161:     ST  3,-306(1) 	Store parameter 
162:     LD  3,-303(1) 	Load variable x
163:     ST  3,-306(1) 	Store parameter 
164:     LD  3,-303(1) 	Load variable x
165:     ST  3,-306(1) 	Store parameter 
166:     LD  3,-303(1) 	Load variable x
167:     ST  3,-306(1) 	Store parameter 
168:     LD  3,-303(1) 	Load variable x
169:     ST  3,-306(1) 	Store parameter 
170:     LD  3,-303(1) 	Load variable x
171:     ST  3,-306(1) 	Store parameter 
172:     LD  3,-303(1) 	Load variable x
173:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
174:    LDA  1,-304(1) 	Load address of new frame 
175:    LDA  3,1(7) 	Return address in ac 
176:    LDA  7,-171(7) 	Call  output
177:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
178:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
179:    LDA  1,-304(1) 	Load address of new frame 
180:    LDA  3,1(7) 	Return address in ac 
181:    LDA  7,-145(7) 	Call  outnl
182:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
183:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
184:     LD  3,-303(1) 	Load variable z
185:     ST  3,-306(1) 	Store parameter 
186:     LD  3,-303(1) 	Load variable x
187:     ST  3,-306(1) 	Store parameter 
188:     LD  3,-303(1) 	Load variable x
189:     ST  3,-306(1) 	Store parameter 
190:     LD  3,-303(1) 	Load variable x
191:     ST  3,-306(1) 	Store parameter 
192:     LD  3,-303(1) 	Load variable x
193:     ST  3,-306(1) 	Store parameter 
194:     LD  3,-303(1) 	Load variable x
195:     ST  3,-306(1) 	Store parameter 
196:     LD  3,-303(1) 	Load variable x
197:     ST  3,-306(1) 	Store parameter 
198:     LD  3,-303(1) 	Load variable x
199:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
200:    LDA  1,-304(1) 	Load address of new frame 
201:    LDA  3,1(7) 	Return address in ac 
202:    LDA  7,-197(7) 	Call  output
203:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
204:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
205:    LDA  1,-304(1) 	Load address of new frame 
206:    LDA  3,1(7) 	Return address in ac 
207:    LDA  7,-171(7) 	Call  outnl
208:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
209:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
210:     LD  3,-303(1) 	Load variable z
211:     ST  3,-306(1) 	Store parameter 
212:     LD  3,-303(1) 	Load variable x
213:     ST  3,-306(1) 	Store parameter 
214:     LD  3,-303(1) 	Load variable x
215:     ST  3,-306(1) 	Store parameter 
216:     LD  3,-303(1) 	Load variable x
217:     ST  3,-306(1) 	Store parameter 
218:     LD  3,-303(1) 	Load variable x
219:     ST  3,-306(1) 	Store parameter 
220:     LD  3,-303(1) 	Load variable x
221:     ST  3,-306(1) 	Store parameter 
222:     LD  3,-303(1) 	Load variable x
223:     ST  3,-306(1) 	Store parameter 
224:     LD  3,-303(1) 	Load variable x
225:     ST  3,-306(1) 	Store parameter 
226:     LD  3,-303(1) 	Load variable x
227:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
228:    LDA  1,-304(1) 	Load address of new frame 
229:    LDA  3,1(7) 	Return address in ac 
230:    LDA  7,-225(7) 	Call  output
231:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
232:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
233:    LDA  1,-304(1) 	Load address of new frame 
234:    LDA  3,1(7) 	Return address in ac 
235:    LDA  7,-199(7) 	Call  outnl
236:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
237:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
238:     LD  3,-303(1) 	Load variable z
239:     ST  3,-306(1) 	Store parameter 
240:     LD  3,-303(1) 	Load variable x
241:     ST  3,-306(1) 	Store parameter 
242:     LD  3,-303(1) 	Load variable x
243:     ST  3,-306(1) 	Store parameter 
244:     LD  3,-303(1) 	Load variable x
245:     ST  3,-306(1) 	Store parameter 
246:     LD  3,-303(1) 	Load variable x
247:     ST  3,-306(1) 	Store parameter 
248:     LD  3,-303(1) 	Load variable x
249:     ST  3,-306(1) 	Store parameter 
250:     LD  3,-303(1) 	Load variable x
251:     ST  3,-306(1) 	Store parameter 
252:     LD  3,-303(1) 	Load variable x
253:     ST  3,-306(1) 	Store parameter 
254:     LD  3,-303(1) 	Load variable x
255:     ST  3,-306(1) 	Store parameter 
256:     LD  3,-303(1) 	Load variable x
257:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
258:    LDA  1,-304(1) 	Load address of new frame 
259:    LDA  3,1(7) 	Return address in ac 
260:    LDA  7,-255(7) 	Call  output
261:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
262:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
263:    LDA  1,-304(1) 	Load address of new frame 
264:    LDA  3,1(7) 	Return address in ac 
265:    LDA  7,-229(7) 	Call  outnl
266:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* 			Begin call to  output
267:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load Param 1
268:     LD  3,-303(1) 	Load variable z
269:     ST  3,-306(1) 	Store parameter 
270:     LD  3,-303(1) 	Load variable x
271:     ST  3,-306(1) 	Store parameter 
272:     LD  3,-303(1) 	Load variable x
273:     ST  3,-306(1) 	Store parameter 
274:     LD  3,-303(1) 	Load variable x
275:     ST  3,-306(1) 	Store parameter 
276:     LD  3,-303(1) 	Load variable x
277:     ST  3,-306(1) 	Store parameter 
278:     LD  3,-303(1) 	Load variable x
279:     ST  3,-306(1) 	Store parameter 
280:     LD  3,-303(1) 	Load variable x
281:     ST  3,-306(1) 	Store parameter 
282:     LD  3,-303(1) 	Load variable x
283:     ST  3,-306(1) 	Store parameter 
284:     LD  3,-303(1) 	Load variable x
285:     ST  3,-306(1) 	Store parameter 
286:     LD  3,-303(1) 	Load variable x
287:     ST  3,-306(1) 	Store parameter 
288:     LD  3,-303(1) 	Load variable x
289:     ST  3,-306(1) 	Store parameter 
* 			Jump to  output
290:    LDA  1,-304(1) 	Load address of new frame 
291:    LDA  3,1(7) 	Return address in ac 
292:    LDA  7,-287(7) 	Call  output
293:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
294:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
295:    LDA  1,-304(1) 	Load address of new frame 
296:    LDA  3,1(7) 	Return address in ac 
297:    LDA  7,-261(7) 	Call  outnl
298:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
299:    LDC  2,0(6) 	Set return value to 0 
300:     LD  3,-1(1) 	Load return address 
301:     LD  1,0(1) 	Adjust fp 
302:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,302(7) 	Jump to init [backpatch] 
* BEGIN Init
303:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
304:    LDA  1,0(0) 	set first frame at end of globals 
305:     ST  1,0(1) 	store old fp (point to self) 
306:    LDA  3,0(7) 	return address in ac 
307:    LDA  7,-266(7) 	Jump to main 
308:   HALT  0,0,0 	DONE 
* END init
