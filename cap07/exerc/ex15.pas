program ex15;

var
	n, soma, num, verificador, multiplicador, digito, teste: longint;

begin
	read(n);

	soma := 0;

	while n <> 0 do
	begin
		teste := 0;
		num := n;
		verificador := num mod 10;
		num := num div 10;
		multiplicador := 2;

		while num <> 0 do
		begin
			digito := num mod 10 * multiplicador;
			
			if digito >= 10 then
				soma := soma + digito div 10 + digito mod 10
			else
				soma := soma + digito;

			if multiplicador = 2 then
				multiplicador := 1
			else
				multiplicador := 2;
			num := num div 10;
		end;

		if soma mod 10 <> 0 then
			teste := 10 - soma mod 10;
	
		if teste <> verificador then
			writeln(n);	

		read(n);
	end;
end.
