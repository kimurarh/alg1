program fatorial;

var
	cont, n, fat: integer;

begin
	read(n);
	cont := 1;
	fat := 1;

	while cont <= n do
	begin
		fat := fat * cont;
		writeln('fat(', cont, ') = ', fat);
		cont := cont + 1;
	end;
end.
