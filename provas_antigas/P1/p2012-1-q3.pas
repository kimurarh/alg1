program p2012_1_q3;

var
	a, b, soma, cont: longint;

begin
	write('Entre com dois valores: ');
	read(a, b);
	while a = b do
	begin
		writeln('Os valores devem ser diferentes.');
		write('Entre com dois valores: ');
		read(a, b);
	end;

	if a < b then
	begin
		soma := 0;
		while a <= b do
		begin
			if a mod 2 <> 0 then
				soma := soma + a;
			a := a + 1;
		end;
		writeln('A soma dos numeros impares é: ', soma);
	end
	else
	begin
		soma := 0;
		cont := 0;

		while b <= a do
		begin
			if b mod 3 = 0 then
			begin
				soma := soma + b;
				cont := cont + 1;
			end;
			b := b + 1;	
		end;
		writeln('A media dos múltiplos de 3 é: ', soma / cont :0:2);
	end;
end.
