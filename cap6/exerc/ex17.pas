program ex17;

var
	n, faixa1, faixa2, faixa3, faixa4: longint;

begin
	read(n);

	faixa1 := 0;
	faixa2 := 0;
	faixa3 := 0;
	faixa4 := 0;

	while n <> 0 do
	begin
		if n <= 100 then
			faixa1 := faixa1 + 1
		else if n <= 250 then
			faixa2 := faixa2 + 1
		else if n <= 20000 then
			faixa3 := faixa3 + 1
		else
			faixa4 := faixa4 + 1;	
		read(n);
	end;

	writeln('Faixa 1: ', faixa1);
	writeln('Faixa 2: ', faixa2);
	writeln('Faixa 3: ', faixa3);
	writeln('Faixa 4: ', faixa4);
end.
