program exemplo1;

var
	i: integer;
	v: array [1..10] of longint;

begin
	for i := 1 to 10 do
		read(v[i]);

	for i := 10 downto 1 do
		write(v[i], ' ');
	writeln;
end.
