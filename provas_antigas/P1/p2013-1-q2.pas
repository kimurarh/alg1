program p2013_1_q2;

var
	soma, den, num: real;

begin
	soma := 1;
	den := 7;
	num := 1/den;

	while num > 0.00000000000000001 do
	begin
		soma := soma + num;

		den := den * 10 + 7;
		num := 1/den;
	end;
	writeln(soma);
end.
