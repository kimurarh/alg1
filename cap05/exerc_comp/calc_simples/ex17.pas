(*
EXERCÍCIO COMPLEMENTAR 17 - CÁLCULOS SIMPLES

A sequência A, B, C, . . . determina uma Progressão Aritmética (P.A.). O termo médio (B) de uma P.A. é determinado pela média aritmética de seus termos, sucessor (C) e antecessor (A). Com base neste enunciado construa um programa em Pascal que calcule e imprima o termo médio (B) através de A e C, que devem ser lidos do teclado.

```
B = (A + C)/ 2
```

|Exemplo de Entrada |Saída Esperada|
|    A    |    C    |      B       |
|    1    |    3    |     2.00     |
|    2    |    2    |     2.00     |
|   100   |   500   |    300.00    |

*)

program termo_medio_pa;

var A, C: integer;

begin
	writeln('Digite os valores de A e C:');
	read(A, C);
	writeln((A + C)/2 :0:2);
end.
