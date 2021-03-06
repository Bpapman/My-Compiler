* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c17.tm
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
 43:    LDC  3,5(6) 	Load constant 
 44:     ST  3,-2(1) 	Save index 
* EXPRESSION STMT
 45:    LDC  3,333(6) 	Load constant 
 46:     LD  4,-2(1) 	Restore index 
 47:    LDA  5,-1(0) 	Load address of base of array x
 48:    SUB  5,5,4 	Compute offset of value 
 49:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
 50:    LDC  3,7(6) 	Load constant 
 51:     ST  3,-2(1) 	Save index 
* EXPRESSION STMT
 52:    LDC  3,444(6) 	Load constant 
 53:     LD  4,-2(1) 	Restore index 
 54:    LDA  5,-9(0) 	Load address of base of array y
 55:    SUB  5,5,4 	Compute offset of value 
 56:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
 57:    LDC  3,5(6) 	Load constant 
 58:     ST  3,-2(1) 	Save index 
* EXPRESSION STMT
 59:    LDC  3,7(6) 	Load constant 
 60:    LDA  4,-9(0) 	Load address of base of array x
 61:    SUB  3,4,3 	Compute offset of value 
 62:     LD  3,0(5) 	Load the value 
 63:     LD  4,-2(1) 	Restore index 
 64:    LDA  5,-1(0) 	Load address of base of array x
 65:    SUB  5,5,4 	Compute offset of value 
 66:     LD  4,0(5) 	loah lhs variable x
 67:    ADD  3,4,3 	op += 
 68:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  output
 69:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 70:    LDC  3,5(6) 	Load constant 
 71:    LDA  4,-1(0) 	Load address of base of array x
 72:    SUB  3,4(3) 	Compute offset for x
 73:     LD  3,0(3) 	load value for x
 74:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 75:    LDA  1,-2(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-72(7) 	CALL output
 78:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
 79:    LDC  3,7(6) 	Load constant 
 80:     ST  3,-2(1) 	Save index 
* EXPRESSION STMT
 81:    LDC  3,5(6) 	Load constant 
 82:    LDA  4,-1(0) 	Load address of base of array y
 83:    SUB  3,4,3 	Compute offset of value 
 84:     LD  3,0(5) 	Load the value 
 85:     LD  4,-2(1) 	Restore index 
 86:    LDA  5,-9(0) 	Load address of base of array y
 87:    SUB  5,5,4 	Compute offset of value 
 88:     LD  4,0(5) 	loah lhs variable y
 89:    SUB  3,4,3 	op -= 
 90:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
* 			Begin call to  output
 91:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 92:    LDC  3,7(6) 	Load constant 
 93:    LDA  4,-9(0) 	Load address of base of array y
 94:    SUB  3,4(3) 	Compute offset for y
 95:     LD  3,0(3) 	load value for y
 96:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 97:    LDA  1,-2(1) 	Load address of new frame 
 98:    LDA  3,1(7) 	Return address in ac 
 99:    LDA  7,-94(7) 	CALL output
100:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
101:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to outnl
102:    LDA  1,-2(1) 	Load address of new frame 
103:    LDA  3,1(7) 	Return address in ac 
104:    LDA  7,-68(7) 	CALL outnl
105:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
106:    LDC  2,0(6) 	Set return value to 0 
107:     LD  3,-1(1) 	Load return address 
108:     LD  1,0(1) 	Adjust fp 
109:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,109(7) 	Jump to init [backpatch] 
* BEGIN Init
110:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
111:    LDC  3,7(6) 	load size of array x
112:     ST  3,0(0) 	saves size of array x
113:    LDC  3,7(6) 	load size of array x
114:     ST  3,0(0) 	saves size of array x
* END init of globals
115:    LDA  1,-18(0) 	set first frame at end of globals 
116:     ST  1,0(1) 	store old fp (point to self) 
117:    LDA  3,1(7) 	Return address in ac 
118:    LDA  7,-77(7) 	Jump to main 
119:   HALT  0,0,0 	DONE! 
* END Init
