* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  righttri.c-
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
 44:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
 45:    LDC  3,1(6) 	Load constant 
 46:     ST  3,-4(1) 	Store variable aa
* EXPRESSION STMT
 47:    LDC  3,0(6) 	Load constant 
 48:     ST  3,-6(1) 	Store variable c
* WHILE
 49:     LD  3,-6(1) 	Load variable c
 50:     ST  3,-8(1) 	Save left side 
 51:    LDC  3,50(6) 	Load constant 
 52:     LD  4,-8(1) 	Load left into ac1 
 53:    SUB  4,4,3 	Op < 
 54:    LDC  3,1(6) 	True case 
 55:    JLT  4,1(7) 	Jump if true 
 56:    LDC  3,0(6) 	False case 
 57:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 59:    LDC  3,1(6) 	Load constant 
 60:     ST  3,-7(1) 	Store variable cc
 61:     ST  3,-6(1) 	Store variable c
* EXPRESSION STMT
 62:    LDC  3,1(6) 	Load constant 
 63:     ST  3,-3(1) 	Store variable b
* EXPRESSION STMT
 64:    LDC  3,1(6) 	Load constant 
 65:     ST  3,-5(1) 	Store variable bb
* WHILE
 66:     LD  3,-3(1) 	Load variable b
 67:     ST  3,-8(1) 	Save left side 
 68:     LD  3,-2(1) 	Load variable a
 69:     LD  4,-8(1) 	Load left into ac1 
 70:    SUB  4,4,3 	Op <= 
 71:    LDC  3,1(6) 	True case 
 72:    JLE  4,1(7) 	Jump if true 
 73:    LDC  3,0(6) 	False case 
 74:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
 76:     LD  3,-4(1) 	Load variable aa
 77:     ST  3,-8(1) 	Save left side 
 78:     LD  3,-5(1) 	Load variable bb
 79:     LD  4,-8(1) 	Load left into ac1 
 80:    ADD  3,4,3 	Op + 
 81:     ST  3,-8(1) 	Save left side 
 82:    LDC  3,2(6) 	Load constant 
 83:     LD  4,-8(1) 	Load left into ac1 
 84:    DIV  3,4,3 	Op / 
 85:     ST  3,-8(1) 	Save left side 
 86:    LDC  3,2(6) 	Load constant 
 87:     LD  4,-8(1) 	Load left into ac1 
 88:    DIV  5,4,3 	Op % 
 89:    MUL  5,5,3 	 
 90:    SUB  3,4,5 	 
 91:     ST  3,-8(1) 	Save left side 
 92:    LDC  3,0(6) 	Load constant 
 93:     LD  4,-8(1) 	Load left into ac1 
 94:    SUB  4,4,3 	Op == 
 95:    LDC  3,1(6) 	True case 
 96:    JEQ  4,1(7) 	Jump if true 
 97:    LDC  3,0(6) 	False case 
 98:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* WHILE
