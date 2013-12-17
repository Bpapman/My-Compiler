* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  h07.tm
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
* BEGIN function fib
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 44:     LD  3,-2(1) 	Load variable x
 45:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
 46:    LDA  1,-3(1) 	Load address of new frame 
 47:    LDA  3,1(7) 	Return address in ac 
 48:    LDA  7,-43(7) 	CALL output
 49:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
 50:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
 51:    LDA  1,-3(1) 	Load address of new frame 
 52:    LDA  3,1(7) 	Return address in ac 
 53:    LDA  7,-17(7) 	CALL outnl
 54:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* IF
* EXPRESSION STMT
 55:     LD  3,-2(1) 	Load variable x
 56:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
 57:    LDC  3,2(6) 	Load constant 
 58:     LD  4,-3(1) 	Load left into ac1 
 59:    SUB  4,4,3 	Op < 
 60:    LDC  3,1(6) 	True case 
 61:    JLT  4,1(7) 	Jump if true 
 62:    LDC  3,0(6) 	False case 
 63:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
* EXPRESSION STMT
 65:    LDC  3,1(6) 	Load constant 
 66:    LDA  2,0(3) 	Copy result to rt register 
 67:     LD  3,-1(1) 	Load return address 
 68:     LD  1,0(1) 	Adjust fp 
 69:    LDA  7,0(3) 	Return 
  0:    LDA  7,69(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
* EXPRESSION STMT
* 			Begin call to  fib
 70:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load param 1
 71:     LD  3,-2(1) 	Load variable x
 72:     ST  3,-5(1) 	Save left side 
* EXPRESSION STMT
 73:    LDC  3,1(6) 	Load constant 
 74:     LD  4,-5(1) 	Load left into ac1 
 75:    SUB  3,4,3 	Op - 
 76:     ST  3,-5(1) 	Store parameter 
* 			Jump to fib
 77:    LDA  1,-3(1) 	Load address of new frame 
 78:    LDA  3,1(7) 	Return address in ac 
 79:    LDA  7,-38(7) 	CALL fib
 80:    LDA  3,0(2) 	Save the result in ac 
* 			End call to fib
* EXPRESSION STMT
 81:     ST  3,-3(1) 	Save left side 
* EXPRESSION STMT
* 			Begin call to  fib
 82:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
 83:     LD  3,-2(1) 	Load variable x
 84:     ST  3,-6(1) 	Save left side 
* EXPRESSION STMT
 85:    LDC  3,2(6) 	Load constant 
 86:     LD  4,-6(1) 	Load left into ac1 
 87:    SUB  3,4,3 	Op - 
 88:     ST  3,-6(1) 	Store parameter 
* 			Jump to fib
 89:    LDA  1,-4(1) 	Load address of new frame 
 90:    LDA  3,1(7) 	Return address in ac 
 91:    LDA  7,-50(7) 	CALL fib
 92:    LDA  3,0(2) 	Save the result in ac 
* 			End call to fib
* EXPRESSION STMT
 93:     LD  4,-3(1) 	Load left into ac1 
 94:    ADD  3,4,3 	Op + 
 95:    LDA  2,0(3) 	Copy result to rt register 
 96:     LD  3,-1(1) 	Load return address 
 97:     LD  1,0(1) 	Adjust fp 
 98:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 99:    LDC  2,0(6) 	Set return value to 0 
100:     LD  3,-1(1) 	Load return address 
101:     LD  1,0(1) 	Adjust fp 
102:    LDA  7,0(3) 	Return 
* END of function fib
* BEGIN function main
103:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
104:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
* 			Begin call to  fib
105:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
106:    LDC  3,6(6) 	Load constant 
107:     ST  3,-6(1) 	Store parameter 
* 			Jump to fib
108:    LDA  1,-4(1) 	Load address of new frame 
109:    LDA  3,1(7) 	Return address in ac 
110:    LDA  7,-69(7) 	CALL fib
111:    LDA  3,0(2) 	Save the result in ac 
* 			End call to fib
* EXPRESSION STMT
112:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
113:    LDA  1,-2(1) 	Load address of new frame 
114:    LDA  3,1(7) 	Return address in ac 
115:    LDA  7,-110(7) 	CALL output
116:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
117:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to outnl
118:    LDA  1,-2(1) 	Load address of new frame 
119:    LDA  3,1(7) 	Return address in ac 
120:    LDA  7,-84(7) 	CALL outnl
121:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
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
129:    LDA  3,1(7) 	Return address in ac 
130:    LDA  7,-28(7) 	Jump to main 
131:   HALT  0,0,0 	DONE! 
* END Init
