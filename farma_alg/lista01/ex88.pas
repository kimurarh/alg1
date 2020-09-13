(*
EXERCÍCIO 88

Faça um programa Pascal que leia do teclado dois valores reais x e y, e em seguida calcule e imprima o valor da seguinte expressão com três casas decimais:

Imgur

Exemplos:
Entrada 1:
4 3
Saída Esperada 1:
76.000

Entrada 2:
5 2
Saída Esperada

*)

program calc_expressao;

var x, y: real;

begin
	read(x, y);
	writeln(x*x*x + x*y :0:3);
end.
