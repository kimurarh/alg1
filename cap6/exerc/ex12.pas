program ex12;

var num, i: integer;

begin
	num := 1;

	while num <= 9 do
	begin
		i := 1;
		
		while i <= num do
		begin
			write(i);
			i := i + 1;
		end;

		i := i - 2;

		while i >= 1 do
		begin
			write(i);
			i := i - 1;
		end;

		writeln;
		num := num + 1;
	end;
end.
