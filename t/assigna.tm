* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  assigna.c-
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
* EXPRESSION STMT
 43:    LDC  3,7(6) 	Load constant 
 44:     LD  4,-2(1) 	Load address of base of array z
 45:    SUB  3,4,3 	Compute offset of value 
 46:     LD  3,0(3) 	Load the value 
* EXPRESSION STMT
 47:     LD  3,-2(1) 	Load address of base of array z
 48:     LD  3,1(3) 	Load array size 
* END compound statement
* Add standard closing in case there is no return statement
 49:    LDC  2,0(6) 	Set return value to 0 
 50:     LD  3,-1(1) 	Load return address 
 51:     LD  1,0(1) 	Adjust fp 
 52:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function dog
 53:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 54:    LDC  3,11(6) 	load size of array y
 55:     ST  3,-5(1) 	save size of array y
* EXPRESSION STMT
 56:     LD  3,0(0) 	Load variable gnu
 57:     ST  3,0(0) 	Store variable gnu
* EXPRESSION STMT
 58:    LDC  3,9(6) 	Load constant 
 59:     ST  3,-17(1) 	Save index 
 60:    LDC  3,10(6) 	Load constant 
 61:    LDA  4,-2(0) 	Load address of base of array goat
 62:    SUB  3,4,3 	Compute offset of value 
 63:     LD  3,0(3) 	Load the value 
 64:     LD  4,-17(1) 	Restore index 
 65:    LDA  5,-2(0) 	Load address of base of array goat
 66:    SUB  5,5,4 	Compute offset of value 
 67:     ST  3,0(5) 	Store variable goat
* EXPRESSION STMT
 68:    LDA  3,-2(0) 	Load address of base of array goat
 69:     LD  3,1(3) 	Load array size 
* EXPRESSION STMT
 70:     LD  3,-4(1) 	Load variable a
 71:     ST  3,-4(1) 	Store variable a
* EXPRESSION STMT
 72:    LDC  3,3(6) 	Load constant 
 73:     ST  3,-17(1) 	Save index 
 74:    LDC  3,4(6) 	Load constant 
 75:    LDA  4,-6(1) 	Load address of base of array y
 76:    SUB  3,4,3 	Compute offset of value 
 77:     LD  3,0(3) 	Load the value 
 78:     LD  4,-17(1) 	Restore index 
 79:    LDA  5,-6(1) 	Load address of base of array y
 80:    SUB  5,5,4 	Compute offset of value 
 81:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
 82:    LDA  3,-6(1) 	Load address of base of array y
 83:     LD  3,1(3) 	Load array size 
* EXPRESSION STMT
 84:     LD  3,-3(1) 	Load variable p
 85:     ST  3,-3(1) 	Store variable p
* EXPRESSION STMT
 86:    LDC  3,3(6) 	Load constant 
 87:     ST  3,-17(1) 	Save index 
 88:    LDC  3,4(6) 	Load constant 
 89:     LD  4,-2(1) 	Load address of base of array x
 90:    SUB  3,4,3 	Compute offset of value 
 91:     LD  3,0(3) 	Load the value 
 92:     LD  4,-17(1) 	Restore index 
 93:     LD  5,-2(1) 	Load address of base of array x
 94:    SUB  5,5,4 	Compute offset of value 
 95:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
 96:     LD  3,-2(1) 	Load address of base of array x
 97:     LD  3,1(3) 	Load array size 
* EXPRESSION STMT
*                       Begin call to  cat
 98:     ST  1,-17(1) 	Store old fp in ghost frame 
*                       Load param 1
 99:     LD  3,-2(1) 	Load address of base of array x
100:     ST  3,-19(1) 	Store parameter 
*                       Jump to cat
101:    LDA  1,-17(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-62(7) 	CALL cat
104:    LDA  3,0(2) 	Save the result in ac 
*                       End call to cat
* END compound statement
* Add standard closing in case there is no return statement
105:    LDC  2,0(6) 	Set return value to 0 
106:     LD  3,-1(1) 	Load return address 
107:     LD  1,0(1) 	Adjust fp 
108:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
109:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
110:    LDC  3,22(6) 	load size of array ma
111:     ST  3,-3(1) 	save size of array ma
* EXPRESSION STMT
*                       Begin call to  dog
112:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
113:    LDA  3,-4(1) 	Load address of base of array ma
114:     ST  3,-28(1) 	Store parameter 
*                       Load param 2
115:     LD  3,-2(1) 	Load variable m
116:     ST  3,-29(1) 	Store parameter 
*                       Jump to dog
117:    LDA  1,-26(1) 	Load address of new frame 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-67(7) 	CALL dog
120:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* END compound statement
* Add standard closing in case there is no return statement
121:    LDC  2,0(6) 	Set return value to 0 
122:     LD  3,-1(1) 	Load return address 
123:     LD  1,0(1) 	Adjust fp 
124:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,124(7) 	Jump to init [backpatch] 
* BEGIN Init
125:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
126:    LDC  3,16(6) 	load size of array goat
127:     ST  3,-1(0) 	save size of array goat
* END init of globals
128:    LDA  1,-18(0) 	set first frame at end of globals 
129:     ST  1,0(1) 	store old fp (point to self) 
130:    LDA  3,1(7) 	Return address in ac 
131:    LDA  7,-23(7) 	Jump to main 
132:   HALT  0,0,0 	DONE! 
* END Init
