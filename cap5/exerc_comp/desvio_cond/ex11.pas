(*
EXERCÍCIO COMPLEMENTAR 11 - DESVIOS CONDICIONAIS

Faça um programa em Pascal que leia um número e informe se ele é divisı́vel por 3 e por 7

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|21                |sim           |
|7                 |nao           |
|3                 |nao           |
|-42               |sim           |

*)

program divisivel_tres_sete;

var n: integer;

begin
	read(n);
	if n mod 21 = 0 then
		writeln('sim')
	else
		writeln('nao')
end.
