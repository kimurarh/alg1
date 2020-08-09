program p2012_1_q2;

var
	i, N: integer;

begin
	write('Entre com um número maior do que 1: ');
	read(N);

	i := 1;

	while i < N do
	begin
		writeln(i, ' e ', N - i);
		i := i + 1;
	end;
end.
