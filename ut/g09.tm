* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  g09.tm
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
* RETURN
* EXPRESSION STMT
 43:    LDC  3,77(6) 	Load constant 
 44:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 45:     LD  3,-3(1) 	Load variable x
 46:     LD  3,-3(1) 	Load variable z
 47:     ST  3,-5(1) 	Save left side 
* EXPRESSION STMT
 48:     LD  3,-3(1) 	Load variable x
 49:     LD  3,-3(1) 	Load variable z
 50:     LD  4,-5(1) 	Load left into ac1 
 51:    MUL  3,4,3 	Op * 
 52:     LD  4,-4(1) 	Load left into ac1 
 53:    ADD  3,4,3 	Op + 
 54:    LDA  2,0(3) 	Copy result to rt register 
 55:     LD  3,-1(1) 	Load return address 
 56:     LD  1,0(1) 	Adjust fp 
 57:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 58:    LDC  2,0(6) 	Set return value to 0 
 59:     LD  3,-1(1) 	Load return address 
 60:     LD  1,0(1) 	Adjust fp 
 61:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 62:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 63:    LDC  3,10(6) 	load size of array z
 64:     ST  3,-2(1) 	save size of array z
* EXPRESSION STMT
 65:    LDC  3,3(6) 	Load constant 
 66:     ST  3,-13(1) 	Save index 
* EXPRESSION STMT
 67:    LDC  3,445(6) 	Load constant 
 68:     LD  4,-13(1) 	Restore index 
 69:    LDA  5,-3(1) 	Load address of base of array z
 70:    SUB  5,5,4 	Compute offset of value 
 71:     ST  3,0(5) 	Store variable z
* EXPRESSION STMT
* 			Begin call to  output
 72:     ST  1,-13(1) 	Store old fp in ghost frame 
* 			Load param 1
* 			Begin call to  cat
 73:     ST  1,-15(1) 	Store old fp in ghost frame 
* 			Load param 1
 74:    LDA  3,-3(1) 	Load address of base of array z
 75:     ST  3,-17(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 76:    LDC  3,3(6) 	Load constant 
 77:     ST  3,-18(1) 	Store parameter 
* 			Jump to cat
 78:    LDA  1,-15(1) 	Load address of new frame 
 79:    LDA  3,1(7) 	Return address in ac 
 80:    LDA  7,-39(7) 	CALL cat
 81:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
 82:     ST  3,-15(1) 	Save left side 
* EXPRESSION STMT
 83:    LDC  3,100(6) 	Load constant 
 84:     LD  4,-15(1) 	Load left into ac1 
 85:    DIV  4,4,3 	Op % 
 86:    MUL  5,5,3 	 
 87:    SUB  3,4,5 	 
 88:     ST  3,-15(1) 	Store parameter 
* 			Jump to output
 89:    LDA  1,-13(1) 	Load address of new frame 
 90:    LDA  3,1(7) 	Return address in ac 
 91:    LDA  7,-86(7) 	CALL output
 92:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 93:    LDC  2,0(6) 	Set return value to 0 
 94:     LD  3,-1(1) 	Load return address 
 95:     LD  1,0(1) 	Adjust fp 
 96:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,96(7) 	Jump to init [backpatch] 
* BEGIN Init
 97:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 98:    LDA  1,0(0) 	set first frame at end of globals 
 99:     ST  1,0(1) 	store old fp (point to self) 
100:    LDA  3,1(7) 	Return address in ac 
101:    LDA  7,-40(7) 	Jump to main 
102:   HALT  0,0,0 	DONE! 
* END Init
