program soma_intervalo;

var
	n, m, p, soma: longint;

begin
	read(n, m, p);

	soma := 0;

	while n <= m do
	begin
		soma := soma + n;
		n := n + p;
	end;
	writeln(soma);
end.
