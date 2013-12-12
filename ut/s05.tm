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
 42:    LDC  3,11(6) 	Load size of array h
 43:     ST  3,-1(1) 	Load size of array h
* BEGIN function cat
 44:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 45:    LDC  3,22(6) 	Load size of array b
 46:     ST  3,-3(1) 	Load size of array b
 47:    LDC  3,23(6) 	Load size of array bs
 48:     ST  3,-27(1) 	Load size of array bs
* BEGIN compound statement
 49:    LDC  3,33(6) 	Load size of array d
 50:     ST  3,-52(1) 	Load size of array d
 51:    LDC  3,34(6) 	Load size of array ds
 52:     ST  3,-87(1) 	Load size of array ds
* EXPRESSION STMT
* 			Begin call to  output
 53:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
 54:     LD  3,-1(0) 	Load variable h
 55:     ST  3,-125(1) 	Store parameter 
 56:    MUL  3,4,3 	Op * 
 57:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
 58:    LDA  1,-123(1) 	Load address of new frame 
 59:    LDA  3,1(7) 	Return address in ac 
 60:    LDA  7,-55(7) 	Call  output
 61:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
 62:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
 63:     LD  3,-3(1) 	Load variable b
 64:     ST  3,-125(1) 	Store parameter 
 65:    MUL  3,4,3 	Op * 
 66:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
 67:    LDA  1,-123(1) 	Load address of new frame 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-64(7) 	Call  output
 70:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
 71:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
 72:     LD  3,-27(1) 	Load variable bs
 73:     ST  3,-125(1) 	Store parameter 
 74:    MUL  3,4,3 	Op * 
 75:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
 76:    LDA  1,-123(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-73(7) 	Call  output
 79:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
 80:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
 81:     LD  3,-52(0) 	Load variable d
 82:     ST  3,-125(1) 	Store parameter 
 83:    MUL  3,4,3 	Op * 
 84:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
 85:    LDA  1,-123(1) 	Load address of new frame 
 86:    LDA  3,1(7) 	Return address in ac 
 87:    LDA  7,-82(7) 	Call  output
 88:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
 89:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
 90:     LD  3,-87(0) 	Load variable ds
 91:     ST  3,-125(1) 	Store parameter 
 92:    MUL  3,4,3 	Op * 
 93:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
 94:    LDA  1,-123(1) 	Load address of new frame 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-91(7) 	Call  output
 97:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* BEGIN compound statement
 98:    LDC  3,43(6) 	Load size of array d
 99:     ST  3,0(1) 	Load size of array d
100:    LDC  3,44(6) 	Load size of array ds
101:     ST  3,0(1) 	Load size of array ds
* EXPRESSION STMT
* 			Begin call to  output
102:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
103:     LD  3,-1(0) 	Load variable h
104:     ST  3,-125(1) 	Store parameter 
105:    MUL  3,4,3 	Op * 
106:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
107:    LDA  1,-123(1) 	Load address of new frame 
108:    LDA  3,1(7) 	Return address in ac 
109:    LDA  7,-104(7) 	Call  output
110:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
111:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
112:     LD  3,-3(1) 	Load variable b
113:     ST  3,-125(1) 	Store parameter 
114:    MUL  3,4,3 	Op * 
115:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
116:    LDA  1,-123(1) 	Load address of new frame 
117:    LDA  3,1(7) 	Return address in ac 
118:    LDA  7,-113(7) 	Call  output
119:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
120:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
121:     LD  3,-27(1) 	Load variable bs
122:     ST  3,-125(1) 	Store parameter 
123:    MUL  3,4,3 	Op * 
124:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
125:    LDA  1,-123(1) 	Load address of new frame 
126:    LDA  3,1(7) 	Return address in ac 
127:    LDA  7,-122(7) 	Call  output
128:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
129:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
130:     LD  3,0(0) 	Load variable d
131:     ST  3,-125(1) 	Store parameter 
132:    MUL  3,4,3 	Op * 
133:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
134:    LDA  1,-123(1) 	Load address of new frame 
135:    LDA  3,1(7) 	Return address in ac 
136:    LDA  7,-131(7) 	Call  output
137:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
138:     ST  1,-123(1) 	Store old fp in ghost frame 
* 			Load Param 1
139:     LD  3,0(0) 	Load variable ds
140:     ST  3,-125(1) 	Store parameter 
141:    MUL  3,4,3 	Op * 
142:     ST  3,-125(1) 	Store parameter 
* 			Jump to  output
143:    LDA  1,-123(1) 	Load address of new frame 
144:    LDA  3,1(7) 	Return address in ac 
145:    LDA  7,-140(7) 	Call  output
146:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* END compound statement
* Add standard closing in case there is no return statement
147:    LDC  2,0(6) 	Set return value to 0 
148:     LD  3,-1(1) 	Load return address 
149:     LD  1,0(1) 	Adjust fp 
150:    LDA  7,0(3) 	Return 
* END of function cat
151:    LDC  3,55(6) 	Load size of array j
152:     ST  3,-6(1) 	Load size of array j
* BEGIN function dog
153:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
154:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
155:     LD  3,-6(0) 	Load variable j
156:     ST  3,-4(1) 	Store parameter 
157:    MUL  3,4,3 	Op * 
158:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
159:    LDA  1,-2(1) 	Load address of new frame 
160:    LDA  3,1(7) 	Return address in ac 
161:    LDA  7,-156(7) 	Call  output
162:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
163:    LDC  2,0(6) 	Set return value to 0 
164:     LD  3,-1(1) 	Load return address 
165:     LD  1,0(1) 	Adjust fp 
166:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
167:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  cat
168:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to  cat
169:    LDA  1,-2(1) 	Load address of new frame 
170:    LDA  3,1(7) 	Return address in ac 
171:    LDA  7,-128(7) 	Call  cat
172:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* 			Begin call to  dog
173:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to  dog
174:    LDA  1,-2(1) 	Load address of new frame 
175:    LDA  3,1(7) 	Return address in ac 
176:    LDA  7,-24(7) 	Call  dog
177:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
* END compound statement
* Add standard closing in case there is no return statement
178:    LDC  2,0(6) 	Set return value to 0 
179:     LD  3,-1(1) 	Load return address 
180:     LD  1,0(1) 	Adjust fp 
181:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,181(7) 	Jump to init [backpatch] 
* BEGIN Init
182:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
183:    LDA  1,0(0) 	set first frame at end of globals 
184:     ST  1,0(1) 	store old fp (point to self) 
185:    LDA  3,0(7) 	return address in ac 
186:    LDA  7,-20(7) 	Jump to main 
187:   HALT  0,0,0 	DONE 
* END init
