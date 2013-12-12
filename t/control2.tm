* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  control2.c-
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
 43:    LDC  3,10(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
 45:    LDC  3,7(6) 	Load constant 
 46:     ST  3,-3(1) 	Store variable y
* WHILE
 47:     LD  3,-2(1) 	Load variable x
 48:     ST  3,-4(1) 	Save left side 
 49:    LDC  3,0(6) 	Load constant 
 50:     LD  4,-4(1) 	Load left into ac1 
 51:    SUB  4,4,3 	Op > 
 52:    LDC  3,1(6) 	True case 
 53:    JGT  4,1(7) 	Jump if true 
 54:    LDC  3,0(6) 	False case 
 55:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
 57:     LD  3,-2(1) 	Load variable x
 58:     ST  3,-4(1) 	Save left side 
 59:     LD  3,-3(1) 	Load variable y
 60:     LD  4,-4(1) 	Load left into ac1 
 61:    SUB  4,4,3 	Op == 
 62:    LDC  3,1(6) 	True case 
 63:    JEQ  4,1(7) 	Jump if true 
 64:    LDC  3,0(6) 	False case 
 65:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 67:    LDC  3,666(6) 	Load constant 
 68:     ST  3,-3(1) 	Store variable y
* ELSE
 66:    LDA  7,3(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
 70:     LD  3,-2(1) 	Load variable x
 71:     ST  3,-4(1) 	Save left side 
 72:    LDC  3,1(6) 	Load constant 
 73:     LD  4,-4(1) 	Load left into ac1 
 74:    SUB  3,4,3 	Op - 
 75:     ST  3,-2(1) 	Store variable x
 69:    LDA  7,6(7) 	Jump around the ELSE [backpatch] 
* ENDIF
 76:    LDA  7,-30(7) 	go to beginning of loop 
 56:    LDA  7,20(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  output
 77:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 78:     LD  3,-3(1) 	Load variable y
 79:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
 80:    LDA  1,-4(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-77(7) 	CALL output
 83:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 84:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 85:    LDA  1,-4(1) 	Load address of new frame 
 86:    LDA  3,1(7) 	Return address in ac 
 87:    LDA  7,-51(7) 	CALL outnl
 88:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
 89:    LDC  3,1(6) 	Load constant 
 90:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
 91:    LDC  3,1(6) 	Load constant 
 92:     ST  3,-3(1) 	Store variable y
* WHILE
 93:     LD  3,-2(1) 	Load variable x
 94:     ST  3,-4(1) 	Save left side 
 95:    LDC  3,5(6) 	Load constant 
 96:     LD  4,-4(1) 	Load left into ac1 
 97:    SUB  4,4,3 	Op < 
 98:    LDC  3,1(6) 	True case 
 99:    JLT  4,1(7) 	Jump if true 
100:    LDC  3,0(6) 	False case 
101:    JGT  3,1(7) 	Jump to while part 
* DO
* IF
103:     LD  3,-3(1) 	Load variable y
104:     ST  3,-4(1) 	Save left side 
105:    LDC  3,5(6) 	Load constant 
106:     LD  4,-4(1) 	Load left into ac1 
107:    SUB  4,4,3 	Op < 
108:    LDC  3,1(6) 	True case 
109:    JLT  4,1(7) 	Jump if true 
110:    LDC  3,0(6) 	False case 
111:    JGT  3,1(7) 	Jump to then part 
* THEN
* WHILE
113:     LD  3,-3(1) 	Load variable y
114:     ST  3,-4(1) 	Save left side 
115:    LDC  3,5(6) 	Load constant 
116:     LD  4,-4(1) 	Load left into ac1 
117:    SUB  4,4,3 	Op < 
118:    LDC  3,1(6) 	True case 
119:    JLT  4,1(7) 	Jump if true 
120:    LDC  3,0(6) 	False case 
121:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
123:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
124:     LD  3,-2(1) 	Load variable x
125:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
126:    LDA  1,-4(1) 	Load address of new frame 
127:    LDA  3,1(7) 	Return address in ac 
128:    LDA  7,-123(7) 	CALL output
129:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
130:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
131:     LD  3,-3(1) 	Load variable y
132:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
133:    LDA  1,-4(1) 	Load address of new frame 
134:    LDA  3,1(7) 	Return address in ac 
135:    LDA  7,-130(7) 	CALL output
136:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
137:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
138:    LDA  1,-4(1) 	Load address of new frame 
139:    LDA  3,1(7) 	Return address in ac 
140:    LDA  7,-104(7) 	CALL outnl
141:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* EXPRESSION STMT
142:     LD  3,-3(1) 	load lhs variable y
143:    LDA  3,1(3) 	increment value of y
144:     ST  3,-3(1) 	Store variable y
* END compound statement
145:    LDA  7,-33(7) 	go to beginning of loop 
122:    LDA  7,23(7) 	No more loop [backpatch] 
* ENDWHILE
* ELSE
112:    LDA  7,34(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
147:    LDC  3,1(6) 	Load constant 
148:     ST  3,-3(1) 	Store variable y
* EXPRESSION STMT
149:     LD  3,-2(1) 	load lhs variable x
150:    LDA  3,1(3) 	increment value of x
151:     ST  3,-2(1) 	Store variable x
* END compound statement
146:    LDA  7,5(7) 	Jump around the ELSE [backpatch] 
* ENDIF
152:    LDA  7,-60(7) 	go to beginning of loop 
102:    LDA  7,50(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  output
153:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
154:     LD  3,-2(1) 	Load variable x
155:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
156:    LDA  1,-4(1) 	Load address of new frame 
157:    LDA  3,1(7) 	Return address in ac 
158:    LDA  7,-153(7) 	CALL output
159:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* RETURN
160:     LD  3,-1(1) 	Load return address 
161:     LD  1,0(1) 	Adjust fp 
162:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
163:    LDC  2,0(6) 	Set return value to 0 
164:     LD  3,-1(1) 	Load return address 
165:     LD  1,0(1) 	Adjust fp 
166:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,166(7) 	Jump to init [backpatch] 
* BEGIN Init
167:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
168:    LDA  1,0(0) 	set first frame at end of globals 
169:     ST  1,0(1) 	store old fp (point to self) 
170:    LDA  3,1(7) 	Return address in ac 
171:    LDA  7,-130(7) 	Jump to main 
172:   HALT  0,0,0 	DONE! 
* END Init
