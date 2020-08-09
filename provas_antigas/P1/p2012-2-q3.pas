program p2012_2_q3;

var
	num, maior: integer;
	multiplo: boolean;

begin
	read(num);

	multiplo := false;
	maior := 0;
	while num <> 0 do
	begin
		if num mod 7 = 0 then
		begin
			multiplo := true;
			if num > maior then
				maior := num;
		end;
		read(num);
	end;

	if multiplo then
		writeln(maior)
	else
		writeln('Nenhum multiplo de 7');
end.
