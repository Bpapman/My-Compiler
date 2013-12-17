* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c0g.tm
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
 43:    LDC  3,3(6) 	Load constant 
 44:     ST  3,-2(1) 	Save index 
* EXPRESSION STMT
 45:    LDC  3,1023(6) 	Load constant 
 46:     LD  4,-2(1) 	Restore index 
 47:    LDA  5,-1(0) 	Load address of base of array x
 48:    SUB  5,5,4 	Compute offset of value 
 49:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  output
 50:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 51:    LDC  3,3(6) 	Load constant 
 52:     ST  3,-4(1) 	Save index 
 53:     LD  4,-4(1) 	Restore index 
 54:    LDA  5,-1(0) 	Load address of base of array x
 55:    SUB  5,5,4 	Compute offset of the value 
 56:     LD  3,0(5) 	load lhs variable x
 57:    LDA  3,1(3) 	increment value of x
 58:     ST  3,0(5) 	Store variable x
 59:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 60:    LDA  1,-2(1) 	Load address of new frame 
 61:    LDA  3,1(7) 	Return address in ac 
 62:    LDA  7,-57(7) 	CALL output
 63:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 64:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 65:    LDA  1,-2(1) 	Load address of new frame 
 66:    LDA  3,1(7) 	Return address in ac 
 67:    LDA  7,-31(7) 	CALL outnl
 68:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 69:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 70:    LDC  3,3(6) 	Load constant 
 71:    LDA  4,-1(0) 	Load address of base of array x
 72:    SUB  3,4(3) 	Compute offset for x
 73:     LD  3,0(3) 	load value for x
 74:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 75:    LDA  1,-2(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-72(7) 	CALL output
 78:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 79:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 80:    LDA  1,-2(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-46(7) 	CALL outnl
 83:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 84:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 85:    LDC  3,3(6) 	Load constant 
 86:     ST  3,-4(1) 	Save index 
 87:     LD  4,-4(1) 	Restore index 
 88:    LDA  5,-1(0) 	Load address of base of array x
 89:    SUB  5,5,4 	Compute offset of the value 
 90:     LD  3,0(5) 	load lhs variable x
 91:    LDA  3,-1(3) 	increment value of x
 92:     ST  3,0(5) 	Store variable x
 93:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 94:    LDA  1,-2(1) 	Load address of new frame 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-91(7) 	CALL output
 97:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 98:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 99:    LDA  1,-2(1) 	Load address of new frame 
100:    LDA  3,1(7) 	Return address in ac 
101:    LDA  7,-65(7) 	CALL outnl
102:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
103:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
104:    LDC  3,3(6) 	Load constant 
105:    LDA  4,-1(0) 	Load address of base of array x
106:    SUB  3,4(3) 	Compute offset for x
107:     LD  3,0(3) 	load value for x
108:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
109:    LDA  1,-2(1) 	Load address of new frame 
110:    LDA  3,1(7) 	Return address in ac 
111:    LDA  7,-106(7) 	CALL output
112:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
113:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to outnl
114:    LDA  1,-2(1) 	Load address of new frame 
115:    LDA  3,1(7) 	Return address in ac 
116:    LDA  7,-80(7) 	CALL outnl
117:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
118:    LDC  2,0(6) 	Set return value to 0 
119:     LD  3,-1(1) 	Load return address 
120:     LD  1,0(1) 	Adjust fp 
121:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,121(7) 	Jump to init [backpatch] 
* BEGIN Init
122:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
123:    LDC  3,7(6) 	load size of array x
124:     ST  3,0(0) 	saves size of array x
* END init of globals
125:    LDA  1,-8(0) 	set first frame at end of globals 
126:     ST  1,0(1) 	store old fp (point to self) 
127:    LDA  3,1(7) 	Return address in ac 
128:    LDA  7,-87(7) 	Jump to main 
129:   HALT  0,0,0 	DONE! 
* END Init
