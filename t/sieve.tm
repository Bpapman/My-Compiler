* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  sieve.c-
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
 43:    LDC  3,201(6) 	load size of array n
 44:     ST  3,-4(1) 	save size of array n
* EXPRESSION STMT
 45:    LDC  3,200(6) 	Load constant 
 46:     ST  3,-2(1) 	Store variable max
* EXPRESSION STMT
 47:    LDC  3,2(6) 	Load constant 
 48:     ST  3,-3(1) 	Store variable k
* WHILE
 49:     LD  3,-3(1) 	Load variable k
 50:     ST  3,-207(1) 	Save left side 
 51:     LD  3,-2(1) 	Load variable max
 52:     LD  4,-207(1) 	Load left into ac1 
 53:    SUB  4,4,3 	Op <= 
 54:    LDC  3,1(6) 	True case 
 55:    JLE  4,1(7) 	Jump if true 
 56:    LDC  3,0(6) 	False case 
 57:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 59:     LD  3,-3(1) 	Load variable k
 60:     ST  3,-207(1) 	Save index 
 61:    LDC  3,1(6) 	Load constant 
 62:     LD  4,-207(1) 	Restore index 
 63:    LDA  5,-5(1) 	Load address of base of array n
 64:    SUB  5,5,4 	Compute offset of value 
 65:     ST  3,0(5) 	Store variable n
* EXPRESSION STMT
 66:     LD  3,-3(1) 	Load variable k
 67:     ST  3,-207(1) 	Save left side 
 68:    LDC  3,1(6) 	Load constant 
 69:     LD  4,-207(1) 	Load left into ac1 
 70:    ADD  3,4,3 	Op + 
 71:     ST  3,-3(1) 	Store variable k
