(*
EXERCÍCIO 99

Faça um programa Pascal que leia três números inteiros representando a idade de uma pessoa expressa em anos, meses e dias, respectivamente, e imprima-a expressa apenas em dias. Para este exercício, considere que todos os meses possuem 30 dias e desconsidere anos bissextos.

Exemplos:
Entrada 1:
12 4 18
Saída Esperada 1:
4518

Entrada 2:
30 2 1
Saída Esperada 2:
11011

*)

program idade_dias;

var anos, meses, dias: integer;

begin
	read(anos, meses, dias);
	dias := dias + meses * 30 + anos * 365;
	writeln(dias);
end.
