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
 46:     ST  3,-4(1) 	Save left side 
 47:    LDC  3,6(6) 	Load constant 
 48:     LD  4,-4(1) 	Load left into ac1 
 49:    SUB  4,4,3 	Op < 
 50:    LDC  3,1(6) 	True case 
 51:    JLT  4,1(7) 	Jump if true 
 52:    LDC  3,0(6) 	False case 
 53:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
 55:    LDC  3,0(6) 	Load constant 
 56:     ST  3,-3(1) 	Store variable y
* WHILE
 57:     LD  3,-3(1) 	Load variable y
 58:     ST  3,-4(1) 	Save left side 
 59:    LDC  3,6(6) 	Load constant 
 60:     LD  4,-4(1) 	Load left into ac1 
 61:    SUB  4,4,3 	Op < 
 62:    LDC  3,1(6) 	True case 
 63:    JLT  4,1(7) 	Jump if true 
 64:    LDC  3,0(6) 	False case 
 65:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* 			Begin call to  output
 67:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 68:     LD  3,-3(1) 	Load variable y
 69:     ST  3,-6(1) 	Store parameter 
* 			Jump to  output
 70:    LDA  1,-4(1) 	Load address of new frame 
 71:    LDA  3,1(7) 	Return address in ac 
 72:    LDA  7,-67(7) 	Call  output
 73:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* IF
 74:     LD  3,-3(1) 	Load variable y
 75:     ST  3,-4(1) 	Save left side 
 76:    LDC  3,4(6) 	Load constant 
 77:     LD  4,-4(1) 	Load left into ac1 
 78:    SUB  4,4,3 	Op == 
 79:    LDC  3,1(6) 	True case 
 80:    JEQ  4,1(7) 	Jump if true 
 81:    LDC  3,0(6) 	False case 
 82:    JGT  3,1(7) 	Jump to then part 
* THEN
 66:    LDA  7,17(7) 	Jump around the THEN [backpatch] 
* ENDIF
 84:     LD  3,-3(1) 	Load variable y
 85:     ST  3,-4(1) 	Save left side 
 86:    LDC  3,1(6) 	Load constant 
 87:     LD  4,-4(1) 	Load left into ac1 
 88:    ADD  3,4,3 	Op + 
 89:     ST  3,-3(1) 	Store variable y
* END compound statement
 90:    LDA  7,-34(7) 	go to beginning of loop 
 66:    LDA  7,24(7) 	No more loop 
* ENDWHILE
* 			Begin call to  output
 91:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 92:     LD  3,-2(1) 	Load variable x
 93:     ST  3,-6(1) 	Store parameter 
* 			Jump to  output
 94:    LDA  1,-4(1) 	Load address of new frame 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-91(7) 	Call  output
 97:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* IF
 98:     LD  3,-2(1) 	Load variable x
 99:     ST  3,-4(1) 	Save left side 
100:    LDC  3,4(6) 	Load constant 
101:     LD  4,-4(1) 	Load left into ac1 
102:    SUB  4,4,3 	Op == 
103:    LDC  3,1(6) 	True case 
104:    JEQ  4,1(7) 	Jump if true 
105:    LDC  3,0(6) 	False case 
106:    JGT  3,1(7) 	Jump to then part 
* THEN
 54:    LDA  7,53(7) 	Jump around the THEN [backpatch] 
* ENDIF
108:     LD  3,-2(1) 	Load variable x
109:     ST  3,-4(1) 	Save left side 
110:    LDC  3,1(6) 	Load constant 
111:     LD  4,-4(1) 	Load left into ac1 
112:    ADD  3,4,3 	Op + 
113:     ST  3,-2(1) 	Store variable x
* END compound statement
114:    LDA  7,-58(7) 	go to beginning of loop 
 54:    LDA  7,60(7) 	No more loop 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
115:    LDC  2,0(6) 	Set return value to 0 
116:     LD  3,-1(1) 	Load return address 
117:     LD  1,0(1) 	Adjust fp 
118:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,118(7) 	Jump to init [backpatch] 
* BEGIN Init
119:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
120:    LDA  1,0(0) 	set first frame at end of globals 
121:     ST  1,0(1) 	store old fp (point to self) 
122:    LDA  3,0(7) 	return address in ac 
123:    LDA  7,-82(7) 	Jump to main 
124:   HALT  0,0,0 	DONE 
* END init
