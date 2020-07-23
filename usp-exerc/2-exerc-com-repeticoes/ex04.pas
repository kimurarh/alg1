program ex04;

var
	n, cont, somaPrimos, i, num, quantDivs: longint; 

begin
	writeln('Informe a quantidade de números que serão digitados:');
	read(n);
	writeln('Digite os ', n, ' números inteiros positivos:');
	
	cont := 1;
	somaPrimos := 0;

	while cont <= n do
	begin
		read(num);
		quantDivs := 0;
		i := 1;
		while i <= num do
		begin
			if num mod i = 0 then
				quantDivs := quantDivs + 1;
			i := i + 1;
		end;

		if quantDivs = 2 then
			somaPrimos := somaPrimos + num;
		quantDivs := 0;
		cont := cont + 1;
	end;

	writeln('A soma dos números primos é ', somaPrimos);
end.
