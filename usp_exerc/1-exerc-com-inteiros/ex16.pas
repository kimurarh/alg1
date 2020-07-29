program ex16;

var
	num, baseDois, soma: longint;

begin
	read(num);

	baseDois := 1;
	soma := 0;

	while num <> 0 do
	begin
		soma := soma + (num mod 10) * baseDois;
		num := num div 10;
		baseDois := baseDois * 2;
	end;
	writeln(soma);
end.
