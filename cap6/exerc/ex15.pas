program ex15;

var n, i, cont, num: integer;


begin
	read(n);

	i := 1;

	while i <= n do
	begin
		read(num);
		if num > 0 then
		begin
			cont := 1;
			(* imprime os 5 multiplos do número *)
			while cont <= 5 do
			begin
				write(num * cont, ' ');
				cont := cont + 1;
			end;
			writeln;
		end;
		i := i + 1;
	end;
end.
