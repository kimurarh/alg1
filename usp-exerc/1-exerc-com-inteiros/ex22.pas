program ex22;

var
	n, num, numAnterior, i, cont, contMax: longint;

begin
	writeln('Digite o tamanho da sequencia que será digitada:');
	read(n);
	writeln('Digite a sequencia de números inteiros:');
	
	(* Primeiro número da sequencia *)
	read(num);
	numAnterior := num;

	i := 1;
	cont := 1;
	contMax := 1;

	while i < n do
	begin
		read(num);
	
		if num > numAnterior then
			cont := cont + 1
		else
		begin
			if cont > contMax then
				contMax := cont;
			cont := 1;
		end;

		numAnterior := num;
		i := i + 1;
	end;

	writeln('O comprimento de um segmento crescente máximo é ', contMax);
end.
