(*
EXERCÍCIO COMPLEMENTAR 1 - CÁLCULOS SIMPLES

Faça um programa que leia um número inteiro e imprima o seu sucessor e seu antecessor, na mesma linha.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|1                 |2 0           |
|100               |101 99        |
|-3                |-2 -4         |

*)

program sucessor_antecessor;

var n: integer;

begin
	read(n);
	writeln(n + 1, ' ', n - 1);
end.
