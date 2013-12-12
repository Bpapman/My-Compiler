* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  exampleif.c-
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
* IF
 43:     LD  3,-2(1) 	Load variable x
 44:     ST  3,-5(1) 	Save left side 
 45:     LD  3,-3(1) 	Load variable y
 46:     LD  4,-5(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op > 
 48:    LDC  3,1(6) 	True case 
 49:    JGT  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* EXPRESSION STMT
 53:     LD  3,-2(1) 	Load variable x
 54:     ST  3,-4(1) 	Store variable z
* ELSE
 52:    LDA  7,3(7) 	Jump around the THEN [backpatch] 
* EXPRESSION STMT
 56:     LD  3,-3(1) 	Load variable y
 57:     ST  3,-4(1) 	Store variable z
 55:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* END compound statement
* Add standard closing in case there is no return statement
 58:    LDC  2,0(6) 	Set return value to 0 
 59:     LD  3,-1(1) 	Load return address 
 60:     LD  1,0(1) 	Adjust fp 
 61:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,61(7) 	Jump to init [backpatch] 
* BEGIN Init
 62:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 63:    LDA  1,0(0) 	set first frame at end of globals 
 64:     ST  1,0(1) 	store old fp (point to self) 
 65:    LDA  3,1(7) 	Return address in ac 
 66:    LDA  7,-25(7) 	Jump to main 
 67:   HALT  0,0,0 	DONE! 
* END Init
