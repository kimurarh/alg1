(*
EXERCÍCIO COMPLEMENTAR 5 - CÁLCULOS SIMPLES

Faça um programa que leia um número real e imprima a terça parte deste número.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|3                 |1.00          |
|10                |3.33          |
|90                |30.00         |

*)

program terca_parte;

var n: real;

begin
	read(n);
	writeln(n / 3 :0:2);
end.
