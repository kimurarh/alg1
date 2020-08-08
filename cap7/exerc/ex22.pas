program ex22;

var
	k, n, num, i, cont: longint;
	k_alternante, par, parAnterior: boolean;

begin
	read(k, n);

	i:= 1;
	cont := 0;
	k_alternante := true;

	while (i <= n) and k_alternante do
	begin
		read(num);

		(* verifica paridade do primeiro número *)
		if i = 1 then
			if num mod 2 = 0 then
				parAnterior := true
			else
				parAnterior := false;

		(* verifica paridade *)
		if num mod 2 = 0 then
			par := true
		else
			par := false;

		if par = parAnterior then
			cont := cont + 1
		else
		begin
			if cont <> k then
				k_alternante := false;
			cont := 1;
			parAnterior := par;
		end;

		i := i + 1;
	end;
	
	(* testa o ultimo segmento *)
	if cont <> k then
		k_alternante := false;

	if k_alternante then
		writeln('a sequencia é ', k, '-alternante')
	else
		writeln('a sequencia não é ', k, '-alternante');
end.
