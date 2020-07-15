(*
EXERCÍCIO COMPLEMENTAR 7 - DESVIOS CONDICIONAIS

Faça um programa em Pascal para determinar se um número inteiro A é divisı́vel por um outro número inteiro B. Esses valores devem ser fornecidos pelo usuário.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5<br>10           |nao           |
|4<br>2            |sim           |
|7<br>21           |nao           |

*)

program eh_divisivel;

var A, B: integer;

begin
	read(A, B);
	if A mod B = 0 then
		writeln('sim')
	else
		writeln('nao')
end.
