program ex11;

var n, i, incremento: integer;

begin
	read(n);

	i := 0;
	incremento := n;

	while i < 5 do
	begin
		writeln(n);
		n := n + incremento;
		i := i + 1;
	end;
	
end.
