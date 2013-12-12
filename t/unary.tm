* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  unary.c-
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
 43:    LDC  3,7(6) 	load size of array a
 44:     ST  3,-4(1) 	save size of array a
 45:    LDC  3,5(6) 	load size of array b
 46:     ST  3,-12(1) 	save size of array b
* EXPRESSION STMT
 47:    LDC  3,88(6) 	Load constant 
 48:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
 49:     LD  3,-2(1) 	Load variable x
 50:     ST  3,-20(1) 	Save left side 
 51:    LDC  3,9(6) 	Load constant 
 52:     LD  4,-20(1) 	Load left into ac1 
 53:    SUB  3,4,3 	Op - 
 54:     ST  3,-3(1) 	Store variable y
* EXPRESSION STMT
 55:     LD  3,-2(1) 	Load variable x
 56:    LDC  4,0(6) 	Load 0 
 57:    SUB  3,4,3 	Op unary - 
 58:     ST  3,-3(1) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  output
 59:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
 60:     LD  3,-2(1) 	Load variable x
 61:    LDC  4,0(6) 	Load 0 
 62:    SUB  3,4,3 	Op unary - 
 63:     ST  3,-22(1) 	Store parameter 
*                       Jump to output
 64:    LDA  1,-20(1) 	Load address of new frame 
 65:    LDA  3,1(7) 	Return address in ac 
 66:    LDA  7,-61(7) 	CALL output
 67:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
 68:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
 69:     LD  3,-3(1) 	Load variable y
 70:     ST  3,-22(1) 	Store parameter 
