program numeros_perfeitos;

var
	k, cont, somaDivisores, i, num: longint;

begin
	read(k);

	cont := 0;
	num := 2;

	while cont < k do
	begin
		somaDivisores := 1; (* qualquer número é divisivel por 1 *)
		i := 2;

		(* Calcula soma dos divisores positivos diferentes de num *)
		while i < num do
		begin
			if num mod i = 0 then
				somaDivisores := somaDivisores + i;
			i := i + 1;
		end;

		if somaDivisores = num then
		begin
			cont := cont + 1;
			write(num,' ');
		end;

		num := num + 1;
	end;
	writeln;
end.
