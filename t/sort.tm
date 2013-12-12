* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  sort.c-
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
* BEGIN function minloc
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:     LD  3,-3(1) 	Load variable low
 44:     ST  3,-7(1) 	Store variable k
* EXPRESSION STMT
 45:     LD  3,-3(1) 	Load variable low
 46:     LD  4,-2(1) 	Load address of base of array a
 47:    SUB  3,4,3 	Compute offset of value 
 48:     LD  3,0(3) 	Load the value 
 49:     ST  3,-6(1) 	Store variable x
* EXPRESSION STMT
 50:     LD  3,-3(1) 	Load variable low
 51:     ST  3,-8(1) 	Save left side 
 52:    LDC  3,1(6) 	Load constant 
 53:     LD  4,-8(1) 	Load left into ac1 
 54:    ADD  3,4,3 	Op + 
 55:     ST  3,-5(1) 	Store variable i
* WHILE
 56:     LD  3,-5(1) 	Load variable i
 57:     ST  3,-8(1) 	Save left side 
 58:     LD  3,-4(1) 	Load variable high
 59:     LD  4,-8(1) 	Load left into ac1 
 60:    SUB  4,4,3 	Op < 
 61:    LDC  3,1(6) 	True case 
 62:    JLT  4,1(7) 	Jump if true 
 63:    LDC  3,0(6) 	False case 
 64:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
 66:     LD  3,-5(1) 	Load variable i
 67:     LD  4,-2(1) 	Load address of base of array a
 68:    SUB  3,4,3 	Compute offset of value 
 69:     LD  3,0(3) 	Load the value 
 70:     ST  3,-8(1) 	Save left side 
 71:     LD  3,-6(1) 	Load variable x
 72:     LD  4,-8(1) 	Load left into ac1 
 73:    SUB  4,4,3 	Op < 
 74:    LDC  3,1(6) 	True case 
 75:    JLT  4,1(7) 	Jump if true 
 76:    LDC  3,0(6) 	False case 
 77:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
 79:     LD  3,-5(1) 	Load variable i
 80:     LD  4,-2(1) 	Load address of base of array a
 81:    SUB  3,4,3 	Compute offset of value 
 82:     LD  3,0(3) 	Load the value 
 83:     ST  3,-6(1) 	Store variable x
* EXPRESSION STMT
 84:     LD  3,-5(1) 	Load variable i
 85:     ST  3,-7(1) 	Store variable k
