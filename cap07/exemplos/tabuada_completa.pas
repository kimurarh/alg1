program tabuada_completa;

var i, j: integer;

begin
	i := 1;
	while i <= 10 do
	begin
		j := 1;
		while j <= 10 do
		begin
			writeln(i, 'x', j, ' = ', i * j);
			j := j + 1;
		end;
		writeln;
		i := i + 1;
	end;
end.

