%{

/* colour macro */
//comment1
#define red(str) "\e[01;31m "#str" \e\[0m"
#define green(str) "\e[01;32m "#str" \e\[0m"
#define yellow(str) "\e[01;33m "#str" \e\[0m"
//comment2
#define purple(str) "\e[01;35m "#str" \e\[0m"
#define cambrigeblue(str) "\e[01;36m "#str" \e\[0m"
#define grey(str) "\e[01;30m "#str" \e\[0m"
#include <fcntl.h>

int count = 0;

//comment3
%}

digit [0-9]

%x LINE_COMMENT

%%

"case"|"default"|"switch"|"typeof"|"sizeof"|"return"|"if"|"else"|"while"|"break"|"continue"|"do"|"until" printf(yellow(%s), yytext);
"ssize_t"|"size_t"|"FILE"|"char"|"static"|"void"|"int"|"short"|"unsigned"|"float"|"double"|"struct" printf(green(%s), yytext);
{digit}+		printf(red(%s), yytext);	/* digit */
"/*"              { printf("#######multiple comment: /*");BEGIN(COMMENT); }
<COMMENT>\n       {printf("\n");}
<COMMENT>.        {printf("%c", yytext[0]);}
<COMMENT>"*/"    { printf("*/\nMultiple comment end.\n");BEGIN(INITIAL); }

"#".*			printf(purple(%s), yytext);	/* macro */
"//" {BEGIN(LINE_COMMENT); printf("Line Comment:");}
<LINE_COMMENT>. 	{ printf("%c", yytext[0]);}
<LINE_COMMENT>\n	{ printf("%c", yytext[0]);
						++count;BEGIN(INITIAL);						
						printf("$END\n");
						}
"asm"[ \t]*"\{" {BEGIN(ASM);
				printf("ASM start:{\n");
				}
<ASM>"\}" {printf("%c", yytext[0]);BEGIN(INITIAL);printf("\nASM END\n");}
<ASM>\n {printf("%c", yytext[0]);}
<ASM>. {printf("%c", yytext[0]);}

"sql"\s*\{ {BEGIN(SQL);
				printf("SQL start:{\n");
				}
<SQL>\} {printf("%c", yytext[0]);BEGIN(INITIAL);printf("\nSQL END\n");}
<SQL>\n {printf("%c", yytext[0]);}
<SQL>. {printf("%c", yytext[0]);}



. printf("%c", yytext[0]);
\n printf("%c", yytext[0]);


%%

int main(int argc, char **argv)
{
	if (argc != 2) {
		fprintf(stderr, "Usage: %s file\n", argv[0]);
		exit(EXIT_FAILURE);
	}
	yyin = fopen(argv[1], "r");
	yylex();
	return 0;
}
