program credito_especial;

var
	saldo: longint;

begin
	read(saldo);
	writeln(saldo);

	if saldo <= 200 then
		writeln(0)
	else
		if saldo <= 400 then
			writeln('20%')
		else
			if saldo <= 600 then
				writeln('30%')
			else
				writeln('40%');
end.
