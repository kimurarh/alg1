program ex03;

var
	n: integer;

begin
	read(n);

	while n <> 0 do
	begin
		if (n mod 3 = 0) and (n > 50) and (n <= 201) then
			writeln(n);
		read(n);
	end;
end.
