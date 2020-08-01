program arranjos_pares;

var
	n, a, b: integer;

begin
	read(n);

	a := 1;
	b := n - 1;

	while b >= 1 do
	begin
		writeln(a, ' ', b);
		a := a + 1;
		b := b - 1;
	end;
end.
