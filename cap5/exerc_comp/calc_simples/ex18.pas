(*
EXERCÍCIO COMPLEMENTAR 18 - CÁLCULOS SIMPLES

A sequência A, B, C, . . . determina uma Progressão Geométrica (P.G.), o termo médio (B) de uma P.G. é determinado pela média geométrica de seus termos, sucessor (C) e antecessor (A). Com base neste enunciado escreva um programa em Pascal que calcule e imprima o termo médio (B) através de A, C, que devem ser lidos do teclado.

|Exemplo de Entrada |Saída Esperada|
|    A    |    C    |      B       |
|    1    |    3    |     1.73     |
|    10   |   100   |     31.62    |
|    90   |    80   |     84.85    |

*)

program termo_medio_pa;

var A, C: integer;

begin
	writeln('Digite os valores de A e C:');
	read(A, C);
	writeln(sqrt(A * C) :0:2);
end.
