build: task1
	./task1 < input.txt

task1: lex.yy.c mainImplement.c
	cc -o task1 mainImplement.c lex.yy.c -ll

lex.yy.c: task1.l
	flex task1.l

clean:
	rm -f task1 lex.yy.c
