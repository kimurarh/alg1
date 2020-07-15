(*
EXERCÍCIO COMPLEMENTAR 3 - DESVIOS CONDICIONAIS

Faça um programa em Pascal que imprima se um dado número N inteiro (recebido através do teclado) é PAR ou ÍMPAR.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |IMPAR         |
|3                 |IMPAR         |
|2                 |PAR           |

*)

program par_impar;

var n: integer;

begin
	read(n);
	if n mod 2 = 0 then
		writeln('PAR')
	else
		writeln('IMPAR')
end.
