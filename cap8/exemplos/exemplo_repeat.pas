program exemplo_repeat;

var i, n: integer;

begin
	read(n);
	i := 1;
	repeat
		writeln(i);
		i := i + 1;
	until i > n;
end.
