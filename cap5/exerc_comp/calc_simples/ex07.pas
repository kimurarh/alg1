(*
EXERCÍCIO COMPLEMENTAR 7 - CÁLCULOS SIMPLES

Dada a razão (r) de uma P.A. (progressão aritmética) e um termo qualquer, k (ak). Faça um programa em Pascal que calcule o enésimo termo n (an). Seu programa deve ler k, ak, r, n do teclado e imprimir an.

```
an = ak + (n - k) * r
```

|Exemplo de Entrada      |Saída Esperada|
|  k  |  ak  |  r  |  n  |an            |
|  1  |  5   |  2  |  10 |23            |
|  10 |  20  |  2  |  5  |10            |
| 100 |  500 |  20 |  90 |300           |

*)

program prog_arit;

var k, ak, r, n: integer;

begin
	writeln('Este programa calcula o enésimo termo n (an) de um P.A., a partir de sua razão (r) e um termo qualquer k (ak)');
	writeln('Digite os valores de k, ak, r e n, respectivamente:');
	read(k, ak, r, n);
	writeln('an = ', ak + (n - k) * r);
end.
