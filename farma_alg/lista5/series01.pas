program soma_serie;

var
	n, i, num, den, sinal: longint;
	soma: real;

begin
	read(n);

	soma := 0;
	num := 1000;
	sinal := 1;
	den := 1;
	i := 1;

	while i <= n do
	begin
		soma := soma + sinal * num/den;
		sinal := -sinal;
		num := num - 3;
		den := den + 1;
		i := i + 1;
	end;
	writeln(soma :0:2);
end.
