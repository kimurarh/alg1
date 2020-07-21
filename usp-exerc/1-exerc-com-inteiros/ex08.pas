program ex08;

var
	n, cont, fatorial: longint;

begin
	write('Digite um número inteiro não-negativo: ');
	read(n);
	
	cont := n;
	fatorial := 1;

	while cont > 1 do
	begin
		fatorial := fatorial * cont;
		cont := cont - 1;
	end;
	writeln(n, '! = ', fatorial);
end.
