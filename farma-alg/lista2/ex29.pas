program organiza;

var
	i, a, b, c: integer;

begin
	read(i, a, b, c);

	if (i = 1) or (i = 2) or (i = 3) then
	begin
		if a > b then
			if b > c then
				if i = 1 then
					writeln(c, ' ', b, ' ', a)
				else
					if i = 2 then
						writeln(a, ' ', b, ' ', c)
					else
						writeln(b, ' ', a, ' ', c)
			else	
				if c > a then
					if i = 1 then
						writeln(b, ' ', a, ' ', c)
					else
						if i = 2 then
							writeln(c, ' ', a, ' ', b)
						else
							writeln(a, ' ', c, ' ', b)
				else
					if i = 1 then
						writeln(b, ' ', c, ' ', a)
					else
						if i = 2 then
							writeln(a, ' ', c, ' ', b)
						else
							writeln(b, ' ', a, ' ', c)
		else
			if a > c then
				if i = 1 then
					writeln(c, ' ', a, ' ', b)
				else
					if i = 2 then
						writeln(b, ' ', a, ' ', c)
					else 
						writeln(a, ' ', b, ' ', c)
			else
				if c > b then
					if i = 1 then
						writeln(a, ' ', b, ' ', c)
					else
						if i = 2 then
							writeln(c, ' ', b, ' ', a)
						else
							writeln(a, ' ', c, ' ', b)
				else
					if i = 1 then
						writeln(a, ' ', c, ' ', b)
					else
						if i = 2 then
							writeln(a, ' ', c, ' ', b)
						else
							writeln(a, ' ', b, ' ', c);
	end;
end.
