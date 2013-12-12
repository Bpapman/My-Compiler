* C- Compiler version C-F10
* Built: Dec 6, 2013
* Author: Brett Papineau
* File compiled: temp.c-
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
* 			Begin call to  output
 46:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 47:    LDC  3,13(6) 	Load constant 
 48:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 49:    LDA  1,-3(1) 	Load address of new frame 
 50:    LDA  3,1(7) 	Return address in ac 
 51:    LDA  7,-46(7) 	Call  output
 52:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,52(7) 	Jump around the THEN [backpatch] 
* ENDIF
* 			Begin call to  output
 53:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 54:    LDC  3,23(6) 	Load constant 
 55:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 56:    LDA  1,-3(1) 	Load address of new frame 
 57:    LDA  3,1(7) 	Return address in ac 
 58:    LDA  7,-53(7) 	Call  output
 59:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
 60:    LDC  3,0(6) 	Load constant 
 61:     ST  3,-2(1) 	Store variable x
* IF
 62:     LD  3,-2(1) 	Load variable x
 63:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 65:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 66:    LDC  3,44(6) 	Load constant 
 67:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 68:    LDA  1,-3(1) 	Load address of new frame 
 69:    LDA  3,1(7) 	Return address in ac 
 70:    LDA  7,-65(7) 	Call  output
 71:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,71(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 72:     LD  3,-2(1) 	Load variable x
 73:    SUB  3,4,3 	Op = 
 74:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 76:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 77:    LDC  3,55(6) 	Load constant 
 78:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 79:    LDA  1,-3(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-76(7) 	Call  output
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,82(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 83:    LDC  3,3(6) 	Load constant 
 84:     ST  3,-3(1) 	Save left side 
 85:    LDC  3,1(6) 	Load constant 
 86:     LD  4,-3(1) 	Load left into ac1 
 87:    SUB  4,4,3 	Op < 
 88:    LDC  3,1(6) 	True case 
 89:    JGT  4,1(7) 	Jump if true 
 90:    LDC  3,0(6) 	False case 
 91:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 93:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 94:    LDC  3,987(6) 	Load constant 
 95:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 96:    LDA  1,-3(1) 	Load address of new frame 
 97:    LDA  3,1(7) 	Return address in ac 
 98:    LDA  7,-93(7) 	Call  output
 99:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,99(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
100:    LDC  3,3(6) 	Load constant 
101:     ST  3,-3(1) 	Save left side 
102:    LDC  3,1(6) 	Load constant 
103:     LD  4,-3(1) 	Load left into ac1 
104:    SUB  4,4,3 	Op < 
105:    LDC  3,1(6) 	True case 
106:    JLT  4,1(7) 	Jump if true 
107:    LDC  3,0(6) 	False case 
108:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
110:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
111:    LDC  3,211(6) 	Load constant 
112:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
113:    LDA  1,-3(1) 	Load address of new frame 
114:    LDA  3,1(7) 	Return address in ac 
115:    LDA  7,-110(7) 	Call  output
116:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,116(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
117:    LDC  3,1(6) 	Load constant 
118:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
120:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
121:    LDC  3,13(6) 	Load constant 
122:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
123:    LDA  1,-3(1) 	Load address of new frame 
124:    LDA  3,1(7) 	Return address in ac 
125:    LDA  7,-120(7) 	Call  output
126:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,126(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
127:    LDC  3,0(6) 	Load constant 
128:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
130:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
131:    LDC  3,23(6) 	Load constant 
132:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
133:    LDA  1,-3(1) 	Load address of new frame 
134:    LDA  3,1(7) 	Return address in ac 
135:    LDA  7,-130(7) 	Call  output
136:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,136(7) 	Jump around the THEN [backpatch] 
* ENDIF
137:    LDC  3,0(6) 	Load constant 
138:     ST  3,-2(1) 	Store variable x
* IF
139:     LD  3,-2(1) 	Load variable x
140:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
142:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
143:    LDC  3,44(6) 	Load constant 
144:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
145:    LDA  1,-3(1) 	Load address of new frame 
146:    LDA  3,1(7) 	Return address in ac 
147:    LDA  7,-142(7) 	Call  output
148:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,148(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
149:     LD  3,-2(1) 	Load variable x
150:    SUB  3,4,3 	Op = 
151:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
153:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
154:    LDC  3,55(6) 	Load constant 
155:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
156:    LDA  1,-3(1) 	Load address of new frame 
157:    LDA  3,1(7) 	Return address in ac 
158:    LDA  7,-153(7) 	Call  output
159:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,159(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
160:    LDC  3,3(6) 	Load constant 
161:     ST  3,-3(1) 	Save left side 
162:    LDC  3,1(6) 	Load constant 
163:     LD  4,-3(1) 	Load left into ac1 
164:    SUB  4,4,3 	Op < 
165:    LDC  3,1(6) 	True case 
166:    JGT  4,1(7) 	Jump if true 
167:    LDC  3,0(6) 	False case 
168:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
170:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
171:    LDC  3,987(6) 	Load constant 
172:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
173:    LDA  1,-3(1) 	Load address of new frame 
174:    LDA  3,1(7) 	Return address in ac 
175:    LDA  7,-170(7) 	Call  output
176:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,176(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
177:    LDC  3,3(6) 	Load constant 
178:     ST  3,-3(1) 	Save left side 
179:    LDC  3,1(6) 	Load constant 
180:     LD  4,-3(1) 	Load left into ac1 
181:    SUB  4,4,3 	Op < 
182:    LDC  3,1(6) 	True case 
183:    JLT  4,1(7) 	Jump if true 
184:    LDC  3,0(6) 	False case 
185:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
187:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
188:    LDC  3,211(6) 	Load constant 
189:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
190:    LDA  1,-3(1) 	Load address of new frame 
191:    LDA  3,1(7) 	Return address in ac 
192:    LDA  7,-187(7) 	Call  output
193:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,193(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
194:    LDC  2,0(6) 	Set return value to 0 
195:     LD  3,-1(1) 	Load return address 
196:     LD  1,0(1) 	Adjust fp 
197:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,197(7) 	Jump to init [backpatch] 
* BEGIN Init
198:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
199:    LDA  1,0(0) 	set first frame at end of globals 
200:     ST  1,0(1) 	store old fp (point to self) 
201:    LDA  3,0(7) 	return address in ac 
202:    LDA  7,-161(7) 	Jump to main 
203:   HALT  0,0,0 	DONE 
* END init
