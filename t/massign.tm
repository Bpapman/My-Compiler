* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  massign.c-
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
 43:    LDC  3,11(6) 	load size of array y
 44:     ST  3,-5(1) 	save size of array y
* EXPRESSION STMT
 45:     LD  3,-4(1) 	Load variable a
 46:     ST  3,-17(1) 	Save left side 
 47:    LDC  3,777(6) 	Load constant 
 48:     LD  4,-17(1) 	Load left into ac1 
 49:    ADD  3,4,3 	Op + 
 50:     ST  3,-4(1) 	Store variable a
* EXPRESSION STMT
 51:    LDC  3,777(6) 	Load constant 
 52:     LD  4,-4(1) 	load lhs variable a
 53:    ADD  3,4,3 	op += 
 54:     ST  3,-4(1) 	Store variable a
* EXPRESSION STMT
 55:    LDC  3,7(6) 	Load constant 
 56:     ST  3,-17(1) 	Save index 
 57:    LDC  3,7(6) 	Load constant 
 58:    LDA  4,-6(1) 	Load address of base of array y
 59:    SUB  3,4,3 	Compute offset of value 
 60:     LD  3,0(3) 	Load the value 
 61:     ST  3,-18(1) 	Save left side 
 62:    LDC  3,888(6) 	Load constant 
 63:     LD  4,-18(1) 	Load left into ac1 
 64:    ADD  3,4,3 	Op + 
 65:     LD  4,-17(1) 	Restore index 
 66:    LDA  5,-6(1) 	Load address of base of array y
 67:    SUB  5,5,4 	Compute offset of value 
 68:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
 69:    LDC  3,7(6) 	Load constant 
 70:     ST  3,-17(1) 	Save index 
 71:    LDC  3,888(6) 	Load constant 
 72:     LD  4,-17(1) 	Restore index 
 73:    LDA  5,-6(1) 	Load address of base of array y
 74:    SUB  5,5,4 	Compute offset of value 
 75:     LD  4,0(5) 	load lhs variable y
 76:    ADD  3,4,3 	op += 
 77:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
 78:    LDC  3,7(6) 	Load constant 
 79:     ST  3,-17(1) 	Save index 
 80:    LDC  3,7(6) 	Load constant 
 81:     LD  4,-2(1) 	Load address of base of array x
 82:    SUB  3,4,3 	Compute offset of value 
 83:     LD  3,0(3) 	Load the value 
 84:     ST  3,-18(1) 	Save left side 
 85:    LDC  3,888(6) 	Load constant 
 86:     LD  4,-18(1) 	Load left into ac1 
 87:    ADD  3,4,3 	Op + 
 88:     LD  4,-17(1) 	Restore index 
 89:     LD  5,-2(1) 	Load address of base of array x
 90:    SUB  5,5,4 	Compute offset of value 
 91:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
 92:    LDC  3,7(6) 	Load constant 
 93:     ST  3,-17(1) 	Save index 
 94:    LDC  3,888(6) 	Load constant 
 95:     LD  4,-17(1) 	Restore index 
 96:     LD  5,-2(1) 	Load address of base of array x
 97:    SUB  5,5,4 	Compute offset of value 
 98:     LD  4,0(5) 	load lhs variable x
 99:    ADD  3,4,3 	op += 
100:     ST  3,0(5) 	Store variable x
* END compound statement
* Add standard closing in case there is no return statement
101:    LDC  2,0(6) 	Set return value to 0 
102:     LD  3,-1(1) 	Load return address 
103:     LD  1,0(1) 	Adjust fp 
104:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
105:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
106:    LDC  3,22(6) 	load size of array ma
107:     ST  3,-3(1) 	save size of array ma
* EXPRESSION STMT
*                       Begin call to  dog
108:     ST  1,-26(1) 	Store old fp in ghost frame 
*                       Load param 1
109:    LDA  3,-4(1) 	Load address of base of array ma
110:     ST  3,-28(1) 	Store parameter 
*                       Load param 2
111:     LD  3,-2(1) 	Load variable m
112:     ST  3,-29(1) 	Store parameter 
*                       Jump to dog
113:    LDA  1,-26(1) 	Load address of new frame 
114:    LDA  3,1(7) 	Return address in ac 
115:    LDA  7,-74(7) 	CALL dog
116:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* END compound statement
* Add standard closing in case there is no return statement
117:    LDC  2,0(6) 	Set return value to 0 
118:     LD  3,-1(1) 	Load return address 
119:     LD  1,0(1) 	Adjust fp 
120:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,120(7) 	Jump to init [backpatch] 
* BEGIN Init
121:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
122:    LDA  1,0(0) 	set first frame at end of globals 
123:     ST  1,0(1) 	store old fp (point to self) 
124:    LDA  3,1(7) 	Return address in ac 
125:    LDA  7,-21(7) 	Jump to main 
126:   HALT  0,0,0 	DONE! 
* END Init
