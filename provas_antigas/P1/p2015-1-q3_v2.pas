program p2015_1_q3_v2;

var
	num, cont, k: longint;
	par, parAnterior, kAlternante: boolean;

begin
	read(num);

	if num <> 0 then
	begin
		
		(* verifica paridade do primeiro número *)
		if num mod 2 = 0 then
			parAnterior := true
		else
			parAnterior := false;

		kAlternante := true;
		cont := 1;
		k := 0;
		read(num);

		while num <> 0 do
		begin
			
			(* verifica paridade *)
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
				else if k <> cont then
					kAlternante := false;
				parAnterior := par;
				cont := 1;
			end;
			read(num);
		end;

		(* caso tiver apenas uma sequencia *)
		if k = 0 then
			k := cont;

		if (k <> cont) or (kAlternante = false) then
			writeln('Nao eh alternante.')
		else
			writeln('Sim, eh ', cont, '-alternante.');
	end;
end.
