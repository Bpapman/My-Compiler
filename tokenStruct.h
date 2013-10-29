/* 
 * File:   tokenStruct.h
 * Author: brett
 *
 * Created on September 5, 2013, 2:33 PM
 */

#ifndef TOKENSTRUCT_H
#define	TOKENSTRUCT_H

struct TokenData
{
	int tokenClass;
	int lineno;
	char* tokenstr;
	char* idvalue;
        int numvalue;
        char* keyvalue;
};


#endif	/* TOKENSTRUCT_H */

