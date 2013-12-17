* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c13.tm
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
 43:    LDC  3,300(6) 	load size of array x
 44:     ST  3,-2(1) 	save size of array x
* EXPRESSION STMT
 45:    LDC  3,5(6) 	Load constant 
 46:     ST  3,-303(1) 	Store variable z
* EXPRESSION STMT
 47:    LDC  3,73(6) 	Load constant 
 48:     ST  3,-303(1) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  output
 49:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
 50:     LD  3,-303(1) 	Load variable z
 51:     LD  3,-303(1) 	Load variable x
 52:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
 53:    LDA  1,-304(1) 	Load address of new frame 
 54:    LDA  3,1(7) 	Return address in ac 
 55:    LDA  7,-50(7) 	CALL output
 56:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 57:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 58:    LDA  1,-304(1) 	Load address of new frame 
 59:    LDA  3,1(7) 	Return address in ac 
 60:    LDA  7,-24(7) 	CALL outnl
 61:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
 62:    LDC  3,5(6) 	Load constant 
 63:     ST  3,-303(1) 	Store variable z
* EXPRESSION STMT
 64:    LDC  3,17(6) 	Load constant 
 65:     ST  3,-303(1) 	Store variable x
* EXPRESSION STMT
 66:    LDC  3,17(6) 	Load constant 
 67:     ST  3,-303(1) 	Store variable z
