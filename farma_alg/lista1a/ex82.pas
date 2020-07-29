(*
EXERCÍCIO 82

Dado um número inteiro que representa uma quantidade de segundos, faça um programa que imprima o seu valor equivalente em horas, minutos e segundos, nesta ordem. Se a quantidade de segundos for insuficiente para dar um valor em horas, o valor em horas deve ser 0 (zero). A mesma observação vale em relação aos minutos e segundos.

Exemplos:
Entrada 1:
3600
Saída Esperada 1:
1:0:0

Entrada 2:
3500
Saída Esperada 2:
0:58:20

Entrada 3:
7220
Saída Esperada 3:
2:0:20

*)

program tempo;

var horas, segundos, minutos: integer;

begin
	read(segundos);
	horas := segundos div 3600;
	segundos := segundos mod 3600;
	minutos := segundos div 60;
	segundos := segundos mod 60;
	writeln(horas, ':', minutos, ':', segundos);
end.
