program ex01;

var
	n, num, somaPares, cont: longint;

begin
	write('Informe quantas sequencias serão digitadas:');
	read(n);
	writeln('Digite as ', n, ' sequencias de números, cada qual terminada por 0:');

	cont := 0;
	
	while cont < n do
	begin
		somaPares := 0;
		read(num);
		while num <> 0 do
		begin 
			if num mod 2 = 0 then
				somaPares := somaPares + num;
			read(num)
		end;
		writeln('A soma dos números pares desta sequência é ', somaPares);
		cont := cont + 1;
	end;
	writeln('FIM');
end.
