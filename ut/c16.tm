* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c16.tm
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
 43:    LDC  3,1(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable z
* EXPRESSION STMT
 45:    LDC  3,2(6) 	Load constant 
 46:     ST  3,-3(1) 	Store variable zz
* EXPRESSION STMT
 47:    LDC  3,73(6) 	Load constant 
 48:     ST  3,-3(0) 	Store variable x
* EXPRESSION STMT
 49:    LDC  3,211(6) 	Load constant 
 50:     ST  3,-2(0) 	Store variable y
* EXPRESSION STMT
* 			Begin call to  output
 51:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
 52:    LDC  3,33(6) 	Load constant 
 53:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
 54:    LDC  3,31(6) 	Load constant 
 55:     LD  4,-6(1) 	Load left into ac1 
 56:    SUB  3,4,3 	Op - 
 57:    LDA  4,-1(0) 	Load address of base of array x
 58:    SUB  3,4(3) 	Compute offset for x
 59:     LD  3,0(3) 	load value for x
 60:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
 61:    LDC  3,9123(6) 	Load constant 
 62:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 63:    LDC  3,9100(6) 	Load constant 
 64:     ST  3,-8(1) 	Save left side 
* EXPRESSION STMT
 65:    LDC  3,23(6) 	Load constant 
 66:     LD  4,-8(1) 	Load left into ac1 
 67:    ADD  3,4,3 	Op + 
 68:     LD  4,-7(1) 	Load left into ac1 
 69:    DIV  3,4,3 	Op / 
 70:    SUB  3,4,3 	Computer offset of value 
 71:     LD  3,0(3) 	Load the value 
 72:     LD  4,-6(1) 	Load left into ac1 
 73:    ADD  3,4,3 	Op + 
 74:     ST  3,-6(1) 	Store parameter 
* 			Jump to output
 75:    LDA  1,-4(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-72(7) 	CALL output
 78:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 79:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 80:    LDA  1,-4(1) 	Load address of new frame 
 81:    LDA  3,1(7) 	Return address in ac 
 82:    LDA  7,-46(7) 	CALL outnl
 83:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 84:    LDC  2,0(6) 	Set return value to 0 
 85:     LD  3,-1(1) 	Load return address 
 86:     LD  1,0(1) 	Adjust fp 
 87:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,87(7) 	Jump to init [backpatch] 
* BEGIN Init
 88:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
 89:    LDC  3,3(6) 	load size of array x
 90:     ST  3,0(0) 	saves size of array x
 91:    LDC  3,3(6) 	load size of array x
 92:     ST  3,0(0) 	saves size of array x
* END init of globals
 93:    LDA  1,-9(0) 	set first frame at end of globals 
 94:     ST  1,0(1) 	store old fp (point to self) 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-55(7) 	Jump to main 
 97:   HALT  0,0,0 	DONE! 
* END Init
