%{
   #include <iostream>
   #include <iomanip>
   #include "parser.H"
   #include "grammar.h"
%}
DIGIT    [0-9]
ID       [a-zA-Z][a-zA-Z0-9]*
NUMBER   {DIGIT}+("."{DIGIT}*)?

%%
{NUMBER}  {
   yylval->val = atof(yytext);
   return NUMBER;
}

\[					  { return TLBRACKET;}
\]					  { return TLBRACKET;}
\(                    { return TLPARENTHESIS;}
\)                    { return TRPARENTHESIS;}
\{					  { return TLBRACE;}
\}					  { return TRBRACE;}
'[]'				  { return TBRACKETPAIR;}
\.					  { return TDOT;}
if                    { return TIF;}
else                  { return TELSE;}
while                 { return TWHILE;}
this				  { return TTHIS;}
class				  { return TCLASS;}
extends				  { return TEXTENDS;}
new					  { return TNEW;}
return				  { return TRETURN;}
\+                    { return TADD;}
\-                    { return TSUB;}
\*                    { return TTIMES;}
\/                    { return TDIV;}

\s					  { return TWHITE;}


{ID} {
   yylval->id = strdup(yytext); // must copy the string. Can't use the constant.
   return TID;
}
                  
[ \t\n]*  /* ignore ws */;
