program media_ponderada;

var
	nota, dividendo: real;
	peso, divisor: integer;

begin
	read(nota, peso);

	if (nota <> 0) or (peso <> 0) then
	begin
		dividendo := 0;
		divisor := 0;

		while (nota <> 0) or (peso <> 0) do
		begin
			dividendo := dividendo + nota * peso;
			divisor := divisor + peso;
			read(nota, peso);
		end;

		writeln(dividendo / divisor :0:2);
	end;
end.

