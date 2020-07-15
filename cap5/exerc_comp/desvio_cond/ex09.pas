(*
EXERCÍCIO COMPLEMENTAR 9 - DESVIOS CONDICIONAIS

Faça um programa em Pascal que leia um número inteiro e imprima se este é multiplo de 3.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |nao           |
|-3                |sim           |
|15                |sim           |

*)

program multiplo_de_tres;

var n: integer;

begin
	read(n);
	if n mod 3 = 0 then
		writeln('sim')
	else
		writeln('nao')
end.
