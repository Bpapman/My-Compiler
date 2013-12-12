* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  break2.c-
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
 44:     ST  3,-2(1) 	Store variable i
* WHILE
 45:     LD  3,-2(1) 	Load variable i
 46:     ST  3,-4(1) 	Save left side 
 47:    LDC  3,10(6) 	Load constant 
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
 56:     ST  3,-3(1) 	Store variable j
* WHILE
 57:     LD  3,-3(1) 	Load variable j
 58:     ST  3,-4(1) 	Save left side 
 59:    LDC  3,5(6) 	Load constant 
 60:     LD  4,-4(1) 	Load left into ac1 
 61:    SUB  4,4,3 	Op <= 
 62:    LDC  3,1(6) 	True case 
 63:    JLE  4,1(7) 	Jump if true 
 64:    LDC  3,0(6) 	False case 
 65:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  output
 67:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 68:     LD  3,-2(1) 	Load variable i
 69:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
 70:    LDA  1,-4(1) 	Load address of new frame 
 71:    LDA  3,1(7) 	Return address in ac 
 72:    LDA  7,-67(7) 	CALL output
 73:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  output
 74:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 75:     LD  3,-3(1) 	Load variable j
 76:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
 77:    LDA  1,-4(1) 	Load address of new frame 
 78:    LDA  3,1(7) 	Return address in ac 
 79:    LDA  7,-74(7) 	CALL output
 80:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* EXPRESSION STMT
*                       Begin call to  outnl
 81:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to outnl
 82:    LDA  1,-4(1) 	Load address of new frame 
 83:    LDA  3,1(7) 	Return address in ac 
 84:    LDA  7,-48(7) 	CALL outnl
 85:    LDA  3,0(2) 	Save the result in ac 
*                       End call to outnl
* IF
 86:     LD  3,-2(1) 	Load variable i
 87:     ST  3,-4(1) 	Save left side 
 88:    LDC  3,4(6) 	Load constant 
 89:     LD  4,-4(1) 	Load left into ac1 
 90:    SUB  4,4,3 	Op > 
 91:    LDC  3,1(6) 	True case 
 92:    JGT  4,1(7) 	Jump if true 
 93:    LDC  3,0(6) 	False case 
 94:    JGT  3,1(7) 	Jump to then part 
* THEN
* BREAK
 96:    LDA  7,-31(7) 	break 
 95:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 97:     LD  3,-3(1) 	load lhs variable j
 98:    LDA  3,1(3) 	increment value of j
 99:     ST  3,-3(1) 	Store variable j
* END compound statement
100:    LDA  7,-44(7) 	go to beginning of loop 
 66:    LDA  7,34(7) 	No more loop [backpatch] 
* ENDWHILE
* IF
101:     LD  3,-3(1) 	Load variable j
102:     ST  3,-4(1) 	Save left side 
103:    LDC  3,3(6) 	Load constant 
104:     LD  4,-4(1) 	Load left into ac1 
105:    SUB  4,4,3 	Op > 
106:    LDC  3,1(6) 	True case 
107:    JGT  4,1(7) 	Jump if true 
108:    LDC  3,0(6) 	False case 
109:    JGT  3,1(7) 	Jump to then part 
* THEN
* BREAK
111:    LDA  7,-58(7) 	break 
110:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
112:     LD  3,-2(1) 	load lhs variable i
113:    LDA  3,1(3) 	increment value of i
114:     ST  3,-2(1) 	Store variable i
* END compound statement
115:    LDA  7,-71(7) 	go to beginning of loop 
 54:    LDA  7,61(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
116:    LDC  3,0(6) 	Load constant 
117:    LDA  2,0(3) 	Copy result to rt register 
118:     LD  3,-1(1) 	Load return address 
119:     LD  1,0(1) 	Adjust fp 
120:    LDA  7,0(3) 	Return 
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
* END init of globals
126:    LDA  1,0(0) 	set first frame at end of globals 
127:     ST  1,0(1) 	store old fp (point to self) 
128:    LDA  3,1(7) 	Return address in ac 
129:    LDA  7,-88(7) 	Jump to main 
130:   HALT  0,0,0 	DONE! 
* END Init
