program crescimento_populacao;

var
	pa, pb, ta, tb: real;
	tempo: integer;

begin
	read(pa, pb, ta, tb);

	tempo := 0;

	(* caso A tiver menor (ou igual) população e maior taxa de crescimento *)
	if (pa <= pb) and (ta > tb) then
		while pa <= pb do
		begin
			pa := pa * (1 + ta);
			pb := pb * (1 + tb);
			tempo := tempo + 1;
		end
	else 
	(* caso B tiver menor (ou igual) população e maior taxa de crescimento *)
		if (pa >= pb) and (ta < tb) then
			while pa >= pb do
			begin
				pa := pa * (1 + ta);
				pb := pb * (1 + tb);
				tempo := tempo + 1;
			end;
	writeln(tempo);
end.

