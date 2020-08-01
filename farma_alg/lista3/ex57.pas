program encontra_maior_multiplo_sete;

var
	num, maiorMultiplo: longint;

begin
	read(num);

	maiorMultiplo := 0;
	while num <> 0 do
	begin
		if (num mod 7 = 0) and (num > maiorMultiplo) then
			maiorMultiplo := num;
		read(num);	
	end;
	writeln(maiorMultiplo);
end.
