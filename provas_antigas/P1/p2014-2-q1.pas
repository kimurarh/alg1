program p2014_2_q1;

var
	num, i, mult: longint;

begin
	read(num);

	i := 1;
	mult := i * (i + 1) * (i + 2);

	while mult < num do
	begin
		mult := i * (i + 1) * (i + 2);
		i := i + 1;
	end;

	if mult = num then
		writeln('É triangular')
	else
		writeln('Não é triangular');
end.
