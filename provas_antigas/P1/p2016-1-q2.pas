program p2016_1_q2;

var
	a, b: longint;
	encaixa: boolean;

begin
	read(a, b);

	encaixa := true;

	while (b > 0) and (encaixa = true) do
	begin
		(* verifica se os ultimos digitos de a e b são diferentes *)
		if a mod 10 <> b mod 10 then
			encaixa := false
		else
		begin
			a := a div 10;
			b := b div 10;
		end;
	end;

	if encaixa then
		writeln('ENCAIXA')
	else
		writeln('NAO ENCAIXA');
end.
