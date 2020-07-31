program p2017_1_q3;

var
	num, numAnterior, numIguais, planaltos: integer;

begin
	read(num);

	if num <> 0 then
	numAnterior := num;
	numIguais := 1;
	planaltos := 0;

	begin
		while num <> 0 do
		begin
			read(num);

			if num = numAnterior then
				numIguais := numIguais + 1
			else
			begin
				if numIguais > 1 then
					planaltos := planaltos + 1;
				numIguais := 1;
			end;

			numAnterior := num;
		end;
		writeln('Numero de planaltos: ', planaltos);
	end

end.
