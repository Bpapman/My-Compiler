* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  g04.tm
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
* RETURN
* EXPRESSION STMT
 43:     LD  3,-2(0) 	Load variable z
 44:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 45:     LD  3,-3(1) 	Load variable x
 46:     LD  4,-4(1) 	Load left into ac1 
 47:    MUL  3,4,3 	Op * 
 48:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 49:     LD  3,-3(1) 	Load variable x
 50:     LD  4,-4(1) 	Load left into ac1 
 51:    SUB  3,4,3 	Op - 
 52:    LDA  2,0(3) 	Copy result to rt register 
 53:     LD  3,-1(1) 	Load return address 
 54:     LD  1,0(1) 	Adjust fp 
 55:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 56:    LDC  2,0(6) 	Set return value to 0 
 57:     LD  3,-1(1) 	Load return address 
 58:     LD  1,0(1) 	Adjust fp 
 59:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 60:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 61:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
* 			Begin call to  cat
 62:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
 63:    LDC  3,33(6) 	Load constant 
 64:     ST  3,-6(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 65:    LDC  3,911(6) 	Load constant 
 66:     ST  3,-7(1) 	Store parameter 
* 			Jump to cat
 67:    LDA  1,-4(1) 	Load address of new frame 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-28(7) 	CALL cat
 70:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
 71:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 72:    LDA  1,-2(1) 	Load address of new frame 
 73:    LDA  3,1(7) 	Return address in ac 
 74:    LDA  7,-69(7) 	CALL output
 75:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 76:    LDC  2,0(6) 	Set return value to 0 
 77:     LD  3,-1(1) 	Load return address 
 78:     LD  1,0(1) 	Adjust fp 
 79:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,79(7) 	Jump to init [backpatch] 
* BEGIN Init
 80:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 81:    LDA  1,-1(0) 	set first frame at end of globals 
 82:     ST  1,0(1) 	store old fp (point to self) 
 83:    LDA  3,1(7) 	Return address in ac 
 84:    LDA  7,-25(7) 	Jump to main 
 85:   HALT  0,0,0 	DONE! 
* END Init
