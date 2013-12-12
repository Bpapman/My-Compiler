* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  s06.c-
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
* RETURN
 43:     LD  3,0(0) 	load lhs variable x
 44:    LDA  3,-1(3) 	decrement value of x
 45:     ST  3,0(0) 	Store variable x
 46:    LDA  2,0(3) 	Copy result to rt register 
 47:     LD  3,-1(1) 	Load return address 
 48:     LD  1,0(1) 	Adjust fp 
 49:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 50:    LDC  2,0(6) 	Set return value to 0 
 51:     LD  3,-1(1) 	Load return address 
 52:     LD  1,0(1) 	Adjust fp 
 53:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
 54:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
 55:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  dog
 56:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to dog
 57:    LDA  1,-4(1) 	Load address of new frame 
 58:    LDA  3,1(7) 	Return address in ac 
 59:    LDA  7,-18(7) 	CALL dog
 60:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
 61:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
 62:    LDA  1,-2(1) 	Load address of new frame 
 63:    LDA  3,1(7) 	Return address in ac 
 64:    LDA  7,-59(7) 	CALL output
 65:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
 66:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  dog
 67:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to dog
 68:    LDA  1,-4(1) 	Load address of new frame 
 69:    LDA  3,1(7) 	Return address in ac 
 70:    LDA  7,-29(7) 	CALL dog
 71:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
 72:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
 73:    LDA  1,-2(1) 	Load address of new frame 
 74:    LDA  3,1(7) 	Return address in ac 
 75:    LDA  7,-70(7) 	CALL output
 76:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
 77:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  dog
 78:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to dog
 79:    LDA  1,-4(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-40(7) 	CALL dog
 82:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
 83:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
 84:    LDA  1,-2(1) 	Load address of new frame 
 85:    LDA  3,1(7) 	Return address in ac 
 86:    LDA  7,-81(7) 	CALL output
 87:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
 88:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  dog
 89:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to dog
 90:    LDA  1,-4(1) 	Load address of new frame 
 91:    LDA  3,1(7) 	Return address in ac 
 92:    LDA  7,-51(7) 	CALL dog
 93:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
 94:     ST  3,-4(1) 	Store parameter 
*                       Jump to output
 95:    LDA  1,-2(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-92(7) 	CALL output
 98:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* END compound statement
* Add standard closing in case there is no return statement
 99:    LDC  2,0(6) 	Set return value to 0 
100:     LD  3,-1(1) 	Load return address 
101:     LD  1,0(1) 	Adjust fp 
102:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,102(7) 	Jump to init [backpatch] 
* BEGIN Init
103:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
104:    LDC  3,8(6) 	Load constant 
105:     ST  3,-2(1) 	Save left side 
106:    LDC  3,8(6) 	Load constant 
107:     LD  4,-2(1) 	Load left into ac1 
108:    MUL  3,4,3 	Op * 
109:     ST  3,0(0) 	Store variable x-1
* END init of globals
110:    LDA  1,-1(0) 	set first frame at end of globals 
111:     ST  1,0(1) 	store old fp (point to self) 
112:    LDA  3,1(7) 	Return address in ac 
113:    LDA  7,-60(7) 	Jump to main 
114:   HALT  0,0,0 	DONE! 
* END Init
