program ex01;

var
	num: integer;

begin
	read(num);
	while num <> 0 do
	begin
		write(num * num, ' ');
		read(num);
	end;
	writeln;
end.
