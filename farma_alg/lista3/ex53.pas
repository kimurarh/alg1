program encontra_fatorial_maior;

var
	x, num, i, fatorial: longint;

begin
	read(x);

	num := 1;
	fatorial := 1;

	while fatorial <= x do
	begin
		(* calcula o fatorial de num *)
		i := 1;
		fatorial := 1;
		while i <= num do
		begin
			fatorial := fatorial * i;
			i := i + 1;
		end;
		num := num + 1;
	end;
	writeln(num - 1);
end.
