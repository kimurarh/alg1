program ex07;

var
	n, num, numAnterior, mdc, mdcFinal, cont, i: longint;

begin
	writeln('Qual a quantidade de números que serão digitados?');
	read(n);
	writeln('Digite os ', n, ' números:');
	
	read(numAnterior);
	mdcFinal := 0;
	cont := 1;
	i := 1;
	mdc := 1;

	while cont < n do
	begin
		read(num);

		(* Calcula o mdc entre 2 números *)
		while (i <= num) and (i <= numAnterior) do
		begin
			if (num mod i = 0) and (numAnterior mod i = 0) then
				mdc := i;
			i := i + 1;
		end;

		(* Substitui o valor de mdcFinal *)
		if mdc >= mdcFinal then
			mdcFinal := mdc
		else
			mdcFinal := 1;

		(* Reseta as variaveis para a proxima iteração *)
		mdc := 1;
		i := 1;
		numAnterior := num;
		cont := cont + 1;		
	end;
	writeln('MDC = ', mdcFinal);
end.
