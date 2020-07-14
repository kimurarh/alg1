(* 
EXERCÍCIO 6

Faça um programa que troque o conteúdo de duas variáveis. Exemplos:

	Exemplo de entrada 	|	Saída esperada
	-------------------------------------------------
	3 7			|	7 3
	-------------------------------------------------
	-5 15 			|	15 -5
	-------------------------------------------------
	2 10			| 	10 2

*)

program troca_conteudo;

var
	a, b, c: integer;

begin
	read(a, b);
	c := a;
	a := b;
	b := c;	
	writeln(a, ' ', b);
end.
