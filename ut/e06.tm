* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  e06.tm
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
* EXPRESSION STMT
 45:     LD  3,-2(1) 	Load variable x
 46:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
 47:    LDC  3,10(6) 	Load constant 
 48:     LD  4,-3(1) 	Load left into ac1 
 49:    SUB  4,4,3 	Op < 
 50:    LDC  3,1(6) 	True case 
 51:    JLT  4,1(7) 	Jump if true 
 52:    LDC  3,0(6) 	False case 
 53:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 55:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 56:     LD  3,-2(1) 	Load variable x
 57:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 58:    LDA  1,-3(1) 	Load address of new frame 
 59:    LDA  3,1(7) 	Return address in ac 
 60:    LDA  7,-55(7) 	CALL output
 61:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* IF
* EXPRESSION STMT
 62:     LD  3,-2(1) 	Load variable x
 63:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
 64:    LDC  3,5(6) 	Load constant 
 65:     LD  4,-3(1) 	Load left into ac1 
 66:    SUB  4,4,3 	Op == 
 67:    LDC  3,1(6) 	True case 
 68:    JEQ  4,1(7) 	Jump if true 
 69:    LDC  3,0(6) 	False case 
 70:    JGT  3,1(7) 	Jump to then part 
* THEN
* BREAK
 72:    LDA  7,-19(7) 	break 
 54:    LDA  7,18(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 73:     LD  3,-2(1) 	Load variable x
 74:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
 75:    LDC  3,1(6) 	Load constant 
 76:     LD  4,-3(1) 	Load left into ac1 
 77:    ADD  3,4,3 	Op + 
 78:     ST  3,-2(1) 	Store variable x
* END compound statement
 79:    LDA  7,-35(7) 	go to beginning of loop 
 54:    LDA  7,25(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  output
 80:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 81:    LDC  3,666(6) 	Load constant 
 82:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 83:    LDA  1,-3(1) 	Load address of new frame 
 84:    LDA  3,1(7) 	Return address in ac 
 85:    LDA  7,-80(7) 	CALL output
 86:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
 87:    LDC  2,0(6) 	Set return value to 0 
 88:     LD  3,-1(1) 	Load return address 
 89:     LD  1,0(1) 	Adjust fp 
 90:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,90(7) 	Jump to init [backpatch] 
* BEGIN Init
 91:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 92:    LDA  1,0(0) 	set first frame at end of globals 
 93:     ST  1,0(1) 	store old fp (point to self) 
 94:    LDA  3,1(7) 	Return address in ac 
 95:    LDA  7,-54(7) 	Jump to main 
 96:   HALT  0,0,0 	DONE! 
* END Init
