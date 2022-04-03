LexicalScannerGenerator is a lexical scanner generator, which is written by me with C++ language. It applies some algorithms of Regular/NFA/DFA and implements some basic functions like flex. The example file demonstrates how to apply the lexical scanner generator.

The usage is as follows:<br>
LexicalScannerGenerator [OPTIONS] lex_file_name<br>
OPTIONS:<br>
-o file<br>    
&nbsp;&nbsp;&nbsp;specify code file<br>
-c file<br>
&nbsp;&nbsp;&nbsp;specify the c template file instead of code_template.c.scanner<br>
-h file<br>
&nbsp;&nbsp;&nbsp;specify the h template file instead of code_template.h.scanner<br>
-m [0/1]<br>
&nbsp;&nbsp;&nbsp;specify the compress mode<br>
-t file<br>
&nbsp;&nbsp;&nbsp;specify the trace file<br>
-H<br>
&nbsp;&nbsp;&nbsp;help information<br>
-v<br>
&nbsp;&nbsp;&nbsp;vertion information<br>
<br>
e.g:<br>
&nbsp;&nbsp;&nbsp;LexicalScannerGenerator -o colour.c colour.l <br>