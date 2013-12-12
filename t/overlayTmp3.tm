* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  overlayTmp3.c-
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
* IF
 53:    LDC  3,1(6) 	Load constant 
 54:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
 56:    LDC  3,111(6) 	Load constant 
 57:     ST  3,-3(1) 	Store variable z
* BEGIN compound statement
* EXPRESSION STMT
 58:    LDC  3,222(6) 	Load constant 
 59:     ST  3,-4(1) 	Store variable x
* EXPRESSION STMT
 60:    LDC  3,666(6) 	Load constant 
 61:     ST  3,-6(1) 	Save left side 
*                       Begin call to  dog
 62:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Load param 1
 63:     LD  3,-4(1) 	Load variable x
 64:     ST  3,-9(1) 	Store parameter 
*                       Jump to dog
 65:    LDA  1,-7(1) 	Load address of new frame 
 66:    LDA  3,1(7) 	Return address in ac 
 67:    LDA  7,-26(7) 	CALL dog
 68:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
 69:     LD  4,-6(1) 	Load left into ac1 
 70:    ADD  3,4,3 	Op + 
 71:     ST  3,-4(1) 	Store variable x
* EXPRESSION STMT
*                       Begin call to  output
 72:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 73:     LD  3,-4(1) 	Load variable x
 74:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
 75:    LDA  1,-6(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-72(7) 	CALL output
 78:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 79:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 80:    LDA  1,-6(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-46(7) 	CALL outnl
 83:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* BEGIN compound statement
* EXPRESSION STMT
 84:    LDC  3,333(6) 	Load constant 
 85:     ST  3,-5(1) 	Store variable y
* EXPRESSION STMT
 86:    LDC  3,666(6) 	Load constant 
 87:     ST  3,-6(1) 	Save left side 
*                       Begin call to  dog
 88:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Load param 1
 89:     LD  3,-5(1) 	Load variable y
 90:     ST  3,-9(1) 	Store parameter 
*                       Jump to dog
 91:    LDA  1,-7(1) 	Load address of new frame 
 92:    LDA  3,1(7) 	Return address in ac 
 93:    LDA  7,-52(7) 	CALL dog
 94:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
 95:     LD  4,-6(1) 	Load left into ac1 
 96:    ADD  3,4,3 	Op + 
 97:     ST  3,-5(1) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  output
 98:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 99:     LD  3,-5(1) 	Load variable y
100:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
101:    LDA  1,-6(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-98(7) 	CALL output
104:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
105:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
106:    LDA  1,-6(1) 	Load address of new frame 
107:    LDA  3,1(7) 	Return address in ac 
108:    LDA  7,-72(7) 	CALL outnl
109:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* EXPRESSION STMT
110:    LDC  3,666(6) 	Load constant 
111:     ST  3,-6(1) 	Save left side 
*                       Begin call to  dog
112:     ST  1,-7(1) 	Store old fp in ghost frame 
*                       Load param 1
113:     LD  3,-3(1) 	Load variable z
114:     ST  3,-9(1) 	Store parameter 
*                       Jump to dog
115:    LDA  1,-7(1) 	Load address of new frame 
116:    LDA  3,1(7) 	Return address in ac 
117:    LDA  7,-76(7) 	CALL dog
118:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
119:     LD  4,-6(1) 	Load left into ac1 
120:    ADD  3,4,3 	Op + 
121:     ST  3,-3(1) 	Store variable z
* EXPRESSION STMT
*                       Begin call to  output
122:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
123:     LD  3,-3(1) 	Load variable z
124:     ST  3,-8(1) 	Store parameter 
*                       Jump to output
125:    LDA  1,-6(1) 	Load address of new frame 
126:    LDA  3,1(7) 	Return address in ac 
127:    LDA  7,-122(7) 	CALL output
128:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
129:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Jump to outnl
130:    LDA  1,-6(1) 	Load address of new frame 
131:    LDA  3,1(7) 	Return address in ac 
132:    LDA  7,-96(7) 	CALL outnl
133:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
 55:    LDA  7,78(7) 	Jump around the THEN [backpatch] 
* ENDIF
* Add standard closing in case there is no return statement
134:    LDC  2,0(6) 	Set return value to 0 
135:     LD  3,-1(1) 	Load return address 
136:     LD  1,0(1) 	Adjust fp 
137:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,137(7) 	Jump to init [backpatch] 
* BEGIN Init
138:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
139:    LDA  1,0(0) 	set first frame at end of globals 
140:     ST  1,0(1) 	store old fp (point to self) 
141:    LDA  3,1(7) 	Return address in ac 
142:    LDA  7,-91(7) 	Jump to main 
143:   HALT  0,0,0 	DONE! 
* END Init
