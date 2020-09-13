(*
EXERCÍCIO COMPLEMENTAR 8 - CÁLCULOS SIMPLES

Uma P.G. (progressão geométrica) é determinada pela sua razão (q) e pelo primeiro termo (a1). Faça um programa em Pascal que seja capaz de determinar o enésimo n termo (an) de uma P.G., dado a razão (q) e o primeiro termo (a1). Seu programa deve ler a1, q, n do teclado e imprimir an.

```
an = a1 * q^(n - 1)
```

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|  a1  |  q  |  n  |      an      |
|  1   |  1  | 100 |      1.00    |
|  2   |  2  |  10 |     1024.00  |
|  5   |  3  |  2  |      15.00   |

*)

program prog_geom;

uses math;

var a1, q, n: integer;

begin
	writeln('Este programa irá calcular o enésimo (n) termo de uma P.G. de razão (q) e primeiro termo a1');
	writeln('Digite os valores de a1, q e n, respectivamente:');
	read(a1, q, n);
	writeln('an = ', a1 * Power(q,(n - 1)) :0:2);
end.
