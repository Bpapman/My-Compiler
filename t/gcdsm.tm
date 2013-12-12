* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  gcdsm.c-
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
* BEGIN function gcd
 42:     ST  3,-1(1) 	Store return address. 
* IF
 43:     LD  3,-3(1) 	Load variable v
 44:     ST  3,-4(1) 	Save left side 
 45:    LDC  3,0(6) 	Load constant 
 46:     LD  4,-4(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op == 
 48:    LDC  3,1(6) 	True case 
 49:    JEQ  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* RETURN
 53:     LD  3,-2(1) 	Load variable u
 54:    LDA  2,0(3) 	Copy result to rt register 
 55:     LD  3,-1(1) 	Load return address 
 56:     LD  1,0(1) 	Adjust fp 
 57:    LDA  7,0(3) 	Return 
* ELSE
 52:    LDA  7,6(7) 	Jump around the THEN [backpatch] 
* RETURN
*                       Begin call to  gcd
 59:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
 60:     LD  3,-3(1) 	Load variable v
 61:     ST  3,-6(1) 	Store parameter 
*                       Load param 2
 62:     LD  3,-2(1) 	Load variable u
 63:     ST  3,-7(1) 	Save left side 
 64:     LD  3,-2(1) 	Load variable u
 65:     ST  3,-8(1) 	Save left side 
 66:     LD  3,-3(1) 	Load variable v
 67:     LD  4,-8(1) 	Load left into ac1 
 68:    DIV  3,4,3 	Op / 
 69:     ST  3,-8(1) 	Save left side 
 70:     LD  3,-3(1) 	Load variable v
 71:     LD  4,-8(1) 	Load left into ac1 
 72:    MUL  3,4,3 	Op * 
 73:     LD  4,-7(1) 	Load left into ac1 
 74:    SUB  3,4,3 	Op - 
 75:     ST  3,-7(1) 	Store parameter 
*                       Jump to gcd
 76:    LDA  1,-4(1) 	Load address of new frame 
 77:    LDA  3,1(7) 	Return address in ac 
 78:    LDA  7,-37(7) 	CALL gcd
 79:    LDA  3,0(2) 	Save the result in ac 
*                       End call to gcd
 80:    LDA  2,0(3) 	Copy result to rt register 
 81:     LD  3,-1(1) 	Load return address 
 82:     LD  1,0(1) 	Adjust fp 
 83:    LDA  7,0(3) 	Return 
 58:    LDA  7,25(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* Add standard closing in case there is no return statement
 84:    LDC  2,0(6) 	Set return value to 0 
 85:     LD  3,-1(1) 	Load return address 
 86:     LD  1,0(1) 	Adjust fp 
 87:    LDA  7,0(3) 	Return 
* END of function gcd
* BEGIN function main
 88:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
*                       Begin call to  input
 89:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to input
 90:    LDA  1,-4(1) 	Load address of new frame 
 91:    LDA  3,1(7) 	Return address in ac 
 92:    LDA  7,-92(7) 	CALL input
 93:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
 94:     ST  3,-2(1) 	Store variable x
* EXPRESSION STMT
*                       Begin call to  input
 95:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Jump to input
 96:    LDA  1,-4(1) 	Load address of new frame 
 97:    LDA  3,1(7) 	Return address in ac 
 98:    LDA  7,-98(7) 	CALL input
 99:    LDA  3,0(2) 	Save the result in ac 
*                       End call to input
100:     ST  3,-3(1) 	Store variable y
* EXPRESSION STMT
*                       Begin call to  output
101:     ST  1,-4(1) 	Store old fp in ghost frame 
*                       Load param 1
*                       Begin call to  gcd
102:     ST  1,-6(1) 	Store old fp in ghost frame 
*                       Load param 1
103:     LD  3,-2(1) 	Load variable x
104:     ST  3,-8(1) 	Store parameter 
*                       Load param 2
105:     LD  3,-3(1) 	Load variable y
106:     ST  3,-9(1) 	Store parameter 
*                       Jump to gcd
107:    LDA  1,-6(1) 	Load address of new frame 
108:    LDA  3,1(7) 	Return address in ac 
109:    LDA  7,-68(7) 	CALL gcd
110:    LDA  3,0(2) 	Save the result in ac 
*                       End call to gcd
111:     ST  3,-6(1) 	Store parameter 
*                       Jump to output
112:    LDA  1,-4(1) 	Load address of new frame 
113:    LDA  3,1(7) 	Return address in ac 
114:    LDA  7,-109(7) 	CALL output
115:    LDA  3,0(2) 	Save the result in ac 
*                       End call to output
* END compound statement
* Add standard closing in case there is no return statement
116:    LDC  2,0(6) 	Set return value to 0 
117:     LD  3,-1(1) 	Load return address 
118:     LD  1,0(1) 	Adjust fp 
119:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,119(7) 	Jump to init [backpatch] 
* BEGIN Init
120:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
121:    LDA  1,0(0) 	set first frame at end of globals 
122:     ST  1,0(1) 	store old fp (point to self) 
123:    LDA  3,1(7) 	Return address in ac 
124:    LDA  7,-37(7) 	Jump to main 
125:   HALT  0,0,0 	DONE! 
* END Init
