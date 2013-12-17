* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  permlist.tm
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
 44:    LDA  4,-4(1) 	Load address of base of array sum
 45:    SUB  3,4,3 	Compute offset of value 
 46:     LD  3,0(3) 	Load the value 
 47:     ST  3,-4(1) 	Store variable sum
* EXPRESSION STMT
 48:    LDC  3,2(6) 	Load constant 
 49:     ST  3,-3(1) 	Store variable j
* WHILE
* EXPRESSION STMT
 50:     LD  3,-3(1) 	Load variable j
 51:     ST  3,-5(1) 	Save left side 
* EXPRESSION STMT
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
* EXPRESSION STMT
 62:    LDC  3,10(6) 	Load constant 
 63:     LD  4,-5(1) 	Load left into ac1 
 64:    MUL  3,4,3 	Op * 
 65:     ST  3,-5(1) 	Save left side 
* EXPRESSION STMT
 66:     LD  3,-3(1) 	Load variable j
 67:     LD  3,-3(1) 	Load variable p
 68:     LD  4,-5(1) 	Load left into ac1 
 69:    ADD  3,4,3 	Op + 
 70:     ST  3,-4(1) 	Store variable sum
* EXPRESSION STMT
 71:     LD  3,-3(1) 	Load variable j
 72:     ST  3,-5(1) 	Save left side 
* EXPRESSION STMT
 73:    LDC  3,1(6) 	Load constant 
 74:     LD  4,-5(1) 	Load left into ac1 
 75:    ADD  3,4,3 	Op + 
 76:     ST  3,-3(1) 	Store variable j
