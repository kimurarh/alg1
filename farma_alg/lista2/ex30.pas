program compras;

var
	codigo, quantidade: integer;

begin
	read(codigo, quantidade);

	if (codigo = 1001) or (codigo = 987)  then
		writeln(5.32 * quantidade :0:2)
	else
		if (codigo = 1324) or (codigo = 7623) then
			writeln(6.45 * quantidade :0:2)
		else
			if codigo = 6548 then
				writeln(2.37 * quantidade :0:2)
			else
				writeln('ERRO');
end.
