program ex04;

var
	a, b: integer;

begin
	read(a, b);

	while (a <> 0) or (b <> 0) do
	begin
		(* garante que a < b *)
		if b < a then
		begin
			b := a + b;
			a := b - a;
			b := b - a;
		end;

		(* Digita a sequencia a, a+1, ..., b-1, b *)
		while a < b do
		begin
			write(a, ' ');
			a := a + 1;
		end;
		writeln(b);

		read(a, b);
	end;
end.
