program ex21;

var
	n, m, soma_n, soma_m, i, j: longint;

begin
	read(n, m);

	soma_n := 0;
	soma_m := 0;

	i := n * n;
	j := m * m;

	while (i <> 0) or (j <> 0) do
	begin
		soma_n := soma_n + i mod 10;
		soma_m := soma_m + j mod 10;
		i := i div 10;
		j := j div 10;
	end;

	if (soma_n = m) and (soma_m = n) then
		writeln('sim')
	else
		writeln('nao');
end.
