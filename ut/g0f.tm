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
* IF
* EXPRESSION STMT
 43:     LD  3,-2(1) 	Load variable x
 44:     ST  3,-3(1) 	Save left side 
 45:    LDC  3,0(6) 	Load constant 
 46:     LD  4,-3(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op < 
 48:    LDC  3,1(6) 	True case 
 49:    JGT  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 53:     LD  3,-2(1) 	Load variable x
 54:     ST  3,-3(1) 	Save left side 
 55:     LD  3,-2(1) 	Load variable x
 56:     LD  4,-3(1) 	Load left into ac1 
 57:    ADD  3,4,3 	Op + 
 58:    LDA  2,0(3) 	Copy result to rt register 
 59:     LD  3,-1(1) 	Load return address 
 60:     LD  1,0(1) 	Adjust fp 
 61:    LDA  7,0(3) 	Return 
  0:    LDA  7,61(7) 	Jump around the THEN [backpatch] 
* ENDIF
* Add standard closing in case there is no return statement
 62:    LDC  2,0(6) 	Set return value to 0 
 63:     LD  3,-1(1) 	Load return address 
 64:     LD  1,0(1) 	Adjust fp 
 65:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 66:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 67:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  cat
 68:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 69:    LDC  3,88(6) 	Load constant 
 70:     ST  3,-6(1) 	Store parameter 
* 			Jump to  cat
 71:    LDA  1,-4(1) 	Load address of new frame 
 72:    LDA  3,1(7) 	Return address in ac 
 73:    LDA  7,-32(7) 	Call  cat
 74:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
 75:     ST  3,-4(1) 	Store parameter 
 76:     ST  3,-2(1) 	Save left side 
* 			Begin call to  cat
 77:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 78:    LDC  3,17(6) 	Load constant 
 79:     ST  3,-7(1) 	Store parameter 
 80:    SUB  3,4,3 	Op - 
 81:     ST  3,-7(1) 	Store parameter 
* 			Jump to  cat
 82:    LDA  1,-5(1) 	Load address of new frame 
 83:    LDA  3,1(7) 	Return address in ac 
 84:    LDA  7,-43(7) 	Call  cat
 85:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
 86:     ST  3,-5(1) 	Store parameter 
 87:     LD  4,-2(1) 	Load left into ac1 
 88:    ADD  3,4,3 	Op + 
 89:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 90:    LDA  1,-2(1) 	Load address of new frame 
 91:    LDA  3,1(7) 	Return address in ac 
 92:    LDA  7,-87(7) 	Call  output
 93:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
 94:    LDC  2,0(6) 	Set return value to 0 
 95:     LD  3,-1(1) 	Load return address 
 96:     LD  1,0(1) 	Adjust fp 
 97:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,97(7) 	Jump to init [backpatch] 
* BEGIN Init
 98:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 99:    LDA  1,0(0) 	set first frame at end of globals 
100:     ST  1,0(1) 	store old fp (point to self) 
101:    LDA  3,0(7) 	return address in ac 
102:    LDA  7,-37(7) 	Jump to main 
103:   HALT  0,0,0 	DONE 
* END init
