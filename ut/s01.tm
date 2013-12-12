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
* BEGIN function save
 42:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
 43:     LD  3,-4(1) 	Load variable y
 44:     ST  3,0(1) 	Store variable x
 45:     LD  3,-2(0) 	Load variable z
 46:     ST  3,-4(1) 	Store variable y
* RETURN
 47:     LD  3,0(1) 	Load variable x
 48:    LDA  2,0(3) 	Copy result to rt register 
 49:     LD  3,-1(1) 	Load return address 
 50:     LD  1,0(1) 	Adjust fp 
 51:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 52:    LDC  2,0(6) 	Set return value to 0 
 53:     LD  3,-1(1) 	Load return address 
 54:     LD  1,0(1) 	Adjust fp 
 55:    LDA  7,0(3) 	Return 
* END of function save
* BEGIN function main
 56:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
* EXPRESSION STMT
* 			Begin call to  output
 57:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  save
 58:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 59:    LDC  3,1(6) 	Load constant 
 60:     ST  3,-6(1) 	Store parameter 
* 			Jump to  save
 61:    LDA  1,-4(1) 	Load address of new frame 
 62:    LDA  3,1(7) 	Return address in ac 
 63:    LDA  7,-22(7) 	Call  save
 64:    LDA  3,0(2) 	Save the result in ac 
* 			End call to save
 65:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 66:    LDA  1,-2(1) 	Load address of new frame 
 67:    LDA  3,1(7) 	Return address in ac 
 68:    LDA  7,-63(7) 	Call  output
 69:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
 70:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  save
 71:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 72:    LDC  3,2(6) 	Load constant 
 73:     ST  3,-6(1) 	Store parameter 
* 			Jump to  save
 74:    LDA  1,-4(1) 	Load address of new frame 
 75:    LDA  3,1(7) 	Return address in ac 
 76:    LDA  7,-35(7) 	Call  save
 77:    LDA  3,0(2) 	Save the result in ac 
* 			End call to save
 78:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 79:    LDA  1,-2(1) 	Load address of new frame 
 80:    LDA  3,1(7) 	Return address in ac 
 81:    LDA  7,-76(7) 	Call  output
 82:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* 			Begin call to  output
 83:     ST  1,-2(1) 	Store old fp in ghost frame 
* 			Load Param 1
* 			Begin call to  save
 84:     ST  1,-4(1) 	Store old fp in ghost frame 
* 			Load Param 1
 85:    LDC  3,3(6) 	Load constant 
 86:     ST  3,-6(1) 	Store parameter 
* 			Jump to  save
 87:    LDA  1,-4(1) 	Load address of new frame 
 88:    LDA  3,1(7) 	Return address in ac 
 89:    LDA  7,-48(7) 	Call  save
 90:    LDA  3,0(2) 	Save the result in ac 
* 			End call to save
 91:     ST  3,-4(1) 	Store parameter 
* 			Jump to  output
 92:    LDA  1,-2(1) 	Load address of new frame 
 93:    LDA  3,1(7) 	Return address in ac 
 94:    LDA  7,-89(7) 	Call  output
 95:    LDA  3,0(2) 	Save the result in ac 
* 			End call to output
* RETURN
 96:    LDC  3,0(6) 	Load constant 
 97:    LDA  2,0(3) 	Copy result to rt register 
 98:     LD  3,-1(1) 	Load return address 
 99:     LD  1,0(1) 	Adjust fp 
100:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
101:    LDC  2,0(6) 	Set return value to 0 
102:     LD  3,-1(1) 	Load return address 
103:     LD  1,0(1) 	Adjust fp 
104:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,104(7) 	Jump to init [backpatch] 
* BEGIN Init
105:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
106:    LDA  1,0(0) 	set first frame at end of globals 
107:     ST  1,0(1) 	store old fp (point to self) 
108:    LDA  3,0(7) 	return address in ac 
109:    LDA  7,-54(7) 	Jump to main 
110:   HALT  0,0,0 	DONE 
* END init
