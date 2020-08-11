program soma_series;

var
	num, den, i: longint;
	soma: real;

begin
	num := 1;
	den := 1;

	soma := 0;
	i := 1;
	
	while i <= 5 do
	begin
		soma := soma + num/den;
		num := num + den;
		den := num + den;
		i := i + 1;
	end;
	writeln(soma :0:2);
end.
