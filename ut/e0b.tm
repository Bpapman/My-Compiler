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
* BEGIN function main
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:    LDC  3,0(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable x
* IF
 45:    LDC  3,1(6) 	Load constant 
 46:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 48:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 49:    LDC  3,666(6) 	Load constant 
 50:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 51:    LDA  1,-3(1) 	Load address of new frame 
 52:    LDA  3,1(7) 	Return address in ac 
 53:    LDA  7,-48(7) 	Call  output
 54:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,54(7) 	Jump around the THEN [backpatch] 
* ENDIF
 55:    LDC  3,0(6) 	Load constant 
 56:     ST  3,-2(1) 	Store variable x
* IF
 57:    LDC  3,0(6) 	Load constant 
 58:    JGT  3,1(7) 	Jump to then part 
* THEN
* 			Begin call to  output
 60:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 61:    LDC  3,666(6) 	Load constant 
 62:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 63:    LDA  1,-3(1) 	Load address of new frame 
 64:    LDA  3,1(7) 	Return address in ac 
 65:    LDA  7,-60(7) 	Call  output
 66:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
  0:    LDA  7,66(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 67:    LDC  2,0(6) 	Set return value to 0 
 68:     LD  3,-1(1) 	Load return address 
 69:     LD  1,0(1) 	Adjust fp 
 70:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,70(7) 	Jump to init [backpatch] 
* BEGIN Init
 71:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 72:    LDA  1,0(0) 	set first frame at end of globals 
 73:     ST  1,0(1) 	store old fp (point to self) 
 74:    LDA  3,0(7) 	return address in ac 
 75:    LDA  7,-34(7) 	Jump to main 
 76:   HALT  0,0,0 	DONE 
* END init
