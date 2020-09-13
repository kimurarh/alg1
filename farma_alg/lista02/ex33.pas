program poligono;

var
	n, lado: longint;

begin
	read(n, lado);

	if n = 3 then
		writeln('TRIANGULO ', lado * 3)
	else
		if n = 4 then
			writeln('QUADRADO ', lado * lado)
		else
			if n = 5 then
				writeln('PENTAGONO')
			else
				if (n < 3) or (n > 5) then
					writeln('ERRO');
end.
