(*
EXERCÍCIO COMPLEMENTAR 9 - CÁLCULOS SIMPLES

Dada a razão (q) de uma P.G. (progressão geométrica) e um termo qualquer, k (ak). Faça um programa em Pascal para calcular o enésimo termo n (an). Seu programa deve ser k, ak, q, n do teclado e imprimir an.

|Exemplo de Entrada      |Saída Esperada          |
|  k  |  ak  |  r  |  n  |an                      |
|  2  |  2   |  1  |  1  |2.00                    |
|  1  |  5   |  2  |  10 |2560.00                 |
|  2  |  100 |  10 |  20 |100000000000000000000.00|

*)

program prog_arit;

uses math;

var k, ak, q, n: integer;

begin
	writeln('Este programa calcula o enésimo termo n (an) de uma P.G., a partir de sua razão (q) e um termo qualquer k (ak)');
	writeln('Digite os valores de k, ak, q e n, respectivamente:');
	read(k, ak, q, n);
	writeln('an = ', ak * Power(q, n - k) :0:2);
end.
