* C- compiler version C-F13
* Built: Dec 3, 2013
* Author: Robert B. Heckendorn
* File compiled:  control.c-
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
 43:    LDC  3,6(6) 	Load constant 
 44:     ST  3,-3(1) 	Save left side 
 45:    LDC  3,3(6) 	Load constant 
 46:     LD  4,-3(1) 	Load left into ac1 
 47:    SUB  4,4,3 	Op > 
 48:    LDC  3,1(6) 	True case 
 49:    JGT  4,1(7) 	Jump if true 
 50:    LDC  3,0(6) 	False case 
 51:    JGT  3,1(7) 	Jump to then part 
* THEN
* BEGIN compound statement
* EXPRESSION STMT
 53:    LDC  3,111(6) 	Load constant 
 54:     ST  3,-2(1) 	Store variable x
* END compound statement
* ELSE
 52:    LDA  7,3(7) 	Jump around the THEN [backpatch] 
* BEGIN compound statement
* EXPRESSION STMT
 56:    LDC  3,222(6) 	Load constant 
 57:     ST  3,-2(1) 	Store variable x
* END compound statement
 55:    LDA  7,2(7) 	Jump around the ELSE [backpatch] 
* ENDIF
* WHILE
 58:    LDC  3,7(6) 	Load constant 
 59:     ST  3,-3(1) 	Save left side 
 60:    LDC  3,3(6) 	Load constant 
 61:     LD  4,-3(1) 	Load left into ac1 
 62:    SUB  4,4,3 	Op > 
 63:    LDC  3,1(6) 	True case 
 64:    JGT  4,1(7) 	Jump if true 
 65:    LDC  3,0(6) 	False case 
 66:    JGT  3,1(7) 	Jump to while part 
* DO
* BEGIN compound statement
* EXPRESSION STMT
 68:    LDC  3,333(6) 	Load constant 
 69:     ST  3,-2(1) 	Store variable x
* IF
 70:     LD  3,-2(1) 	Load variable x
 71:     ST  3,-3(1) 	Save left side 
 72:    LDC  3,9(6) 	Load constant 
 73:     LD  4,-3(1) 	Load left into ac1 
 74:    SUB  4,4,3 	Op < 
 75:    LDC  3,1(6) 	True case 
 76:    JLT  4,1(7) 	Jump if true 
 77:    LDC  3,0(6) 	False case 
 78:    JGT  3,1(7) 	Jump to then part 
* THEN
* BREAK
 80:    LDA  7,-14(7) 	break 
 79:    LDA  7,1(7) 	Jump around the THEN [backpatch] 
* ENDIF
* EXPRESSION STMT
 81:    LDC  3,444(6) 	Load constant 
 82:     ST  3,-2(1) 	Store variable x
* BREAK
 83:    LDA  7,-17(7) 	break 
* END compound statement
 84:    LDA  7,-27(7) 	go to beginning of loop 
 67:    LDA  7,17(7) 	No more loop [backpatch] 
* ENDWHILE
* END compound statement
* Add standard closing in case there is no return statement
 85:    LDC  2,0(6) 	Set return value to 0 
 86:     LD  3,-1(1) 	Load return address 
 87:     LD  1,0(1) 	Adjust fp 
 88:    LDA  7,0(3) 	Return 
* END of function main
  0:    LDA  7,88(7) 	Jump to init [backpatch] 
* BEGIN Init
 89:     LD  0,0(0) 	Set the global pointer 
* BEGIN init of globals
* END init of globals
 90:    LDA  1,0(0) 	set first frame at end of globals 
 91:     ST  1,0(1) 	store old fp (point to self) 
 92:    LDA  3,1(7) 	Return address in ac 
 93:    LDA  7,-52(7) 	Jump to main 
 94:   HALT  0,0,0 	DONE! 
* END Init
