program ex14;

var num, i, numEspacos: integer;
	alcancouNum: boolean;

begin
	num := 2;
	writeln('        ', 1, '        '); (* primeira linha *)

	while num <= 9 do
	begin
		(* Gera os espacamentos para ficar parecendo uma piramide *)
		numEspacos := 0;
		while numEspacos <= 8 - num do
		begin
			write(' ');
			numEspacos := numEspacos + 1;
		end;		

		i := 2;
		write(1); (* 1 é sempre o primeiro elemento *)
		alcancouNum := false;
		
		(* incrementa i até num -> decrementa de num até i *)
		while i <> 1 do
		begin
			write(i);
			if i = num then
				alcancouNum := true;
			
			if alcancouNum = true then
				i := i - 1
			else
				i := i + 1;
		end;
		writeln(1);
		num := num + 1;
	end;
end.
