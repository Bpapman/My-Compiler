* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  examplearray.c-
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
 43:    LDC  3,22(6) 	load size of array y
 44:     ST  3,-3(1) 	save size of array y
* EXPRESSION STMT
 45:    LDC  3,11(6) 	Load constant 
 46:     ST  3,-27(1) 	Save index 
 47:     LD  3,-2(1) 	Load variable x
 48:     ST  3,-28(1) 	Save left side 
 49:    LDC  3,111(6) 	Load constant 
 50:     LD  4,-28(1) 	Load left into ac1 
 51:    MUL  3,4,3 	Op * 
 52:     ST  3,-28(1) 	Save left side 
 53:    LDC  3,222(6) 	Load constant 
 54:     LD  4,-28(1) 	Load left into ac1 
 55:    ADD  3,4,3 	Op + 
 56:     LD  4,-27(1) 	Restore index 
 57:    LDA  5,-4(1) 	Load address of base of array y
 58:    SUB  5,5,4 	Compute offset of value 
 59:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
 60:    LDC  3,11(6) 	Load constant 
 61:    LDA  4,-4(1) 	Load address of base of array y
 62:    SUB  3,4,3 	Compute offset of value 
 63:     LD  3,0(3) 	Load the value 
 64:     ST  3,-26(1) 	Store variable z
* EXPRESSION STMT
 65:    LDC  3,13(6) 	Load constant 
 66:     ST  3,-27(1) 	Save index 
 67:    LDC  3,15(6) 	Load constant 
 68:    LDA  4,-1(0) 	Load address of base of array w
 69:    SUB  3,4,3 	Compute offset of value 
 70:     LD  3,0(3) 	Load the value 
 71:    LDC  4,0(6) 	Load 0 
 72:    SUB  3,4,3 	Op unary - 
 73:     ST  3,-28(1) 	Save left side 
 74:     LD  3,-2(1) 	Load variable x
 75:     LD  4,-28(1) 	Load left into ac1 
 76:    MUL  3,4,3 	Op * 
 77:     ST  3,-28(1) 	Save left side 
 78:    LDC  3,17(6) 	Load constant 
 79:    LDA  4,-4(1) 	Load address of base of array y
 80:    SUB  3,4,3 	Compute offset of value 
 81:     LD  3,0(3) 	Load the value 
 82:     LD  4,-28(1) 	Load left into ac1 
 83:    MUL  3,4,3 	Op * 
 84:     ST  3,-28(1) 	Save left side 
 85:     LD  3,-26(1) 	Load variable z
 86:     LD  4,-28(1) 	Load left into ac1 
 87:    MUL  3,4,3 	Op * 
 88:     LD  4,-27(1) 	Restore index 
 89:    LDA  5,-1(0) 	Load address of base of array w
 90:    SUB  5,5,4 	Compute offset of value 
 91:     ST  3,0(5) 	Store variable w
* RETURN
 92:     LD  3,-26(1) 	Load variable z
 93:    LDA  2,0(3) 	Copy result to rt register 
 94:     LD  3,-1(1) 	Load return address 
 95:     LD  1,0(1) 	Adjust fp 
 96:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 97:    LDC  2,0(6) 	Set return value to 0 
 98:     LD  3,-1(1) 	Load return address 
 99:     LD  1,0(1) 	Adjust fp 
100:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function main
101:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  dog
102:     ST  1,-2(1) 	Store old fp in ghost frame 
*                       Load param 1
103:    LDC  3,666(6) 	Load constant 
104:     ST  3,-4(1) 	Store parameter 
*                       Jump to dog
105:    LDA  1,-2(1) 	Load address of new frame 
106:    LDA  3,1(7) 	Return address in ac 
107:    LDA  7,-66(7) 	CALL dog
108:    LDA  3,0(2) 	Save the result in ac 
*                       End call to dog
* END compound statement
* Add standard closing in case there is no return statement
109:    LDC  2,0(6) 	Set return value to 0 
110:     LD  3,-1(1) 	Load return address 
111:     LD  1,0(1) 	Adjust fp 
112:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,112(7) 	Jump to init [backpatch] 
* BEGIN Init
113:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
114:    LDC  3,33(6) 	load size of array w
115:     ST  3,0(0) 	save size of array w
* END init of globals
116:    LDA  1,-34(0) 	set first frame at end of globals 
117:     ST  1,0(1) 	store old fp (point to self) 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-19(7) 	Jump to main 
120:   HALT  0,0,0 	DONE! 
* END Init
