program ex05;

var
	m, n, i, j: longint;

begin
	read(m);

	n := 1;

	while n <= m do
	begin
		i := 1;
		j := 1;
		while n*n*n <> i*n + n*(n - 1) do
		begin
			i := i + 2;
		end;
		write(n, '^3 = ');
		while j < n do
		begin
			write(i, ' + ');
			i := i + 2;
			j := j + 1;
		end;
		writeln(i);

		n := n + 1;
		i := 1;
		j := 1;
	end;
end.
