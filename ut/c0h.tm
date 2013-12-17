* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c0h.tm
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
* BEGIN function dog
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 44:    LDC  3,3(6) 	Load constant 
 45:     ST  3,-5(1) 	Save index 
 46:     LD  4,-5(1) 	Restore index 
 47:    LDA  5,-2(1) 	Load address of base of array x
 48:    SUB  5,5,4 	Compute offset of the value 
 49:     LD  3,0(5) 	load lhs variable x
 50:    LDA  3,1(3) 	increment value of x
 51:     ST  3,0(5) 	Store variable x
 52:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 53:    LDA  1,-3(1) 	Load address of new frame 
 54:    LDA  3,1(7) 	Return address in ac 
 55:    LDA  7,-50(7) 	CALL output
 56:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 57:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 58:    LDA  1,-3(1) 	Load address of new frame 
 59:    LDA  3,1(7) 	Return address in ac 
 60:    LDA  7,-24(7) 	CALL outnl
 61:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 62:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 63:    LDC  3,3(6) 	Load constant 
 64:    LDA  4,-2(1) 	Load address of base of array x
 65:    SUB  3,4(3) 	Compute offset for x
 66:     LD  3,0(3) 	load value for x
 67:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 68:    LDA  1,-3(1) 	Load address of new frame 
 69:    LDA  3,1(7) 	Return address in ac 
 70:    LDA  7,-65(7) 	CALL output
 71:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 72:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 73:    LDA  1,-3(1) 	Load address of new frame 
 74:    LDA  3,1(7) 	Return address in ac 
 75:    LDA  7,-39(7) 	CALL outnl
 76:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 77:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 78:    LDC  3,3(6) 	Load constant 
 79:     ST  3,-5(1) 	Save index 
 80:     LD  4,-5(1) 	Restore index 
 81:    LDA  5,-2(1) 	Load address of base of array x
 82:    SUB  5,5,4 	Compute offset of the value 
 83:     LD  3,0(5) 	load lhs variable x
 84:    LDA  3,-1(3) 	increment value of x
 85:     ST  3,0(5) 	Store variable x
 86:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 87:    LDA  1,-3(1) 	Load address of new frame 
 88:    LDA  3,1(7) 	Return address in ac 
 89:    LDA  7,-84(7) 	CALL output
 90:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 91:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 92:    LDA  1,-3(1) 	Load address of new frame 
 93:    LDA  3,1(7) 	Return address in ac 
 94:    LDA  7,-58(7) 	CALL outnl
 95:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 96:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 97:    LDC  3,3(6) 	Load constant 
 98:    LDA  4,-2(1) 	Load address of base of array x
 99:    SUB  3,4(3) 	Compute offset for x
100:     LD  3,0(3) 	load value for x
101:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
102:    LDA  1,-3(1) 	Load address of new frame 
103:    LDA  3,1(7) 	Return address in ac 
104:    LDA  7,-99(7) 	CALL output
105:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
106:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
107:    LDA  1,-3(1) 	Load address of new frame 
108:    LDA  3,1(7) 	Return address in ac 
109:    LDA  7,-73(7) 	CALL outnl
110:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
111:    LDC  2,0(6) 	Set return value to 0 
112:     LD  3,-1(1) 	Load return address 
113:     LD  1,0(1) 	Adjust fp 
114:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
115:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
116:    LDC  3,7(6) 	load size of array x
117:     ST  3,-2(1) 	save size of array x
* EXPRESSION STMT
118:    LDC  3,3(6) 	Load constant 
119:     ST  3,-10(1) 	Save index 
* EXPRESSION STMT
120:    LDC  3,1023(6) 	Load constant 
121:     LD  4,-10(1) 	Restore index 
122:    LDA  5,-3(1) 	Load address of base of array x
123:    SUB  5,5,4 	Compute offset of value 
124:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  dog
125:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load param 1
126:    LDA  3,-3(1) 	Load address of base of array x
127:     ST  3,-12(1) 	Store parameter 
* 			Jump to dog
128:    LDA  1,-10(1) 	Load address of new frame 
129:    LDA  3,1(7) 	Return address in ac 
130:    LDA  7,-89(7) 	CALL dog
131:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
132:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load param 1
133:    LDC  3,3(6) 	Load constant 
134:    LDA  4,-3(1) 	Load address of base of array x
135:    SUB  3,4(3) 	Compute offset for x
136:     LD  3,0(3) 	load value for x
137:     ST  3,-12(1) 	Store parameter 
* 			Jump to output
138:    LDA  1,-10(1) 	Load address of new frame 
139:    LDA  3,1(7) 	Return address in ac 
140:    LDA  7,-135(7) 	CALL output
141:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
142:    LDC  2,0(6) 	Set return value to 0 
143:     LD  3,-1(1) 	Load return address 
144:     LD  1,0(1) 	Adjust fp 
145:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,145(7) 	Jump to init [backpatch] 
* BEGIN Init
146:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
147:    LDA  1,0(0) 	set first frame at end of globals 
148:     ST  1,0(1) 	store old fp (point to self) 
149:    LDA  3,1(7) 	Return address in ac 
150:    LDA  7,-36(7) 	Jump to main 
151:   HALT  0,0,0 	DONE! 
* END Init
