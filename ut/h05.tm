* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  h05.tm
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
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 44:    LDC  3,3(6) 	Load constant 
 45:    LDA  4,-2(0) 	Load address of base of array x
 46:    SUB  3,4(3) 	Compute offset for x
 47:     LD  3,0(3) 	load value for x
 48:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 49:    LDA  1,-3(1) 	Load address of new frame 
 50:    LDA  3,1(7) 	Return address in ac 
 51:    LDA  7,-46(7) 	CALL output
 52:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 53:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 54:    LDA  1,-3(1) 	Load address of new frame 
 55:    LDA  3,1(7) 	Return address in ac 
 56:    LDA  7,-20(7) 	CALL outnl
 57:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* IF
* EXPRESSION STMT
 58:    LDC  3,3(6) 	Load constant 
 59:    LDA  4,-2(0) 	Load address of base of array x
 60:    SUB  3,4(3) 	Compute offset for x
 61:     LD  3,0(3) 	load value for x
 62:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
 63:    LDC  3,0(6) 	Load constant 
 64:     LD  4,-3(1) 	Load left into ac1 
 65:    SUB  4,4,3 	Op < 
 66:    LDC  3,1(6) 	True case 
 67:    JGT  4,1(7) 	Jump if true 
 68:    LDC  3,0(6) 	False case 
 69:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
 71:    LDC  3,3(6) 	Load constant 
 72:     ST  3,-3(1) 	Save index 
* EXPRESSION STMT
 73:    LDC  3,1(6) 	Load constant 
 74:     LD  4,-3(1) 	Restore index 
 75:    LDA  5,-2(0) 	Load address of base of array x
 76:    SUB  5,5,4 	Compute offset of value 
 77:     LD  4,0(5) 	loah lhs variable x
 78:    SUB  3,4,3 	op -= 
 79:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  cat
 80:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 81:    LDA  3,-2(0) 	Load address of base of array x
 82:     ST  3,-5(1) 	Store parameter 
* 			Jump to cat
 83:    LDA  1,-3(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-44(7) 	CALL cat
 86:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
* END compound statement
  0:    LDA  7,86(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
 87:     LD  3,-1(1) 	Load return address 
 88:     LD  1,0(1) 	Adjust fp 
 89:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 90:    LDC  2,0(6) 	Set return value to 0 
 91:     LD  3,-1(1) 	Load return address 
 92:     LD  1,0(1) 	Adjust fp 
 93:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 94:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 95:    LDC  3,3(6) 	Load constant 
 96:     ST  3,-2(1) 	Save index 
* EXPRESSION STMT
 97:    LDC  3,12(6) 	Load constant 
 98:     LD  4,-2(1) 	Restore index 
 99:    LDA  5,-1(0) 	Load address of base of array x
100:    SUB  5,5,4 	Compute offset of value 
101:     ST  3,0(5) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  cat
102:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
103:    LDA  3,-1(0) 	Load address of base of array x
104:     ST  3,-4(1) 	Store parameter 
* 			Jump to cat
105:    LDA  1,-2(1) 	Load address of new frame 
106:    LDA  3,1(7) 	Return address in ac 
107:    LDA  7,-66(7) 	CALL cat
108:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
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
114:    LDC  3,18(6) 	load size of array x
115:     ST  3,0(0) 	saves size of array x
* END init of globals
116:    LDA  1,-19(0) 	set first frame at end of globals 
117:     ST  1,0(1) 	store old fp (point to self) 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-26(7) 	Jump to main 
120:   HALT  0,0,0 	DONE! 
* END Init