*                       Jump to output
 71:    LDA  1,-20(1) 	Load address of new frame 
 72:    LDA  3,1(7) 	Return address in ac 
 73:    LDA  7,-68(7) 	CALL output
 74:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 75:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 76:    LDA  1,-20(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-42(7) 	CALL outnl
 79:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
*                       Begin call to  output
 80:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
 81:    LDC  3,3(6) 	Load constant 
 82:    LDC  4,0(6) 	Load 0 
 83:    SUB  3,4,3 	Op unary - 
 84:    LDC  4,0(6) 	Load 0 
 85:    SUB  3,4,3 	Op unary - 
 86:     ST  3,-22(1) 	Save left side 
 87:    LDC  3,5(6) 	Load constant 
 88:    LDC  4,0(6) 	Load 0 
 89:    SUB  3,4,3 	Op unary - 
 90:     LD  4,-22(1) 	Load left into ac1 
 91:    MUL  3,4,3 	Op * 
 92:     ST  3,-22(1) 	Store parameter 
*                       Jump to output
 93:    LDA  1,-20(1) 	Load address of new frame 
 94:    LDA  3,1(7) 	Return address in ac 
 95:    LDA  7,-90(7) 	CALL output
 96:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
 97:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
 98:    LDC  3,3(6) 	Load constant 
 99:    LDC  4,0(6) 	Load 0 
100:    SUB  3,4,3 	Op unary - 
101:    LDC  4,0(6) 	Load 0 
102:    SUB  3,4,3 	Op unary - 
103:     ST  3,-22(1) 	Store parameter 
*                       Jump to output
104:    LDA  1,-20(1) 	Load address of new frame 
105:    LDA  3,1(7) 	Return address in ac 
106:    LDA  7,-101(7) 	CALL output
107:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
108:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Jump to outnl
109:    LDA  1,-20(1) 	Load address of new frame 
110:    LDA  3,1(7) 	Return address in ac 
111:    LDA  7,-75(7) 	CALL outnl
112:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* BEGIN compound statement
* EXPRESSION STMT
113:    LDC  3,1(6) 	Load constant 
114:     ST  3,-18(1) 	Store variable x
* EXPRESSION STMT
115:     LD  3,-18(1) 	Load variable x
116:    LDC  4,1(6) 	Load 1 
117:    SUB  3,4,3 	Op NOT 
118:     ST  3,-19(1) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  outputb
119:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
120:     LD  3,-18(1) 	Load variable x
121:    LDC  4,1(6) 	Load 1 
122:    SUB  3,4,3 	Op NOT 
123:     ST  3,-22(1) 	Store parameter 
*                       Jump to outputb
124:    LDA  1,-20(1) 	Load address of new frame 
125:    LDA  3,1(7) 	Return address in ac 
126:    LDA  7,-109(7) 	CALL outputb
127:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
128:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
129:     LD  3,-19(1) 	Load variable y
130:     ST  3,-22(1) 	Store parameter 
*                       Jump to outputb
131:    LDA  1,-20(1) 	Load address of new frame 
132:    LDA  3,1(7) 	Return address in ac 
133:    LDA  7,-116(7) 	CALL outputb
134:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
135:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
136:     LD  3,-18(1) 	Load variable x
137:    LDC  4,1(6) 	Load 1 
138:    SUB  3,4,3 	Op NOT 
139:    LDC  4,1(6) 	Load 1 
140:    SUB  3,4,3 	Op NOT 
141:     ST  3,-22(1) 	Save left side 
142:     LD  3,-19(1) 	Load variable y
143:    LDC  4,1(6) 	Load 1 
144:    SUB  3,4,3 	Op NOT 
145:     LD  4,-22(1) 	Load left into ac1 
146:    JEQ  3,1(7) 	Op AND 
147:    LDA  3,0(4) 	 
148:     ST  3,-22(1) 	Store parameter 
*                       Jump to outputb
149:    LDA  1,-20(1) 	Load address of new frame 
150:    LDA  3,1(7) 	Return address in ac 
151:    LDA  7,-134(7) 	CALL outputb
152:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
153:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
154:     LD  3,-18(1) 	Load variable x
155:    LDC  4,1(6) 	Load 1 
156:    SUB  3,4,3 	Op NOT 
157:    LDC  4,1(6) 	Load 1 
158:    SUB  3,4,3 	Op NOT 
159:     ST  3,-22(1) 	Save left side 
160:     LD  3,-19(1) 	Load variable y
161:    LDC  4,1(6) 	Load 1 
162:    SUB  3,4,3 	Op NOT 
163:     LD  4,-22(1) 	Load left into ac1 
164:    JGT  3,1(7) 	Op OR 
165:    LDA  3,0(4) 	 
166:     ST  3,-22(1) 	Store parameter 
*                       Jump to outputb
167:    LDA  1,-20(1) 	Load address of new frame 
168:    LDA  3,1(7) 	Return address in ac 
169:    LDA  7,-152(7) 	CALL outputb
170:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
171:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
172:     LD  3,-19(1) 	Load variable y
173:    LDC  4,1(6) 	Load 1 
174:    SUB  3,4,3 	Op NOT 
175:    LDC  4,1(6) 	Load 1 
176:    SUB  3,4,3 	Op NOT 
177:     ST  3,-22(1) 	Save left side 
178:     LD  3,-18(1) 	Load variable x
179:    LDC  4,1(6) 	Load 1 
180:    SUB  3,4,3 	Op NOT 
181:     LD  4,-22(1) 	Load left into ac1 
182:    JGT  3,1(7) 	Op OR 
183:    LDA  3,0(4) 	 
184:     ST  3,-22(1) 	Store parameter 
*                       Jump to outputb
185:    LDA  1,-20(1) 	Load address of new frame 
186:    LDA  3,1(7) 	Return address in ac 
187:    LDA  7,-170(7) 	CALL outputb
188:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outputb
189:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
190:     LD  3,-18(1) 	Load variable x
191:    LDC  4,1(6) 	Load 1 
192:    SUB  3,4,3 	Op NOT 
193:    LDC  4,1(6) 	Load 1 
194:    SUB  3,4,3 	Op NOT 
195:     ST  3,-22(1) 	Store parameter 
*                       Jump to outputb
196:    LDA  1,-20(1) 	Load address of new frame 
197:    LDA  3,1(7) 	Return address in ac 
198:    LDA  7,-181(7) 	CALL outputb
199:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputb
* EXPRESSION STMT
*                       Begin call to  outnl
200:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Jump to outnl
201:    LDA  1,-20(1) 	Load address of new frame 
202:    LDA  3,1(7) 	Return address in ac 
203:    LDA  7,-167(7) 	CALL outnl
204:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* EXPRESSION STMT
*                       Begin call to  output
205:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
206:    LDA  3,-5(1) 	Load address of base of array a
207:     LD  3,1(3) 	Load array size 
208:     ST  3,-22(1) 	Store parameter 
*                       Jump to output
209:    LDA  1,-20(1) 	Load address of new frame 
210:    LDA  3,1(7) 	Return address in ac 
211:    LDA  7,-206(7) 	CALL output
212:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
213:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
214:    LDA  3,-13(1) 	Load address of base of array b
215:     LD  3,1(3) 	Load array size 
216:     ST  3,-22(1) 	Store parameter 
*                       Jump to output
217:    LDA  1,-20(1) 	Load address of new frame 
218:    LDA  3,1(7) 	Return address in ac 
219:    LDA  7,-214(7) 	CALL output
220:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* END compound statement
* Add standard closing in case there is no return statement
221:    LDC  2,0(6) 	Set return value to 0 
222:     LD  3,-1(1) 	Load return address 
223:     LD  1,0(1) 	Adjust fp 
224:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,224(7) 	Jump to init [backpatch] 
* BEGIN Init
225:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
226:    LDA  1,0(0) 	set first frame at end of globals 
227:     ST  1,0(1) 	store old fp (point to self) 
228:    LDA  3,1(7) 	Return address in ac 
229:    LDA  7,-188(7) 	Jump to main 
230:   HALT  0,0,0 	DONE! 
* END Init
