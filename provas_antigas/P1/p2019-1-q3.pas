program p2019_q3;

var
	n, cont: longint;

begin
	read(n);
	cont := 1;

	while n <> 1 do
	begin
		if n mod 2 = 0 then
			n := n div 2
		else
			n := 3 * n + 1;
		cont := cont + 1;
	end;
	writeln(cont);
end.
