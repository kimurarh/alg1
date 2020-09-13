program notas;

var
	n1, n2, n3, media: real;
	faltas: integer;

begin
	read(n1, n2, n3, faltas);
	

	if faltas >= 10 then
		writeln('NAO')
	else
	begin
		media := (n1 + n2 + n3)/3;
		if media >= 7 then
			writeln('SIM')
		else if media >= 4 then
			writeln('TALVEZ')
		else
			writeln('NAO');
	end;
end.
