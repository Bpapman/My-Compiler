* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  g0f.tm
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
* EXPRESSION STMT
 45:    LDC  3,0(6) 	Load constant 
 46:     LD  4,-3(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op < 
 48:    LDC  3,1(6) 	True case 
 49:    JGT  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
* EXPRESSION STMT
 53:     LD  3,-2(1) 	Load variable x
 54:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
 55:     LD  3,-2(1) 	Load variable x
 56:     LD  4,-3(1) 	Load left into ac1 
 57:    ADD  3,4,3 	Op + 
 58:    LDA  2,0(3) 	Copy result to rt register 
 59:     LD  3,-1(1) 	Load return address 
 60:     LD  1,0(1) 	Adjust fp 
 61:    LDA  7,0(3) 	Return 
* ELSE
  1:    LDA  7,61(7) 	Jump around the THEN [backpatch] 
* ENDIF
* Add standard closing in case there is no return statement
 63:    LDC  2,0(6) 	Set return value to 0 
 64:     LD  3,-1(1) 	Load return address 
 65:     LD  1,0(1) 	Adjust fp 
 66:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 67:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 68:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
* 			Begin call to  cat
 69:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
 70:    LDC  3,88(6) 	Load constant 
 71:     ST  3,-6(1) 	Store parameter 
* 			Jump to cat
 72:    LDA  1,-4(1) 	Load address of new frame 
 73:    LDA  3,1(7) 	Return address in ac 
 74:    LDA  7,-33(7) 	CALL cat
 75:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
 76:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
* 			Begin call to  cat
 77:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load param 1
 78:    LDC  3,17(6) 	Load constant 
 79:    LDC  4,0(6) 	Load 0 
 80:    SUB  3,4,3 	Op unary - 
 81:     ST  3,-7(1) 	Store parameter 
* 			Jump to cat
 82:    LDA  1,-5(1) 	Load address of new frame 
 83:    LDA  3,1(7) 	Return address in ac 
 84:    LDA  7,-43(7) 	CALL cat
 85:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
 86:     LD  4,-4(1) 	Load left into ac1 
 87:    ADD  3,4,3 	Op + 
 88:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 89:    LDA  1,-2(1) 	Load address of new frame 
 90:    LDA  3,1(7) 	Return address in ac 
 91:    LDA  7,-86(7) 	CALL output
 92:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
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
100:    LDA  3,1(7) 	Return address in ac 
101:    LDA  7,-35(7) 	Jump to main 
102:   HALT  0,0,0 	DONE! 
* END Init
