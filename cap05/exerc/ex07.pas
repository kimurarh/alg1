(* 
EXERCÍCIO 7

Faça um programa que troque o conteúdo de duas variáveis. Exemplos:

|Exemplo de entrada|Saída esperada|
|:----------------:|:------------:|
|3 7               |7 3           |
|5 15              |15 -5         |
|2 10              |10 2          |

Troque o conteúdo SEM utilizar variáveis auxiliares

*)

program troca_conteudo_v2;

var
	a, b: integer;

begin
	read(a, b);
	a := a + b;
	b := a - b;
	a := a - b;
	writeln(a, ' ', b);
end.