* END compound statement
 77:    LDA  7,-28(7) 	go to beginning of loop 
 59:    LDA  7,18(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  output
 78:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
 79:     LD  3,-4(1) 	Load variable sum
 80:     ST  3,-7(1) 	Store parameter 
* 			Jump to output
 81:    LDA  1,-5(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-78(7) 	CALL output
 84:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 85:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 86:    LDA  1,-5(1) 	Load address of new frame 
 87:    LDA  3,1(7) 	Return address in ac 
 88:    LDA  7,-52(7) 	CALL outnl
 89:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 90:    LDC  2,0(6) 	Set return value to 0 
 91:     LD  3,-1(1) 	Load return address 
 92:     LD  1,0(1) 	Adjust fp 
 93:    LDA  7,0(3) 	Return 
* END of function put
* BEGIN function main
 94:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 95:    LDC  3,20(6) 	load size of array p
 96:     ST  3,-2(1) 	save size of array p
* EXPRESSION STMT
* 			Begin call to  input
 97:     ST  1,-28(1) 	Store old fp in ghost frame 
* 			Jump to input
 98:    LDA  1,-28(1) 	Load address of new frame 
 99:    LDA  3,1(7) 	Return address in ac 
100:    LDA  7,-100(7) 	CALL input
101:    LDA  3,0(2) 	Save the result in ac 
* 			End call to input
* EXPRESSION STMT
102:     ST  3,0(0) 	Store variable n
* EXPRESSION STMT
103:    LDC  3,0(6) 	Load constant 
104:     ST  3,-24(1) 	Store variable j
* WHILE
* EXPRESSION STMT
105:     LD  3,-24(1) 	Load variable j
106:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
107:     LD  3,0(0) 	Load variable n
108:     LD  4,-28(1) 	Load left into ac1 
109:    SUB  4,4,3 	Op <= 
110:    LDC  3,1(6) 	True case 
111:    JLE  4,1(7) 	Jump if true 
112:    LDC  3,0(6) 	False case 
113:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
115:     LD  3,-24(1) 	Load variable j
116:     ST  3,-24(1) 	Store variable p
* EXPRESSION STMT
117:     LD  3,-24(1) 	Load variable j
118:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
119:    LDC  3,1(6) 	Load constant 
120:     LD  4,-28(1) 	Load left into ac1 
121:    ADD  3,4,3 	Op + 
122:     ST  3,-24(1) 	Store variable j
* END compound statement
123:    LDA  7,-19(7) 	go to beginning of loop 
114:    LDA  7,9(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
124:    LDC  3,1(6) 	Load constant 
125:     ST  3,-23(1) 	Store variable i
* WHILE
* EXPRESSION STMT
126:     LD  3,-23(1) 	Load variable i
127:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
128:    LDC  3,0(6) 	Load constant 
129:     LD  4,-28(1) 	Load left into ac1 
130:    SUB  4,4,3 	Op < 
131:    LDC  3,1(6) 	True case 
132:    JGT  4,1(7) 	Jump if true 
133:    LDC  3,0(6) 	False case 
134:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  put
136:     ST  1,-28(1) 	Store old fp in ghost frame 
* 			Load param 1
137:    LDA  3,-3(1) 	Load address of base of array p
138:     ST  3,-30(1) 	Store parameter 
* 			Jump to put
139:    LDA  1,-28(1) 	Load address of new frame 
140:    LDA  3,1(7) 	Return address in ac 
141:    LDA  7,-100(7) 	CALL put
142:    LDA  3,0(2) 	Save the result in ac 
* 			End call to put
* EXPRESSION STMT
* EXPRESSION STMT
143:     LD  3,0(0) 	Load variable n
144:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
145:    LDC  3,1(6) 	Load constant 
146:     LD  4,-28(1) 	Load left into ac1 
147:    SUB  3,4,3 	Op - 
148:     ST  3,-23(1) 	Store variable i
* WHILE
* EXPRESSION STMT
149:     LD  3,-23(1) 	Load variable i
150:     LD  3,-23(1) 	Load variable p
151:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
152:     LD  3,-23(1) 	Load variable i
153:     ST  3,-29(1) 	Save left side 
* EXPRESSION STMT
154:    LDC  3,1(6) 	Load constant 
155:     LD  4,-29(1) 	Load left into ac1 
156:    ADD  3,4,3 	Op + 
157:     LD  3,-23(1) 	Load variable p
158:     LD  4,-28(1) 	Load left into ac1 
159:    SUB  4,4,3 	Op < 
160:    LDC  3,1(6) 	True case 
161:    JGT  4,1(7) 	Jump if true 
162:    LDC  3,0(6) 	False case 
163:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
165:     LD  3,-23(1) 	Load variable i
166:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
167:    LDC  3,1(6) 	Load constant 
168:     LD  4,-28(1) 	Load left into ac1 
169:    SUB  3,4,3 	Op - 
170:     ST  3,-23(1) 	Store variable i
171:    LDA  7,-23(7) 	go to beginning of loop 
164:    LDA  7,7(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
172:     LD  3,0(0) 	Load variable n
173:     ST  3,-24(1) 	Store variable j
* WHILE
* EXPRESSION STMT
174:     LD  3,-23(1) 	Load variable i
175:     LD  3,-23(1) 	Load variable p
176:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
177:     LD  3,-24(1) 	Load variable j
178:     LD  3,-24(1) 	Load variable p
179:     LD  4,-28(1) 	Load left into ac1 
180:    SUB  4,4,3 	Op < 
181:    LDC  3,1(6) 	True case 
182:    JGT  4,1(7) 	Jump if true 
183:    LDC  3,0(6) 	False case 
184:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
186:     LD  3,-24(1) 	Load variable j
187:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
188:    LDC  3,1(6) 	Load constant 
189:     LD  4,-28(1) 	Load left into ac1 
190:    SUB  3,4,3 	Op - 
191:     ST  3,-24(1) 	Store variable j
192:    LDA  7,-19(7) 	go to beginning of loop 
185:    LDA  7,7(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
193:     LD  3,-23(1) 	Load variable i
194:     LD  3,-23(1) 	Load variable p
195:     ST  3,-27(1) 	Store variable tmp
* EXPRESSION STMT
196:     LD  3,-24(1) 	Load variable j
197:     LD  3,-24(1) 	Load variable p
198:     ST  3,-23(1) 	Store variable p
* EXPRESSION STMT
199:     LD  3,-27(1) 	Load variable tmp
200:     ST  3,-24(1) 	Store variable p
* EXPRESSION STMT
201:     LD  3,0(0) 	Load variable n
202:     ST  3,-25(1) 	Store variable r
* EXPRESSION STMT
203:     LD  3,-23(1) 	Load variable i
204:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
205:    LDC  3,1(6) 	Load constant 
206:     LD  4,-28(1) 	Load left into ac1 
207:    ADD  3,4,3 	Op + 
208:     ST  3,-26(1) 	Store variable s
* WHILE
* EXPRESSION STMT
209:     LD  3,-25(1) 	Load variable r
210:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
211:     LD  3,-26(1) 	Load variable s
212:     LD  4,-28(1) 	Load left into ac1 
213:    SUB  4,4,3 	Op < 
214:    LDC  3,1(6) 	True case 
215:    JGT  4,1(7) 	Jump if true 
216:    LDC  3,0(6) 	False case 
217:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
219:     LD  3,-25(1) 	Load variable r
220:     LD  3,-25(1) 	Load variable p
221:     ST  3,-27(1) 	Store variable tmp
* EXPRESSION STMT
222:     LD  3,-26(1) 	Load variable s
223:     LD  3,-26(1) 	Load variable p
224:     ST  3,-25(1) 	Store variable p
* EXPRESSION STMT
225:     LD  3,-27(1) 	Load variable tmp
226:     ST  3,-26(1) 	Store variable p
* EXPRESSION STMT
227:     LD  3,-25(1) 	Load variable r
228:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
229:    LDC  3,1(6) 	Load constant 
230:     LD  4,-28(1) 	Load left into ac1 
231:    SUB  3,4,3 	Op - 
232:     ST  3,-25(1) 	Store variable r
* EXPRESSION STMT
233:     LD  3,-26(1) 	Load variable s
234:     ST  3,-28(1) 	Save left side 
* EXPRESSION STMT
235:    LDC  3,1(6) 	Load constant 
236:     LD  4,-28(1) 	Load left into ac1 
237:    ADD  3,4,3 	Op + 
238:     ST  3,-26(1) 	Store variable s
* END compound statement
239:    LDA  7,-31(7) 	go to beginning of loop 
218:    LDA  7,21(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
240:    LDA  7,-115(7) 	go to beginning of loop 
135:    LDA  7,105(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
241:    LDC  2,0(6) 	Set return value to 0 
242:     LD  3,-1(1) 	Load return address 
243:     LD  1,0(1) 	Adjust fp 
244:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,244(7) 	Jump to init [backpatch] 
* BEGIN Init
245:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
246:    LDA  1,-1(0) 	set first frame at end of globals 
247:     ST  1,0(1) 	store old fp (point to self) 
248:    LDA  3,1(7) 	Return address in ac 
249:    LDA  7,-156(7) 	Jump to main 
250:   HALT  0,0,0 	DONE! 
* END Init
