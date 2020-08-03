program p2015_2_q2;

var
	num, cont, contMax: integer;
	parAnterior: boolean;

begin
	read(num);

	(* Somente inicia se o primeiro número não for Zero *)	
	if num <> 0 then
	begin
		cont := 0;
		contMax := 0;
		(* Verifica paridade do primeiro digito *)
		if num mod 2 = 0 then
		begin
			parAnterior := true;
			cont := 1;
		end
		else
			parAnterior := false;
	
		read(num);

		while num <> 0 do
		begin
			(* Verifica paridade do número *)
			if num mod 2 = 0 then
			begin
				if parAnterior = false then
					cont := 1
				else
					cont := cont + 1;
				parAnterior := true;
			end
			else
			begin
				if (parAnterior = true) and (cont > contMax) then
					contMax := cont;
				parAnterior := false;
			end;
			read(num);
		end;
		writeln('Tamanho da maior sequência de pares: ' ,contMax);
	end;
end.
