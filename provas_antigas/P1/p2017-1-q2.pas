program p2017_1_q2;

var
	n, j, m, cont, i: longint;

begin
	read(n, m, j);

	cont := 0;
	i := 0;

	while cont < n do
	begin
		if i mod m = j mod m then
		begin
			writeln(i, ' ', m, ' ', j);
		  	cont := cont + 1	
		end;

		i := i + 1;
	end;
end.
