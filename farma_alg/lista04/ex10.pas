program verifica_triangular;

var
	num, i, produto: longint;

begin
	read(num);

	i := 0;
	produto := i * (i + 1) * (i + 2);

	while produto < num do
	begin
		i := i + 1;
		produto := i * (i + 1) * (i + 2);
	end;

	if produto = num then
		writeln(1)
	else
		writeln(0);
end.
