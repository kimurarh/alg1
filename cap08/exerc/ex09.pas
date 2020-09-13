program separa_palavras_das_frases;
var frase: string;

procedure separa_palavras(frase: string);
var i: integer; linha_vazia: boolean;
begin
	linha_vazia := true;
	for	i := 1 to length(frase) do
	begin
		if (frase[i] = ' ') or (frase[i] = ',') then
		begin
			if not linha_vazia then
				writeln;
				linha_vazia := true;
		end	
		else
		begin
			write(frase[i]);
			linha_vazia := false;
		end;
	end;

	(* Só pula linha pela última vez, se não tiver feito antes *)
	if not linha_vazia then
		writeln;
end;

begin
	read(frase);
	separa_palavras(frase);
end.
