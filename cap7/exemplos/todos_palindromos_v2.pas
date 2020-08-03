program todos_palindromos_v2;

var i, j, pal: longint;

begin
	(* Gera todos os de um digito *)
	i := 1;
	while i <= 9 do
	begin
		writeln(i);
		i := i + 1;
	end;

	(* Gera todos os de 2 digitos *)
	pal := 11;
	i := 2;
	while i <= 9 do
	begin
		writeln(pal);
		pal := i * 11;
		i := i + 11;
	end;

	(* Gera todos os de 3 digitos *)
	i := 1;
	while i <= 9 do
	begin
		j := 0;
		while j <= 9 do
		begin
			pal := i*100 + j*10 + i;
			writeln(pal);
			j := j + 1;
		end;
		i := i + 1;
	end;

end.
