LexicalScannerGenerator is a lexical scanner generator, which is written by me with C++ language. It applies some algorithms of Regular/NFA/DFA and implements some basic functions like flex. The example file demonstrates how to apply the lexical scanner generator.

The usage is as follows:<br>
LexicalScannerGenerator [OPTIONS] lex_file_name<br>
OPTIONS:<br>
<PRE>
-o file
	specify code file
-c file<br>
	specify the c template file instead of code_template.c.scanner
-h file<br>
	specify the h template file instead of code_template.h.scanner
-m [0/1]
	specify the compress mode
-t file
	specify the trace file
-H
	help information
-v
	vertion information

e.g:
	LexicalScannerGenerator -o colour.c colour.l
</PRE>