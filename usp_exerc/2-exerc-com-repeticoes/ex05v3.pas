program ex05v3;

var
	m, n, i, numImpar: longint;

begin
	read(m);

	if m > 0 then
	begin
		n := 1;
		numImpar := 1;

		while n <= m do 
		begin
			write(n, '^3 = ');
			i := 1;
			while i < n do
			begin
				write(numImpar, ' + ');
				numImpar := numImpar + 2;
				i := i + 1;
			end;
			writeln(numImpar, '.');
			numImpar := numImpar + 2;
			n := n + 1;
		end;
	end;
end.
