program notas;

var
	n1, n2, n3, media: real;
	faltas: integer;

begin
	read(n1, n2, n3, faltas);
	
	media := (n1 + n2 + n3)/3;

	if (media < 4) or (faltas >= 10) then
		writeln('NAO')
	else
		if media >= 7 then
			writeln('SIM')
		else
			writeln('TALVEZ');
end.
