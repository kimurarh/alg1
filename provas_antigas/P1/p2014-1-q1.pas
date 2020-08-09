program p2014_1_q1;

var
	a, b: integer;
	coincidencia: boolean;

begin
	read(a, b); (* numeros de 3 algarismos *)

	coincidencia := false;

	if a mod 10 = b div 100 then
	begin
		coincidencia := true;
		writeln(a + b);
	end;
	if a div 100 = b mod 10 then
	begin
		coincidencia := true;
		writeln(a - b);
	end;

	if coincidencia = false then
		writeln('Não há coincidencias.')
	
end.
