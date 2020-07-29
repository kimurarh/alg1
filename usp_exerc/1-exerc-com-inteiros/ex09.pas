program ex09;

var
	n, i, j, num, cont: longint;

begin
	read(n, i, j);

	(* cont inicia em 1, pois 0 é multiplo de qualquer número *)
	num := 1;
	cont := 1;
	
	write('0');

	while cont < n do
	begin
		if (num mod i = 0) or (num mod j = 0) then
		begin
			write(', ', num);
			cont := cont + 1;	
		end;
		num := num + 1;
	end;
	writeln('.');
end.
