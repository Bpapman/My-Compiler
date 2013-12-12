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
 56:    LDC  3,0(6) 	Load constant 
 57:     ST  3,0(0) 	Store variable runningSum
  0:    LDA  7,57(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
 58:     LD  3,0(0) 	Load variable runningSum
 59:    LDA  2,0(3) 	Copy result to rt register 
 60:     LD  3,-1(1) 	Load return address 
 61:     LD  1,0(1) 	Adjust fp 
 62:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 63:    LDC  2,0(6) 	Set return value to 0 
 64:     LD  3,-1(1) 	Load return address 
 65:     LD  1,0(1) 	Adjust fp 
 66:    LDA  7,0(3) 	Return 
* END of function sum
* BEGIN function main
 67:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  sum
 68:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 69:    LDC  3,1(6) 	Load constant 
 70:     ST  3,-4(1) 	Store parameter 
 71:    LDC  3,666(6) 	Load constant 
 72:     ST  3,-4(1) 	Store parameter 
* 			Load Param 1
 73:    LDC  3,666(6) 	Load constant 
 74:     ST  3,-5(1) 	Store parameter 
* 			Jump to  sum
 75:    LDA  1,-2(1) 	Load address of new frame 
 76:    LDA  3,1(7) 	Return address in ac 
 77:    LDA  7,-26(7) 	Call  sum
 78:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* 			Begin call to  sum
 79:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 80:    LDC  3,0(6) 	Load constant 
 81:     ST  3,-4(1) 	Store parameter 
 82:    LDC  3,3(6) 	Load constant 
 83:     ST  3,-4(1) 	Store parameter 
* 			Load Param 1
 84:    LDC  3,3(6) 	Load constant 
 85:     ST  3,-5(1) 	Store parameter 
* 			Jump to  sum
 86:    LDA  1,-2(1) 	Load address of new frame 
 87:    LDA  3,1(7) 	Return address in ac 
 88:    LDA  7,-37(7) 	Call  sum
 89:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* 			Begin call to  output
 90:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  sum
 91:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 92:    LDC  3,0(6) 	Load constant 
 93:     ST  3,-6(1) 	Store parameter 
 94:    LDC  3,0(6) 	Load constant 
 95:     ST  3,-6(1) 	Store parameter 
* 			Load Param 1
 96:    LDC  3,0(6) 	Load constant 
 97:     ST  3,-7(1) 	Store parameter 
* 			Jump to  sum
 98:    LDA  1,-4(1) 	Load address of new frame 
 99:    LDA  3,1(7) 	Return address in ac 
100:    LDA  7,-49(7) 	Call  sum
101:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
102:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
103:    LDA  1,-2(1) 	Load address of new frame 
104:    LDA  3,1(7) 	Return address in ac 
105:    LDA  7,-100(7) 	Call  output
106:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
107:    LDC  2,0(6) 	Set return value to 0 
108:     LD  3,-1(1) 	Load return address 
109:     LD  1,0(1) 	Adjust fp 
110:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,110(7) 	Jump to init [backpatch] 
* BEGIN Init
111:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
112:    LDA  1,0(0) 	set first frame at end of globals 
113:     ST  1,0(1) 	store old fp (point to self) 
114:    LDA  3,0(7) 	return address in ac 
115:    LDA  7,-49(7) 	Jump to main 
116:   HALT  0,0,0 	DONE 
* END init
