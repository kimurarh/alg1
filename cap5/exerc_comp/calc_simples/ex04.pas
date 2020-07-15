(*
EXERCÍCIO COMPLEMENTAR 4 - CÁLCULOS SIMPLES

Faça um programa que leia dois números reais e imprima a média aritmética entre esses dois valores.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|1.2 2.3           |1.75          |
|750 1500          |1125.00       |
|8900 12300        |10600.00      |

*)

program media_aritmetica;

var a, b: real;

begin
	read(a, b);
	writeln((a + b)/ 2 :0:2)
end.
