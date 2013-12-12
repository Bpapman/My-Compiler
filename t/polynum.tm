* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  polynum.c-
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
 43:    LDC  3,1(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable i
* EXPRESSION STMT
 45:    LDC  3,1(6) 	Load constant 
 46:     ST  3,-8(1) 	Store variable min
* WHILE
 47:     LD  3,-2(1) 	Load variable i
 48:     ST  3,-11(1) 	Save left side 
 49:    LDC  3,2000(6) 	Load constant 
 50:     LD  4,-11(1) 	Load left into ac1 
 51:    SUB  4,4,3 	Op < 
 52:    LDC  3,1(6) 	True case 
 53:    JLT  4,1(7) 	Jump if true 
 54:    LDC  3,0(6) 	False case 
 55:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 57:    LDC  3,2(6) 	Load constant 
 58:     ST  3,-3(1) 	Store variable m
* EXPRESSION STMT
 59:     LD  3,-3(1) 	Load variable m
 60:     ST  3,-11(1) 	Save left side 
 61:     LD  3,-3(1) 	Load variable m
 62:     ST  3,-12(1) 	Save left side 
 63:    LDC  3,1(6) 	Load constant 
 64:     LD  4,-12(1) 	Load left into ac1 
 65:    ADD  3,4,3 	Op + 
 66:     LD  4,-11(1) 	Load left into ac1 
 67:    MUL  3,4,3 	Op * 
 68:     ST  3,-11(1) 	Save left side 
 69:    LDC  3,2(6) 	Load constant 
 70:     LD  4,-11(1) 	Load left into ac1 
 71:    DIV  3,4,3 	Op / 
 72:     ST  3,-6(1) 	Store variable tm
* EXPRESSION STMT
 73:     LD  3,-2(1) 	Load variable i
 74:     ST  3,-11(1) 	Save left side 
 75:     LD  3,-3(1) 	Load variable m
 76:     ST  3,-12(1) 	Save left side 
 77:    LDC  3,1(6) 	Load constant 
 78:     LD  4,-12(1) 	Load left into ac1 
 79:    ADD  3,4,3 	Op + 
 80:     LD  4,-11(1) 	Load left into ac1 
 81:    SUB  3,4,3 	Op - 
 82:     ST  3,-5(1) 	Store variable x
* EXPRESSION STMT
 83:     LD  3,-5(1) 	Load variable x
 84:     ST  3,-11(1) 	Save left side 
 85:     LD  3,-6(1) 	Load variable tm
 86:     LD  4,-11(1) 	Load left into ac1 
 87:    DIV  3,4,3 	Op / 
 88:     ST  3,-4(1) 	Store variable t
* EXPRESSION STMT
 89:    LDC  3,0(6) 	Load constant 
 90:     ST  3,-7(1) 	Store variable num
* WHILE
 91:     LD  3,-4(1) 	Load variable t
 92:     ST  3,-11(1) 	Save left side 
 93:    LDC  3,0(6) 	Load constant 
 94:     LD  4,-11(1) 	Load left into ac1 
 95:    SUB  4,4,3 	Op > 
 96:    LDC  3,1(6) 	True case 
 97:    JGT  4,1(7) 	Jump if true 
 98:    LDC  3,0(6) 	False case 
 99:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
101:     LD  3,-4(1) 	Load variable t
102:     ST  3,-11(1) 	Save left side 
103:     LD  3,-6(1) 	Load variable tm
104:     LD  4,-11(1) 	Load left into ac1 
105:    MUL  3,4,3 	Op * 
106:     ST  3,-11(1) 	Save left side 
107:     LD  3,-5(1) 	Load variable x
108:     LD  4,-11(1) 	Load left into ac1 
109:    SUB  4,4,3 	Op == 
110:    LDC  3,1(6) 	True case 
111:    JEQ  4,1(7) 	Jump if true 
112:    LDC  3,0(6) 	False case 
113:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
115:     LD  3,-7(1) 	Load variable num
116:     ST  3,-11(1) 	Save left side 
117:    LDC  3,1(6) 	Load constant 
118:     LD  4,-11(1) 	Load left into ac1 
119:    ADD  3,4,3 	Op + 
120:     ST  3,-7(1) 	Store variable num
114:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
121:     LD  3,-3(1) 	Load variable m
122:     ST  3,-11(1) 	Save left side 
123:    LDC  3,1(6) 	Load constant 
124:     LD  4,-11(1) 	Load left into ac1 
125:    ADD  3,4,3 	Op + 
126:     ST  3,-3(1) 	Store variable m
* EXPRESSION STMT
127:     LD  3,-3(1) 	Load variable m
128:     ST  3,-11(1) 	Save left side 
129:    LDC  3,1(6) 	Load constant 
130:     LD  4,-11(1) 	Load left into ac1 
131:    ADD  3,4,3 	Op + 
132:     ST  3,-9(1) 	Store variable a
* EXPRESSION STMT
133:     LD  3,-3(1) 	Load variable m
134:     ST  3,-11(1) 	Save left side 
135:     LD  3,-3(1) 	Load variable m
136:     ST  3,-12(1) 	Save left side 
137:    LDC  3,1(6) 	Load constant 
138:     LD  4,-12(1) 	Load left into ac1 
139:    ADD  3,4,3 	Op + 
140:     LD  4,-11(1) 	Load left into ac1 
141:    MUL  3,4,3 	Op * 
142:     ST  3,-10(1) 	Store variable b
* EXPRESSION STMT
143:     LD  3,-3(1) 	Load variable m
144:     ST  3,-11(1) 	Save left side 
145:     LD  3,-3(1) 	Load variable m
146:     ST  3,-12(1) 	Save left side 
147:    LDC  3,1(6) 	Load constant 
148:     LD  4,-12(1) 	Load left into ac1 
149:    ADD  3,4,3 	Op + 
150:     LD  4,-11(1) 	Load left into ac1 
151:    MUL  3,4,3 	Op * 
152:     ST  3,-11(1) 	Save left side 
153:    LDC  3,1(6) 	Load constant 
154:     ST  3,-12(1) 	Save left side 
155:    LDC  3,1(6) 	Load constant 
156:     LD  4,-12(1) 	Load left into ac1 
157:    ADD  3,4,3 	Op + 
158:     LD  4,-11(1) 	Load left into ac1 
159:    DIV  3,4,3 	Op / 
160:     ST  3,-6(1) 	Store variable tm
* EXPRESSION STMT
161:     LD  3,-2(1) 	Load variable i
162:     ST  3,-11(1) 	Save left side 
163:     LD  3,-3(1) 	Load variable m
164:     ST  3,-12(1) 	Save left side 
165:    LDC  3,1(6) 	Load constant 
166:     LD  4,-12(1) 	Load left into ac1 
167:    ADD  3,4,3 	Op + 
168:     LD  4,-11(1) 	Load left into ac1 
169:    SUB  3,4,3 	Op - 
170:     ST  3,-11(1) 	Save left side 
171:    LDC  3,0(6) 	Load constant 
172:     LD  4,-11(1) 	Load left into ac1 
173:    ADD  3,4,3 	Op + 
174:     ST  3,-5(1) 	Store variable x
* EXPRESSION STMT
175:     LD  3,-5(1) 	Load variable x
176:     ST  3,-11(1) 	Save left side 
177:     LD  3,-6(1) 	Load variable tm
178:     LD  4,-11(1) 	Load left into ac1 
179:    DIV  3,4,3 	Op / 
180:     ST  3,-11(1) 	Save left side 
181:    LDC  3,1(6) 	Load constant 
182:     LD  4,-11(1) 	Load left into ac1 
183:    MUL  3,4,3 	Op * 
184:     ST  3,-4(1) 	Store variable t
* END compound statement
185:    LDA  7,-95(7) 	go to beginning of loop 
100:    LDA  7,85(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
186:     LD  3,-7(1) 	Load variable num
187:     ST  3,-11(1) 	Save left side 
188:     LD  3,-8(1) 	Load variable min
189:     LD  4,-11(1) 	Load left into ac1 
190:    SUB  4,4,3 	Op >= 
191:    LDC  3,1(6) 	True case 
192:    JGE  4,1(7) 	Jump if true 
193:    LDC  3,0(6) 	False case 
194:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
196:     ST  1,-11(1) 	Store old fp in ghost frame 
*                       Load param 1
197:     LD  3,-7(1) 	Load variable num
198:     ST  3,-13(1) 	Store parameter 
*                       Jump to output
199:    LDA  1,-11(1) 	Load address of new frame 
200:    LDA  3,1(7) 	Return address in ac 
201:    LDA  7,-196(7) 	CALL output
202:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
203:     ST  1,-11(1) 	Store old fp in ghost frame 
*                       Load param 1
204:     LD  3,-2(1) 	Load variable i
205:     ST  3,-13(1) 	Store parameter 
*                       Jump to output
206:    LDA  1,-11(1) 	Load address of new frame 
207:    LDA  3,1(7) 	Return address in ac 
208:    LDA  7,-203(7) 	CALL output
209:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
210:     ST  1,-11(1) 	Store old fp in ghost frame 
*                       Load param 1
211:    LDC  3,11111111(6) 	Load constant 
212:     ST  3,-13(1) 	Store parameter 
*                       Jump to output
213:    LDA  1,-11(1) 	Load address of new frame 
214:    LDA  3,1(7) 	Return address in ac 
215:    LDA  7,-210(7) 	CALL output
216:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
217:     LD  3,-7(1) 	Load variable num
218:     ST  3,-11(1) 	Save left side 
219:    LDC  3,1(6) 	Load constant 
220:     LD  4,-11(1) 	Load left into ac1 
221:    ADD  3,4,3 	Op + 
222:     ST  3,-8(1) 	Store variable min
* END compound statement
195:    LDA  7,27(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
223:     LD  3,-2(1) 	Load variable i
224:     ST  3,-11(1) 	Save left side 
225:    LDC  3,1(6) 	Load constant 
226:     LD  4,-11(1) 	Load left into ac1 
227:    ADD  3,4,3 	Op + 
228:     ST  3,-2(1) 	Store variable i
* END compound statement
229:    LDA  7,-183(7) 	go to beginning of loop 
 56:    LDA  7,173(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
230:    LDC  3,0(6) 	Load constant 
231:    LDA  2,0(3) 	Copy result to rt register 
232:     LD  3,-1(1) 	Load return address 
233:     LD  1,0(1) 	Adjust fp 
234:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
235:    LDC  2,0(6) 	Set return value to 0 
236:     LD  3,-1(1) 	Load return address 
237:     LD  1,0(1) 	Adjust fp 
238:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,238(7) 	Jump to init [backpatch] 
* BEGIN Init
239:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
240:    LDA  1,0(0) 	set first frame at end of globals 
241:     ST  1,0(1) 	store old fp (point to self) 
242:    LDA  3,1(7) 	Return address in ac 
243:    LDA  7,-202(7) 	Jump to main 
244:   HALT  0,0,0 	DONE! 
* END Init
