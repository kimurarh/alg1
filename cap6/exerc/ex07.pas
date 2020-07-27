program ex07;

var
	a, b, potencia: integer;

begin
	read(a, b);

	if b div a > 0 then
	begin
		potencia := a;
		while b mod potencia = 0 do
			potencia := potencia * a;
		writeln(potencia div a);
	end
	else
		writeln(1);
end.
