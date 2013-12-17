* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  s05.tm
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
 43:    LDC  3,33(6) 	load size of array d
 44:     ST  3,-52(1) 	save size of array d
 45:    LDC  3,34(6) 	load size of array ds
 46:     ST  3,-87(1) 	save size of array ds
* EXPRESSION STMT
* 			Begin call to  output
 47:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
 48:    LDA  3,-2(0) 	Load address of base of array h
 49:    MUL  3,1,3 	Load array size 
 50:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
 51:    LDA  1,-214(1) 	Load address of new frame 
 52:    LDA  3,1(7) 	Return address in ac 
 53:    LDA  7,-48(7) 	CALL output
 54:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 55:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
 56:    LDA  3,-4(1) 	Load address of base of array b
 57:    MUL  3,1,3 	Load array size 
 58:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
 59:    LDA  1,-214(1) 	Load address of new frame 
 60:    LDA  3,1(7) 	Return address in ac 
 61:    LDA  7,-56(7) 	CALL output
 62:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 63:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
 64:    LDA  3,-28(1) 	Load address of base of array bs
 65:    MUL  3,1,3 	Load array size 
 66:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
 67:    LDA  1,-214(1) 	Load address of new frame 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-64(7) 	CALL output
 70:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 71:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
 72:    LDA  3,-53(1) 	Load address of base of array d
 73:    MUL  3,1,3 	Load array size 
 74:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
 75:    LDA  1,-214(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-72(7) 	CALL output
 78:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 79:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
 80:    LDA  3,-88(1) 	Load address of base of array ds
 81:    MUL  3,1,3 	Load array size 
 82:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
 83:    LDA  1,-214(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-80(7) 	CALL output
 86:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* BEGIN compound statement
 87:    LDC  3,44(6) 	load size of array d
 88:     ST  3,-123(1) 	save size of array d
 89:    LDC  3,45(6) 	load size of array ds
 90:     ST  3,-168(1) 	save size of array ds
* EXPRESSION STMT
* 			Begin call to  output
 91:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
 92:    LDA  3,-2(0) 	Load address of base of array h
 93:    MUL  3,1,3 	Load array size 
 94:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
 95:    LDA  1,-214(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-92(7) 	CALL output
 98:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 99:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
100:    LDA  3,-4(1) 	Load address of base of array b
101:    MUL  3,1,3 	Load array size 
102:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
103:    LDA  1,-214(1) 	Load address of new frame 
104:    LDA  3,1(7) 	Return address in ac 
105:    LDA  7,-100(7) 	CALL output
106:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
107:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
108:    LDA  3,-28(1) 	Load address of base of array bs
109:    MUL  3,1,3 	Load array size 
110:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
111:    LDA  1,-214(1) 	Load address of new frame 
112:    LDA  3,1(7) 	Return address in ac 
113:    LDA  7,-108(7) 	CALL output
114:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
115:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
116:    LDA  3,-124(1) 	Load address of base of array d
117:    MUL  3,1,3 	Load array size 
118:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
119:    LDA  1,-214(1) 	Load address of new frame 
120:    LDA  3,1(7) 	Return address in ac 
121:    LDA  7,-116(7) 	CALL output
122:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
123:     ST  1,-214(1) 	Store old fp in ghost frame 
* 			Load param 1
124:    LDA  3,-169(1) 	Load address of base of array ds
125:    MUL  3,1,3 	Load array size 
126:     ST  3,-216(1) 	Store parameter 
* 			Jump to output
127:    LDA  1,-214(1) 	Load address of new frame 
128:    LDA  3,1(7) 	Return address in ac 
129:    LDA  7,-124(7) 	CALL output
130:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* END compound statement
* Add standard closing in case there is no return statement
131:    LDC  2,0(6) 	Set return value to 0 
132:     LD  3,-1(1) 	Load return address 
133:     LD  1,0(1) 	Adjust fp 
134:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function dog
135:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
136:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
137:    LDA  3,-17(0) 	Load address of base of array j
138:    MUL  3,1,3 	Load array size 
139:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
140:    LDA  1,-2(1) 	Load address of new frame 
141:    LDA  3,1(7) 	Return address in ac 
142:    LDA  7,-137(7) 	CALL output
143:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
144:    LDC  2,0(6) 	Set return value to 0 
145:     LD  3,-1(1) 	Load return address 
146:     LD  1,0(1) 	Adjust fp 
147:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
148:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  cat
149:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to cat
150:    LDA  1,-2(1) 	Load address of new frame 
151:    LDA  3,1(7) 	Return address in ac 
152:    LDA  7,-111(7) 	CALL cat
153:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  dog
154:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to dog
155:    LDA  1,-2(1) 	Load address of new frame 
156:    LDA  3,1(7) 	Return address in ac 
157:    LDA  7,-23(7) 	CALL dog
158:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
159:    LDC  2,0(6) 	Set return value to 0 
160:     LD  3,-1(1) 	Load return address 
161:     LD  1,0(1) 	Adjust fp 
162:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,162(7) 	Jump to init [backpatch] 
* BEGIN Init
163:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
164:    LDC  3,11(6) 	load size of array h
165:     ST  3,-1(0) 	saves size of array h
166:    LDC  3,11(6) 	load size of array h
167:     ST  3,-1(0) 	saves size of array h
* END init of globals
168:    LDA  1,-72(0) 	set first frame at end of globals 
169:     ST  1,0(1) 	store old fp (point to self) 
170:    LDA  3,1(7) 	Return address in ac 
171:    LDA  7,-24(7) 	Jump to main 
172:   HALT  0,0,0 	DONE! 
* END Init
