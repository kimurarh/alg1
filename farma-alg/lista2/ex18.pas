program calcula_valor;

var
	codigo, quantidade: longint;
	valor: real;

begin
	read(codigo, quantidade);

	if (codigo = 100) or (codigo = 103) then
		valor := 1.2 * quantidade
	else
		if (codigo = 101) or (codigo = 104) then
			valor := 1.3 * quantidade
		else
			if codigo = 102 then
				valor := 1.5 * quantidade
			else
				if codigo = 105 then
					valor := 1.00 * quantidade;
	
	writeln(valor :0:2);
end.
