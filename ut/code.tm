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
* BEGIN function cat
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
 44:     LD  3,0(1) 	load variable h
 45:     ST  3,1(1) 	Store parameter 
 46:    MUL  3,4,3 	Op * 
 47:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
 48:    LDA  1,0(1) 	Load address of new frame 
 49:    LDA  3,1(7) 	Return address in ac 
 50:    LDA  7,-44(7) 	Call  output
 51:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
 52:     ST  3,1(1) 	Store parameter 
* 			Begin call to  output
 53:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
 54:     LD  3,0(1) 	load variable b
 55:     ST  3,1(1) 	Store parameter 
 56:    MUL  3,4,3 	Op * 
 57:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
 58:    LDA  1,0(1) 	Load address of new frame 
 59:    LDA  3,1(7) 	Return address in ac 
 60:    LDA  7,-54(7) 	Call  output
 61:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
 62:     ST  3,1(1) 	Store parameter 
* 			Begin call to  output
 63:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
 64:     LD  3,0(1) 	load variable bs
 65:     ST  3,1(1) 	Store parameter 
 66:    MUL  3,4,3 	Op * 
 67:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
 68:    LDA  1,0(1) 	Load address of new frame 
 69:    LDA  3,1(7) 	Return address in ac 
 70:    LDA  7,-64(7) 	Call  output
 71:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
 72:     ST  3,1(1) 	Store parameter 
* 			Begin call to  output
 73:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
 74:     LD  3,0(1) 	load variable d
 75:     ST  3,1(1) 	Store parameter 
 76:    MUL  3,4,3 	Op * 
 77:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
 78:    LDA  1,0(1) 	Load address of new frame 
 79:    LDA  3,1(7) 	Return address in ac 
 80:    LDA  7,-74(7) 	Call  output
 81:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
 82:     ST  3,1(1) 	Store parameter 
* 			Begin call to  output
 83:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
 84:     LD  3,0(1) 	load variable ds
 85:     ST  3,1(1) 	Store parameter 
 86:    MUL  3,4,3 	Op * 
 87:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
 88:    LDA  1,0(1) 	Load address of new frame 
 89:    LDA  3,1(7) 	Return address in ac 
 90:    LDA  7,-84(7) 	Call  output
 91:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
 92:     ST  3,1(1) 	Store parameter 
* END compound statement
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 93:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
 94:     LD  3,0(1) 	load variable h
 95:     ST  3,1(1) 	Store parameter 
 96:    MUL  3,4,3 	Op * 
 97:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
 98:    LDA  1,0(1) 	Load address of new frame 
 99:    LDA  3,1(7) 	Return address in ac 
100:    LDA  7,-94(7) 	Call  output
101:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
102:     ST  3,1(1) 	Store parameter 
* 			Begin call to  output
103:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
104:     LD  3,0(1) 	load variable b
105:     ST  3,1(1) 	Store parameter 
106:    MUL  3,4,3 	Op * 
107:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
108:    LDA  1,0(1) 	Load address of new frame 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-104(7) 	Call  output
111:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
112:     ST  3,1(1) 	Store parameter 
* 			Begin call to  output
113:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
114:     LD  3,0(1) 	load variable bs
115:     ST  3,1(1) 	Store parameter 
116:    MUL  3,4,3 	Op * 
117:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
118:    LDA  1,0(1) 	Load address of new frame 
119:    LDA  3,1(7) 	Return address in ac 
120:    LDA  7,-114(7) 	Call  output
121:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
122:     ST  3,1(1) 	Store parameter 
* 			Begin call to  output
123:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
124:     LD  3,0(1) 	load variable d
125:     ST  3,1(1) 	Store parameter 
126:    MUL  3,4,3 	Op * 
127:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
128:    LDA  1,0(1) 	Load address of new frame 
129:    LDA  3,1(7) 	Return address in ac 
130:    LDA  7,-124(7) 	Call  output
131:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
132:     ST  3,1(1) 	Store parameter 
* 			Begin call to  output
133:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
134:     LD  3,0(1) 	load variable ds
135:     ST  3,1(1) 	Store parameter 
136:    MUL  3,4,3 	Op * 
137:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
138:    LDA  1,0(1) 	Load address of new frame 
139:    LDA  3,1(7) 	Return address in ac 
140:    LDA  7,-134(7) 	Call  output
141:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
142:     ST  3,1(1) 	Store parameter 
* END compound statement
* END compound statement
* Add standard closing in case there is no return statement
143:    LDC  2,0(6) 	Set return value to 0 
144:     LD  3,-1(1) 	Load return address 
145:     LD  1,0(1) 	Adjust fp 
146:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function dog
147:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
148:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
149:     LD  3,0(1) 	load variable j
150:     ST  3,1(1) 	Store parameter 
151:    MUL  3,4,3 	Op * 
152:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
153:    LDA  1,0(1) 	Load address of new frame 
154:    LDA  3,1(7) 	Return address in ac 
155:    LDA  7,-149(7) 	Call  output
156:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
157:     ST  3,1(1) 	Store parameter 
* END compound statement
* Add standard closing in case there is no return statement
158:    LDC  2,0(6) 	Set return value to 0 
159:     LD  3,-1(1) 	Load return address 
160:     LD  1,0(1) 	Adjust fp 
161:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
162:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  cat
163:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Jump to  cat
164:    LDA  1,0(1) 	Load address of new frame 
165:    LDA  3,1(7) 	Return address in ac 
166:    LDA  7,-124(7) 	Call  cat
167:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to cat
168:     ST  3,1(1) 	Store parameter 
* 			Begin call to  dog
169:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Jump to  dog
170:    LDA  1,0(1) 	Load address of new frame 
171:    LDA  3,1(7) 	Return address in ac 
172:    LDA  7,-25(7) 	Call  dog
173:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to dog
174:     ST  3,1(1) 	Store parameter 
* END compound statement
* Add standard closing in case there is no return statement
175:    LDC  2,0(6) 	Set return value to 0 
176:     LD  3,-1(1) 	Load return address 
177:     LD  1,0(1) 	Adjust fp 
178:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,178(7) 	Jump to init [backpatch] 
* BEGIN Init
179:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
180:    LDA  1,0(0) 	set first frame at end of globals 
181:     ST  1,0(1) 	store old fp (point to self) 
182:    LDA  3,0(7) 	return address in ac 
183:    LDA  7,-22(7) 	Jump to main 
184:   HALT  0,0,0 	DONE 
* END init
