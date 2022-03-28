LexicalScannerGenerator is a lexical scanner generator, which is written by me with C++ language. It applies some algorithms of Regular/NFA/DFA and implements some basic functions like flex. The example file demonstrates how to apply the lexical scanner generator.

The usage is as follows:
LexicalScannerGenerator script [OPTIONS]
OPTIONS:\n"
-o file         specify code file
-c file         specify the c template file instead of code_template.c.scanner
-h file         specify the h template file instead of code_template.h.scanner
-m [0/1]        specify the compress mode
-t file         specify the trace file
-H              help information
-v              vertion information

e.g:
LexicalScannerGenerator test/colour.l -o colour.c