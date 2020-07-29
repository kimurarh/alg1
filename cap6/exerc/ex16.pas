program ex16;

var
	m, n, numImpar, somaImpares, nCubo, i: longint;

begin
	read(m);
	
	n := 1;

	while n <= m do
	begin
		numImpar := 1;
		i := 1;

		nCubo := n*n*n;
		somaImpares := numImpar * n + n *(n - 1);

		while nCubo <> somaImpares do
		begin
			numImpar := numImpar + 2;
			nCubo := n*n*n;
			somaImpares := numImpar * n + n * (n - 1);
		end;

		write(n, '^3 = ');
		
		while i < n do
		begin
			write(numImpar, ' + ');
			numImpar := numImpar + 2;	
			i := i + 1;
		end;	
		writeln(numImpar);

		numImpar := 1;
		n := n + 1;
	end;


end.
