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
* WHILE
 45:     LD  3,-2(1) 	Load variable x
 46:     ST  3,-3(1) 	Save left side 
 47:    LDC  3,10(6) 	Load constant 
 48:     LD  4,-3(1) 	Load left into ac1 
 49:    SUB  4,4,3 	Op < 
 50:    LDC  3,1(6) 	True case 
 51:    JLT  4,1(7) 	Jump if true 
 52:    LDC  3,0(6) 	False case 
 53:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* 			Begin call to  output
 55:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 56:     LD  3,-2(1) 	Load variable x
 57:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 58:    LDA  1,-3(1) 	Load address of new frame 
 59:    LDA  3,1(7) 	Return address in ac 
 60:    LDA  7,-55(7) 	Call  output
 61:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* IF
 62:     LD  3,-2(1) 	Load variable x
 63:     ST  3,-3(1) 	Save left side 
 64:    LDC  3,5(6) 	Load constant 
 65:     LD  4,-3(1) 	Load left into ac1 
 66:    SUB  4,4,3 	Op == 
 67:    LDC  3,1(6) 	True case 
 68:    JEQ  4,1(7) 	Jump if true 
 69:    LDC  3,0(6) 	False case 
 70:    JGT  3,1(7) 	Jump to then part 
* THEN
 54:    LDA  7,17(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
 72:    LDA  7,-28(7) 	go to beginning of loop 
 54:    LDA  7,18(7) 	No more loop 
* ENDWHILE
* 			Begin call to  output
 73:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 74:    LDC  3,666(6) 	Load constant 
 75:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 76:    LDA  1,-3(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-73(7) 	Call  output
 79:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* END compound statement
* Add standard closing in case there is no return statement
 80:    LDC  2,0(6) 	Set return value to 0 
 81:     LD  3,-1(1) 	Load return address 
 82:     LD  1,0(1) 	Adjust fp 
 83:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,83(7) 	Jump to init [backpatch] 
* BEGIN Init
 84:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 85:    LDA  1,0(0) 	set first frame at end of globals 
 86:     ST  1,0(1) 	store old fp (point to self) 
 87:    LDA  3,0(7) 	return address in ac 
 88:    LDA  7,-47(7) 	Jump to main 
 89:   HALT  0,0,0 	DONE 
* END init
