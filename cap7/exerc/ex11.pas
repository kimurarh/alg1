program ex11;

var
	mult_fat, i: longint;
	x, num, den, cosseno: real;

begin
	read(x);

	num := 1;
	den := 1;
	mult_fat := 0;
	cosseno := 1;
	i := 2;

	while i <= 14 do
	begin
		num := -num * x * x;
		den := den * (mult_fat + 1) * (mult_fat + 2);
		mult_fat := mult_fat + 2;
		cosseno := 	cosseno + num / den;

		i := i + 1;
	end;
	writeln('cos(', x:0:2, ') = ', cosseno);
end.
