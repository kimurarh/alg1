program p2013_2_q1;

var
	a, b: integer;

begin
	read(a, b); (* numeros inteiros positivos de 2 digitos *)

	if (a mod 2 = 0) and (b mod 2 = 0) and (a div 10 = b mod 10) and (a mod 10 = b div 10) then
		writeln('Sim')
	else
		writeln('Nao');
end.
