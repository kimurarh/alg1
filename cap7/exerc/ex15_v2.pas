program ex15_v2;

var
	n, dv_original, dv_calculado, num, d, mult, soma, resto: longint;

begin
	read(n);

	while n <> 0 do
	begin
		dv_original := n mod 10;
		num := n div 10;
		mult := 2;
		soma := 0;

		while num <> 0 do
		begin
			d := (num mod 10) * mult;
			d := d div 10 + d mod 10;
			soma := soma + d;	
			
			if mult = 1 then
				mult := 2
			else
				mult := 1;

			num := num div 10;
		end;

		resto := soma mod 10;
		soma := soma div 10;

		if resto > 0 then
			dv_calculado := 10 - resto
		else
			dv_calculado := soma;

		if dv_original = dv_calculado then
			writeln(n);
		read(n);
	end;
end.
