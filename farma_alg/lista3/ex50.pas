program numero_divisoes;

var
	a, b, numDiv: longint;

begin
	read(a, b);

	numDiv := 0;

	while a mod b = 0 do
	begin
		a := a div b;
		numDiv := numDiv + 1;
	end;

	writeln(numDiv);
end.
