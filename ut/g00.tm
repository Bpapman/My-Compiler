* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  g00.tm
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
* 			Load param 1
 44:     LD  3,-2(1) 	Load variable z
 45:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 46:    LDA  1,-3(1) 	Load address of new frame 
 47:    LDA  3,1(7) 	Return address in ac 
 48:    LDA  7,-43(7) 	CALL output
 49:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 50:    LDC  2,0(6) 	Set return value to 0 
 51:     LD  3,-1(1) 	Load return address 
 52:     LD  1,0(1) 	Adjust fp 
 53:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 54:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  cat
 55:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 56:    LDC  3,637(6) 	Load constant 
 57:     ST  3,-4(1) 	Store parameter 
* 			Jump to cat
 58:    LDA  1,-2(1) 	Load address of new frame 
 59:    LDA  3,1(7) 	Return address in ac 
 60:    LDA  7,-19(7) 	CALL cat
 61:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 62:    LDC  2,0(6) 	Set return value to 0 
 63:     LD  3,-1(1) 	Load return address 
 64:     LD  1,0(1) 	Adjust fp 
 65:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,65(7) 	Jump to init [backpatch] 
* BEGIN Init
 66:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 67:    LDA  1,0(0) 	set first frame at end of globals 
 68:     ST  1,0(1) 	store old fp (point to self) 
 69:    LDA  3,1(7) 	Return address in ac 
 70:    LDA  7,-17(7) 	Jump to main 
 71:   HALT  0,0,0 	DONE! 
* END Init
