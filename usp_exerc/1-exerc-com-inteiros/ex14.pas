program ex14;

var
	n, a, b, cont: longint;

begin
	writeln('Digite um número positivo maior ou igual a 3:');
	read(n);
	a := 1;
	b := 1;
	cont := 2;

	if n < 3 then
		writeln('NÚMERO INVALIDO')
	else
	begin
		while cont < n do
		begin
			b := b + a;
			a := b - a;
			cont := cont + 1;
		end;
		writeln('Fn = ', b);
	end;
end.
