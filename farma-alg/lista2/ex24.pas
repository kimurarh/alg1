program avalia_idade;

var
	anoNasc, idade: integer;

begin
	read(anoNasc);
	idade := 2020 - anoNasc;
	writeln(idade);

	if idade >= 16 then
		if idade >= 18 then
		begin
			writeln('SIM');
			writeln('SIM');
		end
		else
		begin
			writeln('SIM');
			writeln('NAO');
		end
	else
	begin
		writeln('NAO');
		writeln('NAO');
	end;
end.
