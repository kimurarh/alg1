(* 
EXERCICIO 8

Indique qual o resultado das expressões abaixo, sendo:

a = 6; b= 9.5; d = 14; p = 4; q = 5; r = 10; z = 6.0; sim = TRUE.

(a) sim AND (q \ge p)				|	TRUE
(b) (0 \le b) AND (z > a) OR (a = b)		|	FALSE
(c) (0 \le b) AND ((z > a) OR (a = b))		|	FALSE
(d) (0 \le b) OR ((z > a) AND (a = b))		|	TRUE 

*)

program test_expressoes;

var
	a, d, p, q, r: integer;
	b, z: real;
	sim: boolean;

begin
	a := 6;
	b := 9.5; 
	d := 14; 
	p := 4; 
	q := 5; 
	r := 10; 
	z := 6.0; 
	sim := TRUE;

	writeln('(a) ', sim AND (q >= p));
	writeln('(b) ', (0 <= b) AND (z > a) OR (a = b));
	writeln('(c) ', (0 <= b) AND ((z > a) OR (a = b)));
	writeln('(d) ', (0 <= b) OR ((z > a) AND (a = b))); 
end.
