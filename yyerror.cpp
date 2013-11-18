#include "yyerror.h"

// connections to the parser and scanner
extern int numerrors;
extern int numwarnings;
extern char *lasttokenscanned;
extern int globallineno;


static void print(void *s) 
{
    printf("name: %s\n", (char *)s);
}

static SymTab niceNames(print);

// Here is the mapping from tokens to something printable.
// The strings on the right are the standard forms for output.
// You can put what you want on the left.
void initYyerror() {
    numerrors = 0;
    numwarnings = 0;

    niceNames.insert((char *)"OR", (char *)"or");
    niceNames.insert((char *)"AND", (char *)"and");
    niceNames.insert((char *)"NOT", (char *)"not");
    niceNames.insert((char *)"NEQ", (char *)"!=");
    niceNames.insert((char *)"PASSIGN", (char *)"+=");
    niceNames.insert((char *)"INC", (char *)"++");
    niceNames.insert((char *)"MASSIGN", (char *)"-=");
    niceNames.insert((char *)"DEC", (char *)"--");
    niceNames.insert((char *)"LEQ", (char *)"<=");
    
    
    //stuff he didnt include
    niceNames.insert((char *)"LESSER", (char *)"<");
    niceNames.insert((char *)"GREATER", (char *)">");
    niceNames.insert((char *)"ASSIGN", (char *)"'='");
    niceNames.insert((char *)"MULTI", (char *)"\'*\'");
    niceNames.insert((char *)"MINUS", (char *)"'-'");
    niceNames.insert((char *)"PLUS", (char *)"'+'");
    niceNames.insert((char *)"DIVIDE", (char *)"'/'");
    niceNames.insert((char *)"MOD", (char *)"'%'");
    niceNames.insert((char *)"SEMI", (char *)"';'");
    niceNames.insert((char *)"COLON", (char *)"':'");
    niceNames.insert((char *)"COMMA", (char *)"','");
    niceNames.insert((char *)"LPAREN", (char *)"'('");
    niceNames.insert((char *)"RPAREN", (char *)"')'");
    niceNames.insert((char *)"LBRACKET", (char *)"'['");
    niceNames.insert((char *)"RBRACKET", (char *)"']'");
    niceNames.insert((char *)"LBRACE", (char *)"'{'");
    niceNames.insert((char *)"RBRACE", (char *)"'}'");
    
    niceNames.insert((char *)"EQUIV", (char *)"==");
    niceNames.insert((char *)"GEQ", (char *)">=");
    niceNames.insert((char *)"BOOL", (char *)"bool");
    niceNames.insert((char *)"BREAK", (char *)"break");
    niceNames.insert((char *)"CHAR", (char *)"char");
    niceNames.insert((char *)"ELSE", (char *)"else");
    niceNames.insert((char *)"FALSE", (char *)"false");
    niceNames.insert((char *)"FOREACH", (char *)"foreach");
    niceNames.insert((char *)"IF", (char *)"if");
    niceNames.insert((char *)"IN", (char *)"in");
    niceNames.insert((char *)"INT", (char *)"int");
    niceNames.insert((char *)"RETURN", (char *)"return");
    niceNames.insert((char *)"STATIC", (char *)"static");
    niceNames.insert((char *)"TRUE", (char *)"true");
    niceNames.insert((char *)"WHILE", (char *)"while");
    niceNames.insert((char *)"STRINGCONST", (char *)"string constant");
    niceNames.insert((char *)"CHARCONST", (char *)"character constant");
    niceNames.insert((char *)"ID", (char *)"id");
    niceNames.insert((char *)"NUMCONST", (char *)"number");
    niceNames.insert((char *)"$end", (char *)"end of input");
}

static char *decodeName(char *s) {
    if (*s == '\'') return s;
    else return (char *)niceNames.lookup(s);
}


void yyerror(const char *msg)
{
    char *errMsg = strdup(msg);

    //printf("MSG: %s\n", errMsg);

    //printf("Global lineno: %d\n", globallineno);
    //printf("Last scanned token: %s\n", lasttokenscanned);
    if (strstr(msg, "Invalid input character")) {
        printf("WARNING(%d): %s: %s.  Character ignored.\n", 
               globallineno, 
               msg, 
               niceStringOut(lasttokenscanned));
        numwarnings++;
    }
    
    else {
        char *msgParts[32];
        int numParts;
        char *unexpected;
       
        // split the input
        numParts = split(errMsg, (char *)" ", msgParts);
        
        if (msgParts[3][strlen(msgParts[3])-1] == ',') 
            msgParts[3][strlen(msgParts[3])-1] = '\0';
        
        unexpected = decodeName(msgParts[3]);
        
        // print the error
        if (strcmp(unexpected, (char *)"id")==0 ||
            strcmp(unexpected, (char *)"number")==0 ||
            strcmp(unexpected, (char *)"character constant")==0 ||
            strcmp(unexpected, (char *)"string constant")==0) 
        {
            printf("ERROR(%d): Syntax error.  Unexpected %s: %s.", globallineno, unexpected, lasttokenscanned);
        }
        else if (strcmp(unexpected, (char *)"number")==0) 
        {
            printf("ERROR(%d): Syntax error.  Unexpected %s: %s.", globallineno, unexpected, lasttokenscanned);
        }
        else 
        {
            printf("ERROR(%d): Syntax error.  Unexpected %s.", globallineno, unexpected);
        }
        if (numParts>=5) {
            printf("  Expecting ");
            for (int i=5; i<numParts; i+=2) {
                printf("%s", decodeName(msgParts[i]));
                if (i<numParts-2) printf(" or ");
            }
            printf(".");
        }
        printf("\n");

        numerrors++;
    }

    fflush(stdout);   // force a dump of the error
}

