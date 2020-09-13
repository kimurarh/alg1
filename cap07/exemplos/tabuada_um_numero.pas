program tabuada_um_numero;

var i, n: integer;

begin
	read(n);
	i := 1;

	while i <= 10 do
	begin
		writeln(n, 'x', i, ' = ', n * i);
		i := i + 1;
	end;
end.

