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
 42:    LDC  3,10(6) 	Load size of array ccc
 43:     ST  3,-2(1) 	Load size of array ccc
 44:    LDC  3,10(6) 	Load size of array ddd
 45:     ST  3,-3(1) 	Load size of array ddd
* BEGIN function main
 46:     ST  3,-1(1) 	Store return address. 
* Add standard closing in case there is no return statement
 47:    LDC  2,0(6) 	Set return value to 0 
 48:     LD  3,-1(1) 	Load return address 
 49:     LD  1,0(1) 	Adjust fp 
 50:    LDA  7,0(3) 	Return 
* END of function main
* BEGIN function dogs
 51:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 52:    LDC  3,9(6) 	Load size of array ccc
 53:     ST  3,0(1) 	Load size of array ccc
 54:    LDC  3,9(6) 	Load size of array ddd
 55:     ST  3,0(1) 	Load size of array ddd
 56:    LDC  3,10(6) 	Load size of array sccc0
 57:     ST  3,-6(1) 	Load size of array sccc0
 58:    LDC  3,10(6) 	Load size of array sddd0
 59:     ST  3,-7(1) 	Load size of array sddd0
* RETURN
* EXPRESSION STMT
 60:     LD  3,0(0) 	Load variable aaa
 61:    LDA  2,0(3) 	Copy result to rt register 
 62:     LD  3,-1(1) 	Load return address 
 63:     LD  1,0(1) 	Adjust fp 
 64:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 65:    LDC  2,0(6) 	Set return value to 0 
 66:     LD  3,-1(1) 	Load return address 
 67:     LD  1,0(1) 	Adjust fp 
 68:    LDA  7,0(3) 	Return 
* END of function dogs
  0:    LDA  7,68(7) 	Jump to init [backpatch] 
* BEGIN Init
 69:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 70:    LDA  1,0(0) 	set first frame at end of globals 
 71:     ST  1,0(1) 	store old fp (point to self) 
 72:    LDA  3,0(7) 	return address in ac 
 73:    LDA  7,-28(7) 	Jump to main 
 74:   HALT  0,0,0 	DONE 
* END init