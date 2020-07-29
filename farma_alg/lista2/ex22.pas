program verifica_quadrante;

var
	x, y: integer;

begin
	read(x, y);

	if x = 0 then
		if y = 0 then
			writeln('O')
		else
			writeln('Y')
	else
		if y = 0 then
			writeln('X')
		else
			if x > 0 then
				if y > 0 then
					writeln(1)
				else
					writeln(4)
			else
				if y > 0 then
					writeln(2)
				else
					writeln(3);
end.
