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
* BEGIN function fib
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 43:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 44:     LD  3,-2(1) 	Load variable x
 45:     ST  3,-5(1) 	Store parameter 
* 			Jump to  output
 46:    LDA  1,-3(1) 	Load address of new frame 
 47:    LDA  3,1(7) 	Return address in ac 
 48:    LDA  7,-43(7) 	Call  output
 49:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
 50:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
 51:    LDA  1,-3(1) 	Load address of new frame 
 52:    LDA  3,1(7) 	Return address in ac 
 53:    LDA  7,-17(7) 	Call  outnl
 54:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* IF
 55:     LD  3,-2(1) 	Load variable x
 56:     ST  3,-3(1) 	Save left side 
 57:    LDC  3,2(6) 	Load constant 
 58:     LD  4,-3(1) 	Load left into ac1 
 59:    SUB  4,4,3 	Op < 
 60:    LDC  3,1(6) 	True case 
 61:    JLT  4,1(7) 	Jump if true 
 62:    LDC  3,0(6) 	False case 
 63:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 65:    LDC  3,1(6) 	Load constant 
 66:    LDA  2,0(3) 	Copy result to rt register 
 67:     LD  3,-1(1) 	Load return address 
 68:     LD  1,0(1) 	Adjust fp 
 69:    LDA  7,0(3) 	Return 
  0:    LDA  7,69(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
* 			Begin call to  fib
 70:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 71:     LD  3,-2(1) 	Load variable x
 72:     ST  3,-5(1) 	Store parameter 
 73:     ST  3,-3(1) 	Save left side 
 74:    LDC  3,1(6) 	Load constant 
 75:     ST  3,-6(1) 	Store parameter 
 76:     LD  4,-3(1) 	Load left into ac1 
 77:    SUB  3,4,3 	Op - 
 78:     ST  3,-5(1) 	Store parameter 
* 			Jump to  fib
 79:    LDA  1,-3(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-40(7) 	Call  fib
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to fib
 83:     ST  3,-3(1) 	Save left side 
* 			Begin call to  fib
 84:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 85:     LD  3,-2(1) 	Load variable x
 86:     ST  3,-6(1) 	Store parameter 
 87:     ST  3,-4(1) 	Save left side 
 88:    LDC  3,2(6) 	Load constant 
 89:     ST  3,-7(1) 	Store parameter 
 90:     LD  4,-4(1) 	Load left into ac1 
 91:    SUB  3,4,3 	Op - 
 92:     ST  3,-6(1) 	Store parameter 
* 			Jump to  fib
 93:    LDA  1,-4(1) 	Load address of new frame 
 94:    LDA  3,1(7) 	Return address in ac 
 95:    LDA  7,-54(7) 	Call  fib
 96:    LDA  3,0(2) 	Save the result in ac 
* 			End call to fib
 97:     LD  4,-3(1) 	Load left into ac1 
 98:    ADD  3,4,3 	Op + 
 99:    LDA  2,0(3) 	Copy result to rt register 
100:     LD  3,-1(1) 	Load return address 
101:     LD  1,0(1) 	Adjust fp 
102:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
103:    LDC  2,0(6) 	Set return value to 0 
104:     LD  3,-1(1) 	Load return address 
105:     LD  1,0(1) 	Adjust fp 
106:    LDA  7,0(3) 	Return 
* END of function fib
* BEGIN function main
107:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
108:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  fib
109:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
110:    LDC  3,6(6) 	Load constant 
111:     ST  3,-6(1) 	Store parameter 
* 			Jump to  fib
112:    LDA  1,-4(1) 	Load address of new frame 
113:    LDA  3,1(7) 	Return address in ac 
114:    LDA  7,-73(7) 	Call  fib
115:    LDA  3,0(2) 	Save the result in ac 
* 			End call to fib
116:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
117:    LDA  1,-2(1) 	Load address of new frame 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-114(7) 	Call  output
120:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
121:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
122:    LDA  1,-2(1) 	Load address of new frame 
123:    LDA  3,1(7) 	Return address in ac 
124:    LDA  7,-88(7) 	Call  outnl
125:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
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
131:    LDA  1,0(0) 	set first frame at end of globals 
132:     ST  1,0(1) 	store old fp (point to self) 
133:    LDA  3,0(7) 	return address in ac 
134:    LDA  7,-28(7) 	Jump to main 
135:   HALT  0,0,0 	DONE 
* END init
