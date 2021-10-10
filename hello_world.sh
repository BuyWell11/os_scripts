#!/bin/bash
touch file4.cpp
 
echo "#define _CRT_SECURE_NO_WARNINGS" > file4.cpp 
echo "#include <iostream>" >> file4.cpp
echo "#include <stdio.h>" >> file4.cpp
echo "#include <stdlib.h>" >> file4.cpp
echo "using namespace std;" >> file4.cpp
echo "int main()" >> file4.cpp
echo "{" >> file4.cpp
echo "FILE* out = fopen(\"file3.sh\",\"w+\");" >> file4.cpp
echo "fprintf(out, \""#!/bin/bash\\n"\");" >> file4.cpp
echo "fprintf(out,\""touch file1.cpp\\n"\");" >> file4.cpp
echo "fprintf(out,\""echo \\\"#define _CRT_SECURE_NO_WARNINGS \\\" \> file1.cpp\\n"\");" >> file4.cpp
echo "fprintf(out,\""echo \\\"#include \<iostream\>\\\" \>\> file1.cpp\\n"\");" >> file4.cpp
echo "fprintf(out,\""echo \\\"using namespace std\;\\\" \>\> file1.cpp\\n"\");" >> file4.cpp
echo "fprintf(out,\""echo \\\"int main\(\)\\\" \>\> file1.cpp\\n"\");" >> file4.cpp
echo "fprintf(out,\""echo \\\"{\\\" \>\> file1.cpp\\n"\");" >> file4.cpp
echo "fprintf(out,\""echo \\\"cout \<\< \\\\\\\"Hello world\\\\\\\" \<\< endl\;\\\" \>\> file1.cpp\\n"\");" >> file4.cpp
echo "fprintf(out,\""echo \\\"}\\\" \>\> file1.cpp\\n"\");" >> file4.cpp
echo "fprintf(out,\"g++ -o file1 file1.cpp\\n\");" >> file4.cpp
echo "fprintf(out,\"./file1\");" >> file4.cpp
echo "fclose(out);" >> file4.cpp
echo "system(\"chmod 755 file3.sh\");" >> file4.cpp
echo "system(\"bash file3.sh\");" >> file4.cpp
echo "}" >> file4.cpp
 
g++ -o file4 file4.cpp
./file4