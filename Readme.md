LexicalScannerGenerator is a lexical scanner generator, which is written by me with C++ language. It applies some algorithms of Regular/NFA/DFA and implements some basic functions like flex. The example file demonstrates how to apply the lexical scanner generator.

The usage is as follows:<br>
LexicalScannerGenerator [OPTIONS] lex_file_name<br>
OPTIONS:<br>
-o file         specify code file<br>
-c file         specify the c template file instead of code_template.c.scanner<br>
-h file         specify the h template file instead of code_template.h.scanner<br>
-m [0/1]        specify the compress mode<br>
-t file         specify the trace file<br>
-H              help information<br>
-v              vertion information<br>
<br>
e.g:<br>
LexicalScannerGenerator -o colour.c colour.l <br>