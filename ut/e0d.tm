* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  e0d.tm
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
* IF
* EXPRESSION STMT
 74:     LD  3,-3(1) 	Load variable y
 75:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 76:    LDC  3,4(6) 	Load constant 
 77:     LD  4,-4(1) 	Load left into ac1 
 78:    SUB  4,4,3 	Op == 
 79:    LDC  3,1(6) 	True case 
 80:    JEQ  4,1(7) 	Jump if true 
 81:    LDC  3,0(6) 	False case 
 82:    JGT  3,1(7) 	Jump to then part 
* THEN
* BREAK
 84:    LDA  7,-19(7) 	break 
 66:    LDA  7,18(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 85:     LD  3,-3(1) 	Load variable y
 86:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 87:    LDC  3,1(6) 	Load constant 
 88:     LD  4,-4(1) 	Load left into ac1 
 89:    ADD  3,4,3 	Op + 
 90:     ST  3,-3(1) 	Store variable y
* END compound statement
 91:    LDA  7,-35(7) 	go to beginning of loop 
 66:    LDA  7,25(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
* 			Begin call to  output
 92:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
 93:     LD  3,-2(1) 	Load variable x
 94:     ST  3,-6(1) 	Store parameter 
* 			Jump to output
 95:    LDA  1,-4(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-92(7) 	CALL output
 98:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* IF
* EXPRESSION STMT
 99:     LD  3,-2(1) 	Load variable x
100:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
101:    LDC  3,4(6) 	Load constant 
102:     LD  4,-4(1) 	Load left into ac1 
103:    SUB  4,4,3 	Op == 
104:    LDC  3,1(6) 	True case 
105:    JEQ  4,1(7) 	Jump if true 
106:    LDC  3,0(6) 	False case 
107:    JGT  3,1(7) 	Jump to then part 
* THEN
* BREAK
109:    LDA  7,-56(7) 	break 
 54:    LDA  7,55(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
110:     LD  3,-2(1) 	Load variable x
111:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
112:    LDC  3,1(6) 	Load constant 
113:     LD  4,-4(1) 	Load left into ac1 
114:    ADD  3,4,3 	Op + 
115:     ST  3,-2(1) 	Store variable x
* END compound statement
116:    LDA  7,-60(7) 	go to beginning of loop 
 54:    LDA  7,62(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
117:    LDC  2,0(6) 	Set return value to 0 
118:     LD  3,-1(1) 	Load return address 
119:     LD  1,0(1) 	Adjust fp 
120:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,120(7) 	Jump to init [backpatch] 
* BEGIN Init
121:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
122:    LDA  1,0(0) 	set first frame at end of globals 
123:     ST  1,0(1) 	store old fp (point to self) 
124:    LDA  3,1(7) 	Return address in ac 
125:    LDA  7,-84(7) 	Jump to main 
126:   HALT  0,0,0 	DONE! 
* END Init
