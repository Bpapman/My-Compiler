* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  s02.tm
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
* BEGIN function toad
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* END compound statement
* Add standard closing in case there is no return statement
 43:    LDC  2,0(6) 	Set return value to 0 
 44:     LD  3,-1(1) 	Load return address 
 45:     LD  1,0(1) 	Adjust fp 
 46:    LDA  7,0(3) 	Return 
* END of function toad
* BEGIN function load
 47:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* END compound statement
* Add standard closing in case there is no return statement
 48:    LDC  2,0(6) 	Set return value to 0 
 49:     LD  3,-1(1) 	Load return address 
 50:     LD  1,0(1) 	Adjust fp 
 51:    LDA  7,0(3) 	Return 
* END of function load
* BEGIN function sum
 52:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
* EXPRESSION STMT
 53:     LD  3,-2(1) 	Load variable init
 54:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 56:    LDC  3,0(6) 	Load constant 
 57:     ST  3,0(0) 	Store variable runningSum
  0:    LDA  7,57(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 58:     LD  3,-3(0) 	Load variable x
 59:     LD  4,0(0) 	load lhs variable runningSum
 60:    ADD  3,4,3 	op += 
 61:     ST  3,0(0) 	Store variable runningSum
* RETURN
* EXPRESSION STMT
 62:     LD  3,0(0) 	Load variable runningSum
 63:    LDA  2,0(3) 	Copy result to rt register 
 64:     LD  3,-1(1) 	Load return address 
 65:     LD  1,0(1) 	Adjust fp 
 66:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 67:    LDC  2,0(6) 	Set return value to 0 
 68:     LD  3,-1(1) 	Load return address 
 69:     LD  1,0(1) 	Adjust fp 
 70:    LDA  7,0(3) 	Return 
* END of function sum
* BEGIN function main
 71:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 72:    LDC  3,7000(6) 	Load constant 
 73:     ST  3,-1(0) 	Store variable runningSum
* EXPRESSION STMT
* 			Begin call to  output
 74:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 75:     LD  3,-1(0) 	Load variable runningSum
 76:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
 77:    LDA  1,-2(1) 	Load address of new frame 
 78:    LDA  3,1(7) 	Return address in ac 
 79:    LDA  7,-74(7) 	CALL output
 80:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  sum
 81:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 82:    LDC  3,1(6) 	Load constant 
 83:     ST  3,-4(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 84:    LDC  3,666(6) 	Load constant 
 85:     ST  3,-5(1) 	Store parameter 
* 			Jump to sum
 86:    LDA  1,-2(1) 	Load address of new frame 
 87:    LDA  3,1(7) 	Return address in ac 
 88:    LDA  7,-37(7) 	CALL sum
 89:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  sum
 90:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
 91:    LDC  3,0(6) 	Load constant 
 92:     ST  3,-4(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 93:    LDC  3,3(6) 	Load constant 
 94:     ST  3,-5(1) 	Store parameter 
* 			Jump to sum
 95:    LDA  1,-2(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-46(7) 	CALL sum
 98:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
 99:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
* 			Begin call to  sum
100:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
101:    LDC  3,0(6) 	Load constant 
102:     ST  3,-6(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
103:    LDC  3,0(6) 	Load constant 
104:     ST  3,-7(1) 	Store parameter 
* 			Jump to sum
105:    LDA  1,-4(1) 	Load address of new frame 
106:    LDA  3,1(7) 	Return address in ac 
107:    LDA  7,-56(7) 	CALL sum
108:    LDA  3,0(2) 	Save the result in ac 
* 			End call to sum
* EXPRESSION STMT
109:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
110:    LDA  1,-2(1) 	Load address of new frame 
111:    LDA  3,1(7) 	Return address in ac 
112:    LDA  7,-107(7) 	CALL output
113:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  output
114:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load param 1
115:     LD  3,-1(0) 	Load variable runningSum
116:     ST  3,-4(1) 	Store parameter 
* 			Jump to output
117:    LDA  1,-2(1) 	Load address of new frame 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-114(7) 	CALL output
120:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* END compound statement
* Add standard closing in case there is no return statement
121:    LDC  2,0(6) 	Set return value to 0 
122:     LD  3,-1(1) 	Load return address 
123:     LD  1,0(1) 	Adjust fp 
124:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,124(7) 	Jump to init [backpatch] 
* BEGIN Init
125:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
126:    LDC  3,100(6) 	load size of array x
127:     ST  3,-2(0) 	saves size of array x
* END init of globals
128:    LDA  1,-103(0) 	set first frame at end of globals 
129:     ST  1,0(1) 	store old fp (point to self) 
130:    LDA  3,1(7) 	Return address in ac 
131:    LDA  7,-61(7) 	Jump to main 
132:   HALT  0,0,0 	DONE! 
* END Init
