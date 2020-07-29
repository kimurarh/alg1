program mdc_euclides;

var a,b, resto: longint;

begin
	read(a, b);

	if (a <> 0) and (b <> 0) then
	begin
		resto := a mod b;

		while resto <> 0 do
		begin
			a := b;
			b := resto;
			resto := a mod b;
		end;
		writeln('mdc = ', b);
	end
	else
	writeln('O algoritmo nao funciona para entradas nulas');	
end.
