program calcular_fatorial_maior;

var
	max, num, fatorial, i: longint;

begin
	read(max);
	num := 1;
	fatorial := 1;

	while fatorial <= max do
	begin
		num := num + 1;
		fatorial := 1;
		i := 1;

		(* Calcula o fatorial de num *)
		while i <= num do
		begin
			fatorial := fatorial * i;
			i := i + 1;	
		end;
	end;
	writeln(num);
end.
