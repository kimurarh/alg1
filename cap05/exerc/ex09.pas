(*
EXERCICIO 9

Indique qual o resultado das expressões baixo, sendo:

a = 5; b = 3; d = 7; p = 4; q = 5; r = 2; x = 8; y = 4; z = 6; sim = TRUE;

(a) NOT sim AND (z DIV b + 1 = r)		|	FALSE
(b) (x + y > z) AND sim OR (d \ge b)		|	TRUE	
(c) (x + y <> z) AND (sim OR (d \ge b))		|	TRUE

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

	writeln('(a) ', NOT sim AND (z DIV b + 1 = r));
	writeln('(b) ', (x + y > z) AND sim OR  (d >= b));
	writeln('(c) ', (x + y <> z) AND (sim OR (d >= b)));
end.

