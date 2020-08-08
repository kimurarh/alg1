program ex19;

var
	n, num, i, numDiv: longint;

begin
	read(n);

	if n <> 0 then
	begin
		num := 2;
		while n <> 1 do
		begin

			(* calcula o numero de divisores de 'num' *)		
			i := 2;
			numDiv := 0;
			while (i < num) and (numDiv = 0) do
			begin
				if num mod i = 0 then
					numDiv := numDiv + 1;
				i := i + 1;
			end;

			(* se o numero for primo *)
			if numDiv = 0 then
				while n mod num = 0 do
				begin
					write(num, ' ');
					n := n div num;
				end;
			num := num + 1;
		end;
		writeln;
	end;
end.
