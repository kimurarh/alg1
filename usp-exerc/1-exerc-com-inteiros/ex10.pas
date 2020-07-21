program ex10;

var
	n, cont: longint;

begin
	writeln('Digite um número inteiro não-negativo:');
	read(n);
	cont := 1;

	while cont * (cont + 1) * (cont + 2) < n do
		cont := cont + 1;

	if cont * (cont + 1) * (cont + 2) = n then 
		writeln(n, ' é triangular.')
	else
		writeln(n, ' não é triangular.');
end.
