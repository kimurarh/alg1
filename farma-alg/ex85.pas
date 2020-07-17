(*
EXERCÍCIO 85

Faça um programa Pascal que leia um número real representando o diâmetro (em metros) de uma esfera. Calcule e imprima o volume desta esfera, com duas casas de precisão.
Lembre-se que o volume de uma esfera é dado pela fórmula

V = (4*pi)/3 * R^3

Use pi = 3.14.

Exemplos:
Entrada 1:
3
Saída Esperada 1:
14.13
Entrada 2:
10
Saída Esperada 2:
523.33

*)

program volume_esfera;

var diametro: integer;
	raio: real;

begin
	read(diametro);
	raio := diametro / 2;
	writeln(4*3.14 * raio * raio * raio / 3);
end.
