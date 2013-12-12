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
 42:    LDC  3,18(6) 	Load size of array x
 43:     ST  3,0(1) 	Load size of array x
* BEGIN function cat
 44:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 45:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 46:    LDC  3,3(6) 	Load constant 
 47:     ST  3,-5(1) 	Store parameter 
 48:     LD  3,-2(0) 	Load variable x
 49:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 50:    LDA  1,-3(1) 	Load address of new frame 
 51:    LDA  3,1(7) 	Return address in ac 
 52:    LDA  7,-47(7) 	Call  output
 53:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 54:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 55:    LDA  1,-3(1) 	Load address of new frame 
 56:    LDA  3,1(7) 	Return address in ac 
 57:    LDA  7,-21(7) 	Call  outnl
 58:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* IF
 59:    LDC  3,3(6) 	Load constant 
 60:     LD  3,-2(0) 	Load variable x
 61:     ST  3,-3(1) 	Save left side 
 62:    LDC  3,0(6) 	Load constant 
 63:     LD  4,-3(1) 	Load left into ac1 
 64:    SUB  4,4,3 	Op < 
 65:    LDC  3,1(6) 	True case 
 66:    JGT  4,1(7) 	Jump if true 
 67:    LDC  3,0(6) 	False case 
 68:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
 70:    LDC  3,1(6) 	Load constant 
 71:     LD  4,-2(0) 	load lhs variable x
 72:    SUB  3,4,3 	Op += 
 73:     ST  3,-2(0) 	Store variable x
* 			Begin call to  cat
 74:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 75:     LD  3,-2(0) 	Load variable x
 76:     ST  3,-5(1) 	Store parameter 
* 			Jump to  cat
 77:    LDA  1,-3(1) 	Load address of new frame 
 78:    LDA  3,1(7) 	Return address in ac 
 79:    LDA  7,-36(7) 	Call  cat
 80:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* END compound statement
  0:    LDA  7,80(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
 81:     LD  3,-1(1) 	Load return address 
 82:     LD  1,0(1) 	Adjust fp 
 83:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 84:    LDC  2,0(6) 	Set return value to 0 
 85:     LD  3,-1(1) 	Load return address 
 86:     LD  1,0(1) 	Adjust fp 
 87:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 88:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 89:    LDC  3,12(6) 	Load constant 
 90:     ST  3,0(0) 	Store variable x
* 			Begin call to  cat
 91:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 92:     LD  3,0(0) 	Load variable x
 93:     ST  3,-4(1) 	Store parameter 
* 			Jump to  cat
 94:    LDA  1,-2(1) 	Load address of new frame 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-53(7) 	Call  cat
 97:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* END compound statement
* Add standard closing in case there is no return statement
 98:    LDC  2,0(6) 	Set return value to 0 
 99:     LD  3,-1(1) 	Load return address 
100:     LD  1,0(1) 	Adjust fp 
101:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,101(7) 	Jump to init [backpatch] 
* BEGIN Init
102:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
103:    LDA  1,0(0) 	set first frame at end of globals 
104:     ST  1,0(1) 	store old fp (point to self) 
105:    LDA  3,0(7) 	return address in ac 
106:    LDA  7,-19(7) 	Jump to main 
107:   HALT  0,0,0 	DONE 
* END init
