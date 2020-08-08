program ex12;

var
	n, i: integer;
	numAureo: real;

begin
	read(n);

	i := 1;
	numAureo := 1;

	while i <= n do
	begin
		numAureo := 1 + 1 / numAureo;
		i := i + 1;
	end;
	writeln(numAureo :0:5);
end.
