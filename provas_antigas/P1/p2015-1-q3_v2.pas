program p2015_1_q3;

var
	num, cont, k: longint;
	primeiro, par, parAnterior, kAlternante: boolean;

begin
	read(num);

	if num <> 0 then
	begin
		primeiro := true;
		k := 0;
		kAlternante := true;

		while (num <> 0) and kAlternante do
		begin
			(* Verifica paridade do primeiro digito *)
			if primeiro then
			begin
				if num mod 2 = 0 then
					parAnterior := true
				else
					parAnterior := false;
				primeiro := false;
				cont := 1;
			end
			else
			begin
				(* Verifica paridade dos outros *)
				if num mod 2 = 0 then
					par := true
				else
					par := false;

				if par = parAnterior then
					cont := cont + 1
				else
				begin
					if k = 0 then (* primeira sequencia *)
						k := cont;
					if cont <> k then
						kAlternante := false;
					parAnterior := par;
					cont := 1;
				end;
			end;

			read(num);
		end;

		(* verifica a ultima sequencia *)
		if k = 0 then
			k := cont;
		if cont <> k then
			kAlternante := false;

		if kAlternante then
			writeln('Sim, eh ', k,'-alternante')
		else
			writeln('Nao eh alternante');
	end;
end.
