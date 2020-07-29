program ex16;

var
	m, n, i, numImpar: longint;

begin
	read(m);
	
	n := 1;
	numImpar := 1;

	while n <= m do
	begin
		i := 1;

		while i <= n do
		begin
			write(numImpar, ' ');
			numImpar := numImpar + 2;
			i := i + 1;
		end;
		writeln;

		n := n + 1;
	end;


end.
