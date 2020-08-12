program p2015_1_q3;

var
	num, cont, k: longint;
	par, parAnterior, k_alternante: boolean;

begin
	read(num);

	if num <> 0 then
	begin
		cont := 1;
		(* Verifica paridade do primeiro digito *)
		if num mod 2 = 0 then
			parAnterior := true
		else
			parAnterior := false;
		read(num);
		k := 0;
		k_alternante := true;

		while (num <> 0) and k_alternante do
		begin
			(* Verifica paridade *)
			if num mod 2 = 0 then
				par := true
			else
				par := false;

			if par = parAnterior then
				cont := cont + 1
			else
			begin
				if k = 0 then (* primeira sequencia *)
					k := cont
				else
					if cont <> k then
						k_alternante := false;
				parAnterior := par;
				cont := 1;
			end;
			
			read(num);
		end;

		(* se tiver apenas uma sequencia *)
		if k = 0 then
			k := cont
		else
			if cont <> k then (* verifica ultima sequencia *)
				k_alternante := false;

		if k_alternante then
			writeln('Sim, eh ', k,'-alternante')
		else
			writeln('Nao eh alternante');
	end;
end.
