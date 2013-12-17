* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  e0c.tm
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
 46:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 47:    LDC  3,6(6) 	Load constant 
 48:     LD  4,-4(1) 	Load left into ac1 
 49:    SUB  4,4,3 	Op < 
 50:    LDC  3,1(6) 	True case 
 51:    JLT  4,1(7) 	Jump if true 
 52:    LDC  3,0(6) 	False case 
 53:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 55:    LDC  3,0(6) 	Load constant 
 56:     ST  3,-3(1) 	Store variable y
* WHILE
* EXPRESSION STMT
 57:     LD  3,-3(1) 	Load variable y
 58:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 59:    LDC  3,6(6) 	Load constant 
 60:     LD  4,-4(1) 	Load left into ac1 
 61:    SUB  4,4,3 	Op < 
 62:    LDC  3,1(6) 	True case 
 63:    JLT  4,1(7) 	Jump if true 
 64:    LDC  3,0(6) 	False case 
 65:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 67:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
 68:     LD  3,-3(1) 	Load variable y
 69:     ST  3,-6(1) 	Store parameter 
* 			Jump to output
 70:    LDA  1,-4(1) 	Load address of new frame 
 71:    LDA  3,1(7) 	Return address in ac 
 72:    LDA  7,-67(7) 	CALL output
 73:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
 74:     LD  3,-3(1) 	Load variable y
 75:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 76:    LDC  3,1(6) 	Load constant 
 77:     LD  4,-4(1) 	Load left into ac1 
 78:    ADD  3,4,3 	Op + 
 79:     ST  3,-3(1) 	Store variable y
* END compound statement
 80:    LDA  7,-24(7) 	go to beginning of loop 
 66:    LDA  7,14(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  output
 81:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
 82:     LD  3,-2(1) 	Load variable x
 83:     ST  3,-6(1) 	Store parameter 
* 			Jump to output
 84:    LDA  1,-4(1) 	Load address of new frame 
 85:    LDA  3,1(7) 	Return address in ac 
 86:    LDA  7,-81(7) 	CALL output
 87:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
 88:     LD  3,-2(1) 	Load variable x
 89:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 90:    LDC  3,1(6) 	Load constant 
 91:     LD  4,-4(1) 	Load left into ac1 
 92:    ADD  3,4,3 	Op + 
 93:     ST  3,-2(1) 	Store variable x
* END compound statement
 94:    LDA  7,-38(7) 	go to beginning of loop 
 54:    LDA  7,40(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
 95:    LDC  2,0(6) 	Set return value to 0 
 96:     LD  3,-1(1) 	Load return address 
 97:     LD  1,0(1) 	Adjust fp 
 98:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,98(7) 	Jump to init [backpatch] 
* BEGIN Init
 99:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
100:    LDA  1,0(0) 	set first frame at end of globals 
101:     ST  1,0(1) 	store old fp (point to self) 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-62(7) 	Jump to main 
104:   HALT  0,0,0 	DONE! 
* END Init
