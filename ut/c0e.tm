* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  c0e.tm
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
 43:    LDC  3,1023(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  output
 45:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 46:     LD  3,-2(1) 	load lhs variable x
 47:    LDA  3,1(3) 	increment value of x
 48:     ST  3,-2(1) 	Store variable x
 49:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 50:    LDA  1,-3(1) 	Load address of new frame 
 51:    LDA  3,1(7) 	Return address in ac 
 52:    LDA  7,-47(7) 	CALL output
 53:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 54:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 55:    LDA  1,-3(1) 	Load address of new frame 
 56:    LDA  3,1(7) 	Return address in ac 
 57:    LDA  7,-21(7) 	CALL outnl
 58:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 59:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 60:     LD  3,-2(1) 	Load variable x
 61:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 62:    LDA  1,-3(1) 	Load address of new frame 
 63:    LDA  3,1(7) 	Return address in ac 
 64:    LDA  7,-59(7) 	CALL output
 65:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 66:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 67:    LDA  1,-3(1) 	Load address of new frame 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-33(7) 	CALL outnl
 70:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 71:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 72:     LD  3,-2(1) 	load lhs variable x
 73:    LDA  3,-1(3) 	increment value of x
 74:     ST  3,-2(1) 	Store variable x
 75:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 76:    LDA  1,-3(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-73(7) 	CALL output
 79:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 80:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 81:    LDA  1,-3(1) 	Load address of new frame 
 82:    LDA  3,1(7) 	Return address in ac 
 83:    LDA  7,-47(7) 	CALL outnl
 84:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 85:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 86:     LD  3,-2(1) 	Load variable x
 87:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 88:    LDA  1,-3(1) 	Load address of new frame 
 89:    LDA  3,1(7) 	Return address in ac 
 90:    LDA  7,-85(7) 	CALL output
 91:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 92:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 93:    LDA  1,-3(1) 	Load address of new frame 
 94:    LDA  3,1(7) 	Return address in ac 
 95:    LDA  7,-59(7) 	CALL outnl
 96:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 97:    LDC  2,0(6) 	Set return value to 0 
 98:     LD  3,-1(1) 	Load return address 
 99:     LD  1,0(1) 	Adjust fp 
100:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,100(7) 	Jump to init [backpatch] 
* BEGIN Init
101:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
102:    LDA  1,0(0) 	set first frame at end of globals 
103:     ST  1,0(1) 	store old fp (point to self) 
104:    LDA  3,1(7) 	Return address in ac 
105:    LDA  7,-64(7) 	Jump to main 
106:   HALT  0,0,0 	DONE! 
* END Init