100:     LD  3,-7(1) 	Load variable cc
101:     ST  3,-8(1) 	Save left side 
102:     LD  3,-4(1) 	Load variable aa
103:     ST  3,-9(1) 	Save left side 
104:     LD  3,-5(1) 	Load variable bb
105:     LD  4,-9(1) 	Load left into ac1 
106:    ADD  3,4,3 	Op + 
107:     LD  4,-8(1) 	Load left into ac1 
108:    SUB  4,4,3 	Op < 
109:    LDC  3,1(6) 	True case 
110:    JLT  4,1(7) 	Jump if true 
111:    LDC  3,0(6) 	False case 
112:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
114:     LD  3,-6(1) 	Load variable c
115:     ST  3,-8(1) 	Save left side 
116:    LDC  3,1(6) 	Load constant 
117:     LD  4,-8(1) 	Load left into ac1 
118:    ADD  3,4,3 	Op + 
119:     ST  3,-6(1) 	Store variable c
* EXPRESSION STMT
120:     LD  3,-7(1) 	Load variable cc
121:     ST  3,-8(1) 	Save left side 
122:    LDC  3,2(6) 	Load constant 
123:     ST  3,-9(1) 	Save left side 
124:     LD  3,-6(1) 	Load variable c
125:     LD  4,-9(1) 	Load left into ac1 
126:    MUL  3,4,3 	Op * 
127:     LD  4,-8(1) 	Load left into ac1 
128:    ADD  3,4,3 	Op + 
129:     ST  3,-8(1) 	Save left side 
130:    LDC  3,1(6) 	Load constant 
131:     LD  4,-8(1) 	Load left into ac1 
132:    SUB  3,4,3 	Op - 
133:     ST  3,-7(1) 	Store variable cc
* END compound statement
134:    LDA  7,-35(7) 	go to beginning of loop 
113:    LDA  7,21(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
135:     LD  3,-4(1) 	Load variable aa
136:     ST  3,-8(1) 	Save left side 
137:     LD  3,-5(1) 	Load variable bb
138:     LD  4,-8(1) 	Load left into ac1 
139:    ADD  3,4,3 	Op + 
140:     ST  3,-8(1) 	Save left side 
141:     LD  3,-7(1) 	Load variable cc
142:     LD  4,-8(1) 	Load left into ac1 
143:    SUB  4,4,3 	Op == 
144:    LDC  3,1(6) 	True case 
145:    JEQ  4,1(7) 	Jump if true 
146:    LDC  3,0(6) 	False case 
147:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
149:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
150:     LD  3,-2(1) 	Load variable a
151:     ST  3,-10(1) 	Store parameter 
*                       Jump to output
152:    LDA  1,-8(1) 	Load address of new frame 
153:    LDA  3,1(7) 	Return address in ac 
154:    LDA  7,-149(7) 	CALL output
155:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
156:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
157:     LD  3,-3(1) 	Load variable b
158:     ST  3,-10(1) 	Store parameter 
*                       Jump to output
159:    LDA  1,-8(1) 	Load address of new frame 
160:    LDA  3,1(7) 	Return address in ac 
161:    LDA  7,-156(7) 	CALL output
162:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
163:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
164:     LD  3,-6(1) 	Load variable c
165:     ST  3,-10(1) 	Store parameter 
*                       Jump to output
166:    LDA  1,-8(1) 	Load address of new frame 
167:    LDA  3,1(7) 	Return address in ac 
168:    LDA  7,-163(7) 	CALL output
169:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
170:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Jump to outnl
171:    LDA  1,-8(1) 	Load address of new frame 
172:    LDA  3,1(7) 	Return address in ac 
173:    LDA  7,-137(7) 	CALL outnl
174:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
148:    LDA  7,26(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
 99:    LDA  7,75(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
175:     LD  3,-3(1) 	Load variable b
176:     ST  3,-8(1) 	Save left side 
177:    LDC  3,1(6) 	Load constant 
178:     LD  4,-8(1) 	Load left into ac1 
179:    ADD  3,4,3 	Op + 
180:     ST  3,-3(1) 	Store variable b
* EXPRESSION STMT
181:     LD  3,-5(1) 	Load variable bb
182:     ST  3,-8(1) 	Save left side 
183:    LDC  3,2(6) 	Load constant 
184:     ST  3,-9(1) 	Save left side 
185:     LD  3,-3(1) 	Load variable b
186:     LD  4,-9(1) 	Load left into ac1 
187:    MUL  3,4,3 	Op * 
188:     LD  4,-8(1) 	Load left into ac1 
189:    ADD  3,4,3 	Op + 
190:     ST  3,-8(1) 	Save left side 
191:    LDC  3,1(6) 	Load constant 
192:     LD  4,-8(1) 	Load left into ac1 
193:    SUB  3,4,3 	Op - 
194:     ST  3,-5(1) 	Store variable bb
* END compound statement
195:    LDA  7,-130(7) 	go to beginning of loop 
 75:    LDA  7,120(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
196:     LD  3,-2(1) 	Load variable a
197:     ST  3,-8(1) 	Save left side 
198:    LDC  3,1(6) 	Load constant 
199:     LD  4,-8(1) 	Load left into ac1 
200:    ADD  3,4,3 	Op + 
201:     ST  3,-2(1) 	Store variable a
* EXPRESSION STMT
202:     LD  3,-4(1) 	Load variable aa
203:     ST  3,-8(1) 	Save left side 
204:    LDC  3,2(6) 	Load constant 
205:     ST  3,-9(1) 	Save left side 
206:     LD  3,-2(1) 	Load variable a
207:     LD  4,-9(1) 	Load left into ac1 
208:    MUL  3,4,3 	Op * 
209:     LD  4,-8(1) 	Load left into ac1 
210:    ADD  3,4,3 	Op + 
211:     ST  3,-8(1) 	Save left side 
212:    LDC  3,1(6) 	Load constant 
213:     LD  4,-8(1) 	Load left into ac1 
214:    SUB  3,4,3 	Op - 
215:     ST  3,-4(1) 	Store variable aa
* END compound statement
216:    LDA  7,-168(7) 	go to beginning of loop 
 58:    LDA  7,158(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
217:    LDC  2,0(6) 	Set return value to 0 
218:     LD  3,-1(1) 	Load return address 
219:     LD  1,0(1) 	Adjust fp 
220:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,220(7) 	Jump to init [backpatch] 
* BEGIN Init
221:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
222:    LDA  1,0(0) 	set first frame at end of globals 
223:     ST  1,0(1) 	store old fp (point to self) 
224:    LDA  3,1(7) 	Return address in ac 
225:    LDA  7,-184(7) 	Jump to main 
226:   HALT  0,0,0 	DONE! 
* END Init
