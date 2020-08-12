program ex08v2;

var
	n, num, i, cont, k: integer;
	par, parAnterior, kAlternante, primeiroSegmento: boolean;

begin
	write('Digite um número inteiro positivo: ');
	read(n);
	writeln('Digite ', n, ' números inteiros: ');
	read(num);
	(* verifica paridade o primeiro digito *)
	if num mod 2 = 0 then
		parAnterior := true
	else
		parAnterior := false;

	primeiroSegmento := true;
	kAlternante := true;
	k := 1;
	cont := 1;
	i := 2;
	while i <= n do
	begin
		read(num);

		(* verifica paridade do número *)
		if num mod 2 = 0 then
			par := true
		else
			par := false;
			
		if par = parAnterior then
			cont := cont + 1
		else
		begin
			if primeiroSegmento then
			begin
				primeiroSegmento := false;
				k := cont (* guarda o tamanho do primeiro segmento *)
			end
			else
				if cont <> k then
					kAlternante := false;
			parAnterior := par;
			cont := 1;
		end;
		i := i + 1;
	end;

	if primeiroSegmento then
		k := cont;

	if (cont <> k) or (kAlternante = false) then
		writeln('Não é k-alternante')
	else
		writeln(k, '-alternante');
end.
