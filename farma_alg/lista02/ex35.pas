program calcula_imposto_mensal;

var
	salario: real;

begin
	read(salario);

	if salario < 540 then
		writeln('NAO')
	else
		if salario <= 1424 then
			writeln(1, ' ', 0.0 :0:2)
		else
			if salario <= 2150 then
				writeln(2, ' ', 7.5 * salario / 100 :0:2)
			else
				if salario <= 2866 then
					writeln(3, ' ', 15 * salario / 100 :0:2)
				else
					if salario <= 3582 then
						writeln(4, ' ', 22.5 * salario / 100 :0:2)
					else
						writeln(5, ' ', 27.5 * salario / 100 :0:2);
end.
