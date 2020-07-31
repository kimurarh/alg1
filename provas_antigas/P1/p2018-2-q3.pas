program p2018_2_q3;

var
	num, maior, menor: real;

begin
	read(num);

	if num <> 0 then
	begin
		maior := num;
		menor := num;

		while num <> 0 do
		begin
			if num > maior then
				maior := num
			else
				if num < menor then
					menor := num;
			read(num);
		end;
		writeln('Amplitude = ', maior - menor :0:2);
	end
	else
		writeln('Nenhum valor válido foi digitado');


end.
