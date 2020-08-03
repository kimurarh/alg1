program mdc_euclides;

var a, b: longint;

begin
	read(a, b);

	while (a <> 0) and (b <> 0) do
	begin
		if a > b then
			a := a mod b
		else
			b := b mod a;
	end;
	if a = 0 then
		writeln('mdc = ', b)
	else
		writeln('mdc = ', a);
end.
