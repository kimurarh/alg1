program ex12_v2;

var
	a, b, aux: longint;

begin
	read(a, b);

	while b <> 0 do
	begin
		aux := b;
		b := a mod b;
		a := aux;
	end;
	writeln(a)
end.
