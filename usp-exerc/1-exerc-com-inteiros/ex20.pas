program ex20;

var
	num, dezena1, dezena2: longint;

begin
	num := 1000;

	while num < 10000 do
	begin
		dezena1 := num div 100;
		dezena2 := num mod 100;

		if sqrt(num) = dezena1 + dezena2 then
			writeln('raiz de ', num, ' = ', dezena1 + dezena2, ' = ', dezena1, ' + ', dezena2);
	
		num := num + 1;
	end;
end.
