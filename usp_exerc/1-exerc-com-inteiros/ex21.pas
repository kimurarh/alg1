program ex21;

var
	n, num, numAnterior, i, cont: longint;

begin
	writeln('Digite quantos números terá a sua sequencia:');
	read(n);
	writeln('Digite a sua sequencia de números:');

	i := 1;
	cont := 1;

	(* Primeiro número da sequência *)
	read(num);
	numAnterior := num;

	while i < n do
	begin
		read(num);
		if num <> numAnterior then
			cont := cont + 1;
		numAnterior := num;
		i := i + 1;
	end;
	writeln(cont, ' segmentos de números iguais');
end.
