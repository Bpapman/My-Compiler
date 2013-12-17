* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  e05.tm
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
 43:    LDC  3,1(6) 	Load constant 
 44:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
 46:    LDC  3,1(6) 	Load constant 
 47:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
 49:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 50:    LDC  3,13(6) 	Load constant 
 51:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 52:    LDA  1,-3(1) 	Load address of new frame 
 53:    LDA  3,1(7) 	Return address in ac 
 54:    LDA  7,-49(7) 	CALL output
 55:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,55(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,55(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
 56:    LDC  3,1(6) 	Load constant 
 57:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
 59:    LDC  3,0(6) 	Load constant 
 60:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
 62:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 63:    LDC  3,23(6) 	Load constant 
 64:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 65:    LDA  1,-3(1) 	Load address of new frame 
 66:    LDA  3,1(7) 	Return address in ac 
 67:    LDA  7,-62(7) 	CALL output
 68:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,68(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,68(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 69:    LDC  3,0(6) 	Load constant 
 70:     ST  3,-2(1) 	Store variable x
* IF
* EXPRESSION STMT
 71:    LDC  3,1(6) 	Load constant 
 72:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
 74:     LD  3,-2(1) 	Load variable x
 75:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
 77:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 78:    LDC  3,44(6) 	Load constant 
 79:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 80:    LDA  1,-3(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-77(7) 	CALL output
 83:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,83(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,83(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
 84:    LDC  3,1(6) 	Load constant 
 85:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
 87:     LD  3,-2(1) 	Load variable x
 88:    LDA  3,1(5) 	Not load address 
 89:    SUB  3,4,3 	Op Not 
 90:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
 92:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 93:    LDC  3,55(6) 	Load constant 
 94:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 95:    LDA  1,-3(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-92(7) 	CALL output
 98:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,98(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,98(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
 99:    LDC  3,1(6) 	Load constant 
100:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
102:    LDC  3,3(6) 	Load constant 
103:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
104:    LDC  3,1(6) 	Load constant 
105:     LD  4,-3(1) 	Load left into ac1 
106:    SUB  4,4,3 	Op < 
107:    LDC  3,1(6) 	True case 
108:    JGT  4,1(7) 	Jump if true 
109:    LDC  3,0(6) 	False case 
110:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
112:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
113:    LDC  3,987(6) 	Load constant 
114:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
115:    LDA  1,-3(1) 	Load address of new frame 
116:    LDA  3,1(7) 	Return address in ac 
117:    LDA  7,-112(7) 	CALL output
118:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,118(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,118(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
119:    LDC  3,1(6) 	Load constant 
120:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
122:    LDC  3,3(6) 	Load constant 
123:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
124:    LDC  3,1(6) 	Load constant 
125:     LD  4,-3(1) 	Load left into ac1 
126:    SUB  4,4,3 	Op < 
127:    LDC  3,1(6) 	True case 
128:    JLT  4,1(7) 	Jump if true 
129:    LDC  3,0(6) 	False case 
130:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
132:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
133:    LDC  3,211(6) 	Load constant 
134:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
135:    LDA  1,-3(1) 	Load address of new frame 
136:    LDA  3,1(7) 	Return address in ac 
137:    LDA  7,-132(7) 	CALL output
138:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,138(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,138(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
139:    LDC  3,1(6) 	Load constant 
140:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
142:    LDC  3,1(6) 	Load constant 
143:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
145:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
146:    LDC  3,13(6) 	Load constant 
147:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
148:    LDA  1,-3(1) 	Load address of new frame 
149:    LDA  3,1(7) 	Return address in ac 
150:    LDA  7,-145(7) 	CALL output
151:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
* BUG in emitBackup
134544570:    LDA  7,-134544418(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,152(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
153:    LDC  3,1(6) 	Load constant 
154:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
156:    LDC  3,0(6) 	Load constant 
157:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
159:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
160:    LDC  3,23(6) 	Load constant 
161:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
162:    LDA  1,-3(1) 	Load address of new frame 
163:    LDA  3,1(7) 	Return address in ac 
164:    LDA  7,-159(7) 	CALL output
165:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544404(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,166(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
167:    LDC  3,0(6) 	Load constant 
168:     ST  3,-2(1) 	Store variable x
* IF
* EXPRESSION STMT
169:    LDC  3,1(6) 	Load constant 
170:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
172:     LD  3,-2(1) 	Load variable x
173:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
175:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
176:    LDC  3,44(6) 	Load constant 
177:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
178:    LDA  1,-3(1) 	Load address of new frame 
179:    LDA  3,1(7) 	Return address in ac 
180:    LDA  7,-175(7) 	CALL output
181:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544388(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,182(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
183:    LDC  3,1(6) 	Load constant 
184:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
186:     LD  3,-2(1) 	Load variable x
187:    LDA  3,1(5) 	Not load address 
188:    SUB  3,4,3 	Op Not 
189:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
191:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
192:    LDC  3,55(6) 	Load constant 
193:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
194:    LDA  1,-3(1) 	Load address of new frame 
195:    LDA  3,1(7) 	Return address in ac 
196:    LDA  7,-191(7) 	CALL output
197:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544372(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,198(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
199:    LDC  3,1(6) 	Load constant 
200:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
202:    LDC  3,3(6) 	Load constant 
203:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
204:    LDC  3,1(6) 	Load constant 
205:     LD  4,-3(1) 	Load left into ac1 
206:    SUB  4,4,3 	Op < 
207:    LDC  3,1(6) 	True case 
208:    JGT  4,1(7) 	Jump if true 
209:    LDC  3,0(6) 	False case 
210:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
212:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
213:    LDC  3,987(6) 	Load constant 
214:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
215:    LDA  1,-3(1) 	Load address of new frame 
216:    LDA  3,1(7) 	Return address in ac 
217:    LDA  7,-212(7) 	CALL output
218:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544351(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,219(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
220:    LDC  3,1(6) 	Load constant 
221:    JGT  3,1(7) 	Jump to then part 
* THEN
* IF
* EXPRESSION STMT
223:    LDC  3,3(6) 	Load constant 
224:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
225:    LDC  3,1(6) 	Load constant 
226:     LD  4,-3(1) 	Load left into ac1 
227:    SUB  4,4,3 	Op < 
228:    LDC  3,1(6) 	True case 
229:    JLT  4,1(7) 	Jump if true 
230:    LDC  3,0(6) 	False case 
231:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
233:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
234:    LDC  3,211(6) 	Load constant 
235:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
236:    LDA  1,-3(1) 	Load address of new frame 
237:    LDA  3,1(7) 	Return address in ac 
238:    LDA  7,-233(7) 	CALL output
239:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544330(7) 	Jump around the THEN [backpatch] 
* ENDIF
  0:    LDA  7,240(7) 	Jump around the THEN [backpatch] 
* ENDIF
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
246:    LDA  1,0(0) 	set first frame at end of globals 
247:     ST  1,0(1) 	store old fp (point to self) 
248:    LDA  3,1(7) 	Return address in ac 
249:    LDA  7,-208(7) 	Jump to main 
250:   HALT  0,0,0 	DONE! 
* END Init
