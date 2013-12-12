* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  charout.c-
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
 43:    LDC  3,30(6) 	Load constant 
 44:     ST  3,-5(1) 	Store variable max
* EXPRESSION STMT
 45:    LDC  3,1(6) 	Load constant 
 46:     ST  3,-4(1) 	Store variable k
* WHILE
 47:     LD  3,-4(1) 	Load variable k
 48:     ST  3,-6(1) 	Save left side 
 49:     LD  3,-5(1) 	Load variable max
 50:     LD  4,-6(1) 	Load left into ac1 
 51:    SUB  4,4,3 	Op < 
 52:    LDC  3,1(6) 	True case 
 53:    JLT  4,1(7) 	Jump if true 
 54:    LDC  3,0(6) 	False case 
 55:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 57:    LDC  3,0(6) 	Load constant 
 58:     ST  3,-3(1) 	Store variable i
* WHILE
 59:     LD  3,-3(1) 	Load variable i
 60:     ST  3,-6(1) 	Save left side 
 61:     LD  3,-5(1) 	Load variable max
 62:     LD  4,-6(1) 	Load left into ac1 
 63:    SUB  4,4,3 	Op < 
 64:    LDC  3,1(6) 	True case 
 65:    JLT  4,1(7) 	Jump if true 
 66:    LDC  3,0(6) 	False case 
 67:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* IF
 69:     LD  3,-3(1) 	Load variable i
 70:     ST  3,-6(1) 	Save left side 
 71:     LD  3,-4(1) 	Load variable k
 72:     LD  4,-6(1) 	Load left into ac1 
 73:    DIV  5,4,3 	Op % 
 74:    MUL  5,5,3 	 
 75:    SUB  3,4,5 	 
 76:     ST  3,-6(1) 	Save left side 
 77:    LDC  3,0(6) 	Load constant 
 78:     LD  4,-6(1) 	Load left into ac1 
 79:    SUB  4,4,3 	Op == 
 80:    LDC  3,1(6) 	True case 
 81:    JEQ  4,1(7) 	Jump if true 
 82:    LDC  3,0(6) 	False case 
 83:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
*                       Begin call to  outputc
 85:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 86:    LDC  3,88(6) 	Load constant 
 87:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputc
 88:    LDA  1,-6(1) 	Load address of new frame 
 89:    LDA  3,1(7) 	Return address in ac 
 90:    LDA  7,-61(7) 	CALL outputc
 91:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* ELSE
 84:    LDA  7,8(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
*                       Begin call to  outputc
 93:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
 94:    LDC  3,32(6) 	Load constant 
 95:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputc
 96:    LDA  1,-6(1) 	Load address of new frame 
 97:    LDA  3,1(7) 	Return address in ac 
 98:    LDA  7,-69(7) 	CALL outputc
 99:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
 92:    LDA  7,7(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* EXPRESSION STMT
100:     LD  3,-3(1) 	load lhs variable i
101:    LDA  3,1(3) 	increment value of i
102:     ST  3,-3(1) 	Store variable i
* END compound statement
103:    LDA  7,-45(7) 	go to beginning of loop 
 68:    LDA  7,35(7) 	No more loop [backpatch] 
* ENDWHILE
* EXPRESSION STMT
*                       Begin call to  outputc
104:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
105:    LDC  3,10(6) 	Load constant 
106:     ST  3,-8(1) 	Store parameter 
*                       Jump to outputc
107:    LDA  1,-6(1) 	Load address of new frame 
108:    LDA  3,1(7) 	Return address in ac 
109:    LDA  7,-80(7) 	CALL outputc
110:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outputc
* EXPRESSION STMT
111:     LD  3,-4(1) 	load lhs variable k
112:    LDA  3,1(3) 	increment value of k
113:     ST  3,-4(1) 	Store variable k
* END compound statement
114:    LDA  7,-68(7) 	go to beginning of loop 
 56:    LDA  7,58(7) 	No more loop [backpatch] 
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
122:    LDA  3,1(7) 	Return address in ac 
123:    LDA  7,-82(7) 	Jump to main 
124:   HALT  0,0,0 	DONE! 
* END Init
