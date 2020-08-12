program p2016_1_q3_v2;

var
	n, num, cont, nivel, i: longint;
	par, parAnterior, piramidal: boolean;

begin
	read(n); (* número inteiro positivo *)
	read(num);

	(* verifica paridade do primeiro número *)
	if num mod 2 = 0 then
		parAnterior := true
	else
		parAnterior := false;
	
	(* inicialização variáveis *)
	piramidal := true;
	nivel := 1;
	i := 2;
	cont := 1;

	while i <= n do
	begin
		read(num);

		(* verifica paridade *)
		if num mod 2 = 0 then
			par := true
		else
			par := false;

		if par = parAnterior then
			cont := cont + 1
		else
		begin
			if cont <> nivel then
				piramidal := false;
			(* reset das variáveis *)
			nivel := nivel + 1;
			cont := 1;
			parAnterior := par;
		end;
		i := i + 1;
	end;

	if (cont <> nivel) or (piramidal = false) then
		writeln('NAO')
	else
		writeln('piramidal ', nivel, '-alternante');

end.
