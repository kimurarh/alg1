program ex05;

var a, b, c: integer;

begin
	read(a, b, c);

	while (a <> 0) or (b <> 0) or (c <> 0) do
	begin
		if a < b then
			if a < c then
				writeln(a)
			else
				writeln(c)
		else
			if b < c then
				writeln(b)
			else
				writeln(c);
		read(a, b, c);
	end;
end.
