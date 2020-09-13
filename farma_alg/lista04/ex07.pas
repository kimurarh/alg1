program cor_xadrez;

var
	linha, coluna: integer;

begin
	read(linha, coluna);

	if linha mod 2 <> 0 then (* linha impar *)
		if coluna mod 2 <> 0 then (* coluna impar *)
			writeln('BRANCA')	
		else
			writeln('PRETA')
	else (* linha par *)
		if coluna mod 2 <> 0 then
			writeln('PRETA')	
		else
			writeln('BRANCA');
end.
