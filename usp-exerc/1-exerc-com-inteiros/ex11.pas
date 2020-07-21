program ex11;

var
	p, divisores, i: longint;

begin
	read(p);

	divisores := 0;
	i := 1;

	while (i <= p) and (divisores <= 2) do
	begin
		if p mod i = 0 then
			divisores := divisores + 1;
		i := i + 1;
	end;

	if divisores = 2 then
		writeln(p, ' é primo')
	else
		writeln(p, ' não é primo');
end.
