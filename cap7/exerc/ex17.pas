program ex17;

var
	num, cont, numAnterior: longint;

begin
	read(num);

	if num <> 0 then
	begin
		cont := 0;
		numAnterior := num;

		while num <> 0 do
		begin
			read(num);
			if num <> numAnterior then
			begin
				cont := cont + 1;
				numAnterior := num;
			end;
		end;
		writeln(cont);
	end;
end.
