(*
EXERCÍCIO COMPLEMENTAR 10 - DESVIOS CONDICIONAIS

Faça um programa em Pascal que leia um número e imprima a raiz quadrada do número caso ele seja positivo ou igual a zero e o quadrado do número caso ele seja negativo.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|0                 |0.00          |
|4                 |2.00          |
|-5                |25.00         |

*)

program raiz_ou_quadrado;

var n: real;

begin
	read(n);
	if n >= 0 then
		writeln(sqrt(n) :0:2)
	else
		writeln(n*n :0:2)
end.
