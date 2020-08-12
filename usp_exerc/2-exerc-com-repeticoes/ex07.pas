program ex07;

var
	n, num, mdc, mdcFinal, cont, i: longint;

begin
	writeln('Qual a quantidade de números que serão digitados?');
	read(n);
	writeln('Digite os ', n, ' números:');
	
	read(mdc);
	mdcFinal := mdc;
	cont := 1;

	while cont < n do
	begin
		read(num);
		i := 1;

		(* Calcula o mdc entre 2 números *)
		while (i <= num) and (i <= mdcFinal) do
		begin
			if (num mod i = 0) and (mdcFinal mod i = 0) then
				mdc := i;
			i := i + 1;
		end;

		if mdc < mdcFinal then
			mdcFinal := mdc;

		cont := cont + 1;		
	end;
	writeln('MDC = ', mdcFinal);
end.
