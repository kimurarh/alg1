program ex18;

var
	num, maior, potenciaDois, ultimoDigito, decimal: longint;
	binario: boolean;

begin
	read(num);

	maior := 0;

	while num <> -1 do
	begin
		decimal := 0;
		potenciaDois := 1;
		binario := true;

		while (num <> 0) and (binario = true) do
		begin
			ultimoDigito := num mod 10;

			if (ultimoDigito = 1) or (ultimoDigito = 0) then
			begin
				decimal := decimal + ultimoDigito * potenciaDois;
				potenciaDois := potenciaDois * 2;
			end
			else
				binario := false;

			num := num div 10;
		end;
		
		if binario then
		begin
			writeln(decimal);
			if decimal > maior then
				maior := decimal;
		end
		else
			writeln('numero nao binario');

		read(num);
	end;

	writeln('O maior número foi ', maior);
end.
