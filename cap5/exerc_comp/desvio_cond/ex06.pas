(*
EXERCÍCIO COMPLEMENTAR 6 - DESVIOS CONDICIONAIS

Faça um programa em Pascal que imprima qual o menor valor de dois números A e B, lidos através do teclado.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5.35<br>4         |4.00          |
|-3<br>1           |-3.00         |
|6<br>15           |6.00          |

*)

program menor_valor;

var n, m: real;

begin
	read(n, m);
	if n < m then
		writeln(n:0:2)
	else
		writeln(m:0:2)
end.
