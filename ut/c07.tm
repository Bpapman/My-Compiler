* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c07.tm
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
 43:    LDC  3,3(6) 	load size of array x
 44:     ST  3,-2(1) 	save size of array x
 45:    LDC  3,4(6) 	load size of array y
 46:     ST  3,-6(1) 	save size of array y
* EXPRESSION STMT
 47:    LDC  3,2(6) 	Load constant 
 48:     ST  3,-11(1) 	Save index 
* EXPRESSION STMT
 49:    LDC  3,1(6) 	Load constant 
 50:     LD  4,-11(1) 	Restore index 
 51:    LDA  5,-3(1) 	Load address of base of array x
 52:    SUB  5,5,4 	Compute offset of value 
 53:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
 54:    LDC  3,1(6) 	Load constant 
 55:     ST  3,-11(1) 	Save index 
* EXPRESSION STMT
 56:    LDC  3,0(6) 	Load constant 
 57:     LD  4,-11(1) 	Restore index 
 58:    LDA  5,-7(1) 	Load address of base of array y
 59:    SUB  5,5,4 	Compute offset of value 
 60:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
* 			Begin call to  outputb
 61:     ST  1,-11(1) 	Store old fp in ghost frame 
* 			Load param 1
 62:    LDC  3,2(6) 	Load constant 
 63:    LDA  4,-3(1) 	Load address of base of array x
 64:    SUB  3,4(3) 	Compute offset for x
 65:     LD  3,0(3) 	load value for x
 66:     ST  3,-13(1) 	Save left side 
* EXPRESSION STMT
 67:    LDC  3,1(6) 	Load constant 
 68:    SUB  3,4,3 	Computer offset of value 
 69:     LD  3,0(3) 	Load the value 
 70:     LD  4,-13(1) 	Load left into ac1 
 71:    JEQ  3,1(7) 	Op OR 
 72:    LDA  3,0(5) 	 
 73:     ST  3,-13(1) 	Store parameter 
* 			Jump to outputb
 74:    LDA  1,-11(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-59(7) 	CALL outputb
 77:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outputb
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 78:     ST  1,-11(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 79:    LDA  1,-11(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-45(7) 	CALL outnl
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 83:    LDC  2,0(6) 	Set return value to 0 
 84:     LD  3,-1(1) 	Load return address 
 85:     LD  1,0(1) 	Adjust fp 
 86:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,86(7) 	Jump to init [backpatch] 
* BEGIN Init
 87:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 88:    LDA  1,0(0) 	set first frame at end of globals 
 89:     ST  1,0(1) 	store old fp (point to self) 
 90:    LDA  3,1(7) 	Return address in ac 
 91:    LDA  7,-50(7) 	Jump to main 
 92:   HALT  0,0,0 	DONE! 
* END Init
