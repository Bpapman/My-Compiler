* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  examplestatic.c-
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
 43:    LDC  3,888(6) 	Load constant 
 44:     ST  3,-37(1) 	Save left side 
 45:    LDC  3,999(6) 	Load constant 
 46:     LD  4,-37(1) 	Load left into ac1 
 47:    MUL  3,4,3 	Op * 
 48:     ST  3,-2(1) 	Store variable l
 49:    LDC  3,33(6) 	load size of array la
 50:     ST  3,-3(1) 	save size of array la
* EXPRESSION STMT
 51:     LD  3,0(0) 	Load variable g
* EXPRESSION STMT
 52:    LDC  3,11(6) 	Load constant 
 53:    LDA  4,-2(0) 	Load address of base of array ga
 54:    SUB  3,4,3 	Compute offset of value 
 55:     LD  3,0(3) 	Load the value 
* EXPRESSION STMT
 56:     LD  3,-13(0) 	Load variable s
* EXPRESSION STMT
 57:    LDC  3,12(6) 	Load constant 
 58:    LDA  4,-15(0) 	Load address of base of array sa
 59:    SUB  3,4,3 	Compute offset of value 
 60:     LD  3,0(3) 	Load the value 
* EXPRESSION STMT
 61:     LD  3,-2(1) 	Load variable l
* EXPRESSION STMT
 62:    LDC  3,13(6) 	Load constant 
 63:    LDA  4,-4(1) 	Load address of base of array la
 64:    SUB  3,4,3 	Compute offset of value 
 65:     LD  3,0(3) 	Load the value 
* END compound statement
* Add standard closing in case there is no return statement
 66:    LDC  2,0(6) 	Set return value to 0 
 67:     LD  3,-1(1) 	Load return address 
 68:     LD  1,0(1) 	Adjust fp 
 69:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,69(7) 	Jump to init [backpatch] 
* BEGIN Init
 70:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
 71:    LDC  3,444(6) 	Load constant 
 72:     ST  3,-37(1) 	Save left side 
 73:    LDC  3,555(6) 	Load constant 
 74:     LD  4,-37(1) 	Load left into ac1 
 75:    ADD  3,4,3 	Op + 
 76:     ST  3,0(0) 	Store variable g
 77:    LDC  3,11(6) 	load size of array ga
 78:     ST  3,-1(0) 	save size of array ga
 79:    LDC  3,666(6) 	Load constant 
 80:     ST  3,-37(1) 	Save left side 
 81:    LDC  3,777(6) 	Load constant 
 82:     LD  4,-37(1) 	Load left into ac1 
 83:    MUL  3,4,3 	Op * 
 84:     ST  3,-13(0) 	Store variable s-1
 85:    LDC  3,22(6) 	load size of array sa-2
 86:     ST  3,-14(0) 	save size of array sa-2
* END init of globals
 87:    LDA  1,-37(0) 	set first frame at end of globals 
 88:     ST  1,0(1) 	store old fp (point to self) 
 89:    LDA  3,1(7) 	Return address in ac 
 90:    LDA  7,-49(7) 	Jump to main 
 91:   HALT  0,0,0 	DONE! 
* END Init
