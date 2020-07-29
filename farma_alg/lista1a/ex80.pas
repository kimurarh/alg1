(*
EXERCÍCIO 80

Faça um programa Pascal que leia do teclado dois valores reais x e y, e em seguida calcule e imprima o valor da seguinte expressão com três casas decimais:

x/y + y/x

Exemplos:
Entrada 1:
4 3
Saída Esperada 1:
2.083

Entrada 2:
8 5
Saída Esperada 2:
2.225

*)

program resolve_expressao;

var x, y: real;

begin
	read(x, y);
	writeln(x / y + y / x :0:3);
end.
