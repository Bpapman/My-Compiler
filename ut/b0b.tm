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
* EXPRESSION STMT
* 			Begin call to  outputb
 43:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 44:    LDC  3,0(6) 	Load constant 
 45:     ST  3,-4(1) 	Store parameter 
 46:     ST  3,-2(1) 	Save left side 
 47:    LDC  3,0(6) 	Load constant 
 48:     ST  3,-5(1) 	Store parameter 
 49:     LD  4,-2(1) 	Load left into ac1 
 50:    JEQ  3,1(7) 	Op OR 
 51:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
 52:    LDA  1,-2(1) 	Load address of new frame 
 53:    LDA  3,1(7) 	Return address in ac 
 54:    LDA  7,-37(7) 	Call  outputb
 55:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 56:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 57:    LDC  3,0(6) 	Load constant 
 58:     ST  3,-4(1) 	Store parameter 
 59:     ST  3,-2(1) 	Save left side 
 60:    LDC  3,1(6) 	Load constant 
 61:     ST  3,-5(1) 	Store parameter 
 62:     LD  4,-2(1) 	Load left into ac1 
 63:    JEQ  3,1(7) 	Op OR 
 64:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
 65:    LDA  1,-2(1) 	Load address of new frame 
 66:    LDA  3,1(7) 	Return address in ac 
 67:    LDA  7,-50(7) 	Call  outputb
 68:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 69:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 70:    LDC  3,1(6) 	Load constant 
 71:     ST  3,-4(1) 	Store parameter 
 72:     ST  3,-2(1) 	Save left side 
 73:    LDC  3,0(6) 	Load constant 
 74:     ST  3,-5(1) 	Store parameter 
 75:     LD  4,-2(1) 	Load left into ac1 
 76:    JEQ  3,1(7) 	Op OR 
 77:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
 78:    LDA  1,-2(1) 	Load address of new frame 
 79:    LDA  3,1(7) 	Return address in ac 
 80:    LDA  7,-63(7) 	Call  outputb
 81:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 82:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 83:    LDC  3,1(6) 	Load constant 
 84:     ST  3,-4(1) 	Store parameter 
 85:     ST  3,-2(1) 	Save left side 
 86:    LDC  3,1(6) 	Load constant 
 87:     ST  3,-5(1) 	Store parameter 
 88:     LD  4,-2(1) 	Load left into ac1 
 89:    JEQ  3,1(7) 	Op OR 
 90:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
 91:    LDA  1,-2(1) 	Load address of new frame 
 92:    LDA  3,1(7) 	Return address in ac 
 93:    LDA  7,-76(7) 	Call  outputb
 94:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
 95:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 96:    LDC  3,0(6) 	Load constant 
 97:     ST  3,-4(1) 	Store parameter 
 98:     ST  3,-2(1) 	Save left side 
 99:    LDC  3,0(6) 	Load constant 
100:     ST  3,-5(1) 	Store parameter 
101:     LD  4,-2(1) 	Load left into ac1 
102:    JEQ  3,1(7) 	Op AND 
103:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
104:    LDA  1,-2(1) 	Load address of new frame 
105:    LDA  3,1(7) 	Return address in ac 
106:    LDA  7,-89(7) 	Call  outputb
107:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
108:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
109:    LDC  3,0(6) 	Load constant 
110:     ST  3,-4(1) 	Store parameter 
111:     ST  3,-2(1) 	Save left side 
112:    LDC  3,1(6) 	Load constant 
113:     ST  3,-5(1) 	Store parameter 
114:     LD  4,-2(1) 	Load left into ac1 
115:    JEQ  3,1(7) 	Op AND 
116:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
117:    LDA  1,-2(1) 	Load address of new frame 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-102(7) 	Call  outputb
120:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
121:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
122:    LDC  3,1(6) 	Load constant 
123:     ST  3,-4(1) 	Store parameter 
124:     ST  3,-2(1) 	Save left side 
125:    LDC  3,0(6) 	Load constant 
126:     ST  3,-5(1) 	Store parameter 
127:     LD  4,-2(1) 	Load left into ac1 
128:    JEQ  3,1(7) 	Op AND 
129:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
130:    LDA  1,-2(1) 	Load address of new frame 
131:    LDA  3,1(7) 	Return address in ac 
132:    LDA  7,-115(7) 	Call  outputb
133:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
134:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
135:    LDC  3,1(6) 	Load constant 
136:     ST  3,-4(1) 	Store parameter 
137:     ST  3,-2(1) 	Save left side 
138:    LDC  3,1(6) 	Load constant 
139:     ST  3,-5(1) 	Store parameter 
140:     LD  4,-2(1) 	Load left into ac1 
141:    JEQ  3,1(7) 	Op AND 
142:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
143:    LDA  1,-2(1) 	Load address of new frame 
144:    LDA  3,1(7) 	Return address in ac 
145:    LDA  7,-128(7) 	Call  outputb
146:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
147:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
148:    LDC  3,0(6) 	Load constant 
149:     ST  3,-4(1) 	Store parameter 
150:    SUB  3,4,3 	Op = 
151:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
152:    LDA  1,-2(1) 	Load address of new frame 
153:    LDA  3,1(7) 	Return address in ac 
154:    LDA  7,-137(7) 	Call  outputb
155:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outputb
156:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
157:    LDC  3,1(6) 	Load constant 
158:     ST  3,-4(1) 	Store parameter 
159:    SUB  3,4,3 	Op = 
160:     ST  3,-4(1) 	Store parameter 
* 			Jump to  outputb
161:    LDA  1,-2(1) 	Load address of new frame 
162:    LDA  3,1(7) 	Return address in ac 
163:    LDA  7,-146(7) 	Call  outputb
164:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* 			Begin call to  outnl
165:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
166:    LDA  1,-2(1) 	Load address of new frame 
167:    LDA  3,1(7) 	Return address in ac 
168:    LDA  7,-132(7) 	Call  outnl
169:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
170:    LDC  2,0(6) 	Set return value to 0 
171:     LD  3,-1(1) 	Load return address 
172:     LD  1,0(1) 	Adjust fp 
173:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,173(7) 	Jump to init [backpatch] 
* BEGIN Init
174:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
175:    LDA  1,0(0) 	set first frame at end of globals 
176:     ST  1,0(1) 	store old fp (point to self) 
177:    LDA  3,0(7) 	return address in ac 
178:    LDA  7,-137(7) 	Jump to main 
179:   HALT  0,0,0 	DONE 
* END init