* END compound statement
 78:    LDA  7,7(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 86:     LD  3,-5(1) 	load lhs variable i
 87:    LDA  3,1(3) 	increment value of i
 88:     ST  3,-5(1) 	Store variable i
* END compound statement
 89:    LDA  7,-34(7) 	go to beginning of loop 
 65:    LDA  7,24(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
 90:     LD  3,-7(1) 	Load variable k
 91:    LDA  2,0(3) 	Copy result to rt register 
 92:     LD  3,-1(1) 	Load return address 
 93:     LD  1,0(1) 	Adjust fp 
 94:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 95:    LDC  2,0(6) 	Set return value to 0 
 96:     LD  3,-1(1) 	Load return address 
 97:     LD  1,0(1) 	Adjust fp 
 98:    LDA  7,0(3) 	Return 
* END of function minloc
* BEGIN function sort
 99:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
100:     LD  3,-3(1) 	Load variable low
101:     ST  3,-5(1) 	Store variable i
* WHILE
102:     LD  3,-5(1) 	Load variable i
103:     ST  3,-8(1) 	Save left side 
104:     LD  3,-4(1) 	Load variable high
105:     ST  3,-9(1) 	Save left side 
106:    LDC  3,1(6) 	Load constant 
107:     LD  4,-9(1) 	Load left into ac1 
108:    SUB  3,4,3 	Op - 
109:     LD  4,-8(1) 	Load left into ac1 
110:    SUB  4,4,3 	Op < 
111:    LDC  3,1(6) 	True case 
112:    JLT  4,1(7) 	Jump if true 
113:    LDC  3,0(6) 	False case 
114:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  minloc
116:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
117:     LD  3,-2(1) 	Load address of base of array a
118:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
119:     LD  3,-5(1) 	Load variable i
120:     ST  3,-11(1) 	Store parameter 
*                       Load param 3
121:     LD  3,-4(1) 	Load variable high
122:     ST  3,-12(1) 	Store parameter 
*                       Jump to minloc
123:    LDA  1,-8(1) 	Load address of new frame 
124:    LDA  3,1(7) 	Return address in ac 
125:    LDA  7,-84(7) 	CALL minloc
126:    LDA  3,0(2) 	Save the result in ac 
*                       End call to minloc
127:     ST  3,-6(1) 	Store variable k
* EXPRESSION STMT
128:     LD  3,-6(1) 	Load variable k
129:     LD  4,-2(1) 	Load address of base of array a
130:    SUB  3,4,3 	Compute offset of value 
131:     LD  3,0(3) 	Load the value 
132:     ST  3,-7(1) 	Store variable t
* EXPRESSION STMT
133:     LD  3,-6(1) 	Load variable k
134:     ST  3,-8(1) 	Save index 
135:     LD  3,-5(1) 	Load variable i
136:     LD  4,-2(1) 	Load address of base of array a
137:    SUB  3,4,3 	Compute offset of value 
138:     LD  3,0(3) 	Load the value 
139:     LD  4,-8(1) 	Restore index 
140:     LD  5,-2(1) 	Load address of base of array a
141:    SUB  5,5,4 	Compute offset of value 
142:     ST  3,0(5) 	Store variable a
* EXPRESSION STMT
143:     LD  3,-5(1) 	Load variable i
144:     ST  3,-8(1) 	Save index 
145:     LD  3,-7(1) 	Load variable t
146:     LD  4,-8(1) 	Restore index 
147:     LD  5,-2(1) 	Load address of base of array a
148:    SUB  5,5,4 	Compute offset of value 
149:     ST  3,0(5) 	Store variable a
* EXPRESSION STMT
150:     LD  3,-5(1) 	load lhs variable i
151:    LDA  3,1(3) 	increment value of i
152:     ST  3,-5(1) 	Store variable i
* END compound statement
153:    LDA  7,-52(7) 	go to beginning of loop 
115:    LDA  7,38(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
154:    LDC  2,0(6) 	Set return value to 0 
155:     LD  3,-1(1) 	Load return address 
156:     LD  1,0(1) 	Adjust fp 
157:    LDA  7,0(3) 	Return 
* END of function sort
* BEGIN function main
158:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
159:    LDC  3,0(6) 	Load constant 
160:     ST  3,-2(1) 	Store variable i
* WHILE
161:     LD  3,-2(1) 	Load variable i
162:     ST  3,-3(1) 	Save left side 
163:    LDC  3,10(6) 	Load constant 
164:     LD  4,-3(1) 	Load left into ac1 
165:    SUB  4,4,3 	Op < 
166:    LDC  3,1(6) 	True case 
167:    JLT  4,1(7) 	Jump if true 
168:    LDC  3,0(6) 	False case 
169:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
171:     LD  3,-2(1) 	Load variable i
172:     ST  3,-3(1) 	Save index 
*                       Begin call to  input
173:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to input
174:    LDA  1,-4(1) 	Load address of new frame 
175:    LDA  3,1(7) 	Return address in ac 
176:    LDA  7,-176(7) 	CALL input
177:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
178:     LD  4,-3(1) 	Restore index 
179:    LDA  5,-1(0) 	Load address of base of array x
180:    SUB  5,5,4 	Compute offset of value 
181:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
182:     LD  3,-2(1) 	load lhs variable i
183:    LDA  3,1(3) 	increment value of i
184:     ST  3,-2(1) 	Store variable i
* END compound statement
185:    LDA  7,-25(7) 	go to beginning of loop 
170:    LDA  7,15(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  sort
186:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
187:    LDA  3,-1(0) 	Load address of base of array x
188:     ST  3,-5(1) 	Store parameter 
*                       Load param 2
189:    LDC  3,0(6) 	Load constant 
190:     ST  3,-6(1) 	Store parameter 
*                       Load param 3
191:    LDC  3,10(6) 	Load constant 
192:     ST  3,-7(1) 	Store parameter 
*                       Jump to sort
193:    LDA  1,-3(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-97(7) 	CALL sort
196:    LDA  3,0(2) 	Save the result in ac 
*                       End call to sort
* EXPRESSION STMT
197:    LDC  3,0(6) 	Load constant 
198:     ST  3,-2(1) 	Store variable i
* WHILE
199:     LD  3,-2(1) 	Load variable i
200:     ST  3,-3(1) 	Save left side 
201:    LDC  3,10(6) 	Load constant 
202:     LD  4,-3(1) 	Load left into ac1 
203:    SUB  4,4,3 	Op < 
204:    LDC  3,1(6) 	True case 
205:    JLT  4,1(7) 	Jump if true 
206:    LDC  3,0(6) 	False case 
207:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
209:     ST  1,-3(1) 	Store old fp in ghost frame 
*                       Load param 1
210:     LD  3,-2(1) 	Load variable i
211:    LDA  4,-1(0) 	Load address of base of array x
212:    SUB  3,4,3 	Compute offset of value 
213:     LD  3,0(3) 	Load the value 
214:     ST  3,-5(1) 	Store parameter 
*                       Jump to output
215:    LDA  1,-3(1) 	Load address of new frame 
216:    LDA  3,1(7) 	Return address in ac 
217:    LDA  7,-212(7) 	CALL output
218:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
219:     LD  3,-2(1) 	load lhs variable i
220:    LDA  3,1(3) 	increment value of i
221:     ST  3,-2(1) 	Store variable i
* END compound statement
222:    LDA  7,-24(7) 	go to beginning of loop 
208:    LDA  7,14(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
223:    LDC  2,0(6) 	Set return value to 0 
224:     LD  3,-1(1) 	Load return address 
225:     LD  1,0(1) 	Adjust fp 
226:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,226(7) 	Jump to init [backpatch] 
* BEGIN Init
227:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
228:    LDC  3,10(6) 	load size of array x
229:     ST  3,0(0) 	save size of array x
* END init of globals
230:    LDA  1,-11(0) 	set first frame at end of globals 
231:     ST  1,0(1) 	store old fp (point to self) 
232:    LDA  3,1(7) 	Return address in ac 
233:    LDA  7,-76(7) 	Jump to main 
234:   HALT  0,0,0 	DONE! 
* END Init
