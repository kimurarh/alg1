program exemplo1;

var
	i: integer;
	v: array [1..10] of longint;

begin
	i := 1;
	while i <= 10 do
	begin
		read(v[i]);
		i := i + 1;
	end;

	i := 10;
	while i >= 1 do
	begin
		write(v[i], ' ');
		i := i - 1;
	end;
	writeln;
end.
