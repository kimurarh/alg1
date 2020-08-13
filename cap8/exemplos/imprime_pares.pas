program imprime_pares;

var
	a: integer;

function a_eh_par: boolean;
begin
	a_eh_par := false;
	if a mod 2 = 0 then
		a_eh_par := true;
end;

begin
	read(a);
	while a <> 0 do
	begin
		if a_eh_par then
			writeln(a);
		read(a);
	end;
end.
