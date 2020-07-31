program p2018_2_q2;

var
	n, a, b, i, aUnidade, aDezena, bUnidade, bDezena: integer;

begin
	read(n); (* quantos pares serão lidos *)
	i := 0;

	while i < n do
	begin
		read(a, b);

		aUnidade := a mod 10;
		bUnidade := b mod 10;
		aDezena := a div 10;
		bDezena := b div 10;
		
		if (a mod 2 = 0) and (b mod 2 = 0) and (aUnidade = bDezena) and (aDezena = bUnidade) then
			writeln('SIM')
		else
			writeln('NAO');

		i := i + 1;
	end
	
end.
