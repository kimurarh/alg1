program ex08;

var
	n, num, cont, k, kInicial: longint;
	kAlternante, primeiraSequencia, par, parInicial, parAnterior: boolean;	

begin
	writeln('Quantos números serão digitados?');
	read(n);
	writeln('Digite a sequencia de ', n, ' números:');

	kAlternante := true;
	primeiraSequencia := true;
	cont := 1;
	k := 0;
	kInicial := 1;

	(* Verifica paridade do primeiro número *)
	read(num);
	if num mod 2 = 0 then
		parInicial := true
	else
		parInicial := false;

	while cont < n do
	begin
		read(num);
	
		(* Verifica a paridade do número *)
		if num mod 2 = 0 then
			par := true
		else
			par := false;

		(* Verifica se está lendo a primeira sequencia de pares/impares *)
		if primeiraSequencia then
		begin
			if par = parInicial then
				kInicial := kInicial + 1
			else
			begin
				(* Primeira sequência terminou > reseta parametros *)
				primeiraSequencia := false;
				k := 1;
				parAnterior := par;
			end;
		end
		else
		begin
			if par = parAnterior then
				k := k + 1
			else (* Mudou a paridade > verificação | reseta parametros *)
			begin
				if k <> kInicial then	(* Verifica se é k-alternante *)
					kAlternante := false;
				k := 1;
				parAnterior := par;
			end;
		end;
		
		cont := cont + 1;
	end;	
	
	if kAlternante = true then
		writeln('A sequência é ', kInicial, '-alternante')
	else
		writeln('A sequência não é k-alternante');

end.
