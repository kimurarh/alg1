program ex04;

var
	letra: char;
	vogais, consoantes: integer;
	
begin
	writeln('Digite seu nome completo, terminado em .');
	
	read(letra);
	vogais := 0;
	consoantes := 0;

	while letra <> '.' do
	begin
		if (letra = 'A') or (letra = 'E') or (letra = 'I') or (letra = 'O') or (letra = 'U') then
			vogais := vogais + 1
		else
			if letra = ' ' then
				(* apenas para não contar como uma consoante *)
			else
				consoantes := consoantes + 1;
		read(letra);
	end;
	writeln('Vogais: ', vogais);
	writeln('Consoantes: ', consoantes);
end.
