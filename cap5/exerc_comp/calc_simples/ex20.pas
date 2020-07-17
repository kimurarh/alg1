(*
EXERCÍCIO COMPLEMENTAR 19 - CÁLCULOS SIMPLES

A soma dos termos de uma Progressão Geométrica (P.G.) finita pode ser calculada pela fórmula abaixo:
```
Sn = (a1*(q^n - 1))/(q - 1)
```
Agora, faça um programa em Pascal para determinar a soma dos n termos de uma P.G de razão q, iniciando no termo a1. Seu programa deverá ler a1, q, n do teclado e imprimir Sn.

|Exemplo de Entrada|Saída Esperada|
|  a1  |  q  |  n  |      Sn      |
|  2   |  3  |  6  |    728.00    |
|  0   |  5  |  10 |     0.00     |
| 150  |  30 |  2  |   4650.00    |

*)

program soma_termos_pg;

uses math;

var a1, q, n: integer;

begin
	writeln('Este programa irá determinar a soma dos n termos de uma P.G. de razão q');
	writeln('Digite os valores de a1, q e n, respectivamente:');
	read(a1, q, n);
	writeln('Sn = ', (a1 * (Power(q, n) - 1))/(q - 1) :0:2);
end.
