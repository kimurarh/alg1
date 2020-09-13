program imprime_dois_pares;

var
	a, b: integer;

function eh_par (n: integer): boolean;
begin
	eh_par := false;
	if n mod 2 = 0 then
		eh_par := true;
end;

begin
	read(a, b);
	while (a <> 0) or (b <> 0) do
	begin
		if eh_par(a) and eh_par(b) then
			writeln(a, ' ', b);
		read(a, b);
	end;
end.
