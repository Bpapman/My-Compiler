* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  funcaa.c-
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
 43:     LD  3,-2(1) 	Load address of base of array z
 44:     LD  3,1(3) 	Load array size 
* EXPRESSION STMT
 45:    LDC  3,7(6) 	Load constant 
 46:     LD  4,-2(1) 	Load address of base of array z
 47:    SUB  3,4,3 	Compute offset of value 
 48:     LD  3,0(3) 	Load the value 
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
 54:    LDC  3,23(6) 	load size of array y
 55:     ST  3,-3(1) 	save size of array y
* EXPRESSION STMT
 56:     LD  3,-2(1) 	Load address of base of array x
 57:     LD  3,1(3) 	Load array size 
* EXPRESSION STMT
 58:    LDA  3,-4(1) 	Load address of base of array y
 59:     LD  3,1(3) 	Load array size 
* EXPRESSION STMT
 60:    LDC  3,7(6) 	Load constant 
 61:     ST  3,-27(1) 	Save index 
 62:    LDC  3,666(6) 	Load constant 
 63:     LD  4,-27(1) 	Restore index 
 64:    LDA  5,-4(1) 	Load address of base of array y
 65:    SUB  5,5,4 	Compute offset of value 
 66:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  cat
 67:     ST  1,-27(1) 	Store old fp in ghost frame 
*                       Load param 1
 68:     LD  3,-2(1) 	Load address of base of array x
 69:     ST  3,-29(1) 	Store parameter 
*                       Jump to cat
 70:    LDA  1,-27(1) 	Load address of new frame 
 71:    LDA  3,1(7) 	Return address in ac 
 72:    LDA  7,-31(7) 	CALL cat
 73:    LDA  3,0(2) 	Save the result in ac 
*                       End call to cat
* EXPRESSION STMT
*                       Begin call to  cat
 74:     ST  1,-27(1) 	Store old fp in ghost frame 
*                       Load param 1
 75:    LDA  3,-4(1) 	Load address of base of array y
 76:     ST  3,-29(1) 	Store parameter 
*                       Jump to cat
 77:    LDA  1,-27(1) 	Load address of new frame 
 78:    LDA  3,1(7) 	Return address in ac 
 79:    LDA  7,-38(7) 	CALL cat
 80:    LDA  3,0(2) 	Save the result in ac 
*                       End call to cat
* END compound statement
* Add standard closing in case there is no return statement
 81:    LDC  2,0(6) 	Set return value to 0 
 82:     LD  3,-1(1) 	Load return address 
 83:     LD  1,0(1) 	Adjust fp 
 84:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
 85:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 86:    LDC  3,17(6) 	load size of array a
 87:     ST  3,-2(1) 	save size of array a
* EXPRESSION STMT
 88:    LDC  3,7(6) 	Load constant 
 89:     ST  3,-20(1) 	Save index 
 90:    LDC  3,444(6) 	Load constant 
 91:     LD  4,-20(1) 	Restore index 
 92:    LDA  5,-3(1) 	Load address of base of array a
 93:    SUB  5,5,4 	Compute offset of value 
 94:     ST  3,0(5) 	Store variable a
* EXPRESSION STMT
*                       Begin call to  dog
 95:     ST  1,-20(1) 	Store old fp in ghost frame 
*                       Load param 1
 96:    LDA  3,-3(1) 	Load address of base of array a
 97:     ST  3,-22(1) 	Store parameter 
*                       Jump to dog
 98:    LDA  1,-20(1) 	Load address of new frame 
 99:    LDA  3,1(7) 	Return address in ac 
100:    LDA  7,-48(7) 	CALL dog
101:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* END compound statement
* Add standard closing in case there is no return statement
102:    LDC  2,0(6) 	Set return value to 0 
103:     LD  3,-1(1) 	Load return address 
104:     LD  1,0(1) 	Adjust fp 
105:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,105(7) 	Jump to init [backpatch] 
* BEGIN Init
106:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
107:    LDA  1,0(0) 	set first frame at end of globals 
108:     ST  1,0(1) 	store old fp (point to self) 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-26(7) 	Jump to main 
111:   HALT  0,0,0 	DONE! 
* END Init
