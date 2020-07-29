program ex04;

var
	x, n, i, total: longint;

begin
	writeln('Este programa calcula x^n');
	writeln('Digite um número inteiro x e um inteiro não negativo n, respectivamente:');
	read(x, n);
	i := 1;
	total := x;

	while i < n do
	begin
		total := total * x;
		i := i + 1;
	end;
	writeln(x, '^', n, ' = ', total);
end.
