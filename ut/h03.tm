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
* BEGIN function cat
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 44:    LDC  3,3(6) 	Load constant 
 45:     ST  3,-5(1) 	Store parameter 
 46:     LD  3,-2(1) 	Load variable x
 47:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 48:    LDA  1,-3(1) 	Load address of new frame 
 49:    LDA  3,1(7) 	Return address in ac 
 50:    LDA  7,-45(7) 	Call  output
 51:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 52:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 53:    LDA  1,-3(1) 	Load address of new frame 
 54:    LDA  3,1(7) 	Return address in ac 
 55:    LDA  7,-19(7) 	Call  outnl
 56:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* IF
 57:    LDC  3,3(6) 	Load constant 
 58:     LD  3,-2(1) 	Load variable x
 59:     ST  3,-3(1) 	Save left side 
 60:    LDC  3,0(6) 	Load constant 
 61:     LD  4,-3(1) 	Load left into ac1 
 62:    SUB  4,4,3 	Op < 
 63:    LDC  3,1(6) 	True case 
 64:    JGT  4,1(7) 	Jump if true 
 65:    LDC  3,0(6) 	False case 
 66:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
 68:    LDC  3,3(6) 	Load constant 
 69:     LD  3,-2(1) 	Load variable x
 70:     ST  3,-3(1) 	Save left side 
 71:    LDC  3,1(6) 	Load constant 
 72:     LD  4,-3(1) 	Load left into ac1 
 73:    SUB  3,4,3 	Op - 
 74:     ST  3,-2(1) 	Store variable x
* 			Begin call to  cat
 75:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 76:     LD  3,-2(1) 	Load variable x
 77:     ST  3,-5(1) 	Store parameter 
* 			Jump to  cat
 78:    LDA  1,-3(1) 	Load address of new frame 
 79:    LDA  3,1(7) 	Return address in ac 
 80:    LDA  7,-39(7) 	Call  cat
 81:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* END compound statement
  0:    LDA  7,81(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
 82:     LD  3,-1(1) 	Load return address 
 83:     LD  1,0(1) 	Adjust fp 
 84:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 85:    LDC  2,0(6) 	Set return value to 0 
 86:     LD  3,-1(1) 	Load return address 
 87:     LD  1,0(1) 	Adjust fp 
 88:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 89:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 90:    LDC  3,12(6) 	Load constant 
 91:     ST  3,-2(1) 	Store variable x
* 			Begin call to  cat
 92:     ST  1,-21(1) 	Store old fp in ghost frame 
* 			Load Param 1
 93:     LD  3,-2(1) 	Load variable x
 94:     ST  3,-23(1) 	Store parameter 
* 			Jump to  cat
 95:    LDA  1,-21(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-56(7) 	Call  cat
 98:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* END compound statement
* Add standard closing in case there is no return statement
 99:    LDC  2,0(6) 	Set return value to 0 
100:     LD  3,-1(1) 	Load return address 
101:     LD  1,0(1) 	Adjust fp 
102:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,102(7) 	Jump to init [backpatch] 
* BEGIN Init
103:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
104:    LDA  1,0(0) 	set first frame at end of globals 
105:     ST  1,0(1) 	store old fp (point to self) 
106:    LDA  3,0(7) 	return address in ac 
107:    LDA  7,-19(7) 	Jump to main 
108:   HALT  0,0,0 	DONE 
* END init
