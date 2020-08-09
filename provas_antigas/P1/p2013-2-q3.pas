program p2013_2_q3;

var
	num, max, min: real;

begin
	read(num);

	if num <> 0 then
	begin
		max := num;
		min := num;
		read(num);
		while num <> 0 do
		begin
			if num > max then
				max := num
			else
				if num < min then
					min := num;
			read(num);
		end;
		writeln(max - min :0:1);
	end;
end.
