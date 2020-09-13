(*
EXERCICIO 10

Indique qual o resultado das expressões baixo, sendo:

a = 5; b = 3; d = 7; p = 4; q = 5; r = 2; x = 8; y = 4; z = 6; sim = TRUE;

(a) (z DIV a + b * a) - d DIV 2			|	13
(b) p / r MOD q - q / 2				|	ERRO --> p / r retorna um número real e a operação MOD só 							pode ser feita entre números inteiros
(c) (z DIV y + 1 = x) AND sim OR (y >= x)	|	FALSE

*)

program verifica_expressoes;

var
	a, b, d, p, q, r, x, y, z: integer;
	sim: boolean;

begin
	a := 5; 
	b := 3; 
	d := 7; 
	p := 4; 
	q := 5; 
	r := 2; 
	x := 8; 
	y := 4; 
	z := 6; 
	sim := TRUE;

	writeln('(a) ', (z DIV a + b * a) - d DIV 2);
	writeln('(b) ', p DIV r MOD q - q / 2);
	writeln('(c) ', (z DIV y + 1 = x) AND sim OR (y >= x));
end.

