program potencia_iluminicao;

var
	area, potencia: longint;

begin
	read(area);
	
	if area <= 6 then
		potencia := 100
	else
		potencia := 80 + 15*(area - 3);
	writeln(potencia);
end.
