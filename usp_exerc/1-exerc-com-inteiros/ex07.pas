program ex07;

var
	n, num, cont, somaPares: longint;

begin
	write('Digite um valor para n: ');
	read(n);
	writeln('Digite uma sequencia com ', n, ' números inteiros:');

	cont := 1;
	somaPares := 0;

	while cont <= n do
	begin
		read(num);
		if num mod 2 = 0 then
			somaPares := somaPares + num;
		cont := cont + 1;
	end;
	writeln('A soma dos números pares é: ', somaPares);
end.
