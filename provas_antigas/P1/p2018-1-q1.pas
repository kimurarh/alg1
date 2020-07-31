program p2018_1_q1;

var
	n, i, j, cont, num: integer;

begin
	read(n, i, j);

	cont := 0;
	num := 0;

	while cont < n do
	begin
		if (num mod i = 0) or (num mod j = 0) then
		begin
			write(num, ' ');
			cont := cont + 1;
		end;
		num := num + 1;
	end;
	writeln;
end.
