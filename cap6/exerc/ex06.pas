program ex06;

var
	n, maior, segundoMaior: integer;

begin
	read(n);

	maior := 0;
	segundoMaior := 0;

	while n <> 0 do
	begin
		if n > maior then
		begin
			segundoMaior := maior;
			maior := n;
		end
		else
			if n > segundoMaior then
				segundoMaior := n;
		read(n);
	end;
	writeln('Dois maiores números: ');
	writeln(maior);
	writeln(segundoMaior);
end.
