program quantidade_azulejos; 

var
	tipo, quantidade, area, azulejo: longint;
	resto: real;

begin
	read(tipo, area);

	if tipo = 1 then
		azulejo := 50 * 40 * 10
	else
		if tipo = 2 then
			azulejo := 50 * 60 * 10
		else
			if tipo = 3 then
				azulejo := 50 * 80 * 10;
	(* areas em cm *)	
	area := area * 10000;
	quantidade := area div azulejo;
	resto := area mod azulejo;

	if resto > 0 then
		quantidade := quantidade + 1;

	writeln(quantidade, ' caixas');
end.
