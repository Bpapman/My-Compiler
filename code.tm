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
* BEGIN function factorial
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:    LDC  3,1(6) 	Load constant 
 44:     ST  3,0(1) 	Store variable i
 45:     ST  3,0(1) 	Store variable f
* WHILE
 46:     LD  3,0(1) 	load variable i
 47:     ST  3,0(1) 	Save left side 
 48:     LD  3,0(1) 	load variable n
 49:     LD  4,0(1) 	Load left into ac1 
 50:    SUB  4,4,3 	Op <= 
 51:    LDC  3,1(6) 	True case 
 52:    JLE  4,1(7) 	Jump if true 
 53:    LDC  3,0(6) 	False case 
 54:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* 			Begin call to  output
 56:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
 57:     LD  3,0(1) 	load variable i
 58:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
 59:    LDA  1,0(1) 	Load address of new frame 
 60:    LDA  3,1(7) 	Return address in ac 
 61:    LDA  7,-55(7) 	Call  output
 62:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
 63:     ST  3,1(1) 	Store parameter 
 64:     LD  3,0(1) 	load variable f
 65:     ST  3,1(1) 	Store parameter 
 66:     ST  3,0(1) 	Save left side 
 67:     LD  3,0(1) 	load variable i
 68:     ST  3,0(1) 	Store parameter 
 69:     LD  4,0(1) 	Load left into ac1 
 70:    MUL  3,4,3 	Op * 
 71:     ST  3,1(1) 	Store parameter 
 72:     ST  3,0(1) 	Store variable f
 73:     ST  3,1(1) 	Store parameter 
 74:     LD  3,0(1) 	load lhs variable (null)
 75:    LDA  3,1(3) 	increment value of (null)
 76:     ST  3,0(1) 	Store variable (null)
 77:     ST  3,1(1) 	Store parameter 
* END compound statement
 78:    LDA  7,-33(7) 	go to beginning of loop 
 55:    LDA  7,23(7) 	No more loop 
* ENDWHILE
* RETURN
 79:     LD  3,0(1) 	load variable f
 80:     ST  3,1(1) 	Store parameter 
 81:    LDA  2,0(3) 	Copy result to rt register 
 82:     LD  3,-1(1) 	Load return address 
 83:     LD  1,0(1) 	Adjust fp 
 84:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 85:    LDC  2,0(6) 	Set return value to 0 
 86:     LD  3,-1(1) 	Load return address 
 87:     LD  1,0(1) 	Adjust fp 
 88:    LDA  7,0(3) 	Return 
* END of function factorial
* BEGIN function main
 89:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  input
 90:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Jump to  input
 91:    LDA  1,0(1) 	Load address of new frame 
 92:    LDA  3,1(7) 	Return address in ac 
 93:    LDA  7,-92(7) 	Call  input
 94:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to input
 95:     ST  3,1(1) 	Store parameter 
 96:     ST  3,0(1) 	Store variable n
 97:     ST  3,1(1) 	Store parameter 
* 			Begin call to  factorial
 98:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
 99:     LD  3,0(1) 	load variable n
100:     ST  3,1(1) 	Store parameter 
* 			Jump to  factorial
101:    LDA  1,0(1) 	Load address of new frame 
102:    LDA  3,1(7) 	Return address in ac 
103:    LDA  7,-61(7) 	Call  factorial
104:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to factorial
105:     ST  3,1(1) 	Store parameter 
106:     ST  3,0(1) 	Store variable n
107:     ST  3,1(1) 	Store parameter 
* 			Begin call to  output
108:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Load Param 1
109:     LD  3,0(1) 	load variable n
110:     ST  3,1(1) 	Store parameter 
* 			Jump to  output
111:    LDA  1,0(1) 	Load address of new frame 
112:    LDA  3,1(7) 	Return address in ac 
113:    LDA  7,-107(7) 	Call  output
114:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to output
115:     ST  3,1(1) 	Store parameter 
* 			Begin call to  outnl
116:     ST  1,0(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
117:    LDA  1,0(1) 	Load address of new frame 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-82(7) 	Call  outnl
120:    LDA  3,-1(2) 	Save the result in ac 
* 			End call to outnl
121:     ST  3,1(1) 	Store parameter 
* END compound statement
* Add standard closing in case there is no return statement
122:    LDC  2,0(6) 	Set return value to 0 
123:     LD  3,-1(1) 	Load return address 
124:     LD  1,0(1) 	Adjust fp 
125:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,125(7) 	Jump to init [backpatch] 
* BEGIN Init
126:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
127:    LDA  1,0(0) 	set first frame at end of globals 
128:     ST  1,0(1) 	store old fp (point to self) 
129:    LDA  3,0(7) 	return address in ac 
130:    LDA  7,-42(7) 	Jump to main 
131:   HALT  0,0,0 	DONE 
* END init
