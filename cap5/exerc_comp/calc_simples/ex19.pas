(*
EXERCÍCIO COMPLEMENTAR 19 - CÁLCULOS SIMPLES

O produto de uma série de termos de uma Progressão Geométrica (P.G.) pode ser calculado pela fórmula abaixo:
```
P = a1^n * q^((n*(n - 1))/2)
```
Agora, faça um programa em Pascal para determinar o produto dos n primeiros termos de uma P.G de razão q. Seu programa deverá ler a1, q, n do teclado e imprimir P. (ATENÇÃO PARA O TIPO DE VARIÁVEL!)

|Exemplo de Entrada|Saída Esperada|
|  a1  |  q  |  n  |      P       |
|  5   |  1  |  10 |  9765625.00  |
|  1   |  1  |  10 |     1.00     |
|  2   |  2  |  5  |   32768.00   |

*)

program produto_termos_pg;

uses math;

var a1, q, n: integer;

begin
	writeln('Este programa irá determinar o produtos dos n primeiros termos de uma P.G. de razão q');
	writeln('Digite os valores de a1, q e n, respectivamente:');
	read(a1, q, n);
	writeln(Power(a1, n) * Power(q, (n*(n - 1))/2) :0:2);
end.
