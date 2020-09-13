program ex09;

var
	n, num, cont: integer;

begin
	read(n);

	num := 5;
	cont := 1;

	while cont <= n do
	begin
		write(num, ' ');
		cont := cont + 1;

		if cont mod 2 = 0 then
			num := num + 1
		else
			num := num + 5;
	end;
	writeln;
end.
