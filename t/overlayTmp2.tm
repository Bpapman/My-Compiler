* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  overlayTmp2.c-
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
* RETURN
 43:     LD  3,-2(1) 	Load variable pig
 44:    LDA  2,0(3) 	Copy result to rt register 
 45:     LD  3,-1(1) 	Load return address 
 46:     LD  1,0(1) 	Adjust fp 
 47:    LDA  7,0(3) 	Return 
* Add standard closing in case there is no return statement
 48:    LDC  2,0(6) 	Set return value to 0 
 49:     LD  3,-1(1) 	Load return address 
 50:     LD  1,0(1) 	Adjust fp 
 51:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
 52:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 53:    LDC  3,111(6) 	Load constant 
 54:     ST  3,-3(1) 	Store variable z
* BEGIN compound statement
* EXPRESSION STMT
 55:    LDC  3,222(6) 	Load constant 
 56:     ST  3,-4(1) 	Store variable x
* EXPRESSION STMT
 57:    LDC  3,666(6) 	Load constant 
 58:     ST  3,-6(1) 	Save left side 
*                       Begin call to  dog
 59:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Load param 1
 60:     LD  3,-4(1) 	Load variable x
 61:     ST  3,-9(1) 	Store parameter 
*                       Jump to dog
 62:    LDA  1,-7(1) 	Load address of new frame 
 63:    LDA  3,1(7) 	Return address in ac 
 64:    LDA  7,-23(7) 	CALL dog
 65:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
 66:     LD  4,-6(1) 	Load left into ac1 
 67:    ADD  3,4,3 	Op + 
 68:     ST  3,-4(1) 	Store variable x
* EXPRESSION STMT
*                       Begin call to  output
 69:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 70:     LD  3,-4(1) 	Load variable x
 71:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
 72:    LDA  1,-6(1) 	Load address of new frame 
 73:    LDA  3,1(7) 	Return address in ac 
 74:    LDA  7,-69(7) 	CALL output
 75:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 76:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 77:    LDA  1,-6(1) 	Load address of new frame 
 78:    LDA  3,1(7) 	Return address in ac 
 79:    LDA  7,-43(7) 	CALL outnl
 80:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* BEGIN compound statement
* EXPRESSION STMT
 81:    LDC  3,333(6) 	Load constant 
 82:     ST  3,-5(1) 	Store variable y
* EXPRESSION STMT
 83:    LDC  3,666(6) 	Load constant 
 84:     ST  3,-6(1) 	Save left side 
*                       Begin call to  dog
 85:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Load param 1
 86:     LD  3,-5(1) 	Load variable y
 87:     ST  3,-9(1) 	Store parameter 
*                       Jump to dog
 88:    LDA  1,-7(1) 	Load address of new frame 
 89:    LDA  3,1(7) 	Return address in ac 
 90:    LDA  7,-49(7) 	CALL dog
 91:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
 92:     LD  4,-6(1) 	Load left into ac1 
 93:    ADD  3,4,3 	Op + 
 94:     ST  3,-5(1) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  output
 95:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 96:     LD  3,-5(1) 	Load variable y
 97:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
 98:    LDA  1,-6(1) 	Load address of new frame 
 99:    LDA  3,1(7) 	Return address in ac 
100:    LDA  7,-95(7) 	CALL output
101:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
102:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
103:    LDA  1,-6(1) 	Load address of new frame 
104:    LDA  3,1(7) 	Return address in ac 
105:    LDA  7,-69(7) 	CALL outnl
106:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* EXPRESSION STMT
107:    LDC  3,666(6) 	Load constant 
108:     ST  3,-6(1) 	Save left side 
*                       Begin call to  dog
109:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Load param 1
110:     LD  3,-3(1) 	Load variable z
111:     ST  3,-9(1) 	Store parameter 
*                       Jump to dog
112:    LDA  1,-7(1) 	Load address of new frame 
113:    LDA  3,1(7) 	Return address in ac 
114:    LDA  7,-73(7) 	CALL dog
115:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
116:     LD  4,-6(1) 	Load left into ac1 
117:    ADD  3,4,3 	Op + 
118:     ST  3,-3(1) 	Store variable z
* EXPRESSION STMT
*                       Begin call to  output
119:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
120:     LD  3,-3(1) 	Load variable z
121:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
122:    LDA  1,-6(1) 	Load address of new frame 
123:    LDA  3,1(7) 	Return address in ac 
124:    LDA  7,-119(7) 	CALL output
125:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
126:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
127:    LDA  1,-6(1) 	Load address of new frame 
128:    LDA  3,1(7) 	Return address in ac 
129:    LDA  7,-93(7) 	CALL outnl
130:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
131:    LDC  2,0(6) 	Set return value to 0 
132:     LD  3,-1(1) 	Load return address 
133:     LD  1,0(1) 	Adjust fp 
134:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,134(7) 	Jump to init [backpatch] 
* BEGIN Init
135:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
136:    LDA  1,0(0) 	set first frame at end of globals 
137:     ST  1,0(1) 	store old fp (point to self) 
138:    LDA  3,1(7) 	Return address in ac 
139:    LDA  7,-88(7) 	Jump to main 
140:   HALT  0,0,0 	DONE! 
* END Init
