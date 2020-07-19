(*
EXERCÍCIO COMPLEMENTAR 24 - DESVIOS CONDICIONAIS

*)

program triangulos;

var A, B, C: integer;

begin
	read(A, B, C);

	(* Testa a condição de existência de triangulos *)
	if (A + B > C) AND (A + C > B) AND (B + C > A) then
		if (A = B) AND (B = C) then
			writeln('EQUILATERO')
		else if (A = B) OR (B = C) then
			writeln('ISOSCELES')
		else
			writeln('ESCALENO')
	else
		writeln('INVALIDO');

end.
