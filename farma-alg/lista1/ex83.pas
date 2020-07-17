(*
EXERCÍCIO 83

Faça um programa Pascal que leia um número inteiro representando a idade de uma pessoa expressa em dias e imprima-a expressa em anos, meses e dias.
A saída deve conter os números de anos, meses e dias, nessa ordem. Para este exercício, considere que todos os meses possuem 30 dias e desconsidere anos bissextos.

Exemplos:
Entrada 1:
4518
Saída Esperada 1:
12 4 18

Entrada 2:
11011
Saída Esperada 2:
30 2 1
*)

program idade_detalhada;

var dias, meses, anos: integer;

begin
	read(dias);
	anos := dias div 365;
	meses := (dias mod 365) div 30;
	dias := (dias mod 365) mod 30;
	writeln(anos, ' ', meses, ' ', dias);
end.
