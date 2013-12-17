* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c0f.tm
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
 43:    LDC  3,7(6) 	load size of array x
 44:     ST  3,-2(1) 	save size of array x
* EXPRESSION STMT
 45:    LDC  3,3(6) 	Load constant 
 46:     ST  3,-10(1) 	Save index 
* EXPRESSION STMT
 47:    LDC  3,1023(6) 	Load constant 
 48:     LD  4,-10(1) 	Restore index 
 49:    LDA  5,-3(1) 	Load address of base of array x
 50:    SUB  5,5,4 	Compute offset of value 
 51:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  output
 52:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load param 1
 53:    LDC  3,3(6) 	Load constant 
 54:     ST  3,-12(1) 	Save index 
 55:     LD  4,-12(1) 	Restore index 
 56:    LDA  5,-3(1) 	Load address of base of array x
 57:    SUB  5,5,4 	Compute offset of the value 
 58:     LD  3,0(5) 	load lhs variable x
 59:    LDA  3,1(3) 	increment value of x
 60:     ST  3,0(5) 	Store variable x
 61:     ST  3,-12(1) 	Store parameter 
* 			Jump to output
 62:    LDA  1,-10(1) 	Load address of new frame 
 63:    LDA  3,1(7) 	Return address in ac 
 64:    LDA  7,-59(7) 	CALL output
 65:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 66:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 67:    LDA  1,-10(1) 	Load address of new frame 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-33(7) 	CALL outnl
 70:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 71:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load param 1
 72:    LDC  3,3(6) 	Load constant 
 73:    LDA  4,-3(1) 	Load address of base of array x
 74:    SUB  3,4(3) 	Compute offset for x
 75:     LD  3,0(3) 	load value for x
 76:     ST  3,-12(1) 	Store parameter 
* 			Jump to output
 77:    LDA  1,-10(1) 	Load address of new frame 
 78:    LDA  3,1(7) 	Return address in ac 
 79:    LDA  7,-74(7) 	CALL output
 80:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 81:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 82:    LDA  1,-10(1) 	Load address of new frame 
 83:    LDA  3,1(7) 	Return address in ac 
 84:    LDA  7,-48(7) 	CALL outnl
 85:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 86:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load param 1
 87:    LDC  3,3(6) 	Load constant 
 88:     ST  3,-12(1) 	Save index 
 89:     LD  4,-12(1) 	Restore index 
 90:    LDA  5,-3(1) 	Load address of base of array x
 91:    SUB  5,5,4 	Compute offset of the value 
 92:     LD  3,0(5) 	load lhs variable x
 93:    LDA  3,-1(3) 	increment value of x
 94:     ST  3,0(5) 	Store variable x
 95:     ST  3,-12(1) 	Store parameter 
* 			Jump to output
 96:    LDA  1,-10(1) 	Load address of new frame 
 97:    LDA  3,1(7) 	Return address in ac 
 98:    LDA  7,-93(7) 	CALL output
 99:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
100:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Jump to outnl
101:    LDA  1,-10(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-67(7) 	CALL outnl
104:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
105:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Load param 1
106:    LDC  3,3(6) 	Load constant 
107:    LDA  4,-3(1) 	Load address of base of array x
108:    SUB  3,4(3) 	Compute offset for x
109:     LD  3,0(3) 	load value for x
110:     ST  3,-12(1) 	Store parameter 
* 			Jump to output
111:    LDA  1,-10(1) 	Load address of new frame 
112:    LDA  3,1(7) 	Return address in ac 
113:    LDA  7,-108(7) 	CALL output
114:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
115:     ST  1,-10(1) 	Store old fp in ghost frame 
* 			Jump to outnl
116:    LDA  1,-10(1) 	Load address of new frame 
117:    LDA  3,1(7) 	Return address in ac 
118:    LDA  7,-82(7) 	CALL outnl
119:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
120:    LDC  2,0(6) 	Set return value to 0 
121:     LD  3,-1(1) 	Load return address 
122:     LD  1,0(1) 	Adjust fp 
123:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,123(7) 	Jump to init [backpatch] 
* BEGIN Init
124:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
125:    LDA  1,0(0) 	set first frame at end of globals 
126:     ST  1,0(1) 	store old fp (point to self) 
127:    LDA  3,1(7) 	Return address in ac 
128:    LDA  7,-87(7) 	Jump to main 
129:   HALT  0,0,0 	DONE! 
* END Init
