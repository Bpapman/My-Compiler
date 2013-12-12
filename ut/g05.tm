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
* RETURN
* EXPRESSION STMT
 43:     LD  3,-2(1) 	Load variable z
 44:     ST  3,-4(1) 	Save left side 
 45:     LD  3,-3(1) 	Load variable x
 46:     LD  4,-4(1) 	Load left into ac1 
 47:    MUL  3,4,3 	Op * 
 48:     ST  3,-4(1) 	Save left side 
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
 61:    LDC  3,445(6) 	Load constant 
 62:     ST  3,-2(1) 	Store variable z
* 			Begin call to  output
 63:     ST  1,-13(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  cat
 64:     ST  1,-15(1) 	Store old fp in ghost frame 
* 			Load Param 1
 65:    LDC  3,3(6) 	Load constant 
 66:     ST  3,-17(1) 	Store parameter 
 67:     LD  3,-2(1) 	Load variable z
 68:     ST  3,-17(1) 	Store parameter 
 69:    LDC  3,911(6) 	Load constant 
 70:     ST  3,-17(1) 	Store parameter 
* 			Load Param 1
 71:    LDC  3,911(6) 	Load constant 
 72:     ST  3,-18(1) 	Store parameter 
* 			Jump to  cat
 73:    LDA  1,-15(1) 	Load address of new frame 
 74:    LDA  3,1(7) 	Return address in ac 
 75:    LDA  7,-34(7) 	Call  cat
 76:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
 77:     ST  3,-15(1) 	Store parameter 
* 			Jump to  output
 78:    LDA  1,-13(1) 	Load address of new frame 
 79:    LDA  3,1(7) 	Return address in ac 
 80:    LDA  7,-75(7) 	Call  output
 81:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
 82:    LDC  2,0(6) 	Set return value to 0 
 83:     LD  3,-1(1) 	Load return address 
 84:     LD  1,0(1) 	Adjust fp 
 85:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,85(7) 	Jump to init [backpatch] 
* BEGIN Init
 86:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 87:    LDA  1,0(0) 	set first frame at end of globals 
 88:     ST  1,0(1) 	store old fp (point to self) 
 89:    LDA  3,0(7) 	return address in ac 
 90:    LDA  7,-31(7) 	Jump to main 
 91:   HALT  0,0,0 	DONE 
* END init
