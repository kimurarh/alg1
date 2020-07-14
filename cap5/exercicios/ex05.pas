(*
EXERCICIO 5

Faça um programa que, dado um número inteiro que representa uma quantidade de segundos, determine o seu valor equivalente em graus, minutos e segundos. Se a quantidade de segundos for insuficiente para dar um valor em graus, o valor em graus deve ser 0 (zero). A mesma observação vale em relação aos minutos e segundos.

	Exemplo de entrada 	|	Saída esperada
	-----------------------------------------------
	3600			|	1, 0, 0
	-----------------------------------------------
	3500			|	0, 58, 20
	-----------------------------------------------
	7220			|	2, 0, 20
				
*)

program converte_segundos;

var
	graus, minutos, segundos: integer;

begin
	read(segundos);
	graus := segundos div 3600;
	minutos := (segundos mod 3600) div 60;
	segundos := (segundos mod 3600) mod 60;
	writeln(graus, ', ', minutos, ', ', segundos);
end.

