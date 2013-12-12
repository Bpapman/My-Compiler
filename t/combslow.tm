* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  combslow.c-
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
* BEGIN function comb
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
 43:     LD  3,-2(1) 	Load variable a
 44:     ST  3,-4(1) 	Save left side 
 45:     LD  3,-3(1) 	Load variable b
 46:     LD  4,-4(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op == 
 48:    LDC  3,1(6) 	True case 
 49:    JEQ  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 53:    LDC  3,1(6) 	Load constant 
 54:    LDA  2,0(3) 	Copy result to rt register 
 55:     LD  3,-1(1) 	Load return address 
 56:     LD  1,0(1) 	Adjust fp 
 57:    LDA  7,0(3) 	Return 
 52:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 58:     LD  3,-3(1) 	Load variable b
 59:     ST  3,-4(1) 	Save left side 
 60:    LDC  3,0(6) 	Load constant 
 61:     LD  4,-4(1) 	Load left into ac1 
 62:    SUB  4,4,3 	Op == 
 63:    LDC  3,1(6) 	True case 
 64:    JEQ  4,1(7) 	Jump if true 
 65:    LDC  3,0(6) 	False case 
 66:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 68:    LDC  3,1(6) 	Load constant 
 69:    LDA  2,0(3) 	Copy result to rt register 
 70:     LD  3,-1(1) 	Load return address 
 71:     LD  1,0(1) 	Adjust fp 
 72:    LDA  7,0(3) 	Return 
 67:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 73:     LD  3,-3(1) 	Load variable b
 74:     ST  3,-4(1) 	Save left side 
 75:    LDC  3,1(6) 	Load constant 
 76:     LD  4,-4(1) 	Load left into ac1 
 77:    SUB  4,4,3 	Op == 
 78:    LDC  3,1(6) 	True case 
 79:    JEQ  4,1(7) 	Jump if true 
 80:    LDC  3,0(6) 	False case 
 81:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 83:     LD  3,-2(1) 	Load variable a
 84:    LDA  2,0(3) 	Copy result to rt register 
 85:     LD  3,-1(1) 	Load return address 
 86:     LD  1,0(1) 	Adjust fp 
 87:    LDA  7,0(3) 	Return 
 82:    LDA  7,5(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
*                       Begin call to  comb
 88:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 89:     LD  3,-2(1) 	Load variable a
 90:     ST  3,-6(1) 	Save left side 
 91:    LDC  3,1(6) 	Load constant 
 92:     LD  4,-6(1) 	Load left into ac1 
 93:    SUB  3,4,3 	Op - 
 94:     ST  3,-6(1) 	Store parameter 
*                       Load param 2
 95:     LD  3,-3(1) 	Load variable b
 96:     ST  3,-7(1) 	Save left side 
 97:    LDC  3,1(6) 	Load constant 
 98:     LD  4,-7(1) 	Load left into ac1 
 99:    SUB  3,4,3 	Op - 
100:     ST  3,-7(1) 	Store parameter 
*                       Jump to comb
101:    LDA  1,-4(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-62(7) 	CALL comb
104:    LDA  3,0(2) 	Save the result in ac 
*                       End call to comb
105:     ST  3,-4(1) 	Save left side 
*                       Begin call to  comb
106:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
107:     LD  3,-2(1) 	Load variable a
108:     ST  3,-7(1) 	Save left side 
109:    LDC  3,1(6) 	Load constant 
110:     LD  4,-7(1) 	Load left into ac1 
111:    SUB  3,4,3 	Op - 
112:     ST  3,-7(1) 	Store parameter 
*                       Load param 2
113:     LD  3,-3(1) 	Load variable b
114:     ST  3,-8(1) 	Store parameter 
*                       Jump to comb
115:    LDA  1,-5(1) 	Load address of new frame 
116:    LDA  3,1(7) 	Return address in ac 
117:    LDA  7,-76(7) 	CALL comb
118:    LDA  3,0(2) 	Save the result in ac 
*                       End call to comb
119:     LD  4,-4(1) 	Load left into ac1 
120:    ADD  3,4,3 	Op + 
121:    LDA  2,0(3) 	Copy result to rt register 
122:     LD  3,-1(1) 	Load return address 
123:     LD  1,0(1) 	Adjust fp 
124:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
125:    LDC  2,0(6) 	Set return value to 0 
126:     LD  3,-1(1) 	Load return address 
127:     LD  1,0(1) 	Adjust fp 
128:    LDA  7,0(3) 	Return 
* END of function comb
* BEGIN function main
129:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* WHILE
130:    LDC  3,1(6) 	Load constant 
131:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
*                       Begin call to  input
133:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to input
134:    LDA  1,-5(1) 	Load address of new frame 
135:    LDA  3,1(7) 	Return address in ac 
136:    LDA  7,-136(7) 	CALL input
137:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
138:     ST  3,-4(1) 	Store variable n
139:     ST  3,-5(1) 	Save left side 
140:    LDC  3,0(6) 	Load constant 
141:     LD  4,-5(1) 	Load left into ac1 
142:    SUB  4,4,3 	Op == 
143:    LDC  3,1(6) 	True case 
144:    JEQ  4,1(7) 	Jump if true 
145:    LDC  3,0(6) 	False case 
146:    JGT  3,1(7) 	Jump to then part 
* THEN
* BREAK
148:    LDA  7,-17(7) 	break 
147:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
149:    LDC  3,0(6) 	Load constant 
150:     ST  3,-2(1) 	Store variable a
* WHILE
151:     LD  3,-2(1) 	Load variable a
152:     ST  3,-5(1) 	Save left side 
153:     LD  3,-4(1) 	Load variable n
154:     LD  4,-5(1) 	Load left into ac1 
155:    SUB  4,4,3 	Op <= 
156:    LDC  3,1(6) 	True case 
157:    JLE  4,1(7) 	Jump if true 
158:    LDC  3,0(6) 	False case 
159:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
161:    LDC  3,0(6) 	Load constant 
162:     ST  3,-3(1) 	Store variable b
* WHILE
163:     LD  3,-3(1) 	Load variable b
164:     ST  3,-5(1) 	Save left side 
165:     LD  3,-2(1) 	Load variable a
166:     LD  4,-5(1) 	Load left into ac1 
167:    SUB  4,4,3 	Op <= 
168:    LDC  3,1(6) 	True case 
169:    JLE  4,1(7) 	Jump if true 
170:    LDC  3,0(6) 	False case 
171:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
173:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  comb
174:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Load param 1
175:     LD  3,-2(1) 	Load variable a
176:     ST  3,-9(1) 	Store parameter 
*                       Load param 2
177:     LD  3,-3(1) 	Load variable b
178:     ST  3,-10(1) 	Store parameter 
*                       Jump to comb
179:    LDA  1,-7(1) 	Load address of new frame 
180:    LDA  3,1(7) 	Return address in ac 
181:    LDA  7,-140(7) 	CALL comb
182:    LDA  3,0(2) 	Save the result in ac 
*                       End call to comb
183:     ST  3,-7(1) 	Store parameter 
*                       Jump to output
184:    LDA  1,-5(1) 	Load address of new frame 
185:    LDA  3,1(7) 	Return address in ac 
186:    LDA  7,-181(7) 	CALL output
187:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
188:     LD  3,-3(1) 	load lhs variable b
189:    LDA  3,1(3) 	increment value of b
190:     ST  3,-3(1) 	Store variable b
* END compound statement
191:    LDA  7,-29(7) 	go to beginning of loop 
172:    LDA  7,19(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outnl
192:     ST  1,-5(1) 	Store old fp in ghost frame 
*                       Jump to outnl
193:    LDA  1,-5(1) 	Load address of new frame 
194:    LDA  3,1(7) 	Return address in ac 
195:    LDA  7,-159(7) 	CALL outnl
196:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
197:     LD  3,-2(1) 	load lhs variable a
198:    LDA  3,1(3) 	increment value of a
199:     ST  3,-2(1) 	Store variable a
* END compound statement
200:    LDA  7,-50(7) 	go to beginning of loop 
160:    LDA  7,40(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
201:    LDA  7,-72(7) 	go to beginning of loop 
132:    LDA  7,69(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
202:    LDC  2,0(6) 	Set return value to 0 
203:     LD  3,-1(1) 	Load return address 
204:     LD  1,0(1) 	Adjust fp 
205:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,205(7) 	Jump to init [backpatch] 
* BEGIN Init
206:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
207:    LDA  1,0(0) 	set first frame at end of globals 
208:     ST  1,0(1) 	store old fp (point to self) 
209:    LDA  3,1(7) 	Return address in ac 
210:    LDA  7,-82(7) 	Jump to main 
211:   HALT  0,0,0 	DONE! 
* END Init
