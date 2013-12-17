* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c18.tm
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
 43:    LDC  3,7(6) 	load size of array x
 44:     ST  3,-2(1) 	save size of array x
 45:    LDC  3,9(6) 	load size of array y
 46:     ST  3,-10(1) 	save size of array y
* EXPRESSION STMT
 47:    LDC  3,5(6) 	Load constant 
 48:     ST  3,-20(1) 	Save index 
* EXPRESSION STMT
 49:    LDC  3,333(6) 	Load constant 
 50:     LD  4,-20(1) 	Restore index 
 51:    LDA  5,-3(1) 	Load address of base of array x
 52:    SUB  5,5,4 	Compute offset of value 
 53:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
 54:    LDC  3,7(6) 	Load constant 
 55:     ST  3,-20(1) 	Save index 
* EXPRESSION STMT
 56:    LDC  3,444(6) 	Load constant 
 57:     LD  4,-20(1) 	Restore index 
 58:    LDA  5,-11(1) 	Load address of base of array y
 59:    SUB  5,5,4 	Compute offset of value 
 60:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
 61:    LDC  3,5(6) 	Load constant 
 62:     ST  3,-20(1) 	Save index 
* EXPRESSION STMT
 63:    LDC  3,7(6) 	Load constant 
 64:    LDA  4,-11(1) 	Load address of base of array x
 65:    SUB  3,4,3 	Compute offset of value 
 66:     LD  3,0(5) 	Load the value 
 67:     LD  4,-20(1) 	Restore index 
 68:    LDA  5,-3(1) 	Load address of base of array x
 69:    SUB  5,5,4 	Compute offset of value 
 70:     LD  4,0(5) 	loah lhs variable x
 71:    ADD  3,4,3 	op += 
 72:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  output
 73:     ST  1,-20(1) 	Store old fp in ghost frame 
* 			Load param 1
 74:    LDC  3,5(6) 	Load constant 
 75:    LDA  4,-3(1) 	Load address of base of array x
 76:    SUB  3,4(3) 	Compute offset for x
 77:     LD  3,0(3) 	load value for x
 78:     ST  3,-22(1) 	Store parameter 
* 			Jump to output
 79:    LDA  1,-20(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-76(7) 	CALL output
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
 83:    LDC  3,7(6) 	Load constant 
 84:     ST  3,-20(1) 	Save index 
* EXPRESSION STMT
 85:    LDC  3,5(6) 	Load constant 
 86:    LDA  4,-3(1) 	Load address of base of array y
 87:    SUB  3,4,3 	Compute offset of value 
 88:     LD  3,0(5) 	Load the value 
 89:     LD  4,-20(1) 	Restore index 
 90:    LDA  5,-11(1) 	Load address of base of array y
 91:    SUB  5,5,4 	Compute offset of value 
 92:     LD  4,0(5) 	loah lhs variable y
 93:    SUB  3,4,3 	op -= 
 94:     ST  3,0(5) 	Store variable y
* EXPRESSION STMT
* 			Begin call to  output
 95:     ST  1,-20(1) 	Store old fp in ghost frame 
* 			Load param 1
 96:    LDC  3,7(6) 	Load constant 
 97:    LDA  4,-11(1) 	Load address of base of array y
 98:    SUB  3,4(3) 	Compute offset for y
 99:     LD  3,0(3) 	load value for y
100:     ST  3,-22(1) 	Store parameter 
* 			Jump to output
101:    LDA  1,-20(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-98(7) 	CALL output
104:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
105:     ST  1,-20(1) 	Store old fp in ghost frame 
* 			Jump to outnl
106:    LDA  1,-20(1) 	Load address of new frame 
107:    LDA  3,1(7) 	Return address in ac 
108:    LDA  7,-72(7) 	CALL outnl
109:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
110:    LDC  2,0(6) 	Set return value to 0 
111:     LD  3,-1(1) 	Load return address 
112:     LD  1,0(1) 	Adjust fp 
113:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,113(7) 	Jump to init [backpatch] 
* BEGIN Init
114:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
115:    LDA  1,0(0) 	set first frame at end of globals 
116:     ST  1,0(1) 	store old fp (point to self) 
117:    LDA  3,1(7) 	Return address in ac 
118:    LDA  7,-77(7) 	Jump to main 
119:   HALT  0,0,0 	DONE! 
* END Init
