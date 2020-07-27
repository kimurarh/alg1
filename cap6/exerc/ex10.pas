program ex10;

var
	k, cont, i, num, somaDiv: longint;

begin
	read(k);

	cont := 0;
	num := 1;

	while cont < k do
	begin
		somaDiv := 0;
		i := 1;
		
		(* calcula a soma dos divisores positivos diferentes de NUM *)
		while i < num do
		begin
			if num mod i = 0 then
				somaDiv := somaDiv + i;
			i := i + 1;
		end;

		if num = somaDiv then
		begin
			writeln(num);
			cont := cont + 1;
		end;
		num := num + 1;
	end;
end.
