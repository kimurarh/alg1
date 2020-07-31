program p2018_1_q2;

var
	num, primeiraDezena, segundaDezena: integer;
	raiz: real;

begin
	read(num);

	while num <> 0 do
	begin
		raiz := sqrt(num);
		primeiraDezena := num div 100;
		segundaDezena := num mod 100;

		if raiz = primeiraDezena + segundaDezena then
			writeln('SIM')
		else
			writeln('NAO');

		read(num);
	end;
end.
