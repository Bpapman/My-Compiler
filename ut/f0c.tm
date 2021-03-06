* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  f0c.tm
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
 43:    LDC  3,99(6) 	Load constant 
 44:     ST  3,-2(1) 	Store variable z
* EXPRESSION STMT
* 			Begin call to  output
 45:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 46:     LD  3,-2(1) 	Load variable z
 47:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 48:    LDA  1,-3(1) 	Load address of new frame 
 49:    LDA  3,1(7) 	Return address in ac 
 50:    LDA  7,-45(7) 	CALL output
 51:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 52:    LDC  2,0(6) 	Set return value to 0 
 53:     LD  3,-1(1) 	Load return address 
 54:     LD  1,0(1) 	Adjust fp 
 55:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 56:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 57:    LDC  3,1001(6) 	Load constant 
 58:     ST  3,-2(1) 	Store variable z
* EXPRESSION STMT
* 			Begin call to  cat
 59:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to cat
 60:    LDA  1,-3(1) 	Load address of new frame 
 61:    LDA  3,1(7) 	Return address in ac 
 62:    LDA  7,-21(7) 	CALL cat
 63:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 64:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 65:     LD  3,-2(1) 	Load variable z
 66:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 67:    LDA  1,-3(1) 	Load address of new frame 
 68:    LDA  3,1(7) 	Return address in ac 
 69:    LDA  7,-64(7) 	CALL output
 70:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 71:    LDC  2,0(6) 	Set return value to 0 
 72:     LD  3,-1(1) 	Load return address 
 73:     LD  1,0(1) 	Adjust fp 
 74:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,74(7) 	Jump to init [backpatch] 
* BEGIN Init
 75:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 76:    LDA  1,0(0) 	set first frame at end of globals 
 77:     ST  1,0(1) 	store old fp (point to self) 
 78:    LDA  3,1(7) 	Return address in ac 
 79:    LDA  7,-24(7) 	Jump to main 
 80:   HALT  0,0,0 	DONE! 
* END Init