* END compound statement
 72:    LDA  7,-24(7) 	go to beginning of loop 
 58:    LDA  7,14(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
 73:    LDC  3,2(6) 	Load constant 
 74:     ST  3,-3(1) 	Store variable k
* WHILE
 75:     LD  3,-3(1) 	Load variable k
 76:     ST  3,-207(1) 	Save left side 
 77:     LD  3,-3(1) 	Load variable k
 78:     LD  4,-207(1) 	Load left into ac1 
 79:    MUL  3,4,3 	Op * 
 80:     ST  3,-207(1) 	Save left side 
 81:     LD  3,-2(1) 	Load variable max
 82:     LD  4,-207(1) 	Load left into ac1 
 83:    SUB  4,4,3 	Op <= 
 84:    LDC  3,1(6) 	True case 
 85:    JLE  4,1(7) 	Jump if true 
 86:    LDC  3,0(6) 	False case 
 87:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 89:     LD  3,-3(1) 	Load variable k
 90:     ST  3,-207(1) 	Save left side 
 91:     LD  3,-3(1) 	Load variable k
 92:     LD  4,-207(1) 	Load left into ac1 
 93:    MUL  3,4,3 	Op * 
 94:     ST  3,-206(1) 	Store variable j
* WHILE
 95:     LD  3,-206(1) 	Load variable j
 96:     ST  3,-207(1) 	Save left side 
 97:     LD  3,-2(1) 	Load variable max
 98:     LD  4,-207(1) 	Load left into ac1 
 99:    SUB  4,4,3 	Op <= 
100:    LDC  3,1(6) 	True case 
101:    JLE  4,1(7) 	Jump if true 
102:    LDC  3,0(6) 	False case 
103:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
105:     LD  3,-206(1) 	Load variable j
106:     ST  3,-207(1) 	Save index 
107:    LDC  3,0(6) 	Load constant 
108:     LD  4,-207(1) 	Restore index 
109:    LDA  5,-5(1) 	Load address of base of array n
110:    SUB  5,5,4 	Compute offset of value 
111:     ST  3,0(5) 	Store variable n
* EXPRESSION STMT
112:     LD  3,-206(1) 	Load variable j
113:     ST  3,-207(1) 	Save left side 
114:     LD  3,-3(1) 	Load variable k
115:     LD  4,-207(1) 	Load left into ac1 
116:    ADD  3,4,3 	Op + 
117:     ST  3,-206(1) 	Store variable j
* END compound statement
118:    LDA  7,-24(7) 	go to beginning of loop 
104:    LDA  7,14(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
119:     LD  3,-3(1) 	Load variable k
120:     ST  3,-207(1) 	Save left side 
121:    LDC  3,1(6) 	Load constant 
122:     LD  4,-207(1) 	Load left into ac1 
123:    ADD  3,4,3 	Op + 
124:     ST  3,-3(1) 	Store variable k
* WHILE
125:     LD  3,-3(1) 	Load variable k
126:     ST  3,-207(1) 	Save left side 
127:     LD  3,-2(1) 	Load variable max
128:     LD  4,-207(1) 	Load left into ac1 
129:    SUB  4,4,3 	Op <= 
130:    LDC  3,1(6) 	True case 
131:    JLE  4,1(7) 	Jump if true 
132:    LDC  3,0(6) 	False case 
133:     ST  3,-207(1) 	Save left side 
134:     LD  3,-3(1) 	Load variable k
135:    LDA  4,-5(1) 	Load address of base of array n
136:    SUB  3,4,3 	Compute offset of value 
137:     LD  3,0(3) 	Load the value 
138:    LDC  4,1(6) 	Load 1 
139:    SUB  3,4,3 	Op NOT 
140:     LD  4,-207(1) 	Load left into ac1 
141:    JEQ  3,1(7) 	Op AND 
142:    LDA  3,0(4) 	 
143:    JGT  3,1(7) 	Jump to while part 
* DO
* EXPRESSION STMT
145:     LD  3,-3(1) 	Load variable k
146:     ST  3,-207(1) 	Save left side 
147:    LDC  3,1(6) 	Load constant 
148:     LD  4,-207(1) 	Load left into ac1 
149:    ADD  3,4,3 	Op + 
150:     ST  3,-3(1) 	Store variable k
151:    LDA  7,-27(7) 	go to beginning of loop 
144:    LDA  7,7(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
152:    LDA  7,-78(7) 	go to beginning of loop 
 88:    LDA  7,64(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
153:    LDC  3,2(6) 	Load constant 
154:     ST  3,-3(1) 	Store variable k
* WHILE
155:     LD  3,-3(1) 	Load variable k
156:     ST  3,-207(1) 	Save left side 
157:     LD  3,-2(1) 	Load variable max
158:     LD  4,-207(1) 	Load left into ac1 
159:    SUB  4,4,3 	Op <= 
160:    LDC  3,1(6) 	True case 
161:    JLE  4,1(7) 	Jump if true 
162:    LDC  3,0(6) 	False case 
163:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
165:     LD  3,-3(1) 	Load variable k
166:    LDA  4,-5(1) 	Load address of base of array n
167:    SUB  3,4,3 	Compute offset of value 
168:     LD  3,0(3) 	Load the value 
169:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
171:     ST  1,-207(1) 	Store old fp in ghost frame 
*                       Load param 1
172:     LD  3,-3(1) 	Load variable k
173:     ST  3,-209(1) 	Store parameter 
*                       Jump to output
174:    LDA  1,-207(1) 	Load address of new frame 
175:    LDA  3,1(7) 	Return address in ac 
176:    LDA  7,-171(7) 	CALL output
177:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
178:     ST  1,-207(1) 	Store old fp in ghost frame 
*                       Jump to outnl
179:    LDA  1,-207(1) 	Load address of new frame 
180:    LDA  3,1(7) 	Return address in ac 
181:    LDA  7,-145(7) 	CALL outnl
182:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
170:    LDA  7,12(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
183:     LD  3,-3(1) 	Load variable k
184:     ST  3,-207(1) 	Save left side 
185:    LDC  3,1(6) 	Load constant 
186:     LD  4,-207(1) 	Load left into ac1 
187:    ADD  3,4,3 	Op + 
188:     ST  3,-3(1) 	Store variable k
* END compound statement
189:    LDA  7,-35(7) 	go to beginning of loop 
164:    LDA  7,25(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
190:    LDC  3,0(6) 	Load constant 
191:    LDA  2,0(3) 	Copy result to rt register 
192:     LD  3,-1(1) 	Load return address 
193:     LD  1,0(1) 	Adjust fp 
194:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
195:    LDC  2,0(6) 	Set return value to 0 
196:     LD  3,-1(1) 	Load return address 
197:     LD  1,0(1) 	Adjust fp 
198:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,198(7) 	Jump to init [backpatch] 
* BEGIN Init
199:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
200:    LDA  1,0(0) 	set first frame at end of globals 
201:     ST  1,0(1) 	store old fp (point to self) 
202:    LDA  3,1(7) 	Return address in ac 
203:    LDA  7,-162(7) 	Jump to main 
204:   HALT  0,0,0 	DONE! 
* END Init
