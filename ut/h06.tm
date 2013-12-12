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
* BEGIN function cat
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* IF
* EXPRESSION STMT
 43:     LD  3,-3(1) 	Load variable y
 44:     ST  3,-4(1) 	Save left side 
 45:    LDC  3,0(6) 	Load constant 
 46:     LD  4,-4(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op >= 
 48:    LDC  3,1(6) 	True case 
 49:    JTE  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
 53:     LD  3,-3(1) 	Load variable y
 54:     ST  3,-3(1) 	Store variable x
* 			Begin call to  cat
 55:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 56:     LD  3,-2(1) 	Load variable x
 57:     ST  3,-6(1) 	Store parameter 
 58:     LD  3,-3(1) 	Load variable y
 59:     ST  3,-6(1) 	Store parameter 
 60:     ST  3,-4(1) 	Save left side 
 61:    LDC  3,1(6) 	Load constant 
 62:     ST  3,-7(1) 	Store parameter 
 63:     LD  4,-4(1) 	Load left into ac1 
 64:    SUB  3,4,3 	Op - 
 65:     ST  3,-6(1) 	Store parameter 
* 			Load Param 1
 66:     LD  3,-3(1) 	Load variable y
 67:     ST  3,-7(1) 	Store parameter 
 68:     ST  3,-4(1) 	Save left side 
 69:    LDC  3,1(6) 	Load constant 
 70:     ST  3,-8(1) 	Store parameter 
 71:     LD  4,-4(1) 	Load left into ac1 
 72:    SUB  3,4,3 	Op - 
 73:     ST  3,-7(1) 	Store parameter 
* 			Jump to  cat
 74:    LDA  1,-4(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-35(7) 	Call  cat
 77:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* END compound statement
  0:    LDA  7,77(7) 	Jump around the THEN [backpatch] 
* ENDIF
* RETURN
 78:     LD  3,-1(1) 	Load return address 
 79:     LD  1,0(1) 	Adjust fp 
 80:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 81:    LDC  2,0(6) 	Set return value to 0 
 82:     LD  3,-1(1) 	Load return address 
 83:     LD  1,0(1) 	Adjust fp 
 84:    LDA  7,0(3) 	Return 
* END of function cat
* BEGIN function main
 85:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 86:    LDC  3,12(6) 	Load constant 
 87:     ST  3,-21(1) 	Store variable y
* 			Begin call to  cat
 88:     ST  1,-22(1) 	Store old fp in ghost frame 
* 			Load Param 1
 89:     LD  3,-2(1) 	Load variable x
 90:     ST  3,-24(1) 	Store parameter 
 91:     LD  3,-21(1) 	Load variable y
 92:     ST  3,-24(1) 	Store parameter 
* 			Load Param 1
 93:     LD  3,-21(1) 	Load variable y
 94:     ST  3,-25(1) 	Store parameter 
* 			Jump to  cat
 95:    LDA  1,-22(1) 	Load address of new frame 
 96:    LDA  3,1(7) 	Return address in ac 
 97:    LDA  7,-56(7) 	Call  cat
 98:    LDA  3,0(2) 	Save the result in ac 
* 			End call to cat
* WHILE
 99:     LD  3,-21(1) 	Load variable y
100:     ST  3,-22(1) 	Save left side 
101:    LDC  3,0(6) 	Load constant 
102:     LD  4,-22(1) 	Load left into ac1 
103:    SUB  4,4,3 	Op >= 
104:    LDC  3,1(6) 	True case 
105:    JTE  4,1(7) 	Jump if true 
106:    LDC  3,0(6) 	False case 
107:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* 			Begin call to  output
109:     ST  1,-22(1) 	Store old fp in ghost frame 
* 			Load Param 1
110:     LD  3,-21(1) 	Load variable y
111:     ST  3,-24(1) 	Store parameter 
* 			Jump to  output
112:    LDA  1,-22(1) 	Load address of new frame 
113:    LDA  3,1(7) 	Return address in ac 
114:    LDA  7,-109(7) 	Call  output
115:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  outnl
116:     ST  1,-22(1) 	Store old fp in ghost frame 
* 			Jump to  outnl
117:    LDA  1,-22(1) 	Load address of new frame 
118:    LDA  3,1(7) 	Return address in ac 
119:    LDA  7,-83(7) 	Call  outnl
120:    LDA  3,0(2) 	Save the result in ac 
* 			End call to outnl
121:     LD  3,-21(1) 	Load variable y
122:     ST  3,-22(1) 	Save left side 
123:    LDC  3,1(6) 	Load constant 
124:     LD  4,-22(1) 	Load left into ac1 
125:    SUB  3,4,3 	Op - 
126:     ST  3,-21(1) 	Store variable y
* END compound statement
127:    LDA  7,-29(7) 	go to beginning of loop 
108:    LDA  7,19(7) 	No more loop 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
128:    LDC  2,0(6) 	Set return value to 0 
129:     LD  3,-1(1) 	Load return address 
130:     LD  1,0(1) 	Adjust fp 
131:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,131(7) 	Jump to init [backpatch] 
* BEGIN Init
132:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
133:    LDA  1,0(0) 	set first frame at end of globals 
134:     ST  1,0(1) 	store old fp (point to self) 
135:    LDA  3,0(7) 	return address in ac 
136:    LDA  7,-52(7) 	Jump to main 
137:   HALT  0,0,0 	DONE 
* END init
