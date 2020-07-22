program ex19;

var
	a, b, c: integer;

begin
	read(a, b, c);

	if a > b then
		if b > c then
			writeln(c, ' ', b, ' ', a)
		else
			if c > a then
				writeln(b, ' ', a, ' ', c)
			else
				writeln(b, ' ', c, ' ', a)
	else
		if a > c then
			writeln(c, ' ', a, ' ', b)
		else
			if c > b then
				writeln(a, ' ', b, ' ', c)
			else
				writeln(a, ' ', c, ' ', b);
end.
