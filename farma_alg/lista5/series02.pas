program soma_fracoes;

var
	i, n: longint;
	soma: real;

begin
	read(n);

	soma := 0;
	i := 1;

	while i < n do
	begin
		writeln(i,'/', n - i);
		soma := soma + i/(n - i);
		i := i + 1;
	end;

	writeln(soma :0:2);
end.