* EXPRESSION STMT
 68:    LDC  3,5(6) 	Load constant 
 69:     ST  3,-303(1) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  output
 70:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
 71:     LD  3,-303(1) 	Load variable z
 72:     LD  3,-303(1) 	Load variable x
 73:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
 74:    LDA  1,-304(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-71(7) 	CALL output
 77:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 78:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 79:    LDA  1,-304(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-45(7) 	CALL outnl
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 83:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
 84:     LD  3,-303(1) 	Load variable z
 85:     LD  3,-303(1) 	Load variable x
 86:     LD  3,-303(1) 	Load variable x
 87:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
 88:    LDA  1,-304(1) 	Load address of new frame 
 89:    LDA  3,1(7) 	Return address in ac 
 90:    LDA  7,-85(7) 	CALL output
 91:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 92:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 93:    LDA  1,-304(1) 	Load address of new frame 
 94:    LDA  3,1(7) 	Return address in ac 
 95:    LDA  7,-59(7) 	CALL outnl
 96:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 97:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
 98:     LD  3,-303(1) 	Load variable z
 99:     LD  3,-303(1) 	Load variable x
100:     LD  3,-303(1) 	Load variable x
101:     LD  3,-303(1) 	Load variable x
102:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
103:    LDA  1,-304(1) 	Load address of new frame 
104:    LDA  3,1(7) 	Return address in ac 
105:    LDA  7,-100(7) 	CALL output
106:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
107:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
108:    LDA  1,-304(1) 	Load address of new frame 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-74(7) 	CALL outnl
111:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
112:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
113:     LD  3,-303(1) 	Load variable z
114:     LD  3,-303(1) 	Load variable x
115:     LD  3,-303(1) 	Load variable x
116:     LD  3,-303(1) 	Load variable x
117:     LD  3,-303(1) 	Load variable x
118:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
119:    LDA  1,-304(1) 	Load address of new frame 
120:    LDA  3,1(7) 	Return address in ac 
121:    LDA  7,-116(7) 	CALL output
122:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
123:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
124:    LDA  1,-304(1) 	Load address of new frame 
125:    LDA  3,1(7) 	Return address in ac 
126:    LDA  7,-90(7) 	CALL outnl
127:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
128:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
129:     LD  3,-303(1) 	Load variable z
130:     LD  3,-303(1) 	Load variable x
131:     LD  3,-303(1) 	Load variable x
132:     LD  3,-303(1) 	Load variable x
133:     LD  3,-303(1) 	Load variable x
134:     LD  3,-303(1) 	Load variable x
135:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
136:    LDA  1,-304(1) 	Load address of new frame 
137:    LDA  3,1(7) 	Return address in ac 
138:    LDA  7,-133(7) 	CALL output
139:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
140:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
141:    LDA  1,-304(1) 	Load address of new frame 
142:    LDA  3,1(7) 	Return address in ac 
143:    LDA  7,-107(7) 	CALL outnl
144:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
145:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
146:     LD  3,-303(1) 	Load variable z
147:     LD  3,-303(1) 	Load variable x
148:     LD  3,-303(1) 	Load variable x
149:     LD  3,-303(1) 	Load variable x
150:     LD  3,-303(1) 	Load variable x
151:     LD  3,-303(1) 	Load variable x
152:     LD  3,-303(1) 	Load variable x
153:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
154:    LDA  1,-304(1) 	Load address of new frame 
155:    LDA  3,1(7) 	Return address in ac 
156:    LDA  7,-151(7) 	CALL output
157:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
158:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
159:    LDA  1,-304(1) 	Load address of new frame 
160:    LDA  3,1(7) 	Return address in ac 
161:    LDA  7,-125(7) 	CALL outnl
162:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
163:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
164:     LD  3,-303(1) 	Load variable z
165:     LD  3,-303(1) 	Load variable x
166:     LD  3,-303(1) 	Load variable x
167:     LD  3,-303(1) 	Load variable x
168:     LD  3,-303(1) 	Load variable x
169:     LD  3,-303(1) 	Load variable x
170:     LD  3,-303(1) 	Load variable x
171:     LD  3,-303(1) 	Load variable x
172:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
173:    LDA  1,-304(1) 	Load address of new frame 
174:    LDA  3,1(7) 	Return address in ac 
175:    LDA  7,-170(7) 	CALL output
176:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
177:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
178:    LDA  1,-304(1) 	Load address of new frame 
179:    LDA  3,1(7) 	Return address in ac 
180:    LDA  7,-144(7) 	CALL outnl
181:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
182:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
183:     LD  3,-303(1) 	Load variable z
184:     LD  3,-303(1) 	Load variable x
185:     LD  3,-303(1) 	Load variable x
186:     LD  3,-303(1) 	Load variable x
187:     LD  3,-303(1) 	Load variable x
188:     LD  3,-303(1) 	Load variable x
189:     LD  3,-303(1) 	Load variable x
190:     LD  3,-303(1) 	Load variable x
191:     LD  3,-303(1) 	Load variable x
192:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
193:    LDA  1,-304(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-190(7) 	CALL output
196:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
197:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
198:    LDA  1,-304(1) 	Load address of new frame 
199:    LDA  3,1(7) 	Return address in ac 
200:    LDA  7,-164(7) 	CALL outnl
201:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
202:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
203:     LD  3,-303(1) 	Load variable z
204:     LD  3,-303(1) 	Load variable x
205:     LD  3,-303(1) 	Load variable x
206:     LD  3,-303(1) 	Load variable x
207:     LD  3,-303(1) 	Load variable x
208:     LD  3,-303(1) 	Load variable x
209:     LD  3,-303(1) 	Load variable x
210:     LD  3,-303(1) 	Load variable x
211:     LD  3,-303(1) 	Load variable x
212:     LD  3,-303(1) 	Load variable x
213:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
214:    LDA  1,-304(1) 	Load address of new frame 
215:    LDA  3,1(7) 	Return address in ac 
216:    LDA  7,-211(7) 	CALL output
217:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
218:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
219:    LDA  1,-304(1) 	Load address of new frame 
220:    LDA  3,1(7) 	Return address in ac 
221:    LDA  7,-185(7) 	CALL outnl
222:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
223:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Load param 1
224:     LD  3,-303(1) 	Load variable z
225:     LD  3,-303(1) 	Load variable x
226:     LD  3,-303(1) 	Load variable x
227:     LD  3,-303(1) 	Load variable x
228:     LD  3,-303(1) 	Load variable x
229:     LD  3,-303(1) 	Load variable x
230:     LD  3,-303(1) 	Load variable x
231:     LD  3,-303(1) 	Load variable x
232:     LD  3,-303(1) 	Load variable x
233:     LD  3,-303(1) 	Load variable x
234:     LD  3,-303(1) 	Load variable x
235:     ST  3,-306(1) 	Store parameter 
* 			Jump to output
236:    LDA  1,-304(1) 	Load address of new frame 
237:    LDA  3,1(7) 	Return address in ac 
238:    LDA  7,-233(7) 	CALL output
239:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
240:     ST  1,-304(1) 	Store old fp in ghost frame 
* 			Jump to outnl
241:    LDA  1,-304(1) 	Load address of new frame 
242:    LDA  3,1(7) 	Return address in ac 
243:    LDA  7,-207(7) 	CALL outnl
244:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
245:    LDC  2,0(6) 	Set return value to 0 
246:     LD  3,-1(1) 	Load return address 
247:     LD  1,0(1) 	Adjust fp 
248:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,248(7) 	Jump to init [backpatch] 
* BEGIN Init
249:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
250:    LDA  1,0(0) 	set first frame at end of globals 
251:     ST  1,0(1) 	store old fp (point to self) 
252:    LDA  3,1(7) 	Return address in ac 
253:    LDA  7,-212(7) 	Jump to main 
254:   HALT  0,0,0 	DONE! 
* END Init
