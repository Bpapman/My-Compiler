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
 44:     LD  3,-2(1) 	Load variable x
 45:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 46:    LDA  1,-3(1) 	Load address of new frame 
 47:    LDA  3,1(7) 	Return address in ac 
 48:    LDA  7,-43(7) 	Call  output
 49:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 50:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 51:    LDA  1,-3(1) 	Load address of new frame 
 52:    LDA  3,1(7) 	Return address in ac 
 53:    LDA  7,-17(7) 	Call  outnl
 54:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* IF
 55:     LD  3,-2(1) 	Load variable x
 56:     ST  3,-3(1) 	Save left side 
 57:    LDC  3,0(6) 	Load constant 
 58:     LD  4,-3(1) 	Load left into ac1 
 59:    SUB  4,4,3 	Op < 
 60:    LDC  3,1(6) 	True case 
 61:    JGT  4,1(7) 	Jump if true 
 62:    LDC  3,0(6) 	False case 
 63:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  cat
 65:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 66:     LD  3,-2(1) 	Load variable x
 67:     ST  3,-5(1) 	Store parameter 
 68:     ST  3,-3(1) 	Save left side 
 69:    LDC  3,1(6) 	Load constant 
 70:     ST  3,-6(1) 	Store parameter 
 71:     LD  4,-3(1) 	Load left into ac1 
 72:    SUB  3,4,3 	Op - 
 73:     ST  3,-5(1) 	Store parameter 
* 			Jump to  cat
 74:    LDA  1,-3(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-35(7) 	Call  cat
 77:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
  0:    LDA  7,77(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
 78:     LD  3,-1(1) 	Load return address 
 79:     LD  1,0(1) 	Adjust fp 
 80:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 81:    LDC  2,0(6) 	Set return value to 0 
 82:     LD  3,-1(1) 	Load return address 
 83:     LD  1,0(1) 	Adjust fp 
 84:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 85:     ST  3,-1(1) 	Store return address. 
* EXPRESSION STMT
* 			Begin call to  cat
 86:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
 87:    LDC  3,10(6) 	Load constant 
 88:     ST  3,-4(1) 	Store parameter 
* 			Jump to  cat
 89:    LDA  1,-2(1) 	Load address of new frame 
 90:    LDA  3,1(7) 	Return address in ac 
 91:    LDA  7,-50(7) 	Call  cat
 92:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
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
100:    LDA  3,0(7) 	return address in ac 
101:    LDA  7,-17(7) 	Jump to main 
102:   HALT  0,0,0 	DONE 
* END init
