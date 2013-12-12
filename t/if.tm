* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  if.c-
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
 43:    LDC  3,23(6) 	Load constant 
 44:     ST  3,-3(1) 	Store variable j
 45:     ST  3,-2(1) 	Store variable i
* IF
 46:     LD  3,-2(1) 	Load variable i
 47:     ST  3,-4(1) 	Save left side 
 48:     LD  3,-3(1) 	Load variable j
 49:     LD  4,-4(1) 	Load left into ac1 
 50:    SUB  4,4,3 	Op > 
 51:    LDC  3,1(6) 	True case 
 52:    JGT  4,1(7) 	Jump if true 
 53:    LDC  3,0(6) 	False case 
 54:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 56:    LDC  3,666(6) 	Load constant 
 57:     ST  3,-2(1) 	Store variable i
 55:    LDA  7,2(7) 	Jump around the THEN [backpatch] 
* ENDIF
* IF
 58:     LD  3,-3(1) 	Load variable j
 59:     ST  3,-4(1) 	Save left side 
 60:     LD  3,-2(1) 	Load variable i
 61:     LD  4,-4(1) 	Load left into ac1 
 62:    SUB  4,4,3 	Op == 
 63:    LDC  3,1(6) 	True case 
 64:    JEQ  4,1(7) 	Jump if true 
 65:    LDC  3,0(6) 	False case 
 66:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 68:    LDC  3,666(6) 	Load constant 
 69:     ST  3,-2(1) 	Store variable i
* ELSE
 67:    LDA  7,3(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
 71:    LDC  3,777(6) 	Load constant 
 72:     ST  3,-3(1) 	Store variable j
 70:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
*                       Begin call to  output
 73:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 74:     LD  3,-2(1) 	Load variable i
 75:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
 76:    LDA  1,-4(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-73(7) 	CALL output
 79:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
 80:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 81:     LD  3,-3(1) 	Load variable j
 82:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
 83:    LDA  1,-4(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-80(7) 	CALL output
 86:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 87:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 88:    LDA  1,-4(1) 	Load address of new frame 
 89:    LDA  3,1(7) 	Return address in ac 
 90:    LDA  7,-54(7) 	CALL outnl
 91:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
 92:    LDC  2,0(6) 	Set return value to 0 
 93:     LD  3,-1(1) 	Load return address 
 94:     LD  1,0(1) 	Adjust fp 
 95:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,95(7) 	Jump to init [backpatch] 
* BEGIN Init
 96:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 97:    LDA  1,0(0) 	set first frame at end of globals 
 98:     ST  1,0(1) 	store old fp (point to self) 
 99:    LDA  3,1(7) 	Return address in ac 
100:    LDA  7,-59(7) 	Jump to main 
101:   HALT  0,0,0 	DONE! 
* END Init
