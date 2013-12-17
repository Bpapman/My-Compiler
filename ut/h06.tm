* C- Compiler version C-F13
* Built: Dec 12, 2013
* Author: Brett Papineau
* File compiled:  h06.tm
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
* BEGIN function cat
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
* EXPRESSION STMT
 43:     LD  3,-3(1) 	Load variable y
 44:     ST  3,-4(1) 	Save left side 
* EXPRESSION STMT
 45:    LDC  3,0(6) 	Load constant 
 46:     LD  4,-4(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op >= 
 48:    LDC  3,1(6) 	True case 
 49:    JTE  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
 53:     LD  3,-3(1) 	Load variable y
 54:     ST  3,-3(1) 	Store variable x
* EXPRESSION STMT
* 			Begin call to  cat
 55:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load param 1
 56:    LDA  3,-2(1) 	Load address of base of array x
 57:     ST  3,-6(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 58:     LD  3,-3(1) 	Load variable y
 59:     ST  3,-7(1) 	Save left side 
* EXPRESSION STMT
 60:    LDC  3,1(6) 	Load constant 
 61:     LD  4,-7(1) 	Load left into ac1 
 62:    SUB  3,4,3 	Op - 
 63:     ST  3,-7(1) 	Store parameter 
* 			Jump to cat
 64:    LDA  1,-4(1) 	Load address of new frame 
 65:    LDA  3,1(7) 	Return address in ac 
 66:    LDA  7,-25(7) 	CALL cat
 67:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
* END compound statement
  0:    LDA  7,67(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
 68:     LD  3,-1(1) 	Load return address 
 69:     LD  1,0(1) 	Adjust fp 
 70:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 71:    LDC  2,0(6) 	Set return value to 0 
 72:     LD  3,-1(1) 	Load return address 
 73:     LD  1,0(1) 	Adjust fp 
 74:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 75:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 76:    LDC  3,18(6) 	load size of array x
 77:     ST  3,-2(1) 	save size of array x
* EXPRESSION STMT
 78:    LDC  3,12(6) 	Load constant 
 79:     ST  3,-21(1) 	Store variable y
* EXPRESSION STMT
* 			Begin call to  cat
 80:     ST  1,-22(1) 	Store old fp in ghost frame 
* 			Load param 1
 81:    LDA  3,-3(1) 	Load address of base of array x
 82:     ST  3,-24(1) 	Store parameter 
* 			Load param 1
* EXPRESSION STMT
 83:     LD  3,-21(1) 	Load variable y
 84:     ST  3,-25(1) 	Store parameter 
* 			Jump to cat
 85:    LDA  1,-22(1) 	Load address of new frame 
 86:    LDA  3,1(7) 	Return address in ac 
 87:    LDA  7,-46(7) 	CALL cat
 88:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* EXPRESSION STMT
* WHILE
* EXPRESSION STMT
 89:     LD  3,-21(1) 	Load variable y
 90:     ST  3,-22(1) 	Save left side 
* EXPRESSION STMT
 91:    LDC  3,0(6) 	Load constant 
 92:     LD  4,-22(1) 	Load left into ac1 
 93:    SUB  4,4,3 	Op >= 
 94:    LDC  3,1(6) 	True case 
 95:    JTE  4,1(7) 	Jump if true 
 96:    LDC  3,0(6) 	False case 
 97:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 99:     ST  1,-22(1) 	Store old fp in ghost frame 
* 			Load param 1
100:     LD  3,-21(1) 	Load variable y
101:     ST  3,-24(1) 	Store parameter 
* 			Jump to output
102:    LDA  1,-22(1) 	Load address of new frame 
103:    LDA  3,1(7) 	Return address in ac 
104:    LDA  7,-99(7) 	CALL output
105:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* EXPRESSION STMT
* EXPRESSION STMT
* 			Begin call to  outnl
106:     ST  1,-22(1) 	Store old fp in ghost frame 
* 			Jump to outnl
107:    LDA  1,-22(1) 	Load address of new frame 
108:    LDA  3,1(7) 	Return address in ac 
109:    LDA  7,-73(7) 	CALL outnl
110:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
* EXPRESSION STMT
* EXPRESSION STMT
111:     LD  3,-21(1) 	Load variable y
112:     ST  3,-22(1) 	Save left side 
* EXPRESSION STMT
113:    LDC  3,1(6) 	Load constant 
114:     LD  4,-22(1) 	Load left into ac1 
115:    SUB  3,4,3 	Op - 
116:     ST  3,-21(1) 	Store variable y
* END compound statement
117:    LDA  7,-29(7) 	go to beginning of loop 
 98:    LDA  7,19(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
118:    LDC  2,0(6) 	Set return value to 0 
119:     LD  3,-1(1) 	Load return address 
120:     LD  1,0(1) 	Adjust fp 
121:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,121(7) 	Jump to init [backpatch] 
* BEGIN Init
122:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
123:    LDA  1,0(0) 	set first frame at end of globals 
124:     ST  1,0(1) 	store old fp (point to self) 
125:    LDA  3,1(7) 	Return address in ac 
126:    LDA  7,-52(7) 	Jump to main 
127:   HALT  0,0,0 	DONE! 
* END Init
