* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  g07.tm
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
 43:     LD  3,-3(1) 	Load variable x
 44:     LD  3,-3(1) 	Load variable z
 45:    LDA  2,0(3) 	Copy result to rt register 
 46:     LD  3,-1(1) 	Load return address 
 47:     LD  1,0(1) 	Adjust fp 
 48:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 49:    LDC  2,0(6) 	Set return value to 0 
 50:     LD  3,-1(1) 	Load return address 
 51:     LD  1,0(1) 	Adjust fp 
 52:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 53:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 54:    LDC  3,10(6) 	load size of array z
 55:     ST  3,-2(1) 	save size of array z
* EXPRESSION STMT
 56:    LDC  3,3(6) 	Load constant 
 57:     ST  3,-13(1) 	Save index 
* EXPRESSION STMT
 58:    LDC  3,445(6) 	Load constant 
 59:     LD  4,-13(1) 	Restore index 
 60:    LDA  5,-3(1) 	Load address of base of array z
 61:    SUB  5,5,4 	Compute offset of value 
 62:     ST  3,0(5) 	Store variable z
* EXPRESSION STMT
* 			Begin call to  output
 63:     ST  1,-13(1) 	Store old fp in ghost frame 
* 			Load param 1
* 			Begin call to  cat
 64:     ST  1,-15(1) 	Store old fp in ghost frame 
* 			Load param 1
 65:    LDA  3,-3(1) 	Load address of base of array z
 66:     ST  3,-17(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 67:    LDC  3,3(6) 	Load constant 
 68:     ST  3,-18(1) 	Store parameter 
* 			Jump to cat
 69:    LDA  1,-15(1) 	Load address of new frame 
 70:    LDA  3,1(7) 	Return address in ac 
 71:    LDA  7,-30(7) 	CALL cat
 72:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
 73:     ST  3,-15(1) 	Store parameter 
* 			Jump to output
 74:    LDA  1,-13(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-71(7) 	CALL output
 77:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 78:    LDC  2,0(6) 	Set return value to 0 
 79:     LD  3,-1(1) 	Load return address 
 80:     LD  1,0(1) 	Adjust fp 
 81:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,81(7) 	Jump to init [backpatch] 
* BEGIN Init
 82:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 83:    LDA  1,0(0) 	set first frame at end of globals 
 84:     ST  1,0(1) 	store old fp (point to self) 
 85:    LDA  3,1(7) 	Return address in ac 
 86:    LDA  7,-34(7) 	Jump to main 
 87:   HALT  0,0,0 	DONE! 
* END Init
