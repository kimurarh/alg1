(*
EXERCICIO 11

Dado o programa em Pascal abaixo, mostre o acompanhamento de sua execução para três valores de entrada (valores pequenos, por exemplo para x = 0, x = 10 e x = -1). Em seguida, descreva o que o programa faz.

program questao1;

var
	m, x, y: integer;

begin
	read(x);
	y := 0;
	m := 1;
	while x > 0 do
	begin
		y := y + (x mod 2) * m;
		x := x div 2;
		m := m * 10
	end;
	writeln(y)
end.

Acompanhamento:
	se x = 0 ou -1 --> não entra no while --> imprime o valor de y = 0;

	Variável 	| 	Inicio		|	1	|	2	|	3	|	4		|
	-------------------------------------------------------------------
		x		|		10		|	5	|	2	|	1	|	0		|
		y		|		0		|	0	|	10	|	10	|	1010	| 
		m		|		1		|	10	|	100	|	1000|	10000	|		

	Imprime y = 1010

	Este programa retorna o valor de x escrito em binário
*)

program questao1;

var
	m, x, y: integer;

begin
	read(x);
	y := 0;
	m := 1;
	while x > 0 do
	begin
		y := y + (x mod 2) * m;
		x := x div 2;
		m := m * 10;
		writeln('x = ', x);
		writeln('y = ', y);
		writeln('m = ', m);

	end;
	writeln(y);
end.
