* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  e01.tm
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
* EXPRESSION STMT
* 			Begin call to  output
 46:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 47:    LDC  3,13(6) 	Load constant 
 48:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 49:    LDA  1,-3(1) 	Load address of new frame 
 50:    LDA  3,1(7) 	Return address in ac 
 51:    LDA  7,-46(7) 	CALL output
 52:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,52(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
* 			Begin call to  output
 53:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 54:    LDC  3,23(6) 	Load constant 
 55:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 56:    LDA  1,-3(1) 	Load address of new frame 
 57:    LDA  3,1(7) 	Return address in ac 
 58:    LDA  7,-53(7) 	CALL output
 59:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
 60:    LDC  3,0(6) 	Load constant 
 61:     ST  3,-2(1) 	Store variable x
* IF
* EXPRESSION STMT
 62:     LD  3,-2(1) 	Load variable x
 63:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
 65:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 66:    LDC  3,44(6) 	Load constant 
 67:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 68:    LDA  1,-3(1) 	Load address of new frame 
 69:    LDA  3,1(7) 	Return address in ac 
 70:    LDA  7,-65(7) 	CALL output
 71:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,71(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
 72:     LD  3,-2(1) 	Load variable x
 73:    LDA  3,1(5) 	Not load address 
 74:    SUB  3,4,3 	Op Not 
 75:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
 77:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 78:    LDC  3,55(6) 	Load constant 
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
* IF
* EXPRESSION STMT
 84:    LDC  3,3(6) 	Load constant 
 85:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
 86:    LDC  3,1(6) 	Load constant 
 87:     LD  4,-3(1) 	Load left into ac1 
 88:    SUB  4,4,3 	Op < 
 89:    LDC  3,1(6) 	True case 
 90:    JGT  4,1(7) 	Jump if true 
 91:    LDC  3,0(6) 	False case 
 92:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
 94:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 95:    LDC  3,987(6) 	Load constant 
 96:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 97:    LDA  1,-3(1) 	Load address of new frame 
 98:    LDA  3,1(7) 	Return address in ac 
 99:    LDA  7,-94(7) 	CALL output
100:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,100(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
101:    LDC  3,3(6) 	Load constant 
102:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
103:    LDC  3,1(6) 	Load constant 
104:     LD  4,-3(1) 	Load left into ac1 
105:    SUB  4,4,3 	Op < 
106:    LDC  3,1(6) 	True case 
107:    JLT  4,1(7) 	Jump if true 
108:    LDC  3,0(6) 	False case 
109:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
111:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
112:    LDC  3,211(6) 	Load constant 
113:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
114:    LDA  1,-3(1) 	Load address of new frame 
115:    LDA  3,1(7) 	Return address in ac 
116:    LDA  7,-111(7) 	CALL output
117:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
  0:    LDA  7,117(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
118:    LDC  3,1(6) 	Load constant 
119:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
121:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
122:    LDC  3,13(6) 	Load constant 
123:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
124:    LDA  1,-3(1) 	Load address of new frame 
125:    LDA  3,1(7) 	Return address in ac 
126:    LDA  7,-121(7) 	CALL output
127:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
* BUG in emitBackup
134544570:    LDA  7,-134544442(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
129:    LDC  3,0(6) 	Load constant 
130:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
132:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
133:    LDC  3,23(6) 	Load constant 
134:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
135:    LDA  1,-3(1) 	Load address of new frame 
136:    LDA  3,1(7) 	Return address in ac 
137:    LDA  7,-132(7) 	CALL output
138:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544431(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
140:    LDC  3,0(6) 	Load constant 
141:     ST  3,-2(1) 	Store variable x
* IF
* EXPRESSION STMT
142:     LD  3,-2(1) 	Load variable x
143:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
145:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
146:    LDC  3,44(6) 	Load constant 
147:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
148:    LDA  1,-3(1) 	Load address of new frame 
149:    LDA  3,1(7) 	Return address in ac 
150:    LDA  7,-145(7) 	CALL output
151:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544418(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
153:     LD  3,-2(1) 	Load variable x
154:    LDA  3,1(5) 	Not load address 
155:    SUB  3,4,3 	Op Not 
156:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
158:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
159:    LDC  3,55(6) 	Load constant 
160:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
161:    LDA  1,-3(1) 	Load address of new frame 
162:    LDA  3,1(7) 	Return address in ac 
163:    LDA  7,-158(7) 	CALL output
164:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544405(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
166:    LDC  3,3(6) 	Load constant 
167:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
168:    LDC  3,1(6) 	Load constant 
169:     LD  4,-3(1) 	Load left into ac1 
170:    SUB  4,4,3 	Op < 
171:    LDC  3,1(6) 	True case 
172:    JGT  4,1(7) 	Jump if true 
173:    LDC  3,0(6) 	False case 
174:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
176:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
177:    LDC  3,987(6) 	Load constant 
178:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
179:    LDA  1,-3(1) 	Load address of new frame 
180:    LDA  3,1(7) 	Return address in ac 
181:    LDA  7,-176(7) 	CALL output
182:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544387(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
* EXPRESSION STMT
184:    LDC  3,3(6) 	Load constant 
185:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
186:    LDC  3,1(6) 	Load constant 
187:     LD  4,-3(1) 	Load left into ac1 
188:    SUB  4,4,3 	Op < 
189:    LDC  3,1(6) 	True case 
190:    JLT  4,1(7) 	Jump if true 
191:    LDC  3,0(6) 	False case 
192:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
194:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
195:    LDC  3,211(6) 	Load constant 
196:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
197:    LDA  1,-3(1) 	Load address of new frame 
198:    LDA  3,1(7) 	Return address in ac 
199:    LDA  7,-194(7) 	CALL output
200:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544369(7) 	Jump around the THEN [backpatch] 
* ENDIF
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
210:    LDA  7,-169(7) 	Jump to main 
211:   HALT  0,0,0 	DONE! 
* END Init
