(*
EXERCÍCIO COMPLEMENTAR 6 - CÁLCULOS SIMPLES

Uma P.A. (progressão aritmética) é determinada pela sua razão (r) e pelo primeiro termo (a1). Faça um programa em Pascal que seja capaz de determinar o enésimo (n) termo (an) de uma P.A., dado a razão (r) e o primeiro termo (a1). Seu programa deve ler n, r, a1 do teclado e imprimir an .

```
an = a1 + (n - 1) * r
```

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|  n  |  r  |  a1  |      an      |
|  8  |  1  |  3   |      10      |
| 100 |  10 |  1   |      991     |
|  5  |  -2 |  0   |      -8      |

*)

program prog_arit;

var n, r, a1: integer;

begin
	writeln('Este programa irá calcular o enésimo (n) termo de uma P.A. de razão r e primeiro termo a1');
	writeln('Digite os valores de n, r e a1, respectivamente:');
	read(n, r, a1);
	writeln('an = ', a1 + (n - 1) * r);
end.
