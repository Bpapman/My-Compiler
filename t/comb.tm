* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  comb.c-
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
* EXPRESSION STMT
 43:     LD  3,-2(1) 	Load variable n
 44:     ST  3,-7(1) 	Save left side 
 45:     LD  3,-3(1) 	Load variable r
 46:     LD  4,-7(1) 	Load left into ac1 
 47:    SUB  3,4,3 	Op - 
 48:     ST  3,-7(1) 	Save left side 
 49:    LDC  3,1(6) 	Load constant 
 50:     LD  4,-7(1) 	Load left into ac1 
 51:    ADD  3,4,3 	Op + 
 52:     ST  3,-6(1) 	Store variable c
* EXPRESSION STMT
 53:     LD  3,-2(1) 	Load variable n
 54:     ST  3,-7(1) 	Save left side 
 55:     LD  3,-3(1) 	Load variable r
 56:     LD  4,-7(1) 	Load left into ac1 
 57:    SUB  3,4,3 	Op - 
 58:     ST  3,-7(1) 	Save left side 
 59:    LDC  3,2(6) 	Load constant 
 60:     LD  4,-7(1) 	Load left into ac1 
 61:    ADD  3,4,3 	Op + 
 62:     ST  3,-4(1) 	Store variable i
* EXPRESSION STMT
 63:    LDC  3,2(6) 	Load constant 
 64:     ST  3,-5(1) 	Store variable j
* WHILE
 65:     LD  3,-4(1) 	Load variable i
 66:     ST  3,-7(1) 	Save left side 
 67:     LD  3,-2(1) 	Load variable n
 68:     LD  4,-7(1) 	Load left into ac1 
 69:    SUB  4,4,3 	Op <= 
 70:    LDC  3,1(6) 	True case 
 71:    JLE  4,1(7) 	Jump if true 
 72:    LDC  3,0(6) 	False case 
 73:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 75:     LD  3,-6(1) 	Load variable c
 76:     ST  3,-7(1) 	Save left side 
 77:     LD  3,-4(1) 	Load variable i
 78:     LD  4,-7(1) 	Load left into ac1 
 79:    MUL  3,4,3 	Op * 
 80:     ST  3,-7(1) 	Save left side 
 81:     LD  3,-5(1) 	Load variable j
 82:     LD  4,-7(1) 	Load left into ac1 
 83:    DIV  3,4,3 	Op / 
 84:     ST  3,-6(1) 	Store variable c
* EXPRESSION STMT
 85:     LD  3,-4(1) 	load lhs variable i
 86:    LDA  3,1(3) 	increment value of i
 87:     ST  3,-4(1) 	Store variable i
* EXPRESSION STMT
 88:     LD  3,-5(1) 	load lhs variable j
 89:    LDA  3,1(3) 	increment value of j
 90:     ST  3,-5(1) 	Store variable j
* END compound statement
 91:    LDA  7,-27(7) 	go to beginning of loop 
 74:    LDA  7,17(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
 92:     LD  3,-6(1) 	Load variable c
 93:    LDA  2,0(3) 	Copy result to rt register 
 94:     LD  3,-1(1) 	Load return address 
 95:     LD  1,0(1) 	Adjust fp 
 96:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 97:    LDC  2,0(6) 	Set return value to 0 
 98:     LD  3,-1(1) 	Load return address 
 99:     LD  1,0(1) 	Adjust fp 
100:    LDA  7,0(3) 	Return 
* END of function comb
* BEGIN function main
101:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
102:    LDC  3,15(6) 	Load constant 
103:     ST  3,-2(1) 	Store variable max
* EXPRESSION STMT
104:    LDC  3,2(6) 	Load constant 
105:     ST  3,-3(1) 	Store variable n
* WHILE
106:     LD  3,-3(1) 	Load variable n
107:     ST  3,-6(1) 	Save left side 
108:     LD  3,-2(1) 	Load variable max
109:     LD  4,-6(1) 	Load left into ac1 
110:    SUB  4,4,3 	Op <= 
111:    LDC  3,1(6) 	True case 
112:    JLE  4,1(7) 	Jump if true 
113:    LDC  3,0(6) 	False case 
114:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
116:    LDC  3,2(6) 	Load constant 
117:     ST  3,-5(1) 	Store variable r
* WHILE
118:     LD  3,-5(1) 	Load variable r
119:     ST  3,-6(1) 	Save left side 
120:     LD  3,-3(1) 	Load variable n
121:     ST  3,-7(1) 	Save left side 
122:    LDC  3,2(6) 	Load constant 
123:     LD  4,-7(1) 	Load left into ac1 
124:    DIV  3,4,3 	Op / 
125:     LD  4,-6(1) 	Load left into ac1 
126:    SUB  4,4,3 	Op <= 
127:    LDC  3,1(6) 	True case 
128:    JLE  4,1(7) 	Jump if true 
129:    LDC  3,0(6) 	False case 
130:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
132:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
133:     LD  3,-3(1) 	Load variable n
134:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
135:    LDA  1,-6(1) 	Load address of new frame 
136:    LDA  3,1(7) 	Return address in ac 
137:    LDA  7,-132(7) 	CALL output
138:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
139:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
140:     LD  3,-5(1) 	Load variable r
141:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
142:    LDA  1,-6(1) 	Load address of new frame 
143:    LDA  3,1(7) 	Return address in ac 
144:    LDA  7,-139(7) 	CALL output
145:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
146:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  comb
147:     ST  1,-8(1) 	Store old fp in ghost frame 
*                       Load param 1
148:     LD  3,-3(1) 	Load variable n
149:     ST  3,-10(1) 	Store parameter 
*                       Load param 2
150:     LD  3,-5(1) 	Load variable r
151:     ST  3,-11(1) 	Store parameter 
*                       Jump to comb
152:    LDA  1,-8(1) 	Load address of new frame 
153:    LDA  3,1(7) 	Return address in ac 
154:    LDA  7,-113(7) 	CALL comb
155:    LDA  3,0(2) 	Save the result in ac 
*                       End call to comb
156:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
157:    LDA  1,-6(1) 	Load address of new frame 
158:    LDA  3,1(7) 	Return address in ac 
159:    LDA  7,-154(7) 	CALL output
160:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
161:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
162:    LDA  1,-6(1) 	Load address of new frame 
163:    LDA  3,1(7) 	Return address in ac 
164:    LDA  7,-128(7) 	CALL outnl
165:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
166:     LD  3,-5(1) 	load lhs variable r
167:    LDA  3,1(3) 	increment value of r
168:     ST  3,-5(1) 	Store variable r
* END compound statement
169:    LDA  7,-52(7) 	go to beginning of loop 
131:    LDA  7,38(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
170:     LD  3,-3(1) 	load lhs variable n
171:    LDA  3,1(3) 	increment value of n
172:     ST  3,-3(1) 	Store variable n
* END compound statement
173:    LDA  7,-68(7) 	go to beginning of loop 
115:    LDA  7,58(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
174:    LDC  2,0(6) 	Set return value to 0 
175:     LD  3,-1(1) 	Load return address 
176:     LD  1,0(1) 	Adjust fp 
177:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,177(7) 	Jump to init [backpatch] 
* BEGIN Init
178:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
179:    LDA  1,0(0) 	set first frame at end of globals 
180:     ST  1,0(1) 	store old fp (point to self) 
181:    LDA  3,1(7) 	Return address in ac 
182:    LDA  7,-82(7) 	Jump to main 
183:   HALT  0,0,0 	DONE! 
* END Init
