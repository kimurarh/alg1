program ex13;

var num, i: integer;
	alcancouNum: boolean;

begin
	num := 2;
	writeln(1); (* primeira linha *)

	while num <= 9 do
	begin
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
