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
	int tokenclass;
	int linenum;
	char *tokenstr;
	int idvalue;				// depend on tokenclass
	double numvalue;			//
};


#endif	/* TOKENSTRUCT_H */

