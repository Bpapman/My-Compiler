* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  s02e.tm
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
* BEGIN function toad
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* END compound statement
* Add standard closing in case there is no return statement
 43:    LDC  2,0(6) 	Set return value to 0 
 44:     LD  3,-1(1) 	Load return address 
 45:     LD  1,0(1) 	Adjust fp 
 46:    LDA  7,0(3) 	Return 
* END of function toad
* BEGIN function load
 47:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* END compound statement
* Add standard closing in case there is no return statement
 48:    LDC  2,0(6) 	Set return value to 0 
 49:     LD  3,-1(1) 	Load return address 
 50:     LD  1,0(1) 	Adjust fp 
 51:    LDA  7,0(3) 	Return 
* END of function load
* BEGIN function sum
 52:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
* EXPRESSION STMT
 53:     LD  3,-2(1) 	Load variable init
 54:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 56:    LDC  3,0(6) 	Load constant 
 57:     ST  3,0(0) 	Store variable runningSum
* ELSE
* BUG in emitBackup
134544570:    LDA  7,-134544512(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
* EXPRESSION STMT
 59:     LD  3,0(0) 	Load variable runningSum
 60:    LDA  2,0(3) 	Copy result to rt register 
 61:     LD  3,-1(1) 	Load return address 
 62:     LD  1,0(1) 	Adjust fp 
 63:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 64:    LDC  2,0(6) 	Set return value to 0 
 65:     LD  3,-1(1) 	Load return address 
 66:     LD  1,0(1) 	Adjust fp 
 67:    LDA  7,0(3) 	Return 
* END of function sum
* BEGIN function main
 68:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  sum
 69:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 70:    LDC  3,1(6) 	Load constant 
 71:     ST  3,-4(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 72:    LDC  3,666(6) 	Load constant 
 73:     ST  3,-5(1) 	Store parameter 
* 			Jump to sum
 74:    LDA  1,-2(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-25(7) 	CALL sum
 77:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  sum
 78:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 79:    LDC  3,0(6) 	Load constant 
 80:     ST  3,-4(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 81:    LDC  3,3(6) 	Load constant 
 82:     ST  3,-5(1) 	Store parameter 
* 			Jump to sum
 83:    LDA  1,-2(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-34(7) 	CALL sum
 86:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 87:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
* 			Begin call to  sum
 88:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
 89:    LDC  3,0(6) 	Load constant 
 90:     ST  3,-6(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 91:    LDC  3,0(6) 	Load constant 
 92:     ST  3,-7(1) 	Store parameter 
* 			Jump to sum
 93:    LDA  1,-4(1) 	Load address of new frame 
 94:    LDA  3,1(7) 	Return address in ac 
 95:    LDA  7,-44(7) 	CALL sum
 96:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* EXPRESSION STMT
 97:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 98:    LDA  1,-2(1) 	Load address of new frame 
 99:    LDA  3,1(7) 	Return address in ac 
100:    LDA  7,-95(7) 	CALL output
101:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
102:    LDC  2,0(6) 	Set return value to 0 
103:     LD  3,-1(1) 	Load return address 
104:     LD  1,0(1) 	Adjust fp 
105:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,105(7) 	Jump to init [backpatch] 
* BEGIN Init
106:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
107:    LDA  1,-2(0) 	set first frame at end of globals 
108:     ST  1,0(1) 	store old fp (point to self) 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-43(7) 	Jump to main 
111:   HALT  0,0,0 	DONE! 
* END Init
