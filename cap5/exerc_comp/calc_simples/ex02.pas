(*
EXERCÍCIO COMPLEMENTAR 2 - CÁLCULOS SIMPLES

Faça um programa que leia dois números inteiros e imprima o resultado da soma deste dois valores. Antes do resultado, deve ser impressa a seguinte mensagem "SOMA = ".

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|1 2               | SOMA = 3     |
|100 -50           | SOMA = 50    |
|-5 -40            | SOMA = -45   |

*)

program soma_valores;

var n,m: integer;

begin
	read(n, m);
	writeln('SOMA = ', n + m)
end.
