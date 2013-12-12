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
* IF
* EXPRESSION STMT
 43:    LDC  3,0(6) 	Load constant 
 44:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
 46:    LDC  3,1(6) 	Load constant 
 47:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 49:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 50:    LDC  3,13(6) 	Load constant 
 51:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 52:    LDA  1,-3(1) 	Load address of new frame 
 53:    LDA  3,1(7) 	Return address in ac 
 54:    LDA  7,-49(7) 	Call  output
 55:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,55(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,55(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 56:    LDC  3,0(6) 	Load constant 
 57:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
 59:    LDC  3,0(6) 	Load constant 
 60:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 62:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 63:    LDC  3,23(6) 	Load constant 
 64:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 65:    LDA  1,-3(1) 	Load address of new frame 
 66:    LDA  3,1(7) 	Return address in ac 
 67:    LDA  7,-62(7) 	Call  output
 68:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,68(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,68(7) 	Jump around the THEN [backpatch] 
* ENDIF
 69:    LDC  3,0(6) 	Load constant 
 70:     ST  3,-2(1) 	Store variable x
* IF
 71:    LDC  3,0(6) 	Load constant 
 72:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
 74:     LD  3,-2(1) 	Load variable x
 75:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 77:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 78:    LDC  3,44(6) 	Load constant 
 79:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 80:    LDA  1,-3(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-77(7) 	Call  output
 83:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,83(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,83(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 84:    LDC  3,0(6) 	Load constant 
 85:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
 87:     LD  3,-2(1) 	Load variable x
 88:    SUB  3,4,3 	Op = 
 89:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 91:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 92:    LDC  3,55(6) 	Load constant 
 93:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 94:    LDA  1,-3(1) 	Load address of new frame 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-91(7) 	Call  output
 97:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,97(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,97(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 98:    LDC  3,0(6) 	Load constant 
 99:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
101:    LDC  3,3(6) 	Load constant 
102:     ST  3,-3(1) 	Save left side 
103:    LDC  3,1(6) 	Load constant 
104:     LD  4,-3(1) 	Load left into ac1 
105:    SUB  4,4,3 	Op < 
106:    LDC  3,1(6) 	True case 
107:    JGT  4,1(7) 	Jump if true 
108:    LDC  3,0(6) 	False case 
109:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
111:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
112:    LDC  3,987(6) 	Load constant 
113:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
114:    LDA  1,-3(1) 	Load address of new frame 
115:    LDA  3,1(7) 	Return address in ac 
116:    LDA  7,-111(7) 	Call  output
117:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,117(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,117(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
118:    LDC  3,0(6) 	Load constant 
119:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
121:    LDC  3,3(6) 	Load constant 
122:     ST  3,-3(1) 	Save left side 
123:    LDC  3,1(6) 	Load constant 
124:     LD  4,-3(1) 	Load left into ac1 
125:    SUB  4,4,3 	Op < 
126:    LDC  3,1(6) 	True case 
127:    JLT  4,1(7) 	Jump if true 
128:    LDC  3,0(6) 	False case 
129:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
131:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
132:    LDC  3,211(6) 	Load constant 
133:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
134:    LDA  1,-3(1) 	Load address of new frame 
135:    LDA  3,1(7) 	Return address in ac 
136:    LDA  7,-131(7) 	Call  output
137:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,137(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,137(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
138:    LDC  3,0(6) 	Load constant 
139:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
141:    LDC  3,1(6) 	Load constant 
142:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
144:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
145:    LDC  3,13(6) 	Load constant 
146:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
147:    LDA  1,-3(1) 	Load address of new frame 
148:    LDA  3,1(7) 	Return address in ac 
149:    LDA  7,-144(7) 	Call  output
150:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,150(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,150(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
151:    LDC  3,0(6) 	Load constant 
152:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
154:    LDC  3,0(6) 	Load constant 
155:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
157:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
158:    LDC  3,23(6) 	Load constant 
159:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
160:    LDA  1,-3(1) 	Load address of new frame 
161:    LDA  3,1(7) 	Return address in ac 
162:    LDA  7,-157(7) 	Call  output
163:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,163(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,163(7) 	Jump around the THEN [backpatch] 
* ENDIF
164:    LDC  3,0(6) 	Load constant 
165:     ST  3,-2(1) 	Store variable x
* IF
166:    LDC  3,0(6) 	Load constant 
167:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
169:     LD  3,-2(1) 	Load variable x
170:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
172:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
173:    LDC  3,44(6) 	Load constant 
174:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
175:    LDA  1,-3(1) 	Load address of new frame 
176:    LDA  3,1(7) 	Return address in ac 
177:    LDA  7,-172(7) 	Call  output
178:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,178(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,178(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
179:    LDC  3,0(6) 	Load constant 
180:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
182:     LD  3,-2(1) 	Load variable x
183:    SUB  3,4,3 	Op = 
184:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
186:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
187:    LDC  3,55(6) 	Load constant 
188:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
189:    LDA  1,-3(1) 	Load address of new frame 
190:    LDA  3,1(7) 	Return address in ac 
191:    LDA  7,-186(7) 	Call  output
192:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,192(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,192(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
193:    LDC  3,0(6) 	Load constant 
194:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
196:    LDC  3,3(6) 	Load constant 
197:     ST  3,-3(1) 	Save left side 
198:    LDC  3,1(6) 	Load constant 
199:     LD  4,-3(1) 	Load left into ac1 
200:    SUB  4,4,3 	Op < 
201:    LDC  3,1(6) 	True case 
202:    JGT  4,1(7) 	Jump if true 
203:    LDC  3,0(6) 	False case 
204:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
206:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
207:    LDC  3,987(6) 	Load constant 
208:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
209:    LDA  1,-3(1) 	Load address of new frame 
210:    LDA  3,1(7) 	Return address in ac 
211:    LDA  7,-206(7) 	Call  output
212:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,212(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,212(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
213:    LDC  3,0(6) 	Load constant 
214:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
216:    LDC  3,3(6) 	Load constant 
217:     ST  3,-3(1) 	Save left side 
218:    LDC  3,1(6) 	Load constant 
219:     LD  4,-3(1) 	Load left into ac1 
220:    SUB  4,4,3 	Op < 
221:    LDC  3,1(6) 	True case 
222:    JLT  4,1(7) 	Jump if true 
223:    LDC  3,0(6) 	False case 
224:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
226:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
227:    LDC  3,211(6) 	Load constant 
228:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
229:    LDA  1,-3(1) 	Load address of new frame 
230:    LDA  3,1(7) 	Return address in ac 
231:    LDA  7,-226(7) 	Call  output
232:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,232(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,232(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
233:    LDC  2,0(6) 	Set return value to 0 
234:     LD  3,-1(1) 	Load return address 
235:     LD  1,0(1) 	Adjust fp 
236:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,236(7) 	Jump to init [backpatch] 
* BEGIN Init
237:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
238:    LDA  1,0(0) 	set first frame at end of globals 
239:     ST  1,0(1) 	store old fp (point to self) 
240:    LDA  3,0(7) 	return address in ac 
241:    LDA  7,-200(7) 	Jump to main 
242:   HALT  0,0,0 	DONE 
* END init
