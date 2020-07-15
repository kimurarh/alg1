(*
EXERCÍCIO COMPLEMENTAR 8 - DESVIOS CONDICIONAIS

Faça um programa em Pascal que leia um número inteiro e informe se ele é ou não divisı́vel por 5.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |sim           |
|-5                |sim           |
|3                 |nao           |

*)

program divisivel_por_cinco;

var n: integer;

begin
	read(n);
	if n mod 5 = 0 then
		writeln('sim')
	else
		writeln('nao');
end.
