* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  s00.c-
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
* Add standard closing in case there is no return statement
 43:    LDC  2,0(6) 	Set return value to 0 
 44:     LD  3,-1(1) 	Load return address 
 45:     LD  1,0(1) 	Adjust fp 
 46:    LDA  7,0(3) 	Return 
* END of function main
* BEGIN function dogs
 47:     ST  3,-1(1) 	Store return address. 
* BEGIN compound statement
 48:    LDC  3,10(6) 	load size of array ccc
 49:     ST  3,-8(1) 	save size of array ccc
 50:    LDC  3,10(6) 	load size of array ddd
 51:     ST  3,-19(1) 	save size of array ddd
* RETURN
 52:     LD  3,-6(1) 	Load variable aaa
 53:    LDA  2,0(3) 	Copy result to rt register 
 54:     LD  3,-1(1) 	Load return address 
 55:     LD  1,0(1) 	Adjust fp 
 56:    LDA  7,0(3) 	Return 
* END compound statement
* Add standard closing in case there is no return statement
 57:    LDC  2,0(6) 	Set return value to 0 
 58:     LD  3,-1(1) 	Load return address 
 59:     LD  1,0(1) 	Adjust fp 
 60:    LDA  7,0(3) 	Return 
* END of function dogs
  0:    LDA  7,60(7) 	Jump to init [backpatch] 
* BEGIN Init
 61:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
 62:    LDC  3,10(6) 	load size of array ccc
 63:     ST  3,-2(0) 	save size of array ccc
 64:    LDC  3,10(6) 	load size of array ddd
 65:     ST  3,-13(0) 	save size of array ddd
 66:    LDC  3,10(6) 	load size of array sccc-3
 67:     ST  3,-26(0) 	save size of array sccc-3
 68:    LDC  3,10(6) 	load size of array sddd-4
 69:     ST  3,-37(0) 	save size of array sddd-4
* END init of globals
 70:    LDA  1,-48(0) 	set first frame at end of globals 
 71:     ST  1,0(1) 	store old fp (point to self) 
 72:    LDA  3,1(7) 	Return address in ac 
 73:    LDA  7,-32(7) 	Jump to main 
 74:   HALT  0,0,0 	DONE! 
* END Init
