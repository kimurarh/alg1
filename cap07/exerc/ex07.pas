program ex07;

var
	a, den: integer;
	soma: real;

begin
	soma := 0;
	
	a := 37;
	den := 1;

	while den <= 37 do
	begin
		soma := soma + a * (a + 1) / den;
		a := a - 1;
		den := den + 1;
	end;
	writeln(soma :0:2)
end.
