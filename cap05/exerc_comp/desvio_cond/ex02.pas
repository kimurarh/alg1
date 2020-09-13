(*
EXERCÍCIO COMPLEMENTAR 2 - DESVIOS CONDICIONAIS

Faça um programa em Pascal que leia dois valores numéricos inteiros e efetue a adição; se o resultado for maior que 10, imprima o primeiro valor. Caso contrário, imprima o segundo.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|7<br>4            |7             |
|7<br>2            |2             |
|3<br>7            |7             |

*)

program soma_e_decide;

var n, m: integer;

begin
	read(n);
	read(m);
	if n + m > 10 then
		writeln(n)
	else
		writeln(m);
end.
