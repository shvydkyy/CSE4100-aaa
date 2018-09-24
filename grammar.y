%{
#include <math.h>
#include <stdlib.h>
#include <list>
#include "parser.H"
#include <string.h>
#define YYERROR_VERBOSE   
%}

%union {
   int        val;
   char*      id;
}

%code{
   int yyerror(Parser* p,const char* s);
   int yylex(YYSTYPE*);
}

%pure-parser
%parse-param { Parser* parser }
%token <val> NUMBER TRUE FALSE 
%token <id>  TID
%token TSEMICOLON
%token TCOMMA
%token TADD
%token TSUB
%token TMULT
%token TDIV
%token TLTE
%token TGTE
%token TEQ
%token TNEQ
%token TLT
%token TGT
%token TBAND
%token TBOR
%token TASSIGN
%token TNOT
%token TLBRACKET
%token TRBRACKET
%token TLPARENTHESIS
%token TRPARENTHESIS
%token TLBRACE
%token TRBRACE
%token TBRACKETPAIR
%token TDOT
%token TIF 
%token TELSE 
%token TWHILE 
%token TTHIS 
%token TCLASS
%token TEXTENDS
%token TNEW
%token TRETURN
%token TINT
%token TBOOL
%token TVOID
%token <val> TTRUE
%token <val> TFALSE
%token <val> TINT
%token <id>  TID
%token TWHITE
%token TCOMMENT


%token T


%left TOR 
%left TAND
%left '<' '>' 

%%

Top:
;
%%

