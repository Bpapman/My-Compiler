* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  factorial.tm
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
 44:     ST  3,-3(1) 	Store variable i
 45:     ST  3,-4(1) 	Store variable f
* WHILE
 46:     LD  3,-3(1) 	Load variable i
 47:     ST  3,-5(1) 	Save left side 
 48:     LD  3,-2(1) 	Load variable n
 49:     LD  4,-5(1) 	Load left into ac1 
 50:    SUB  4,4,3 	Op <= 
 51:    LDC  3,1(6) 	True case 
 52:    JLE  4,1(7) 	Jump if true 
 53:    LDC  3,0(6) 	False case 
 54:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* 			Begin call to  output
 56:     ST  1,-5(1) 	Store old fp in ghost frame 
* 			Load Param 1
 57:     LD  3,-3(1) 	Load variable i
 58:     ST  3,-7(1) 	Store parameter 
* 			Jump to output
 59:    LDA  1,-5(1) 	Load address of new frame 
 60:    LDA  3,1(7) 	Return address in ac 
 61:    LDA  7,-56(7) 	CALL output
 62:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
 63:     LD  3,-4(1) 	Load variable f
 64:     ST  3,-5(1) 	Save left side 
 65:     LD  3,-3(1) 	Load variable i
 66:     LD  4,-5(1) 	Load left into ac1 
 67:    MUL  3,4,3 	Op * 
 68:     ST  3,-4(1) 	Store variable f
 69:     LD  3,-3(1) 	load lhs variable i
 70:    LDA  3,1(3) 	increment value of i
 71:     ST  3,-3(1) 	Store variable i
* END compound statement
 72:    LDA  7,-27(7) 	go to beginning of loop 
 55:    LDA  7,17(7) 	No more loop [backpatch] 
* ENDWHILE
* RETURN
 73:     LD  3,-4(1) 	Load variable f
 74:    LDA  2,0(3) 	Copy result to rt register 
 75:     LD  3,-1(1) 	Load return address 
 76:     LD  1,0(1) 	Adjust fp 
 77:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 78:    LDC  2,0(6) 	Set return value to 0 
 79:     LD  3,-1(1) 	Load return address 
 80:     LD  1,0(1) 	Adjust fp 
 81:    LDA  7,0(3) 	Return 
* END of function factorial
* BEGIN function main
 82:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  input
 83:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to input
 84:    LDA  1,-3(1) 	Load address of new frame 
 85:    LDA  3,1(7) 	Return address in ac 
 86:    LDA  7,-86(7) 	CALL input
 87:    LDA  3,0(2) 	Save the result in ac 
* 			End call to input
 88:     ST  3,-2(1) 	Store variable n
* 			Begin call to  factorial
 89:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 90:     LD  3,-2(1) 	Load variable n
 91:     ST  3,-5(1) 	Store parameter 
* 			Jump to factorial
 92:    LDA  1,-3(1) 	Load address of new frame 
 93:    LDA  3,1(7) 	Return address in ac 
 94:    LDA  7,-53(7) 	CALL factorial
 95:    LDA  3,0(2) 	Save the result in ac 
* 			End call to factorial
 96:     ST  3,-2(1) 	Store variable n
* 			Begin call to  output
 97:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Load Param 1
 98:     LD  3,-2(1) 	Load variable n
 99:     ST  3,-5(1) 	Store parameter 
* 			Jump to output
100:    LDA  1,-3(1) 	Load address of new frame 
101:    LDA  3,1(7) 	Return address in ac 
102:    LDA  7,-97(7) 	CALL output
103:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
104:     ST  1,-3(1) 	Store old fp in ghost frame 
* 			Jump to outnl
105:    LDA  1,-3(1) 	Load address of new frame 
106:    LDA  3,1(7) 	Return address in ac 
107:    LDA  7,-71(7) 	CALL outnl
108:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* END compound statement
* Add standard closing in case there is no return statement
109:    LDC  2,0(6) 	Set return value to 0 
110:     LD  3,-1(1) 	Load return address 
111:     LD  1,0(1) 	Adjust fp 
112:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,112(7) 	Jump to init [backpatch] 
* BEGIN Init
113:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
114:    LDA  1,0(0) 	set first frame at end of globals 
115:     ST  1,0(1) 	store old fp (point to self) 
116:    LDA  3,1(7) 	Return address in ac 
117:    LDA  7,-36(7) 	Jump to main 
118:   HALT  0,0,0 	DONE! 
* END Init
