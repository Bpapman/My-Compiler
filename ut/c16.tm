* C- Compiler version C-F10
* Built: Dec 6, 2013
* Author: Brett Papineau
* File compiled: temp.c-
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
 42:    LDC  3,3(6) 	Load size of array x
 43:     ST  3,0(1) 	Load size of array x
 44:    LDC  3,4(6) 	Load size of array y
 45:     ST  3,-1(1) 	Load size of array y
* BEGIN function main
 46:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 47:    LDC  3,1(6) 	Load constant 
 48:     ST  3,-2(1) 	Store variable z
 49:    LDC  3,2(6) 	Load constant 
 50:     ST  3,-3(1) 	Store variable zz
 51:    LDC  3,73(6) 	Load constant 
 52:     ST  3,-3(0) 	Store variable x
 53:    LDC  3,211(6) 	Load constant 
 54:     ST  3,-2(0) 	Store variable y
* 			Begin call to  output
 55:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 56:    LDC  3,33(6) 	Load constant 
 57:     ST  3,-6(1) 	Store parameter 
 58:     ST  3,-4(1) 	Save left side 
 59:    LDC  3,31(6) 	Load constant 
 60:     ST  3,-7(1) 	Store parameter 
 61:     LD  4,-4(1) 	Load left into ac1 
 62:    SUB  3,4,3 	Op - 
 63:     ST  3,-6(1) 	Store parameter 
 64:     LD  3,0(0) 	Load variable x
 65:     ST  3,-6(1) 	Store parameter 
 66:     ST  3,-4(1) 	Save left side 
 67:    LDC  3,9123(6) 	Load constant 
 68:     ST  3,-7(1) 	Store parameter 
 69:     ST  3,-5(1) 	Save left side 
 70:    LDC  3,9100(6) 	Load constant 
 71:     ST  3,-8(1) 	Store parameter 
 72:     ST  3,-6(1) 	Save left side 
 73:    LDC  3,23(6) 	Load constant 
 74:     ST  3,-9(1) 	Store parameter 
 75:     LD  4,-6(1) 	Load left into ac1 
 76:    ADD  3,4,3 	Op + 
 77:     ST  3,-8(1) 	Store parameter 
 78:     LD  4,-5(1) 	Load left into ac1 
 79:    DIV  3,4,3 	Op div 
 80:     ST  3,-7(1) 	Store parameter 
 81:     LD  3,-1(0) 	Load variable y
 82:     ST  3,-7(1) 	Store parameter 
 83:     LD  4,-4(1) 	Load left into ac1 
 84:    ADD  3,4,3 	Op + 
 85:     ST  3,-6(1) 	Store parameter 
* 			Jump to  output
 86:    LDA  1,-4(1) 	Load address of new frame 
 87:    LDA  3,1(7) 	Return address in ac 
 88:    LDA  7,-83(7) 	Call  output
 89:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 90:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 91:    LDA  1,-4(1) 	Load address of new frame 
 92:    LDA  3,1(7) 	Return address in ac 
 93:    LDA  7,-57(7) 	Call  outnl
 94:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 95:    LDC  2,0(6) 	Set return value to 0 
 96:     LD  3,-1(1) 	Load return address 
 97:     LD  1,0(1) 	Adjust fp 
 98:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,98(7) 	Jump to init [backpatch] 
* BEGIN Init
 99:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
100:    LDA  1,0(0) 	set first frame at end of globals 
101:     ST  1,0(1) 	store old fp (point to self) 
102:    LDA  3,0(7) 	return address in ac 
103:    LDA  7,-58(7) 	Jump to main 
104:   HALT  0,0,0 	DONE 
* END init
