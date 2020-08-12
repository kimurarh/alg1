program teste;

var
	numAnterior, num, cont: longint;
	serieVQ: boolean;

begin
	read(numAnterior);

	if numAnterior <> 0 then
	begin
		cont := 1;
		serieVQ := true;
		
		read(num);
		while num <> 0 do
		begin
			cont := cont + 1;

			if (cont mod 2 = 0) and (num <> numAnterior * numAnterior) then
				serieVQ := false;

			numAnterior := num;
			read(num);
		end;
	end;

	if serieVQ and (cont mod 2 = 0) then
		writeln('Sim, eh serie Valor-Quadrado')
	else
		writeln('Nao eh serie Valor-Quadrado');
end.
