program ex02;

var
	n: integer;

begin
	read(n);

	while n <> 0 do
	begin
		if (n mod 7 = 0) and (n mod 2 <> 0) then
			writeln(n);
		read(n);
	end;
end.
