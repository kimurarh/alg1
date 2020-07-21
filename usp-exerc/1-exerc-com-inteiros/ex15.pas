program ex15;

var
	n, j, m, i, cont, valorComparacao: longint;

begin
	read(n, j, m);

	valorComparacao := j mod m;
	i := 1;
	cont := 0;

	while cont < n do
	begin
		if i mod m = valorComparacao then
		begin
			writeln(i, ' é congruente a ', j, ' módulo ', m);
			cont := cont + 1;
		end;
		i := i + 1;
	end;
end.
