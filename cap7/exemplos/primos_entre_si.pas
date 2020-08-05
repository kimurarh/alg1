program primos_entre_si;

var
	a, b, resto: integer;

begin
	read(a, b);

	(* calcula mdc pelo metodo de euclides *)	
	if (a <> 0) and (b <> 0) then
	begin
		resto := a mod b;

		while resto <> 0 do
		begin
			a := b;
			b := resto;
			resto := a mod b;
		end;

		(* verifica se o MDC = 1 *)
		if b = 1 then
			writeln('SIM')
		else
			writeln('NAO');
	end;
end.
