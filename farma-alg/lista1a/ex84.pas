(*
EXERCÍCIO 84

Faça um programa Pascal que leia dois números inteiros e imprima a média aritmética entre eles.

Exemplos:
Entrada 1:
10 20
Saída Esperada 1:
15

Entrada 2:
750 1500
Saída Esperada 2:
1125

Entrada 3:
8900 12300
Saída Esperada 3:
10600
*)

program media_aritm;

var a, b: integer;

begin
	read(a, b);
	writeln((a + b) div 2);
end.
