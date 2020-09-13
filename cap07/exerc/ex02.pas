program ex02;

var
	i, n, num, milhar, centena, dezena, unidade: longint;

begin
	read(n);

	i := 1;
	num := 1023;

	while n <> num do
	begin
		milhar := num div 1000;
		centena := (num mod 1000) div 100;
		dezena := (num mod 100) div 10;
		unidade := num mod 10;

		(* Verifica se os algarismos são diferentes *)
		if (milhar <> centena) and (milhar <> dezena) and (milhar <> unidade) and (centena <> dezena) and (centena <> unidade) and (dezena <> unidade) then
			i := i + 1;
		num := num + 1;
	end;
	writeln(i);
end.
