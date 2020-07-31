program p2016_1_q3;

var
	n, num, i, cont, k: integer;
	piramidal, par, parAnterior: boolean;

begin
	read(n);

	i := 1;
	piramidal := true;
	cont := 1; (* tamanho da sequencia atual com paridade igual*)
	k := 1; (* tamanho de deveria ter *)

	while i <= n do
	begin
		read(num);

		(* verifica a paridade *)
		if num mod 2 = 0 then
			if i = 1 then
				parAnterior := true
			else
				par := true
		else
			if i = 1 then
				parAnterior := false
			else
				par := false;

		if i <> 1 then
		begin
			if par = parAnterior then
				cont := cont + 1
			else
			begin
				(* verifica o segmento atual *)
				if cont <> k then
					piramidal := false;
				k := k + 1;
				parAnterior := par;
				cont := 1;
			end;
		end;
		i := i + 1;
	end;

	(* verifica o ultimo segmento *)
	if cont <> k then
		piramidal := false;

	if piramidal then
		writeln('Piramidal ', k, '-alternante')
	else
		writeln('NAO');
end.
