* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  s04.tm
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
* BEGIN function dog
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
* EXPRESSION STMT
 43:     LD  3,-2(1) 	Load variable d
 44:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
 45:    LDC  3,0(6) 	Load constant 
 46:     LD  4,-3(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op == 
 48:    LDC  3,1(6) 	True case 
 49:    JEQ  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
 53:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 54:     LD  3,0(0) 	Load variable s
 55:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 56:    LDA  1,-3(1) 	Load address of new frame 
 57:    LDA  3,1(7) 	Return address in ac 
 58:    LDA  7,-53(7) 	CALL output
 59:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
* BUG in emitBackup
134544570:    LDA  7,-134544510(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 61:    LDC  2,0(6) 	Set return value to 0 
 62:     LD  3,-1(1) 	Load return address 
 63:     LD  1,0(1) 	Adjust fp 
 64:    LDA  7,0(3) 	Return 
* END of function dog
* BEGIN function cat
 65:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
* EXPRESSION STMT
 66:     LD  3,-2(1) 	Load variable c
 67:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
 68:    LDC  3,0(6) 	Load constant 
 69:     LD  4,-3(1) 	Load left into ac1 
 70:    SUB  4,4,3 	Op == 
 71:    LDC  3,1(6) 	True case 
 72:    JEQ  4,1(7) 	Jump if true 
 73:    LDC  3,0(6) 	False case 
 74:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
* 			Begin call to  output
 76:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 77:     LD  3,0(0) 	Load variable s
 78:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 79:    LDA  1,-3(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-76(7) 	CALL output
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* ELSE
134544570:    LDA  7,-134544487(7) 	Jump around the THEN [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 84:    LDC  2,0(6) 	Set return value to 0 
 85:     LD  3,-1(1) 	Load return address 
 86:     LD  1,0(1) 	Adjust fp 
 87:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 88:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 89:    LDC  3,333(6) 	Load constant 
 90:     ST  3,0(0) 	Store variable s
* EXPRESSION STMT
* 			Begin call to  dog
 91:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 92:    LDC  3,111(6) 	Load constant 
 93:     ST  3,-4(1) 	Store parameter 
* 			Jump to dog
 94:    LDA  1,-2(1) 	Load address of new frame 
 95:    LDA  3,1(7) 	Return address in ac 
 96:    LDA  7,-55(7) 	CALL dog
 97:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  cat
 98:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 99:    LDC  3,222(6) 	Load constant 
100:     ST  3,-4(1) 	Store parameter 
* 			Jump to cat
101:    LDA  1,-2(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-39(7) 	CALL cat
104:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  dog
105:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
106:    LDC  3,0(6) 	Load constant 
107:     ST  3,-4(1) 	Store parameter 
* 			Jump to dog
108:    LDA  1,-2(1) 	Load address of new frame 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-69(7) 	CALL dog
111:    LDA  3,0(2) 	Save the result in ac 
* 			End call to dog
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  cat
112:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
113:    LDC  3,0(6) 	Load constant 
114:     ST  3,-4(1) 	Store parameter 
* 			Jump to cat
115:    LDA  1,-2(1) 	Load address of new frame 
116:    LDA  3,1(7) 	Return address in ac 
117:    LDA  7,-53(7) 	CALL cat
118:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
119:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
120:     LD  3,0(0) 	Load variable s
121:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
122:    LDA  1,-2(1) 	Load address of new frame 
123:    LDA  3,1(7) 	Return address in ac 
124:    LDA  7,-119(7) 	CALL output
125:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
126:    LDC  2,0(6) 	Set return value to 0 
127:     LD  3,-1(1) 	Load return address 
128:     LD  1,0(1) 	Adjust fp 
129:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,129(7) 	Jump to init [backpatch] 
* BEGIN Init
130:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
131:    LDA  1,-1(0) 	set first frame at end of globals 
132:     ST  1,0(1) 	store old fp (point to self) 
133:    LDA  3,1(7) 	Return address in ac 
134:    LDA  7,-47(7) 	Jump to main 
135:   HALT  0,0,0 	DONE! 
* END Init
